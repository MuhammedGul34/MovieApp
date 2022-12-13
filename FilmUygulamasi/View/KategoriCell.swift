//
//  KategoriCell.swift
//  FilmUygulamasi
//
//  Created by Muhammed Gül on 14.11.2022.
//

import UIKit

class KategoriCell: UITableViewCell {
    
    @IBOutlet weak var imgKategori: UIImageView!
    @IBOutlet weak var lblKategoriAdi: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgKategori.layer.cornerRadius = 10
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func cellDuzenle(filmKategori : FilmKategori){
        imgKategori.image = UIImage(named: filmKategori.goruntuAdi)
        lblKategoriAdi.text = filmKategori.kategoriAdi
    }
}
