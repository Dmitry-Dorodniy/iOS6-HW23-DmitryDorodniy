import UIKit
import Foundation

func getData(urlRequest: String) {
let urlRequest = URL(string: urlRequest)
    guard let url = urlRequest else { return }
    URLSession.shared.dataTask(with: url) { data, responce, error in
        if error != nil {

        } else if let responce = responce as? HTTPURLResponse, responce.statusCode == 200 {
            guard let data = data else { return }
            let dataAsString = String(data: data, encoding: .utf8)
        }
    }.resume()
}
