import Foundation

public func getMarvelUrl(_ publicKey: String, _ md5hash: String) -> String {
    return "https://gateway.marvel.com:443/v1/public/characters/1010699?" + "ts=1&apikey=" + publicKey + "&hash=" + md5hash
}


