//
//  SelectMode.swift
//  Kids Gane
//
//  Created by R93 on 21/06/23.
//

import UIKit

class SelectMode: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var cv: UICollectionView!
    
    var img = [UIImage(named:"ABC"),UIImage(named:"123"),UIImage(named:"veg"),UIImage(named:"animal"),UIImage(named:"fruits"),UIImage(named:"bird"),UIImage(named:"shape")]
    
    var name = ["ABC","123","VEGETABLES","ANIMALS","FRUITS","BIRDS","SHAPES"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell5
        cell.img.image = img[indexPath.row]
        cell.nameLabel.text = name[indexPath.row]
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 3
        cell.layer.cornerRadius = 10
        cell.layer.masksToBounds = true
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 215, height: 236)
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        switch indexPath.row{
        case 0:
            navigation()
        case 1:
            navigation1()
        case 2:
            navigation2()
        case 3:
            navigation4()
        case 4:
            navigation4()
        case 5:
            navigation5()
        case 6:
            navigation6()
        default:
            break
        }
        
        
    }
    func navigation()
    {
        let n = storyboard?.instantiateViewController(identifier: "PlayGame") as! PlayGame
        navigationController?.pushViewController(n, animated: true)
    }
    func navigation1()
    {
        let n = storyboard?.instantiateViewController(identifier: "ViewController3") as! ViewController3
        navigationController?.pushViewController(n, animated: true)
    }
    func navigation2()
    {
        let n = storyboard?.instantiateViewController(identifier: "vegetablespage") as! vegetablespage
        navigationController?.pushViewController(n, animated: true)
    }
    func navigation3()
    {
        let n = storyboard?.instantiateViewController(identifier: "AnimalPage") as! AnimalPage
        navigationController?.pushViewController(n, animated: true)
    }
    func navigation4()
    {
        let n = storyboard?.instantiateViewController(identifier: "FruitPage") as! FruitPage
        navigationController?.pushViewController(n, animated: true)
    }
    func navigation5()
    {
        let n = storyboard?.instantiateViewController(identifier: "BirdPage") as! BirdPage
        navigationController?.pushViewController(n, animated: true)
    }
    func navigation6()
    {
        let n = storyboard?.instantiateViewController(identifier: "ShapPage") as! ShapPage
        navigationController?.pushViewController(n, animated: true)
    }
    
    
    
}
