import Foundation
import Alamofire

struct Superhero: Decodable {
    let name: String
    let powerstats: Powerstats
    let appearance: Appearance
    let biography: Biography
    let images: Images
}

struct Powerstats: Decodable {
    let intelligence: Int
    let strength: Int
    let speed: Int
    let durability: Int
    let power: Int
    let combat: Int
}

struct Appearance: Decodable {
    let gender: String
    let race: String?
    let height: [String]
    let weight: [String]
}

struct Biography: Decodable {
    let fullName: String
    let placeOfBirth: String?
    let alignment: String
}

struct Images: Decodable {
    let lg: String
}
class NetworkManager {
    static let shared = NetworkManager()

    let url = "https://akabab.github.io/superhero-api/api/all.json"

    func fetchSuperheroes(completion: @escaping ([Superhero]?) -> Void) {
        AF.request(url).responseDecodable(of: [Superhero].self) { response in
            switch response.result {
            case .success(let superheroes):
                completion(superheroes)
            case .failure(let error):
                print(error)
            }
        }
    }
}
