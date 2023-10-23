//
//  FruitPage.swift
//  Kids Gane
//
//  Created by R93 on 21/06/23.
//

import UIKit
import AVFoundation

class FruitPage: UIViewController {
    var synth = AVSpeechSynthesizer()
    var img = [UIImage(named:"f-1"),UIImage(named:"f-2"),UIImage(named:"f-3"),UIImage(named:"f-4"),UIImage(named:"f-5"),UIImage(named:"f-6"),UIImage(named:"f-7"),UIImage(named:"f-8"),UIImage(named:"f-9"),UIImage(named:"f-10"),UIImage(named:"f-11"),UIImage(named:"f-12"),UIImage(named:"f-13"),UIImage(named:"f-14"),UIImage(named:"f-15"),UIImage(named:"f-16"),UIImage(named:"f-17"),UIImage(named:"f-18"),UIImage(named:"f-19"),UIImage(named:"f-20"),UIImage(named:"f-21"),UIImage(named:"f-22"),UIImage(named:"f-23"),UIImage(named:"f-24"),UIImage(named:"f-25"),UIImage(named:"f-26"),UIImage(named:"f-27"),UIImage(named:"f-28"),UIImage(named:"f-29"),UIImage(named:"f-30"),UIImage(named:"f-31"),UIImage(named:"f-32")]
    var num: Int? = 0

    var name = ["Apple","Banana","Orange","Mango","Graps","Pineapple","Pomegrante","Avocado","Coconut","Papaya","Watermelon","Strawberry","Cherry","Apricot","Kiwi","Jackfruit","Peach","Pear","Tamarind","Fig","Melon","Dasmon","Guard","Lychee","Quince","Jujube","Dragonfruit","Custard Apple","Res Current","Black currant","Mulberry","Sapidolla"]
    
    @IBOutlet weak var fruitCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

//MARK = FRUIT COLLECTION VIEW

extension FruitPage: UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = fruitCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell7
        cell.img.image = img[indexPath.row]
        cell.nameLabel.text = name[indexPath.row]
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 166, height: 228)
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
