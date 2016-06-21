//
//  LibraryViewController.swift
//  CollectionViewGuide
//
//  Created by Joseph Perri Albanese on 6/21/16.
//  Copyright © 2016 Joseph Perri Albanese. All rights reserved.
//

import UIKit

class LibraryViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var burstsManager = BurstsManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.dataSource = self
        
        // Do any additional setup after loading the view.
    }

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        var burstCount = burstsManager.getAllBursts().count
        
        print(burstCount)
        
        if burstCount == 0 {
            return 10
        } else {
            return burstCount
        }
        
        return burstsManager.getAllBursts().count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("BurstPreviewCell", forIndexPath: indexPath) as! BurstPreviewCell
        
        if indexPath.item == 3 {
            cell.previewLabel.text = "fourth"
        } else{
            cell.previewLabel.text = "else"
        }
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
