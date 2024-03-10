import Sailor

// Adds your routes to your project Environment
typealias Environment<Value> = Sailor.Environment<AppRoutes, Value>

// Adds your routes to the Route object
typealias Route = Sailor.Route<AppRoutes>

enum AppRoutes: Routes {
    static var Root: Self { .home }
    static var NotFound: Self { .notFound }
    static var defaultRoute: Self { .home }
    
    static var bindings: BidirectionalDictionary<Self, String> = [
        .home: "/",
        .notFound: "404"
    ]
    
    case home, notFound
    
}

