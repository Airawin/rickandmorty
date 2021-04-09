
import Foundation


class LocationDetailPresenter {
  
  // MARK: Properties
  
  private let router: LocationDetailRouter
    private let provider: APIProvider
    
  weak var view: LocationDetailDisplayable?
  
  // MARK: Initial
  
  init(view: LocationDetailDisplayable, router: LocationDetailRouter, provider: APIProvider = ServiceAPIProvider()) {
    self.view = view
    self.router = router
    self.provider = provider
  }
  
  //MARK: Presenting
    
    func getLocation() {
      let locationTarget = RickAndMortyTargetType.location
      provider.request(target: locationTarget) { [weak self] (result: Result<[RickAndMortyLocation], Error>) in
        switch result {
        case .success(let locations):
          self?.view?.showCharacters(locations)
        case .failure(let error):
          self?.view?.showError(error)
       }
      }
    }
}
