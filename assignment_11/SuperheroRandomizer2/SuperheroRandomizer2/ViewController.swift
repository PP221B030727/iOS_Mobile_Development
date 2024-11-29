import UIKit
import Kingfisher

class ViewController: UIViewController {
    // UI элементы
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var statsLabel: UILabel!
    @IBOutlet weak var heroImageView: UIImageView!
    @IBOutlet weak var randomizeButton: UIButton!

    var superheroes: [Superhero] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchSuperheroes()
    }

    // Загрузка данных из API
    private func fetchSuperheroes() {
        _ = "https://akabab.github.io/superhero-api/api/all.json"
        NetworkManager.shared.fetchSuperheroes { [weak self] superheroes in
            guard let self = self else { return }
            if let superheroes = superheroes {
                        self.superheroes = superheroes
                        print("Superheroes loaded: \(superheroes.count)")
                    } else {
                        print("Failed to load superheroes")
                    }

        }
    }

    // Обработка нажатия на кнопку "Randomize"
    @IBAction func randomizeTapped(_ sender: UIButton) {
        guard !superheroes.isEmpty else { return }
        let randomHero = superheroes.randomElement()
        updateUI(with: randomHero)
    }

    // Обновление интерфейса
    private func updateUI(with hero: Superhero?) {
        guard let hero = hero else { return }

        // Отображение данных
        nameLabel.text = "Name: \(hero.name)"
        fullNameLabel.text = "Full Name: \(hero.biography.fullName)"
        statsLabel.text = """
        Intelligence: \(hero.powerstats.intelligence)
        Strength: \(hero.powerstats.strength)
        Speed: \(hero.powerstats.speed)
        Durability: \(hero.powerstats.durability)
        Power: \(hero.powerstats.power)
        Combat: \(hero.powerstats.combat)
        Gender: \(hero.appearance.gender)
        Alignment: \(hero.biography.alignment)
        """

        // Установка изображения
        if let imageURL = URL(string: hero.images.lg) {
            heroImageView.kf.setImage(with: imageURL)
        } else {
            print("Invalid image URL")
        }
    }
}
