import SwiftUI

struct SettingsView: View {
    var body: some View {
        Form {
            Section(header: Text("API Keys")) {
                Text("OpenAI API Key")
                // Placeholder for API key input
            }
            Section(header: Text("Appearance")) {
                Toggle("Dark Mode", isOn: .constant(false))
            }
            Section(header: Text("About")) {
                Text("ReVoice v0.1")
                Text("Built by Nick DeMarco and contributors")
            }
        }
        .navigationTitle("Settings")
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
} 