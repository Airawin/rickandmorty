
import UIKit
import SnapKit

class EpisodeView: BaseView {
  
  // MARK: Views
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cs = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cs.backgroundColor = .white
        return cs
    }()
  
  // MARK: Properties
  
    var episodes = [RickAndMortyEpisode]() {
      didSet {
        collectionView.reloadData()
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
  
  // MARK: SetupView
  
    private func setupView(){
        addSubview(collectionView)
        
        collectionView.snp.makeConstraints{ make in
            make.top.equalTo(300)
            make.leading.equalTo(60)
            make.centerX.equalToSuperview()
            make.height.equalTo(200)
        }
        
        collectionView.backgroundColor = .white
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(EpisodeCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
}

extension EpisodeView: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return episodes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! EpisodeCollectionViewCell
        let episode = episodes[indexPath.row]
        cell.setup(episode: episode)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 200)
    }
     
}
