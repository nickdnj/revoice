---
title: Software Architecture Document (SAD)
nav_order: 2
---

[← Back to Main README](../README.md)

# **Software Architecture Document (SAD): ReVoice**

## **1\. System Overview**

ReVoice is an iOS-based mobile application that captures spoken input, transcribes it into text, and transforms it into tone-specific messages with AI assistance. The app offers a seamless flow from voice input to shareable, polished messages.

## **2\. Architecture Pattern**

* **Client-Only Model**: Native iOS app with no custom backend.

* **Modular Structure**: Separation of concerns for voice capture, transcription, tone processing, AI chat, and output/export.

## **3\. Technical Stack**

* **Frontend**: Swift, SwiftUI

* **Voice & TTS**: Apple Speech framework (on-device); ElevenLabs (optional, cloud-based)

* **AI Services**: OpenAI GPT-4o (or Claude) via HTTPS API calls for tone transformation and conversational editing

* **Storage**: Local-only by default (Core Data or FileManager); optional secure API key storage via Keychain

* **CI/CD**: GitHub \+ TestFlight

* **Source Repository**: [https://github.com/nickdnj/revoice.git](https://github.com/nickdnj/revoice.git)

## **4\. Component Breakdown**

### **4.1 Voice Capture Module**

* Records user audio using AVFoundation

* Stores audio temporarily in local memory

* Triggers transcription service on stop

### **4.2 Transcription Module**

* On-device transcription via Apple Speech framework

* Optional fallback to Whisper/OpenAI for higher accuracy (online-only)

* Produces time-stamped transcript blocks

### **4.3 Tone Engine**

* Takes cleaned transcript and tone preset as input

* Uses GPT-4o/Claude to reframe the text based on selected voice style

* Receives a full response suitable for texting/emailing

### **4.4 AI Refinement Interface**

* Allows user to chat with AI to modify message further

* State-tracked conversation with "Undo" and "Accept" logic

* Maintains original transcript and all revisions

### **4.5 Output Manager**

* Displays final text result with copy/share/export options

* Stores output to local history with timestamp and tone tags

* Future support for iMessage Extension or share sheet integration

### **4.6 Session History Manager**

* Locally stores transcripts and tone-modified outputs

* Allows search, tagging, version comparisons

### **4.7 Settings & API Key Manager**

* Secure local storage of OpenAI API key via Keychain

* Settings screen UI to input and validate API key

* Toggle to enable/disable online processing features

## **5\. Data Flow**

1. User records voice

2. Audio transcribed on-device

3. Transcript shown with option to edit

4. User selects tone or enters chat with AI

5. Tone engine transforms message

6. AI chat refines as needed

7. Final output copied/shared or saved

## **6\. APIs and Integrations**

* **OpenAI/Anthropic**: `/transform`, `/refine`

* **Apple Speech**: On-device audio-to-text

* **Clipboard API**: For one-tap copy

* **Share Sheet API**: For sending to apps like iMessage, Mail

* **Secure Local Storage**: Keychain for API key, FileManager/Core Data for history

## **7\. Privacy & Security**

* All processing is local-first; online AI use is opt-in

* API keys stored securely using Keychain

* No data stored externally unless explicitly enabled

* Optional delete-all/history wipe feature

## **8\. Testing & QA**

* **Unit Tests**: Voice capture, tone transformation, transcript cleanup

* **Integration Tests**: End-to-end voice-to-share workflow

* **Manual QA**: TestFlight builds

* **Regression Suite**: Automated runs for new versions

## **9\. Future Enhancements**

* Custom tone builder (trained from past messages)

* Real-time tone preview during AI chat

* Android/Web version

* Plugin integration with iMessage, Slack, Gmail

* Multilingual support

---

This SAD provides the technical foundation to build, test, and scale ReVoice as a privacy-conscious, voice-first tone transformation app.

