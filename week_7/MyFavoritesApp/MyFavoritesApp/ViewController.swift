//
//  ViewController.swift
//  MyFavoritesApp
//
//  Created by Туругельдиев Нурсултан on 23.10.2024.
//

import UIKit

struct Book {
    let coverImage: UIImage
    let title: String
    let author: String
    let ganre: String
}

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "BookCell")
    }

    var books: [Book] = [
        Book(coverImage: UIImage(named: "book1")!, title: "Book 1", author: "Author 1", ganre: "Ganre1"),
        Book(coverImage: UIImage(named: "book2")!, title: "Book 2", author: "Author 2", ganre: "Ganre2"),
        Book(coverImage: UIImage(named: "book3")!, title: "Book 3", author: "Author 3", ganre: "Ganre3"),
        Book(coverImage: UIImage(named: "book4")!, title: "Book 4", author: "Author 4", ganre: "Ganre1"),
        Book(coverImage: UIImage(named: "book5")!, title: "Book 5", author: "Author 5", ganre: "Ganre2"),
        Book(coverImage: UIImage(named: "book6")!, title: "Book 6", author: "Author 6", ganre: "Ganre3"),
        Book(coverImage: UIImage(named: "book7")!, title: "Book 7", author: "Author 7", ganre: "Ganre4"),
        Book(coverImage: UIImage(named: "book8")!, title: "Book 8", author: "Author 8", ganre: "Ganre1"),
        Book(coverImage: UIImage(named: "book9")!, title: "Book 9", author: "Author 9", ganre: "Ganre2"),
        Book(coverImage: UIImage(named: "book10")!, title: "Book 10", author: "Author 10", ganre: "Ganre3")
    ]
   
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return books.count
        }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        let book = books[indexPath.row]
        cell.imageView?.image = book.coverImage
        cell.textLabel?.text = book.title
        
        
        return cell
    }




}

