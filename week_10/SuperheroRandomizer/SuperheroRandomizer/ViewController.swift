//
//  ViewController.swift
//  SuperheroRandomizer
//
//  Created by Туругельдиев Нурсултан on 22.11.2024.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var intelligenceLabel: UILabel!
    @IBOutlet weak var strengthLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    var superheroes: [Superhero] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchSuperheroes { [weak self] superheroes in
            guard let self = self else { return }
            self.superheroes = superheroes ?? []
        }
    }

    @IBAction func randomizeButtonTapped(_ sender: UIButton) {
        guard let randomHero = self.getRandomSuperhero(from: self.superheroes) else { return }
        DispatchQueue.main.async {
            self.updateUI(with: randomHero)
        }
    }

    func fetchSuperheroes(completion: @escaping ([Superhero]?) -> Void) {
        let url = URL(string: "https://akabab.github.io/superhero-api/api/all.json")!

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                print("Ошибка загрузки данных:", error?.localizedDescription ?? "Неизвестная ошибка")
                completion(nil)
                return
            }
            do {
                let superheroes = try JSONDecoder().decode([Superhero].self, from: data)
                completion(superheroes)
            } catch {
                print("Ошибка декодирования JSON:", error.localizedDescription)
                completion(nil)
            }
        }.resume()
    }


    private func getRandomSuperhero(from superheroes: [Superhero]) -> Superhero? {
        return superheroes.randomElement()
    }

    private func updateUI(with superhero: Superhero) {
        nameLabel.text = "Name: \(superhero.name)"
        fullNameLabel.text = "Full Name: \(superhero.fullName)"
        intelligenceLabel.text = "Intelligence: \(superhero.intelligence)"
        strengthLabel.text = "Strength: \(superhero.strength)"
        speedLabel.text = "Speed: \(superhero.speed)"
        if let imageUrl = URL(string: superhero.image) {
            imageView.load(url: imageUrl)
        }
    }
}

extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
