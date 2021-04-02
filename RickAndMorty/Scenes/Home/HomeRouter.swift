
import UIKit

class HomeRouter: BaseRouter {
  
  weak var viewController: HomeViewController?
  
  init(viewController: HomeViewController) {
    self.viewController = viewController
  }
  
  func navigateToCharacterDetail(character: RickAndMortyCharacter) {
    let characterDetailViewController = CharacterDetailViewController(character: character)
    let router = CharacterDetailRouter(viewController: characterDetailViewController)
    let presenter = CharacterDetailPresenter(view: characterDetailViewController, router: router)
    characterDetailViewController.presenter = presenter
    
    viewController?.navigationController?.pushViewController(characterDetailViewController, animated: true)
  }
    
  
}
