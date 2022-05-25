//
//  BookFormTableViewController.swift
//  FavoriteBooks
//
//  Created by Felipe Ugarte on 25-05-22.
//

import UIKit

class BookFormTableViewController: UITableViewController {
    struct PropertyKeys {
        static let unwind = "UnwindToBookTable"
    }
    
    var book: Book?

    @IBOutlet weak var titleTF: UITextField!
    @IBOutlet weak var authorTF: UITextField!
    @IBOutlet weak var genreTF: UITextField!
    @IBOutlet weak var lengthTF: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }

    func updateView() {
        guard let book = book else {return}
        
        titleTF.text = book.title
        authorTF.text = book.author
        genreTF.text = book.genre
        lengthTF.text = book.length
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let title = titleTF.text,
              let author = authorTF.text,
              let genre = genreTF.text,
              let length = lengthTF.text else {return}
        
        book = Book(title: title, author: author, genre: genre, length: length)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
    }
}
