# ReVoice

ReVoice is a voice-first iOS app that transforms spoken thoughts into perfectly crafted messages for any audience or tone. Effortless, privacy-first, and powered by AI.

## Features
- **Voice Capture**: Tap-to-record, live waveform, on-device transcription
- **Transcript Review**: Edit and clean up before processing
- **Tone Transformation**: Choose from preset tone styles (Gen Z, Boomer, Professional, etc.)
- **AI Message Refinement**: Chat interface for iterative editing, commands like "shorter," "add warmth"
- **Output**: Copy, share, or save messages with tags and history
- **Session Management**: View, tag, favorite, and search past messages
- **Privacy-First**: All processing is local by default; API keys stored securely

## Architecture
- **iOS App**: Built with Swift & SwiftUI
- **Voice & TTS**: Apple Speech framework (on-device), ElevenLabs (optional)
- **AI Services**: OpenAI GPT-4o/Claude via HTTPS API
- **Storage**: Local (Core Data/FileManager), Keychain for API keys
- **No custom backend**

## Getting Started
1. Clone the repo: `git clone https://github.com/nickdnj/revoice.git`
2. Open the `ios/` folder in Xcode
3. Add your OpenAI API key in Settings (optional for online features)
4. Build and run on your iOS device

## Contributing
Pull requests are welcome! Please read the docs in `/docs` and follow the architecture and UX guidelines. For major changes, open an issue first to discuss what you’d like to change.

## License
[MIT](LICENSE)

## Credits
- Product, architecture, and UX docs: see `/docs`
- Built by Nick DeMarco and contributors
