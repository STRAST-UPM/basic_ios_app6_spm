import SwiftUI

struct ContentView: View {
    private let libraryManager = LibraryManager() // Instancia de la clase de librerías

    var body: some View {
        VStack {
            Text("Bienvenido a la App")
                .font(.title)
                .padding()

            Button("Llamar a la Librería") {
                libraryManager.callLibraryFunction()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
    }
}

#Preview {
    ContentView()
}
