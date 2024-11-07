//
//  ViewController.swift
//  Favorite movies
//
//  Created by Нурсултан Туругельдиев on 07.11.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var favoriteMovies: [Movie] = []
    var selectedMovie: Movie?
    
    @IBOutlet var mainTableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        mainTableView.reloadData()
        super.viewWillAppear(animated)
        if favoriteMovies.count == 0 {
            favoriteMovies.append(Movie(id: "1", title: "Sheker", year: "2024", imageUrl: "https://static.kinoafisha.info/k/series_posters/1080x1920/upload/series/posters/8/7/3/8378/937582711688651723.jpg", desc: "The main character, a young and ambitious guy named Alik, finds himself in a difficult situation. He ends up in jail on charges of drug distribution, a crime that put his future in jeopardy. Everything he had is now hanging in the balance: fate, career, relationships with loved ones, and even freedom itself."))
            
            favoriteMovies.append(Movie(id: "2", title: "Breaking bad", year: "2008", imageUrl: "https://avatars.mds.yandex.net/get-kinopoisk-image/1900788/fb35416f-3b0d-4b96-bc65-cf6923f9e329/220x330", desc: "Breaking Bad is an American television crime drama, the premiere episodes of which were broadcast from January 20, 2008 to September 29, 2013 on the AMC cable channel. Over the course of five seasons, consisting of 62 episodes, the story of Walter White (Bryan Cranston), a schoolteacher who was diagnosed with inoperable lung cancer and who, along with his former student Jesse Pinkman (Aaron Paul), begins to produce and sell methamphetamine to ensure the financial future of his family, is shown. The series was set and filmed in Albuquerque, New Mexico."))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let moviecell = tableView.dequeueReusableCell(withIdentifier: "customcell", for: indexPath) as! CustomTableViewCell
        
        let idx: Int = indexPath.row
        moviecell.tag = idx
        //title
        moviecell.movieTitle?.text = favoriteMovies[idx].title
        //year
        moviecell.movieYear?.text = favoriteMovies[idx].year
        // image
        displayMovieImage(idx, moviecell: moviecell)
        
        return moviecell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedMovie = favoriteMovies[indexPath.row]
    }
    
    func displayMovieImage(_ row: Int, moviecell: CustomTableViewCell) {
        let url: String = (URL(string: favoriteMovies[row].imageUrl)?.absoluteString)!
        URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { (data, response, error) -> Void in
            if error != nil {
                print(error!)
                return
            }
            
            DispatchQueue.main.async(execute: {
                let image = UIImage(data: data!)
                moviecell.movieImageView?.image = image
            })
        }).resume()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "movieDetailSegue" {
            let controller = segue.destination as! DetailViewController
            let cell = sender as! CustomTableViewCell
            controller.movie = favoriteMovies[cell.tag]
        }
    }
}

