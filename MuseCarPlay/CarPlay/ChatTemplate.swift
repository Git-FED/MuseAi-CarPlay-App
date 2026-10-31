import CarPlay

final class ChatTemplate {
    let template: CPListTemplate
    private let service = MuseChatService()

    init() {
        let prompt = CPListItem(text: "Start a voice conversation", detailText: "Muse will listen and respond hands-free", image: nil)
        prompt.handler = { [service] _, completion in
            VoiceSession.shared.start { _ in completion() }
            _ = service
        }
        template = CPListTemplate(title: "Talk to Muse", sections: [CPListSection(items: [prompt])])
    }
}
