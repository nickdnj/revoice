import SwiftUI

struct RecordingView: View {
    var body: some View {
        VStack(spacing: 30) {
            Text("Recording...")
                .font(.title)
            // Placeholder for waveform
            RoundedRectangle(cornerRadius: 12)
                .fill(Color.gray.opacity(0.3))
                .frame(height: 120)
                .overlay(Text("Waveform"))
            HStack(spacing: 40) {
                Button(action: {}) {
                    Image(systemName: "pause.fill")
                        .font(.largeTitle)
                }
                Button(action: {}) {
                    Image(systemName: "stop.fill")
                        .font(.largeTitle)
                }
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Recording")
    }
}

struct RecordingView_Previews: PreviewProvider {
    static var previews: some View {
        RecordingView()
    }
} 