
import UIKit


class EpisodeRouter: BaseRouter {
  
  // MARK: Properties
  weak var viewController: EpisodeViewController?
  
  // MARK: Initial
  
  init(viewController: EpisodeViewController) {
    self.viewController = viewController
  }
  
  //MARK: Routing
  
}
