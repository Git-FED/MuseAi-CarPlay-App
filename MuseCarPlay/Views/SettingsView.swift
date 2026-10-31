import SwiftUI

struct SettingsView: View {
    var body: some View { Form { Section("Muse") { Toggle("Voice responses", isOn: .constant(true)) } } }
}
