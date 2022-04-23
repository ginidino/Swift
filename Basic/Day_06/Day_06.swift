import UIKit

// Class vs Struct
// struct
// it is good because of memberwise initializer
// It's good because you don't have to make a generator
struct YouTuberStruct {
    var name : String
    var count : Int
}

var devYouTube = YouTuberStruct(name: "abcd", count: 100)
var devYouTubeClone = devYouTube
print("Name of YouTube: \(devYouTubeClone.name)")

devYouTubeClone.name = "efgh"

// The value of the two is different because it is a copy of the value
print("Name of YouTube: \(devYouTubeClone.name)")
print("Name of YouTube: \(devYouTube.name)")
print("")

// Class
class YouTuberClass {
    var name : String
    var count : Int
    // In the case of class, a generators must be created (Generate: put in memory)
    // You must create a generator smethod with parameters in init to insert parameters and create objects
    init(name: String, count: Int) {
        self.name = name
        self.count = count
    }
}

var youtube = YouTuberClass(name: "abcd", count: 100)
var youtubeClone = youtube
print("Name of YouTube: \(youtubeClone.name)")

youtubeClone.name = "ijkl"
print("Name of YouTube: \(youtubeClone.name)")
print("Name of YouTube: \(youtube.name)")
