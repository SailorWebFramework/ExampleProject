import Sailor
import Navigator

@main
struct ExampleProjectWebsite: Website {
        
    var head: some Head {
        HTML.Head {
            HTML.Title("Example Project Website")
            HTML.Link(rel: "icon", href: "favicon.ico")
        }
    }
        
    var body: some Body {
        HTML.Body {
            HTML.Header {
                Span("Sick Website!")
            }
            
            Navbar()
            
            Router {
                Route("/") {
                    HomePage()
                }
                
                Route("about") {
                    AboutPage()
                }
                
            } notFound: {
                Div("Page not found")
            }
            
            HTML.Footer {
                Span("Pretty sick!")
            }
        }
        .environmentObject(TestObject())
    }
}

class TestObject: ObservableObject {
    @Published var num: Int
    
    init(num: Int = 0) {
        self.num = num
    }
}
