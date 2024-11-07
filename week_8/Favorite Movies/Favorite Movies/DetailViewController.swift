//
//  DetailViewController.swift
//  Favorite movies
//
//  Created by Нурсултан Туругельдиев on 07.11.2024.
//

import UIKit

class DetailViewController: UIViewController {
    
    var movie:Movie!
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var plotTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Opening details for \(self.movie.title)")
        titleLabel!.text = self.movie.title
        plotTextView!.text = self.movie.desc
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
