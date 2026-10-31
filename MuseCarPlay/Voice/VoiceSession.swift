import Foundation

final class VoiceSession {
    static let shared = VoiceSession()
    private let recognizer = SpeechRecognizer()
    private let synthesizer = SpeechSynthesizer()
    private(set) var isActive = false

    func start(completion: @escaping (Result<Void, Error>) -> Void) {
        recognizer.requestAuthorization { [weak self] authorized in
            guard authorized else { completion(.failure(VoiceError.authorizationDenied)); return }
            self?.isActive = true
            completion(.success(()))
        }
    }
    func stop() { isActive = false; synthesizer.stop() }
    func speak(_ text: String) { synthesizer.speak(text) }
    enum VoiceError: Error { case authorizationDenied }
}
