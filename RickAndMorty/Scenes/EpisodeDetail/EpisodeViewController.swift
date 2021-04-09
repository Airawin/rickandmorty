
import UIKit

protocol EpisodeDisplayable: class {
    func showCharacters(_ episodes: [RickAndMortyEpisode])
    func showError(_ error: Error)
}

class EpisodeViewController: BaseViewController<EpisodeView>, EpisodeDisplayable {
  
  // MARK: Properties
  
  var presenter: EpisodePresenter!
    
    var imageView: UIImageView = {
            let imageView = UIImageView(frame: .zero)
            imageView.image = UIImage(named: "R&M.jpeg")
            imageView.contentMode = .scaleToFill
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
  
  // MARK: Initial
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    presenter.getLocation()
    
    view.insertSubview(imageView, at: 0)
            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: view.topAnchor),
                imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    
  }
  
  // MARK: View
  
    func showCharacters(_ epispdes: [RickAndMortyEpisode]) {
        mainView.episodes = epispdes
    }
    
    func showError(_ error: Error) {
        
    }
}
