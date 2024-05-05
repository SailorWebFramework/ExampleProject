import Sailor
import Navigator

struct HomePage: Page {
    
    @State var num: Int = 0
    
    var body: some Page {
        Div {
            
            H1("Welcome")

            Paragraph {
                """
                This example project is currently being updated and improved!
                """
            }
            
            Img(src: "favicon.ico")
            
            Div {
                Span("counter: \(num)")
                               
                if num % 3 == 0 {
                    Span {
                        " || \(num) is divisible by 3"
                    }
                }
                
            }
            .style {
                CSS.padding(.px(10))
            }
            
            Div {
                Button("Press Me!")
                    .onClick {
                        num += 1
                    }
                Button("Reset")
                    .onClick {
                        num = 0
                    }
            }

        }
        .style {
            if num % 3 == 0 {
                CSS.backgroundColor(.red)
            }
            
            CSS.padding(.px(10))
        }
        
    }
}
