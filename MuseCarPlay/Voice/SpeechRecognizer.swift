import Speech

final class SpeechRecognizer {
    private let recognizer = SFSpeechRecognizer()
    func requestAuthorization(_ completion: @escaping (Bool) -> Void) {
        SFSpeechRecognizer.requestAuthorization { completion($0 == .authorized) }
    }
}
