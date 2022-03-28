//
//  ViewModel.swift
//  test1
//
//  Created by injae Lee on 2022/03/28.
//

import Foundation

protocol ViewModelOutput: AnyObject {
    func loadComplete()
}


final class ViewModel {
    
    private var currentPage = 0
    
    private var limit = 3 * 7
    
    private let service = Service()
    
    var data: [Response] = []
    
    //weak var delegate: ViewModelOutput?
    
    private var delegates: [ViewModelOutput] = []
    
    func attach(delegate: ViewModelOutput) {
        self.delegates.append(delegate)
    }
    
    func detach(delegate: ViewModelOutput) {
        self.delegates = self.delegates.filter {
            $0 !== delegate
        }
    }
    
    var isLoading: Bool = false
    
    func loadMoreIfNeeded(index: Int) {
        if index > data.count - 6 {
            self.load()
        }
    }
    
    func load() {
        guard !isLoading else {
            return
        }
        self.isLoading = true
        self.service.getImage(page: self.currentPage, limit: self.limit) {
            result in
            
            DispatchQueue.main.async {
                
                switch result {
                case .failure(let error):
                    break
                case .success(let response):
                    self.data.append(contentsOf: response)
                    self.currentPage += 1
                    self.delegates.forEach { $0.loadComplete()
                    }
                    //self.delegate?.loadComplete()
                }
                
                self.isLoading = false
            }
        }
    }
}
