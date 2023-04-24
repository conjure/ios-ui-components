# UIComponents
A package that includes various UI components written in SwiftUI by developers at Conjure. The library will be updated over time to contain more reusable components that can be easily integrated into a project.

### Requirements
- iOS 15.0
- Xcode 14.0
- Swift 5.7

### Installation 

#### Swift Package Manager
UIComponents is available through Swift Package Manager:
`https://github.com/conjure/ios-ui-components.git`

#### Manual
Source files are located in the `Sources` directory under the name of the corresponding component eg:
`./Sources/Carousel`

### Examples
To run the example project, clone the repo, go to the `Example` folder, and run the project in Xcode.

# Components

### Carousel
`CarouselView` provides a simple carousel-style scroll view with pagination where every item is centred in the middle.

![](https://github.com/conjure/ios-ui-components/blob/main/Images/carousel-video.mp4)

##### Usage
Using Carousel is as easy as:
```swift
struct MyView: View {
    @State var index: Int = 0
    let items: [String] = ["Item 1", "Item 2", "Item 3"]
        
    var body: some View {
        CarouselView(items: items, currentIndex: $index) { item in
            Text(item)
                .frame(width: 300, height: 400)
                .background(.orange)
                .cornerRadius(12)
        }
    }
}
```
### License
UIComponents is available under the MIT license.
