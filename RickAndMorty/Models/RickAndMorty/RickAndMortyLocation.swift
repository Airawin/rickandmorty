
import Foundation

struct RickAndMortyLocation: Codable {
    var name: String
    var type: String
    var dimension: String
    var url: String
    var residents: Array<String>
}
