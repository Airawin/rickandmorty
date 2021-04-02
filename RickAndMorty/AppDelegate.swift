
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    window = UIWindow()
    
    let sellectMenuViewController = SellectMenuViewController()
    let router = SellectMenuRouter(viewController: sellectMenuViewController)
    let presenter = SellectMenuPresenter(view: sellectMenuViewController, router: router)
    sellectMenuViewController.presenter = presenter
    window?.rootViewController = UINavigationController(rootViewController: sellectMenuViewController)
    
    window?.makeKeyAndVisible()
    return true
  }
  
}

