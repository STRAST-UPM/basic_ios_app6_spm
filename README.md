# basic_app

## Descripción
`basic_app` es una aplicación iOS desarrollada en **Swift** que integra múltiples librerías. Se gestiona a través de **Swift Package Manager (SPM)**.

## Librerías Importadas
A continuación, se detallan las librerías utilizadas en la aplicación:

### **Gestión del Teclado**
- **IQKeyboardManagerSwift** → Manejo automático del teclado en iOS y gestión avanzada para mejorar la experiencia de usuario.

### **Carga y Notificaciones**
- **MBProgressHUD** → Indicadores de carga y progreso en la UI.
- **SVProgressHUD** → Alternativa ligera para mostrar indicadores de progreso.
- **OneSignalFramework** → Integración con OneSignal para notificaciones push.

### **Redes y Conectividad**
- **Reachability** → Monitoreo del estado de la red en iOS.
- **RxCocoa** → Extensiones reactivas para Cocoa y UIKit.
- **Starscream** → WebSockets para iOS en Swift.

### **Manejo de Imágenes y Gráficos**
- **SDWebImage** → Carga y almacenamiento en caché de imágenes.
- **SwiftyGif** → Soporte avanzado para mostrar animaciones GIF.

### **Seguridad y Cifrado**
- **OpenSSL** → Biblioteca de criptografía para iOS.

### **Estructuras y Utilidades**
- **OrderedSet (swift-collections)** → Conjunto ordenado con propiedades similares a `Array` y `Set`.
- **Toast** → Notificaciones tipo toast en la UI.

## 🔧 Instalación
Este proyecto utiliza **Swift Package Manager (SPM)** para la gestión de dependencias. Para instalar las librerías, sigue estos pasos:

1. **Abrir el proyecto en Xcode**.
2. Ir a **File > Add Packages**.
3. Agregar las siguientes dependencias mediante sus URLs:

   - **IQKeyboardManagerSwift** → `https://github.com/hackiftekhar/IQKeyboardManager.git`
   - **MBProgressHUD** → `https://github.com/jdg/MBProgressHUD.git`
   - **SVProgressHUD** → `https://github.com/SVProgressHUD/SVProgressHUD.git`
   - **OneSignalFramework** → `https://github.com/OneSignal/OneSignal-iOS-SDK.git`
   - **Reachability** → `https://github.com/ashleymills/Reachability.swift.git`
   - **RxCocoa (RxSwift)** → `https://github.com/ReactiveX/RxSwift.git`
   - **Starscream** → `https://github.com/daltoniam/Starscream.git`
   - **SDWebImage** → `https://github.com/SDWebImage/SDWebImage.git`
   - **SwiftyGif** → `https://github.com/kirualex/SwiftyGif.git`
   - **OpenSSL** → `https://github.com/krzyzanowskim/OpenSSL.git`
   - **swift-collections (OrderedSet)** → `https://github.com/apple/swift-collections.git`
   - **Toast** → `https://github.com/scalessec/Toast-Swift.git`

4. Asegurar que las librerías están correctamente enlazadas en **Frameworks, Libraries & Embedded Content**.
