import Foundation
import WebKit

class SteamManager: ObservableObject {
    @Published var isLoggedIn = false
    @Published var gameList: [String] = []
    
    func loginToSteam() {
        // এখানে Steam OpenID বা OAuth প্রোটোকল কল করা হবে
        print("Initiating Steam Login...")
        self.isLoggedIn = true
    }
    
    func fetchCloudGames() {
        // ক্লাউড সার্ভার থেকে গেমের লিস্ট আনা
        self.gameList = ["Cyberpunk 2077 (Cloud)", "Elden Ring (Stream)", "Local Emulator Core"]
    }
}
