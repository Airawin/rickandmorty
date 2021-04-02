
import Moya

protocol APIProvider {
  func request<Response: Codable>(target: TargetType, completion: @escaping (Result<Response, Error>) -> Void)
}
