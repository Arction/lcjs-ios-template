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
    
    override func viewWillAppear(_ animated: Bool) {
        if let url = Bundle.main.url(forResource: "index", withExtension: "html", subdirectory: "chart") {
            
            chart.loadFileURL(url, allowingReadAccessTo: url)
            let request = URLRequest(url: url)
            chart.load(request)
            chart.navigationDelegate = self
        }
    }
    
    func webView(_ chart: WKWebView, didFinish navigation: WKNavigation!) {
        if check {
            chart.evaluateJavaScript("addData();") { (any, error) in
                print("Error : \(String(describing: error))")
            }
        }else {
            chart.evaluateJavaScript("setData(\(self.yData), \((self.xData)));") { (any, error) in
                print("Error : \(String(describing: error))")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("done")
        print(yData)
        print(xData)
    }
    
    
//    @IBAction func goBack(){
//        dismiss(animated: true, completion: nil)
//    }
    
}
