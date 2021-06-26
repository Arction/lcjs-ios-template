# LightningChart<sup>&#174;</sup> JS iOS usage example

This repository showcases how to use LightningChart<sup>&#174;</sup> JS charting library in a iOS project.

More information about LightningChart<sup>&#174;</sup> JS can be found from our website, https://www.arction.com/lightningchart-js/.

## Getting Started

The project can be opened with XCode and run on the emulator or an actual device. Refer to the [Apple Developer Guide][0] for instructions for iOS development.

The chart is running inside a [WKWebView][1]. Data is send from the native swift code to the WKWebView to be displayed.
You can find the source code for the charts from `/iOS/assets`. `index.html` is the page that is running inside the WKWebView and contains the JavaScript for configuring the chart.
`lcjs.iife.js` is IIFE packaged version of LightningChart<sup>&#174;</sup> JS that can be found inside the NPM package.

JavaScript has to be enabled on iOS device (enabled by default) on the WebView for the chart to work.

### Sending data to the chart

Data can be send to the chart from native Swift code with the help of [evaluateJavaScript][2] method.

```swift
    chart.evaluateJavaScript("setData(\(self.yData), \((self.xData)));") { (any, error) in
        if((error) != nil){ print("Error : \(String(describing: error))")}
    }
```

The `setData` is a JavaScript method that has been defined inside the WKWebView. The `evaluateJavascript` method will call that method to set data in the chart. The contents of `yData` and `xData`  are provided as the arguments to the `setData` method.

```js
  function setData(ySet, xSet){
         if(ySet.length && xSet.length){
             const chartData = xSet.map( ( itr1, itr2 ) => ( { x: itr1, y: ySet[itr2] } ) )
             lineSeries.add(chartData)
         }
     }
```


### Support

If you notice an error in the example code, please open an issue on [GitHub][3].

Official [API documentation][4] can be found on [Arction][5] website.

If the docs and other materials do not solve your problem as well as implementation help is needed, ask on [StackOverflow][6] (tagged lightningchart).

If you think you found a bug in the LightningChart JavaScript library, please contact support@arction.com.

Direct developer email support can be purchased through a [Support Plan][7] or by contacting sales@arction.com.

© Arction Ltd 2009-2020. All rights reserved.

Android is a trademark of Google LLC.

[0]: https://developer.apple.com/swift/resources/
[1]: https://developer.apple.com/documentation/webkit/wkwebview
[2]: https://developer.apple.com/documentation/webkit/wkwebview/1415017-evaluatejavascript
[3]: https://github.com/Arction/lcjs-ios-template/issues
[4]: https://www.arction.com/lightningchart-js-api-documentation
[5]: https://www.arction.com
[6]: https://stackoverflow.com/questions/tagged/lightningchart
[7]: https://www.arction.com/support-services/
