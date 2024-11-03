import UIKit

class CatViewController: UIViewController {
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var catImageView: UIImageView!
    @IBOutlet weak var catLabel: UILabel!
    @IBOutlet weak var generateButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Установка начального текста и состояния загрузки
        catLabel.text = "самостоятельная iOS"
        loadCatImage()
    }

    @IBAction func generateNewCat(_ sender: UIButton) {
        catLabel.text = CatService.generateRandomCatText()
        loadCatImage()
    }

    private func loadCatImage() {
        // Показать статус загрузки
        statusLabel.text = "Изображение загружается..."
        catImageView.image = nil // Очистить текущее изображение, пока загружается новое

        // Загрузить изображение через сервис
        CatService.loadCatImage { [weak self] image in
            guard let self = self else { return }
            if let loadedImage = image {
                self.catImageView.image = loadedImage
                self.statusLabel.text = "Загрузка кота завершена"
            } else {
                self.statusLabel.text = "Не удалось загрузить изображение"
            }
        }
    }
}