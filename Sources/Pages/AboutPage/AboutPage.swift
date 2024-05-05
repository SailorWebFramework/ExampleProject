//
//  AboutPage.swift
//
//
//  Created by Joshua Davis on 5/4/24.
//

import Sailor


struct AboutPage: Page {
    var body: some Page {
        Div {
            H1("About me...")
            
            Paragraph {
                """
                Welcome to my cool website. Learn more about me here!
                """
            }
        }
    }
}
