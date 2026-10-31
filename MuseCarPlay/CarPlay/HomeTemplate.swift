import CarPlay

final class HomeTemplate {
    private weak var interfaceController: CPInterfaceController?

    func connect(to interfaceController: CPInterfaceController) {
        self.interfaceController = interfaceController
        let items = [
            CPListItem(text: "Talk to Muse", detailText: "Ask a question by voice", image: nil),
            CPListItem(text: "Places", detailText: "Find nearby places", image: nil),
            CPListItem(text: "Reservations", detailText: "Review your plans", image: nil)
        ]
        items[0].handler = { [weak self] _, completion in
            self?.show(ChatTemplate().template, animated: true); completion()
        }
        items[1].handler = { [weak self] _, completion in
            self?.show(PlacesTemplate().template, animated: true); completion()
        }
        items[2].handler = { [weak self] _, completion in
            self?.show(ReservationTemplate().template, animated: true); completion()
        }
        let template = CPListTemplate(title: "Muse", sections: [CPListSection(items: items)])
        interfaceController.setRootTemplate(template, animated: false)
    }

    func disconnect() { interfaceController = nil }
    private func show(_ template: CPTemplate, animated: Bool) {
        interfaceController?.pushTemplate(template, animated: animated)
    }
}
