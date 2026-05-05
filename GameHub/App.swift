import SwiftUI

@main
struct GameHubApp: App {
    @StateObject var steam = SteamManager()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                List {
                    Section(header: Text("Account")) {
                        Button(steam.isLoggedIn ? "Connected to Steam" : "Login to Steam") {
                            steam.loginToSteam()
                        }
                    }
                    Section(header: Text("Game Library")) {
                        ForEach(steam.gameList, id: \.self) { game in
                            Text(game).bold()
                        }
                    }
                }
                .navigationTitle("GameHub Pro")
                .onAppear { steam.fetchCloudGames() }
            }
        }
    }
}
