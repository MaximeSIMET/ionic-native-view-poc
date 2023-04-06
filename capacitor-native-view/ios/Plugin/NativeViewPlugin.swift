import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(NativeViewPlugin)
public class NativeViewPlugin: CAPPlugin {
    private let implementation = NativeView()

    @objc func echo(_ call: CAPPluginCall) {
        DispatchQueue.main.async {
            let viewController = CustomViewController(webView: (self.bridge?.webView)!)
            
            viewController.displaySquare()
            print("--------------------------------")
            
          /*  self.bridge?.viewController?.present(viewController, animated: false, completion: {
                call.resolve()
            });*/
            call.resolve()
        }
    }
}

public class CustomViewController: UIViewController {
    var webView: WKWebView?
    
     init(webView: WKWebView) {
         super.init(nibName: nil, bundle: nil)


        self.webView = webView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
    
 
    }
    
    func displaySquare() {
        let viewSize = CGSize(width: 50, height: 50)
        self.preferredContentSize = viewSize
   
        let xPos = (self.view.frame.width - viewSize.width) / 2
        let yPos = (self.view.frame.height - viewSize.height) / 2
        let frame = CGRect(x: xPos, y: yPos, width: viewSize.width, height: viewSize.height)
        let squareView = UIView(frame: frame)
        
        squareView.backgroundColor = UIColor.blue
        
    
        self.webView?.addSubview(squareView)
    }
}
