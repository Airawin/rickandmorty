
import UIKit

protocol LocationDetailDisplayable: class {
    func showCharacters(_ location: [RickAndMortyLocation])
    func showError(_ error: Error)
}

class LocationDetailViewController: BaseViewController<LocationDetailView>, LocationDetailDisplayable {
    
  // MARK: Properties
  
  var presenter: LocationDetailPresenter!
    var imageView: UIImageView = {
            let imageView = UIImageView(frame: .zero)
            imageView.image = UIImage(named: "enter-rick-morty-contest-2.jpeg")
            imageView.contentMode = .scaleToFill
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
    
  // MARK: Initial
    
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.insertSubview(imageView, at: 0)
            NSLayoutConstraint.activate([
                imageView.topAnchor.constraint(equalTo: view.topAnchor),
                imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
    
    presenter.getLocation()
  }
  
  // MARK: View
  
    func showCharacters(_ locations: [RickAndMortyLocation]) {
        mainView.locations = locations
    }
    
    func showError(_ error: Error) {
        
    }
}
