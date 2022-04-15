//
//  ViewController.swift
//  PagerView_tutorial
//
//  Created by injae Lee on 2022/04/13.
//

import UIKit
import FSPagerView

class ViewController: UIViewController, FSPagerViewDataSource, FSPagerViewDelegate {
    
    fileprivate let imageNames = ["1.png", "2.png", "3.png", "4,png"]
    
    @IBOutlet weak var leftBtn: UIButton!
    
    @IBOutlet weak var rightBtn: UIButton!
    

    @IBOutlet weak var myPagerView: FSPagerView! {
        didSet {
            // register a cell in PagerView
            self.myPagerView.register(FSPagerViewCell.self, forCellWithReuseIdentifier: "cell")
            
            // set a size of item
            self.myPagerView.itemSize = FSPagerView.automaticSize
            
            // Set infinite scrolling
            self.myPagerView.isInfinite = true
            
            // Automatic scrolling
            self.myPagerView.automaticSlidingInterval = 4.0
        }
    }
    
    @IBOutlet weak var myPageControl: FSPageControl! {
        didSet {
            self.myPageControl.numberOfPages = self.imageNames.count
            self.myPageControl.contentHorizontalAlignment = .center
            self.myPageControl.itemSpacing = 16
            self.myPageControl.interitemSpacing = 16
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.myPagerView.dataSource = self // self is FSPagerViewDataSource, not ViewController
        self.myPagerView.delegate = self // self is FSPagerViewDelegate, not ViewController
        
        self.leftBtn.layer.cornerRadius = self.leftBtn.frame.height / 2
        self.rightBtn.layer.cornerRadius = self.rightBtn.frame.height / 2
    }
    
    // MARK: - IBActions
    @IBAction func leftBtnClick(_ sender: UIButton) {
        print("ViewController - leftBtnClick() called")
        self.myPageControl.currentPage = self.myPageControl.currentPage - 1
        self.myPagerView.scrollToItem(at: self.myPageControl.currentPage, animated: true)
    }
    
    @IBAction func rightBtnClick(_ sender: UIButton) {
        print("ViewController - rightBtnClick() called")
        
        if (self.myPageControl.currentPage == self.imageNames.count - 1) {
            self.myPageControl.currentPage = 0
        } else {
            self.myPageControl.currentPage = self.myPageControl.currentPage + 1
        }
        
        self.myPagerView.scrollToItem(at: self.myPageControl.currentPage, animated: true)
    }
    
    // MARK: - FSPagerView Data Source
    func numberOfItems(in pagerView: FSPagerView) -> Int {
        return imageNames.count
    }
    
    // setting for each cell
    func pagerView(_ pagerView: FSPagerView, cellForItemAt index: Int) -> FSPagerViewCell {
        let cell = pagerView.dequeueReusableCell(withReuseIdentifier: "cell", at: index)
        cell.imageView?.image = UIImage(named: self.imageNames[index])
        cell.imageView?.contentMode = .scaleAspectFit
        // cell.textLabel?.text = ...
        return cell
    }

    // MARK: - FSPagerView delegate
    func pagerViewWillEndDragging(_ pagerView: FSPagerView, targetIndex: Int) {
        self.myPageControl.currentPage = targetIndex
    }
    
    func pagerViewDidEndScrollAnimation(_ pagerView: FSPagerView) {
        self.myPageControl.currentPage = pagerView.currentIndex
    }
    
    func pagerView(_ pagerView: FSPagerView, shouldHighlightItemAt index: Int) -> Bool {
        return false
    }
}

