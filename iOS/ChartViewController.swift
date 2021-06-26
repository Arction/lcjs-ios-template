//
//  Chart ViewController.swift
//  iOS
//
//  Created by Alexander  on 1.6.2021.
//

import UIKit
import WebKit

class ChartViewController: UIViewController, WKUIDelegate, UIWebViewDelegate, WKNavigationDelegate {

    @IBOutlet weak var goBackBtn: UIButton!
    
    @IBOutlet weak var chart: WKWebView!
    
    @IBAction func goBack(_ sender: UIButton) {
        print("ffffff")
        self.dismiss(animated: true, completion: nil)
    }
    
    // Y data arr
    public var yData : [Int] = [];
    // X data arr
    public var xData : [Int] = [];
    // check what chart should be generated (random or not)
    public var check : Bool = false;
    // timer for rnd chart
    public var timer: Timer = Timer()
    var count = 0
    
    // load HTML when ViewController(VC) start loading
    override func viewWillAppear(_ animated: Bool) {
        if let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "assets") {
            chart.loadFileURL(url, allowingReadAccessTo: url)
            let request = URLRequest(url: url)
            chart.load(request)
            chart.navigationDelegate = self
        }
    }
    
    // remove timer by closing VC
    override func viewWillDisappear(_ animated: Bool) {
        print("closed")
        timer.invalidate()
        count = 0
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    // load HTML
    func webView(_ chart: WKWebView, didFinish navigation: WKNavigation!) {
        
        // chart with X/Y data
        if (!check && (self.yData.count != 0 || self.xData.count != 0  ) )  {
            chart.evaluateJavaScript("setData(\(self.yData), \((self.xData)));") { (any, error) in
                if((error) != nil){ print("Error : \(String(describing: error))")}
            }
        // rnd chart timer
        }else {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(createRandomChart), userInfo: nil, repeats: true)
        }
    }
    
    // RandomChart
    @objc func createRandomChart() {
        let randomNumber = Int.random(in: 1...20)
        chart.evaluateJavaScript("addData({x:\(count),y:\(randomNumber) });") { (any, error) in
            if((error) != nil){ print("Error : \(String(describing: error))")}
        }
        count += 1
        if count == 20 {
            timer.invalidate()
        }
    }
    
    // print data when VC has loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        goBackBtn.layer.cornerRadius = 4
        print("success")
    }
}
