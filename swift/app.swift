import Cocoa

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let window = NSWindow(contentRect: NSMakeRect(800, 600, 320, 200),
                              styleMask: [.titled, .closable],
                              backing: .buffered,
                              defer: true)
        window.orderFrontRegardless()
        window.title = "Example"
        NSApp.activate(ignoringOtherApps: true)
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ app: NSApplication) -> Bool {
        return true
    }
}

let app = NSApplication.shared

let menuItemOne = NSMenuItem()
menuItemOne.submenu = NSMenu(title: "Example")
menuItemOne.submenu?.items = [
    NSMenuItem(title: "Quit Example", action: #selector(NSApplication.terminate(_:)), keyEquivalent: "q")
]

let menu = NSMenu()
menu.items = [menuItemOne]
app.mainMenu = menu

NSApp.setActivationPolicy(.regular)
let delegate = AppDelegate()
NSApp.delegate = delegate
NSApp.run()
