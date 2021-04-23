
import UIKit


class SellectMenuRouter: BaseRouter {
  
  // MARK: Properties
  weak var viewController: SellectMenuViewController?
  
  // MARK: Initial
  
  init(viewController: SellectMenuViewController) {
    self.viewController = viewController
  }
  
  //MARK: Routing
    func navigateToCharacterDetail() {
        let homeViewController = HomeViewController()
        let router = HomeRouter(viewController: homeViewController)
        let presenter = HomePresenter(view: homeViewController, router: router)
        homeViewController.presenter = presenter
      
      viewController?.navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    func navigateToLocationDetail() {
        let locationViewController = LocationDetailViewController()
        let router = LocationDetailRouter(viewController: locationViewController)
        let presenter = LocationDetailPresenter(view: locationViewController, router: router)
        locationViewController.presenter = presenter
        
        viewController?.navigationController?.pushViewController(locationViewController, animated: true)
    }
    
    func navigateToEpisodeDetail() {
        let episodeViewController = EpisodeDetailViewController()
        let router = EpisodeDetailRouter(viewController: episodeViewController)
        let presenter = EpisodeDetailPresenter(view: episodeViewController, router: router)
        episodeViewController.presenter = presenter
        
        viewController?.navigationController?.pushViewController(episodeViewController, animated: true)
        
    }
  
}
