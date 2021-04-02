
import Moya

enum RickAndMortyTargetType {
  case character
  case location
}

// MARK: TargetType

extension RickAndMortyTargetType: TargetType {
  
  var baseURL: URL { URL(string: "https://rickandmortyapi.com/api/")! }
  
  var path: String {
    switch self {
    case .character: return "character"
    case .location: return "location"
    }
  }
  
  var method: Method { .get }
  
  var sampleData: Data { Data() }
  
  var task: Task { .requestPlain }
  
  var headers: [String : String]? { nil }

}
