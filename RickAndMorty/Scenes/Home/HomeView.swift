
import UIKit
import SnapKit

class HomeView: BaseView {
  
  // MARK: Views
  
  let titleLabel = Label(size: .title, weight: .normal)
  let tableView = UITableView()
  
  // MARK: Properties
  
  var didSelectCharacter: ((RickAndMortyCharacter) -> Void)?
  var characters = [RickAndMortyCharacter]() {
    didSet {
      tableView.reloadData()
    }
  }
  
  // MARK: Initial
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func setupView() {
    addSubviews(titleLabel, tableView)
    
    titleLabel.text = "Title Label is here"
    titleLabel.textColor = .white
    titleLabel.backgroundColor = .clear
    
    titleLabel.snp.makeConstraints { make in
      make.top.equalToSuperview()
      make.leading.equalToSuperview()
      make.trailing.equalToSuperview()
    }
    
    tableView.snp.makeConstraints { make in
      make.top.equalTo(titleLabel.snp.bottom)
      make.leading.equalToSuperview()
      make.trailing.equalToSuperview()
      make.bottom.equalToSuperview()
    }
    
    tableView.backgroundColor = .white
    tableView.dataSource = self
    tableView.delegate = self
    tableView.register(HomeCharacterCell.self)
  }
  
}

// MARK: TableView

extension HomeView: UITableViewDelegate, UITableViewDataSource {
  
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    characters.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let character = characters[indexPath.row]
    let cell = tableView.dequeue(HomeCharacterCell.self, at: indexPath)
    cell.setup(with: character)
    
    return cell
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let character = characters[indexPath.row]
    didSelectCharacter?(character)
  }
  
}
