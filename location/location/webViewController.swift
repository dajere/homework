import UIKit

import WebKit


 

class webViewController: UIViewController,WKNavigationDelegate,UISearchBarDelegate {

    
    @IBOutlet weak var actlnd: UIActivityIndicatorView!
    
    @IBOutlet weak var webView: WKWebView!

 

    override func viewDidLoad() {

        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.

        

        let url  = URL(string: "http://www.google.com")

        let request = URLRequest(url: url!)

        

        webView.load(request)
        actlnd.startAnimating()

               
        webView.addSubview(actlnd)

        
               
        webView.navigationDelegate = self

               actlnd.hidesWhenStopped = true

               
        

        

    }

    

    @IBAction func back(_ sender: Any) {

        

        if webView.canGoBack {

            

            webView.goBack()

            

        }

        

    }

    

    @IBAction func forward(_ sender: Any) {

        

        if webView.canGoForward {

            

            webView.goForward()

            

        }

    }

    

    @IBAction func refresh(_ sender: Any) {

        

        webView.reload()

        

    }

    

    @IBAction func stop(_ sender: Any) {

        

        webView.stopLoading()

    }

    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {

         

         actlnd.startAnimating()

         

     }

     

     func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {

         

         actlnd.stopAnimating()

         

     }

     

     func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {

         

         actlnd.stopAnimating()

         

     }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {

           

           searchBar.resignFirstResponder()

           

           let url  = URL(string: "http://\(searchBar.text!)")

           let request = URLRequest(url: url!)

           

           webView.load(request)

           

       }
    

}
