import Sailor

struct HomePage: Page {
    
    @State var num: Int = 0
    
    var body: some Page {
        Div {
            
            Img(src: "favicon.ico")
            
            H1("your number is \(num)")
            
            Div {
                H2("\(num) / 10")

                if num == 10 {
                    H2("Number hit 10!")
                        .onAppear {
                            print("number hit 10!")
                        }
                }
            }.style {
                CSS.padding(.px(10))
            }
            
            Button(num == 10 ? "Reset" : "Press Me!")
                .onClick {
                    if num == 10 {
                        self.num = -1
                    }
                    self.num += 1
                }
        }
        .style {
            CSS.backgroundColor(.red)
            CSS.padding(.px(10))
        }
        
    }
}
