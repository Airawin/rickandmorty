
import Foundation

class CharacterDetailPresenter {
  
  private let router: CharacterDetailRouter
  
  weak var view: CharacterDetailDisplayable?

  init(view: CharacterDetailDisplayable, router: CharacterDetailRouter) {
    self.view = view
    self.router = router
  }
  
}
