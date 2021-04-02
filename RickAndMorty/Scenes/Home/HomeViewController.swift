
import UIKit

protocol HomeViewDisplayable: class {
  func showCharacters(_ characters: [RickAndMortyCharacter])
  func showError(_ error: Error)
}

class HomeViewController: BaseViewController<HomeView>, HomeViewDisplayable {
  
  // MARK: Properties
  
  var presenter: HomePresenter!
  
  // MARK: Initial

  override func viewDidLoad() {
    super.viewDidLoad()
    setupViewEvents()
    presenter.getCharacters()
  }
  
  private func setupViewEvents() {
    mainView.didSelectCharacter = { [weak self] in
      self?.presenter.selectCharacter($0)
    }
  }
  
  // MARK: View
  
  func showCharacters(_ characters: [RickAndMortyCharacter]) {
    mainView.characters = characters
  }
  
  func showError(_ error: Error) {
    
  }
  
}
