//
//  ViewController3.swift
//  Kids Gane
//
//  Created by R93 on 20/06/23.
//

import UIKit
import AVFoundation
class ViewController3: UIViewController {
    
    var synth = AVSpeechSynthesizer()
    var arrIndexParth: [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,4950,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100]
    var num: Int?
    var img = [UIImage(named:"1"),UIImage(named:"2"),UIImage(named:"3"),UIImage(named:"4"),UIImage(named:"5"),UIImage(named:"6"),UIImage(named:"7"),UIImage(named:"8"),UIImage(named:"9"),UIImage(named:"10"),UIImage(named:"11"),UIImage(named:"12"),UIImage(named:"13"),UIImage(named:"14"),UIImage(named:"15"),UIImage(named:"16"),UIImage(named:"17"),UIImage(named:"18"),UIImage(named:"19"),UIImage(named:"20"),UIImage(named:"21"),UIImage(named:"22"),UIImage(named:"23"),UIImage(named:"24"),UIImage(named:"25"),UIImage(named:"26"),UIImage(named:"27"),UIImage(named:"28"),UIImage(named:"29"),UIImage(named:"30"),UIImage(named:"31"),UIImage(named:"32"),UIImage(named:"33"),UIImage(named:"34"),UIImage(named:"35"),UIImage(named:"36"),UIImage(named:"37"),UIImage(named:"38"),UIImage(named:"39"),UIImage(named:"40"),UIImage(named:"41"),UIImage(named:"42"),UIImage(named:"43"),UIImage(named:"44"),UIImage(named:"45"),UIImage(named:"46"),UIImage(named:"47"),UIImage(named:"48"),UIImage(named:"49"),UIImage(named:"50"),UIImage(named:"51"),UIImage(named:"52"),UIImage(named:"53"),UIImage(named:"54"),UIImage(named:"55"),UIImage(named:"56"),UIImage(named:"57"),UIImage(named:"58"),UIImage(named:"59"),UIImage(named:"60"),UIImage(named:"61"),UIImage(named:"62"),UIImage(named:"63"),UIImage(named:"64"),UIImage(named:"65"),UIImage(named:"66"),UIImage(named:"67"),UIImage(named:"68"),UIImage(named:"69"),UIImage(named:"70"),UIImage(named:"71"),UIImage(named:"72"),UIImage(named:"73"),UIImage(named:"74"),UIImage(named:"75"),UIImage(named:"76"),UIImage(named:"77"),UIImage(named:"78"),UIImage(named:"79"),UIImage(named:"80"),UIImage(named:"81"),UIImage(named:"82"),UIImage(named:"83"),UIImage(named:"84"),UIImage(named:"85"),UIImage(named:"86"),UIImage(named:"87"),UIImage(named:"88"),UIImage(named:"89"),UIImage(named:"90"),UIImage(named:"91"),UIImage(named:"92"),UIImage(named:"93"),UIImage(named:"94"),UIImage(named:"95"),UIImage(named:"96"),UIImage(named:"97"),UIImage(named:"98"),UIImage(named:"99"),UIImage(named:"100")]
    
    var name = ["One","Two","Three","Four","Five","Six","Seven","Eight","Nine","Ten","Eleven","Twelve","Thirteen","Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen","Twenty","Twenty-one","Twenty-Two","Twenty-Three","Twenty-Four","Twenty-Five","Twenty-Six","Twenty-Seven","Twenty-Eight","Twenty-Nine","Thirty","Thirty-One","Thirty-Two","Thirty-Three","Thirty-Four","Thirty-Five","Thirty-Six","Thirty-Seven","Thirty-Eight","Thirty-Nine","Forty","Forty-One","Forty-Two","Forty-Three","Forty-Four","Forty-Five","Forty-Six","Forty-Seven","Forty-Eight","Forty-Nine","Fifty","Fifty-One","Fifty-Two","Fifty-Three","Fifty-Four","Fifty-Five","Fifty-Six","Fifty-Seven","Fifty-Eight","Fifty-Nine","Sixty","Sixty-One","Sixty-Two","Sixty-Three","Sixty-Four","Sixty-Five","Sixty-Six","Sixty-Seven","Sixty-Eight","Sixty-Nine","Seventy","Seventy-One","Seventy-Two","Seventy-Three","Seventy-Four","Seventy-Five","Seventy-Six","Seventy-Seven","Seventy-Eight","Seventy-Nine","Eighty","Eighty-One","Eighty-Two","Eighty-Three","Eighty-Four","Eighty-Five","Eighty-Six","Eighty-Seven","Eighty-Eight","Eighty-Nine","Ninety","Ninety-One","Ninety-Two","Ninety-Three","Ninety-Four","Ninety-Five","Ninety-Six","Ninety-Seven","Ninety-Eight","Ninety-Nine","Hundred"]
    
    
    @IBOutlet weak var numaricCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

//MARK = NUMARIC COLLECTION VIEW

extension ViewController3: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = numaricCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell2
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
