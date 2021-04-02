
import Foundation

class HomePresenter {
  
  private let router: HomeRouter
  private let provider: APIProvider
  
  weak var view: HomeViewDisplayable?
  
  init(view: HomeViewDisplayable, router: HomeRouter, provider: APIProvider = ServiceAPIProvider()) {
    self.view = view
    self.router = router
    self.provider = provider
  }
  
  func getCharacters() {
    let characterTarget = RickAndMortyTargetType.character
    provider.request(target: characterTarget) { [weak self] (result: Result<[RickAndMortyCharacter], Error>) in
      switch result {
      case .success(let characters):
        self?.view?.showCharacters(characters)
      case .failure(let error):
        self?.view?.showError(error)
     } 
    }
  }
  
  func selectCharacter(_ character: RickAndMortyCharacter) {
    router.navigateToCharacterDetail(character: character)
  }
  
}
