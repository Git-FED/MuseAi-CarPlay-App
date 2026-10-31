import AVFoundation

final class SpeechSynthesizer {
    private let synthesizer = AVSpeechSynthesizer()
    func speak(_ text: String) {
        synthesizer.speak(AVSpeechUtterance(string: text))
    }
    func stop() { synthesizer.stopSpeaking(at: .immediate) }
}
