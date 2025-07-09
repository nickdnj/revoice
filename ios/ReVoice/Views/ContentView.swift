import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 40) {
                Spacer()
                Image("logo")
                    .resizable()
                    .frame(width: 120, height: 120)
                Text("ReVoice")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
                NavigationLink(destination: RecordingView()) {
                    ZStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 100)
                        Image(systemName: "mic.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                    }
                }
                Text("Tap to record")
                    .font(.headline)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gear")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
} 