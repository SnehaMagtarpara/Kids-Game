//
//  BirdPage.swift
//  Kids Gane
//
//  Created by R93 on 24/06/23.
//

import UIKit
import AVFoundation

class BirdPage: UIViewController{
    
    var synth = AVSpeechSynthesizer()
    var img = [UIImage(named:"b-1"),UIImage(named:"b-2"),UIImage(named:"b-3"),UIImage(named:"b-4"),UIImage(named:"b-5"),UIImage(named:"b-6"),UIImage(named:"b-7"),UIImage(named:"b-8"),UIImage(named:"b-9"),UIImage(named:"b-10"),UIImage(named:"b-11"),UIImage(named:"b-13"),UIImage(named:"b-14"),UIImage(named:"b-15"),UIImage(named:"b-16"),UIImage(named:"b-17"),UIImage(named:"b-18"),UIImage(named:"b-19"),UIImage(named:"b-20"),UIImage(named:"b-21"),UIImage(named:"b-22"),UIImage(named:"b-23"),UIImage(named:"b-24"),UIImage(named:"b-25"),UIImage(named:"b-26"),UIImage(named:"b-27"),UIImage(named:"b-28"),UIImage(named:"b-29"),UIImage(named:"b-30"),UIImage(named:"b-31"),UIImage(named:"b-32"),UIImage(named:"b-33"),UIImage(named:"b-34"),UIImage(named:"b-35"),UIImage(named:"b-36"),UIImage(named:"b-37")]
    var name = ["Pigeon","Peacock","WoodPecker","Sparrow","Dove","Cuckoo","Rooster","Quail","Parrot","Cormorant","Hen","Owl","Vulture","Duck","Ostrich","Nightingale","Flamingo","Hawk","Swallow","Pelican","Kingfisher","Crow","Eagle","Partridge","Seagull","Magpie","Hummingbird","Raven","Swan","Pengin","Goose","Goldfinch","Herring Gull","Turkey","Blue Jay","Heron"]
    var num: Int? = 0

    @IBOutlet weak var birdCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK = BIRD COLLECTION VIEW

extension BirdPage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = birdCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell8
        cell.img.image = img[indexPath.row]
        cell.nameLabel.text = name[indexPath.row]
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize (width: 166, height: 228)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        for indexParth in 0..<indexPath.row{
            
            num = indexParth
        }
        let voice = num.map { nume in
            voice(voice: String(name[indexPath.row]))
        }

        func voice(voice:String)
        {
            var myUtterance1 = AVSpeechUtterance(string:voice)
            synth.speak(myUtterance1)
            myUtterance1.rate = 0.3
            
        }

    }
  
}
