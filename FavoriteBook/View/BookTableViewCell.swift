//
//  BookCellView.swift
//  FavoriteBooks
//
//  Created by Felipe Ugarte on 26-05-22.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func updateBookCell(book: Book) {
        titleLabel.text = book.title
        authorLabel.text = book.author
        descriptionLabel.text = book.description
    }
    
}
