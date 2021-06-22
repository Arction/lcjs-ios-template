//
//  Chart ViewController.swift
//  iOS
//
//  Created by Alexander  on 1.6.2021.
//

import UIKit
import WebKit

class ChartViewController: UIViewController, WKUIDelegate, UIWebViewDelegate, WKNavigationDelegate {

    @IBOutlet var Back: UIButton!
    
    @IBOutlet weak var chart: WKWebView!
    
    public var yData : [Int] = [];
    public var xData : [Int] = [];
    public var check : Bool = false;
    public var timer: Timer = Timer()
    var count = 0
    override func viewWillAppear(_ animated: Bool) {
        if let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "chart") {
            
            chart.loadFileURL(url, allowingReadAccessTo: url)
            let request = URLRequest(url: url)
            chart.load(request)
            chart.navigationDelegate = self
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        timer.invalidate()
        count = 0
    }
    
    func webView(_ chart: WKWebView, didFinish navigation: WKNavigation!) {
        if (!check && (self.yData.count != 0 || self.xData.count != 0  ) )  {
            chart.evaluateJavaScript("setData(\(self.yData), \((self.xData)));") { (any, error) in
                print("Error : \(String(describing: error))")
            }
        }else {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(createRandomChart), userInfo: nil, repeats: true)
        }
    }
    
    @objc func createRandomChart() {
        let randomNumber = Int.random(in: 1...20)
        print(randomNumber)
        chart.evaluateJavaScript("addData({x:\(count),y:\(randomNumber) });") { (any, error) in
            print("Error : \(String(describing: error))")
        }
        count += 1
        if count == 20 {
            timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("done")
        print(yData)
        print(xData)
    }
}
