---
title: UX Design Document (UXD)
nav_order: 3
---

[← Back to Main README](../README.md)

# **UX Design Document: ReVoice**

---

## **Layout Structure**

### **Home Screen**

* Large central mic button for starting voice capture

* Recent messages displayed as scrollable cards with timestamp and tone tag

* Option to start a new message with one tap

### **Recording Screen**

* Live waveform visual with dynamic color

* Pause/resume buttons with haptic feedback

* Visual cue (glow ring) for active voice capture

* Cancel or Save & Continue buttons

### **Transcript Review Screen**

* Scrollable transcript block (collapsible)

* Inline edit option for manual cleanup

* “Ready for Tone” button to proceed to transformation

### **Tone Selection Screen**

* Horizontally scrollable tone preset buttons (e.g., Gen Z, Professional, Friendly)

* Preview of message in selected tone

* Toggle to compare different tones

### **AI Chat Refinement Screen**

* Canvas-based chat interface for iterative message editing

* Left side: message preview

* Right side: conversational thread with AI suggestions

* “Accept,” “Undo,” and “Reset” controls

### **Export Screen**

* Copy to clipboard with animation

* One-tap share to external apps (iMessage, Mail, Slack, etc.)

* Optional save to History with tag input

### **Settings Panel**

* API key input (OpenAI, Anthropic)

* Toggle online processing features

* Manage tone presets (default \+ custom)

* Privacy: Clear history, delete all data

* Theme toggle (Light / Dark)

---

## **Core Components**

* **Mic Button**: Single-tap to start/stop voice session

* **Waveform Visualizer**: Real-time audio feedback

* **Transcript Viewer**: Editable block with clean UI

* **Tone Presets Carousel**: Predefined voice styles

* **AI Chat Editor**: Chat-like editing assistant

* **Message Preview Canvas**: Final message workspace

* **Export Toolbar**: Copy, Share, Save options

* **Settings Modal**: Secure key entry and preferences

---

## **Interaction Patterns**

* Tap mic to begin recording

* Speak message naturally

* Tap transcript text to edit

* Select tone preset with one swipe

* Refine message via AI chat or accept preset result

* Tap export action or save to session history

* Tap-and-hold on history card for tag/edit/delete

---

## **Visual Design Elements & Color Scheme**

* **Primary Colors**: Soft navy, twilight blue, mint green accents

* **Tone Accent Colors**: Each tone style has its own theme color for previews

* **UI Aesthetic**: Minimalist, rounded corners, soft gradients, subtle motion

* **Transitions**: Slide, fade-in, pulse for actions

* **Accessibility Modes**: High contrast, reduced motion toggle

---

## **Mobile, Web App, Desktop Considerations**

* **iOS First**: Optimized for one-thumb use and intuitive gesture design

* **Web App (Later)**: Shared message history, editor tools, settings sync

* **Desktop (Optional)**: Long-form editing environment for power users

---

## **Typography**

* **Primary Font**: San Francisco (iOS Native)

* **Headlines**: Bold, 20–24pt

* **Body Text**: Medium, 16–18pt

* **AI Suggestions**: Monospace or italicized for clarity

---

## **Accessibility**

* WCAG AA compliant contrast

* Full VoiceOver support

* Haptics for confirmation/feedback

* Tap target minimums: 48pt

* Supports dynamic type scaling

* Optional voice command input (future)

---

This document defines the visual and interaction strategy for ReVoice’s user experience, built around fast, friendly, voice-first message creation and tone transformation.

