//
//  AnimalPage.swift
//  Kids Gane
//
//  Created by R93 on 21/06/23.
//

import UIKit
import AVFoundation

class AnimalPage: UIViewController{
    
    var synth = AVSpeechSynthesizer()
    var img = [UIImage(named:"a-1"),UIImage(named:"a-2"),UIImage(named:"a-3"),UIImage(named:"a-4"),UIImage(named:"a-5"),UIImage(named:"a-6"),UIImage(named:"a-7"),UIImage(named:"a-8"),UIImage(named:"a-9"),UIImage(named:"a-10"),UIImage(named:"a-11"),UIImage(named:"a-12"),UIImage(named:"a-13"),UIImage(named:"a-14"),UIImage(named:"a-15"),UIImage(named:"a-16"),UIImage(named:"a-17"),UIImage(named:"a-18"),UIImage(named:"a-19"),UIImage(named:"a-20"),UIImage(named:"a-21"),UIImage(named:"a-22"),UIImage(named:"a-23"),UIImage(named:"a-24"),UIImage(named:"a-25"),UIImage(named:"a-26"),UIImage(named:"a-27"),UIImage(named:"a-28"),UIImage(named:"a-29"),UIImage(named:"a-30"),UIImage(named:"a-31"),UIImage(named:"a-32"),UIImage(named:"a-33"),UIImage(named:"a-34"),UIImage(named:"a-35"),UIImage(named:"a-36"),UIImage(named:"a-37"),UIImage(named:"a-38"),UIImage(named:"a-39"),UIImage(named:"a-40")]
    var num: Int? = 0

    var name = ["Zibra","Tiger","Bear","Camel","Chimpanzee","Donkey","Fox","Giraffe","Goat","Deer","Elephant","Hourse","Koala","Monkey","Panda","Lion","Rabbit","Squirrel","Snack","Turtle","Ox","Mouse","Kangaroo","Hippopotamus","Bull","Sheep","Wolf","Pig","Otter","Moose","Frog","Scropion","Bee","LadyBug","Bat","Red Dear","Rahinoceros","Wild Boar","Coyota","Wombat"]
    
    @IBOutlet weak var animalCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}

// MARK = ANIMAL COLLECTIONVIEW

extension AnimalPage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = animalCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell6
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
