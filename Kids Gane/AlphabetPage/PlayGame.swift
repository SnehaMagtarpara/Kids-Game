//
//  PlayGame.swift
//  Kids Gane
//
//  Created by R93 on 19/06/23.
//

import UIKit
import AVFoundation

class PlayGame: UIViewController{
    var synth = AVSpeechSynthesizer()
    var img = [UIImage(named:"a"),UIImage(named:"b"),UIImage(named:"c"),UIImage(named:"d"),UIImage(named:"e"),UIImage(named:"f"),UIImage(named:"g"),UIImage(named:"h"),UIImage(named:"i"),UIImage(named:"j"),UIImage(named:"k"),UIImage(named:"l"),UIImage(named:"m"),UIImage(named:"n"),UIImage(named:"o"),UIImage(named:"p"),UIImage(named:"q"),UIImage(named:"r"),UIImage(named:"s"),UIImage(named:"t"),UIImage(named:"u"),UIImage(named:"v"),UIImage(named:"w"),UIImage(named:"x"),UIImage(named:"y"),UIImage(named:"z")]
    var name = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
    var alphabetName = ["Apple","Ball","Cat","Dog","Elephant","Fox","Giraffe","Horse","Ice-Creme","Jug","Kite","Lion","Mango","Neast","Orange","Parrot","Queen","Rose","Sun","Tiger","Umbrella","Van","Watch","X-Tree","Yark","Zibra"]
    var num: Int?

    @IBOutlet weak var alplabetCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

// MARK = ALPHABET COLLECTION VIEW

extension PlayGame: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = alplabetCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.img.image = img[indexPath.row]
        cell.nameLabel.text = name[indexPath.row]
        cell.alphabetName.text = alphabetName[indexPath.row]
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
  
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
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 166, height: 285)
    }
}
