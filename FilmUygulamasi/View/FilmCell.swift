//
//  FilmCell.swift
//  FilmUygulamasi
//
//  Created by Muhammed Gül on 14.11.2022.
//

import UIKit

class FilmCell: UICollectionViewCell {
    @IBOutlet weak var imgFilm: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgFilm.layer.cornerRadius = 10
    }
    
    func cellDuzenle(film : Film){
        imgFilm.image = UIImage(named: film.goruntuAdi)
        }
}
