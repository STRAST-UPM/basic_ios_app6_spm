import Foundation
import IQKeyboardManagerSwift
import MBProgressHUD
import OpenSSL
import Collections
import Reachability
import RxCocoa
import SDWebImage
import Starscream
import SVProgressHUD
import SwiftyGif
import Toast
import UIKit

class LibraryManager: ObservableObject {
    @Published var lastLibraryUsed: String = "Ninguna" // Estado para mostrar en la UI
    private var reachability: Reachability?
    private var socket: WebSocket?
    
    init() {
        setupReachability()
        setupWebSocket()
    }

    func callLibraryFunction() {
        let libraries = [
            "IQKeyboardManagerSwift",
            "MBProgressHUD",
            "OpenSSL",
            "OrderedSet",
            "Reachability",
            "RxCocoa",
            "SDWebImage",
            "Starscream",
            "SVProgressHUD",
            "SwiftyGif",
            "Toast"
        ]
        
        if let randomLibrary = libraries.randomElement() {
            DispatchQueue.main.async {
                self.lastLibraryUsed = randomLibrary
            }
            
            switch randomLibrary {
            case "IQKeyboardManagerSwift":
                callIQKeyboardManagerSwift()
            case "MBProgressHUD":
                callMBProgressHUD()
            case "OpenSSL":
                callOpenSSL()
            case "OrderedSet":
                callOrderedSet()
            case "Reachability":
                callReachability()
            case "RxCocoa":
                callRxCocoa()
            case "SDWebImage":
                callSDWebImage()
            case "Starscream":
                callStarscream()
            case "SVProgressHUD":
                callSVProgressHUD()
            case "SwiftyGif":
                callSwiftyGif()
            case "Toast":
                callToast()
            default:
                break
            }
        }
    }


    private func callIQKeyboardManagerSwift() {
        print("⌨️ IQKeyboardManagerSwift activado para gestión avanzada de teclado en Swift.")
    }

    private func callMBProgressHUD() {
        guard let window = UIApplication.shared.windows.first else { return }
        let hud = MBProgressHUD.showAdded(to: window, animated: true)
        hud.label.text = "Cargando..."
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            MBProgressHUD.hide(for: window, animated: true)
        }
        print("⏳ MBProgressHUD mostrando indicador de carga.")
    }

    private func callOpenSSL() {
        print("🔐 OpenSSL gestionando seguridad y cifrado (requiere implementación específica).")
    }

    private func callOrderedSet() {
        var orderedSet = OrderedSet([1, 2, 3, 4, 5])
        orderedSet.append(6)
        print("📦 OrderedSet manejando estructuras de datos ordenadas: \(orderedSet)")
    }

    private func setupReachability() {
        do {
            reachability = try Reachability()
            try reachability?.startNotifier()
        } catch {
            print("Error configurando Reachability: \(error)")
        }
    }

    private func callReachability() {
        if let reachability = reachability {
            let status = reachability.connection == .unavailable ? "Sin conexión" : "Conectado"
            print("🌐 Reachability verificando conexión a internet: \(status)")
        }
    }

    private func callRxCocoa() {
        let textField = UITextField()
        let observable = textField.rx.text.orEmpty
        observable.subscribe(onNext: { text in
            print("⚡ RxCocoa detectó cambio de texto: \(text)")
        })
        print("⚡ RxCocoa manejando programación reactiva.")
    }

    private func callSDWebImage() {
        let imageView = UIImageView()
        let url = URL(string: "https://via.placeholder.com/150")
        imageView.sd_setImage(with: url)
        print("🖼 SDWebImage cargando imágenes de manera eficiente.")
    }

    private func setupWebSocket() {
        let url = URL(string: "wss://echo.websocket.org")!
        socket = WebSocket(request: URLRequest(url: url))
        socket?.onEvent = { event in
            switch event {
            case .connected(let headers):
                print("📡 Starscream WebSocket conectado: \(headers)")
            case .disconnected(let reason, let code):
                print("📡 Starscream WebSocket desconectado: \(reason) (Código: \(code))")
            default:
                break
            }
        }
        socket?.connect()
    }

    private func callStarscream() {
        socket?.write(string: "Hola desde Starscream!")
        print("📡 Starscream manejando conexiones WebSocket.")
    }

    private func callSVProgressHUD() {
        SVProgressHUD.show(withStatus: "Cargando...")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            SVProgressHUD.dismiss()
        }
        print("🔄 SVProgressHUD mostrando indicador de carga.")
    }

    private func callSwiftyGif() {
        let gifManager = SwiftyGifManager(memoryLimit: 20)
        let imageView = UIImageView()
        do {
            let gif = try UIImage(gifName: "example.gif")
            imageView.setGifImage(gif, manager: gifManager)
            print("🎞 SwiftyGif reproduciendo animaciones GIF.")
        } catch {
            print("❌ SwiftyGif no pudo cargar el GIF.")
        }
    }

    private func callToast() {
        guard let window = UIApplication.shared.windows.first else { return }
        window.makeToast("🍞 Toast mostrando notificación emergente.", duration: 3.0, position: .bottom)
        print("🍞 Toast mostrando notificación emergente.")
    }
}
