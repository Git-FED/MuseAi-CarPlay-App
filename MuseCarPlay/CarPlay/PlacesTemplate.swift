import CarPlay

final class PlacesTemplate {
    let template: CPListTemplate
    init() {
        let places = PlacesService().nearbyPlaces()
        let items = places.map { place in
            let item = CPListItem(text: place.name, detailText: place.address, image: nil)
            item.handler = { _, completion in completion() }
            return item
        }
        template = CPListTemplate(title: "Nearby Places", sections: [CPListSection(items: items)])
    }
}
