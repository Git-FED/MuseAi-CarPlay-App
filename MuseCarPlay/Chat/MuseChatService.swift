import Foundation

/// Replace this stub with the authenticated Muse chat API integration.
final class MuseChatService {
    struct Configuration { let endpoint: URL; let apiKey: String? }
    var configuration: Configuration?

    func send(message: String, completion: @escaping (Result<Message, Error>) -> Void) {
        // Integration point: create a URLRequest, add authentication, and decode the response.
        completion(.success(Message(role: .assistant, text: "Muse chat is ready to be connected.")))
    }
}
