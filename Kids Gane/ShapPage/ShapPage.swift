//
//  ShapPage.swift
//  Kids Gane
//
//  Created by R93 on 24/06/23.
//

import UIKit
import AVFoundation

class ShapPage: UIViewController{
    
    var img =  [UIImage(named:"s-1"),UIImage(named:"s-2"),UIImage(named:"s-3"),UIImage(named:"s-4"),UIImage(named:"s-5"),UIImage(named:"s-6"),UIImage(named:"s-7"),UIImage(named:"s-8"),UIImage(named:"s-9"),UIImage(named:"s-10"),UIImage(named:"s-11"),UIImage(named:"s-12"),UIImage(named:"s-13"),]
    var name = ["Circle","Triangle","Rectangle","Oval","Heart","Square","Pentagon","Heptagon","Right Triangle","Star","Cube","Cone","Cylinder"]
    var synth = AVSpeechSynthesizer()
    var num: Int? = 0

    @IBOutlet weak var cv: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK = SHAPE COLLECTION VIEW

extension ShapPage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell9
        cell.img.image = img[indexPath.row]
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.namelabel.text = name[indexPath.row]
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
