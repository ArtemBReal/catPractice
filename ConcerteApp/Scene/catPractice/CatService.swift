import UIKit

class CatService {
    
    // Вариант метода асинхронной загрузки изображения из файла или URL
    static func loadCatImage(completion: @escaping (UIImage?) -> Void) {
    // Добавляем новый метод для загрузки изображения
        static func loadCatImage(from image: UIImage?, completion: @escaping (UIImage?) -> Void) {
            guard let image = image else {
                completion(nil)
                return
            }
        
            completion(image)
        }
    }
    
    static func generateRandomCatText() -> String {
    // Массив забавных текстов о котах
    let catTexts = [
        "Котик мурлычет для тебя!",
        "Коты захватывают мир, одно мурчание за раз.",
        "Охота на лазерные указки началась!",
        "Котик отдыхает... как обычно!",
        "Кот готов к новым приключениям!",
        "Мяу! Пора перекусить чем-нибудь вкусненьким.",
        "Кажется, котик что-то задумал...",
        "Какое мягкое место для сна нашел кот!"
    ]
        
        // Возвращаем случайный элемент из массива
        return catTexts.randomElement() ?? "Котик готов к встрече с тобой!"
    }

}