
import Foundation


class EpisodePresenter {
  
  // MARK: Properties
  
  private let router: EpisodeRouter
    private let provider: APIProvider
    
  weak var view: EpisodeDisplayable?
  
  // MARK: Initial
  
  init(view: EpisodeDisplayable, router: EpisodeRouter, provider: APIProvider = ServiceAPIProvider()) {
    self.view = view
    self.router = router
    self.provider = provider
  }
  
  //MARK: Presenting
  
    func getLocation() {
      let EpisodeTarget = RickAndMortyTargetType.episode
      provider.request(target: EpisodeTarget) { [weak self] (result: Result<[RickAndMortyEpisode], Error>) in
        switch result {
        case .success(let episodes):
          self?.view?.showCharacters(episodes)
        case .failure(let error):
          self?.view?.showError(error)
       }
      }
    }
}
