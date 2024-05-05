//
//  File.swift
//  
//
//  Created by Joshua Davis on 5/4/24.
//

import Sailor
import Navigator

struct Navbar: Page {
    var body: some Page {
        Div {
            Button("Home")
                .onClick {
                    Navigator.go(to: "/")
                }
            Button("About")
                .onClick {
                    Navigator.go(to: "about")
                }
        }
        .style {
            CSS.padding(.px(10))
            CSS.float(.left)
            "display: inline;"
        }
    }
}
