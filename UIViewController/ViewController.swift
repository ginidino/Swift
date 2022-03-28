//
//  ViewController.swift
//  test1
//
//  Created by injae Lee on 2022/03/28.
//

import UIKit

class ViewController: UIViewController {
    
    private enum Metrics {
        static let inset: CGFloat = 4
    }
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.minimumLineSpacing = Metrics.inset
        layout.minimumInteritemSpacing = Metrics.inset
        cv.backgroundColor = .white
        return cv
    } ()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupView()
    }

    private func setupView() {
        self.view.addSubview(self.collectionView)
        
        self.collectionView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint .activate([
            self.collectionView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor), self.collectionView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.collectionView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
        self.collectionView.backgroundColor = .red
        self.collectionView.register(Cell.self, forCellWithReuseIdentifier: "Cell")
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.collectionView.reloadData()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.frame.width
        
        let cellWidth = (width - 2 * Metrics.inset) / 3
        
        return CGSize(width: cellWidth, height: cellWidth)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! Cell
        //cell.backgroundColor = .black
        return cell
    }
    
    
}
