import Sailor

@main
struct Entrypoint: Website {

    typealias WebRoutes = AppRoutes
    
    init() {
        print("Initialized project")
    }
  
    var body: some Page {
        Div("Hello, World!")
    }
}

// struct NavBar: Page {
//     @Environment(\.navigation) var navigation: Navigation
//     @Environment(\.url) var url

//     var body: some Page {
//         Div {
//             Div("URL: \(url)")
//             Div {
//                 Button("About")
//                     .onClick {
//                         navigation.go(to: .about)
//                     }
//                 Button("Home")
//                     .onClick {
//                         navigation.go(to: .home)
//                     }
//                 Button("Exlore")
//                     .onClick {
//                         navigation.go(to: .explore)
//                     }
//             }
//         }
//     }
// }
