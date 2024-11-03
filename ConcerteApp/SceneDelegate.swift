import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Создаем окно с текущей сценой
        let window = UIWindow(windowScene: windowScene)

        // Загружаем TabBarController из storyboard
        let storyboard = UIStoryboard(name: "TabBar", bundle: nil)
        if let tabBarController = storyboard.instantiateInitialViewController() as? UITabBarController {
            window.rootViewController = tabBarController
            self.window = window
            window.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Этот метод вызывается при завершении сцены.
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Этот метод вызывается при активации сцены.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Этот метод вызывается, когда сцена переходит в неактивное состояние.
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Этот метод вызывается, когда сцена возвращается из фона.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Этот метод вызывается, когда сцена уходит в фон.
    }
}
