
import Foundation


class SellectMenuPresenter {
  
  // MARK: Properties
  
  private let router: SellectMenuRouter
    
  weak var view: SellectMenuDisplayable?
  
  // MARK: Initial
  
  init(view: SellectMenuDisplayable, router: SellectMenuRouter) {
    self.view = view
    self.router = router
  }
  
  //MARK: Presenting
    
    func presenCharacter() {
        router.navigateToCharacterDetail()
    }
    
    func presenLocation() {
        router.navigateToLocationDetail()
    }
    
    func presenEpisode() {
        router.navigateToEpisodeDetail()
    }
  
}
