//
//  test1Tests.swift
//  test1Tests
//
//  Created by injae Lee on 2022/03/28.
//

import XCTest
@testable import test1

class test1Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testImageCrawling() {
        
        let expection = XCTestExpectation(description: "Crawling")
        
        let service = Service()
        service.getImage(page: 0, limit: 0) { result in
            switch result {
            case .failure(let error):
                expection.fulfill()
            case .success(let response):
                print(response)
                expection.fulfill()
            }
        }
        
        wait(for: [expection], timeout: 10.0)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
