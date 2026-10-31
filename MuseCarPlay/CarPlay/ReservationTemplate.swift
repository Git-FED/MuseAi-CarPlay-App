import CarPlay

final class ReservationTemplate {
    let template: CPListTemplate
    init() {
        let reservations = ReservationService().upcomingReservations()
        let items = reservations.map { reservation in
            CPListItem(text: reservation.placeName, detailText: reservation.displayDate, image: nil)
        }
        template = CPListTemplate(title: "Reservations", sections: [CPListSection(items: items)])
    }
}
