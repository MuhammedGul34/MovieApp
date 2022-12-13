//
//  FilmListesiVC.swift
//  FilmUygulamasi
//
//  Created by Muhammed Gül on 14.11.2022.
//

import UIKit

class FilmListesiVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var secilenKategoriAdi : String = ""
    var veriler = VeriSeti()
    var secilenFilm : Film!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        print(secilenKategoriAdi)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return veriler.filmleriGetir(kategori: secilenKategoriAdi).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let filmCell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmcell", for: indexPath) as? FilmCell {
            filmCell.cellDuzenle(film: veriler.filmleriGetir(kategori: secilenKategoriAdi)[indexPath.row])
            return filmCell
        }
        return UICollectionViewCell()
    }

    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let genislik = view.bounds.width
        let hucreBoyutu = (genislik / 2) - 15
        return CGSize(width: hucreBoyutu, height: hucreBoyutu)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        secilenFilm = veriler.filmleriGetir(kategori: secilenKategoriAdi)[indexPath.row]
        performSegue(withIdentifier: "filmdetayi", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let filmDetayiVC = segue.destination as? FilmDetayiVC {
            filmDetayiVC.secilenFilm = secilenFilm
        }
    }
}
