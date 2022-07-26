
import UIKit

let sessionConfiguration = URLSessionConfiguration.default
sessionConfiguration.allowsCellularAccess = true
sessionConfiguration.waitsForConnectivity = true
let session = URLSession(configuration: sessionConfiguration)

func getData(urlRequest: String) {
    let urlRequest = URL(string: urlRequest)
    guard let url = urlRequest else { return }
//    if !UIApplication.shared.canOpenURL(url) {
//        print("URL not correct")
//        return
//    }

    session.dataTask(with: url) { (data, responce, error) in
        if error != nil {
            print("Error: \(error?.localizedDescription ?? "")")
        } else if let responce = responce as? HTTPURLResponse, responce.statusCode == 200 {
            print("Response status from server: \(responce.statusCode)\n")
            
            guard let data = data else { return }
            let dataAsString = String(data: data, encoding: .utf8)
            print("Get data: \(dataAsString ?? "nothing")")
        } else if let responce = responce as? HTTPURLResponse {
            print("Error status from server: \(responce.statusCode)\n")
            return
        }
    }.resume()
}

// MARK: - Main

let url = "https://picsum.photos/v2/list"
let url2 = "https://picsum.photos/id/0/info"
let url3 = "https://fakerapi.it/api/v1/images?_quantity=1&_type=kittens&_height=300"
getData(urlRequest: url3)
