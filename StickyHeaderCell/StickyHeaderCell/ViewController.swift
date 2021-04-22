//
//  ViewController.swift
//  StickyHeaderCell
//
//  Created by Kang, Su Jin (강수진) on 2021/04/22.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- IBOutlet
    @IBOutlet weak var collectionView: UICollectionView!
    
    //MARK:- Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(MyCell.self, forCellWithReuseIdentifier: MyCell.cellId)
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

//MARK:- UICollectionViewDelegate, UICollectionViewDataSource
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCell.cellId, for: indexPath as IndexPath) as! MyCell
        cell.backgroundColor = .red
        return cell
    }
}

//MARK:- UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = UIScreen.main.bounds.width
        let height = CGFloat(arc4random() % 100) + 10
        return CGSize(width: width,
                      height: height)
    }
}
