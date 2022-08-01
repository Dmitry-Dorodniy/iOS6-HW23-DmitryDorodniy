// MARK: - Base Task

let urlPicsum = "https://picsum.photos/v2/list"
let urlFakeapi = "https://fakerapi.it/api/v1/images?_quantity=1&_type=kittens&_height=300"
let magicCard = "https://api.magicthegathering.io/v1/cards?name=Lotus"

getData(urlRequest: magicCard)

// MARK: - Marvel Task
let marvelPublicKey = "7e1b58c9e3967cddad472e676e668a4e"
let marvelPrivateKey = "392fef82c8659a65fb3c7f7db18b40f83ecba566"
let md5hash = ("1" + marvelPrivateKey + marvelPublicKey).md5()
let marvelUrl = getMarvelUrl(marvelPublicKey, md5hash)

getData(urlRequest: marvelUrl)

