import Sailor

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
                Span("Header Text!")
            }
            
            HomePage()
            
            HTML.Footer {
                Span("Footer Text!")
            }
        }
    }
}
