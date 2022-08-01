import Foundation

public func getMarvelUrl(_ publicKey: String, _ md5hash: String) -> String {
    let masterServerURL = "https://gateway.marvel.com:443"
    return masterServerURL + "/v1/public/characters/1010699?" + "ts=1&apikey=" + publicKey + "&hash=" + md5hash
}


