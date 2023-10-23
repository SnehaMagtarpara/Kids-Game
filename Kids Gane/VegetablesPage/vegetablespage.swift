//
//  vegetablespage.swift
//  Kids Gane
//
//  Created by R93 on 20/06/23.
//

import UIKit
import AVFoundation

class vegetablespage: UIViewController{
    
    var synth = AVSpeechSynthesizer()
    var img = [UIImage(named:"v-1"),UIImage(named:"v-2"),UIImage(named:"v-3"),UIImage(named:"v-4"),UIImage(named:"v-5"),UIImage(named:"v-6"),UIImage(named:"v-7"),UIImage(named:"v-8"),UIImage(named:"v-9"),UIImage(named:"v-10"),UIImage(named:"v-11"),UIImage(named:"v-12"),UIImage(named:"v-13"),UIImage(named:"v-14"),UIImage(named:"v-15"),UIImage(named:"v-16"),UIImage(named:"v-17"),UIImage(named:"v-18"),UIImage(named:"v-19"),UIImage(named:"v-20"),UIImage(named:"v-21"),UIImage(named:"v-22"),UIImage(named:"v-23"),UIImage(named:"v-24"),UIImage(named:"v-25"),UIImage(named:"v-26"),UIImage(named:"v-27"),UIImage(named:"v-28"),UIImage(named:"v-29"),UIImage(named:"v-30"),UIImage(named:"v-31"),UIImage(named:"v-32"),UIImage(named:"v-33"),UIImage(named:"v-34")]
    var num: Int?

    var name = ["Carrot","Tomato","Capsicum","Cabbage","Lemon","Brrtroot","Onion","Cucumber","Cauliflower","Brinjal","Corn","Ladyfinger","Pea","Brocolli","Spinach","Garlic","Pumpkin","Potato","Chilli","Gourd","BitterGourd","Turmeric","Coriander","Olive","Mint","Radish","Green Bean","Drumstick","Apple Gourd","Ridged Gorud","Zuchinis","Taro Root","Arugula","Horseradish"]
    
    @IBOutlet weak var vegetableCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

//MARK = VEGETABLE COLLECTION VIEW 
extension vegetablespage: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = vegetableCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell3
        cell.img.image = img[indexPath.row]
        cell.namelabel.text = name[indexPath.row]
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
        return CGSize(width: 166, height: 229)
    }
    
    
}
