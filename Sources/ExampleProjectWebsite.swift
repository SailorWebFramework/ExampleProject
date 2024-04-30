import Sailor

@main
struct Entrypoint: Website {

    typealias WebRoutes = AppRoutes
    
    init() {
        print("Initialized project")
    }
    
    @State var number: Int = 0;
  
    var body: some Page {
        Div {
            //TODO: abstract linking away
            Link(rel: "stylesheet", href: "YOURNAME_SailorApp.resources/main.css")
            Div("Hello, World!")
                .classes("container")
            Div {
                P("Count: \(number)")
            }
            Button("Add")
                .onClick {
                    number+=1;
                }
            Img(src: "YOURNAME_SailorApp.resources/favicon.ico", alt: "Sailor logo")
        }
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
