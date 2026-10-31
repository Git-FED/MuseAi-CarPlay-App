import CarPlay

final class VoiceTemplate {
    let template: CPInformationTemplate
    init(status: String = "Listening…") {
        template = CPInformationTemplate(title: "Muse", layout: .leading, items: [
            CPInformationItem(title: "Voice session", detail: status)
        ], actions: [])
    }
}
