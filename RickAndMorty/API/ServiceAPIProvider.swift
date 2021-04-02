
import Foundation
import Moya

class ServiceAPIProvider: APIProvider {
  
  var provider: MoyaProvider<MultiTarget>
  
  init() {
    provider = MoyaProvider(plugins: [NetworkLoggerPlugin()])
  }
  
  func request<Response>(target: TargetType, completion: @escaping (Result<Response, Error>) -> Void) where Response : Decodable, Response : Encodable {
      provider.request(MultiTarget(target)) { result in
        switch result {
      case .success(let response):
        do {
          let responseModel = try response.map(BaseAPIResponse<Response>.self)
          completion(.success(responseModel.results))
        } catch {
          completion(.failure(error))
        }
      case .failure(let error):
        completion(.failure(error))
      }
    }
  }
  
}
