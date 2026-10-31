import SwiftUI

struct ChatView: View {
    @State private var text = ""
    var body: some View { VStack { Text("Voice-first chat"); TextField("Message", text: $text).textFieldStyle(.roundedBorder) }.padding() }
}
