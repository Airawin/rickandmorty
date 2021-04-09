
import UIKit

protocol SellectMenuDisplayable: class {
    
}

class SellectMenuViewController: BaseViewController<SellectMenuView>, SellectMenuDisplayable {

  // MARK: Properties
  
  var presenter: SellectMenuPresenter!
    var imageView: UIImageView = {
            let imageView = UIImageView(frame: .zero)
            imageView.image = UIImage(named: "421041c3ecac129a4257420209dfd65e.jpeg")
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
    
    mainView.buttonSelectCharacter.addTarget(self, action: #selector(buttonActionCharecter), for: .touchUpInside)
    mainView.buttonSelectLocation.addTarget(self, action: #selector(buttonActionLocation), for: .touchUpInside)
    mainView.buttonSelectEpisode.addTarget(self, action: #selector(buttonActionEpisode), for: .touchUpInside)
  }
  
  // MARK: View
    
    @objc func buttonActionCharecter(sender: UIButton!) {
        presenter.presenCharacter()
    }
    
    @objc func buttonActionLocation(sender: UIButton!) {
        presenter.presenLocation()
    }
    
    @objc func buttonActionEpisode(senfer: UIButton!) {
        presenter.presenEpisode()
    }
    
}
