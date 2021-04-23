
import UIKit

protocol EpisodeDetailDisplayable: class {
  
}

class EpisodeDetailViewController: BaseViewController<EpisodeDetailView>, EpisodeDetailDisplayable {
  
  // MARK: Properties
  
  var presenter: EpisodeDetailPresenter!
  
  // MARK: Initial
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  // MARK: View
  
}
