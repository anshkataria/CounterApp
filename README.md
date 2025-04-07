# 📱 CounterApp

A simple, clean, and interactive iOS app that lets users increment, decrement, and reset a counter — built using Swift and Storyboard.

---

## 🚀 Features

- 🔢 Increment, decrement, and reset a number
- 🎯 Bounce animation when counter changes
- 📳 Haptic feedback on every button tap
- 🔊 Sound effects when tapping buttons
- 📤 Share current screen via iOS share sheet
- 🌗 Dark mode support
- 🎨 Clean and modern UI layout
- 🖼️ Custom app icon
- 🏁 Launch screen with title and tagline
- 💻 Built with Swift + Storyboard (no SwiftUI)

---

## 🧠 Concepts Used

| Concept                         | Purpose                                       |
| ------------------------------- | --------------------------------------------- |
| `@IBOutlet`                     | Connect UI to code                            |
| `@IBAction`                     | Respond to button taps                        |
| `didSet`                        | Auto-update label when counter changes        |
| `UIView.animate`                | Add bounce animation to label                 |
| `CGAffineTransform`             | Scale UI elements for animations              |
| `UIImpactFeedbackGenerator`     | Add haptic feedback to buttons                |
| `AVFoundation`, `AVAudioPlayer` | Play sound effects for button taps            |
| `UIActivityViewController`      | Share screenshot through iOS share sheet      |
| `UIGraphicsImageRenderer`       | Capture current screen as an image            |
| `UserDefaults`                  | Save and load counter value                   |
| LaunchScreen.storyboard         | Custom launch experience                      |
| AppIcon                         | Branded home screen icon                      |
| `.gitignore`                    | Keep Git commits clean and relevant           |
| `README.md`                     | Document the project for sharing and learning |

---

## 📸 Screenshots

![CounterApp Screenshot](counterApp.png)  
![CounterApp Home Screen](HomeScreen.png)

---

## 🛠 Built With

- Swift 5
- Xcode 15+
- UIKit
- Storyboard
- Git & GitHub

---

## 📂 How to Run

1. Clone the repo  
   `git clone https://github.com/your-username/CounterApp.git`

2. Open `CounterApp.xcodeproj` in Xcode

3. Build and run on a real iPhone or simulator

---

## 📌 Next Goals (Optional Ideas)

- Add a history log of taps
- Create a SwiftUI version
- Support multiple languages (Localization)

---

Made with ❤️ by [Ansh Kataria]
