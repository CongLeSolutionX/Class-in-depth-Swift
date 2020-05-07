//
//  HomeViewController.swift
//  Class-in-depth-Swift
//
//  Created by Cong Le on 5/5/20.
//  Copyright © 2020 CongLeSolutionX. All rights reserved.
//

import UIKit

class Product: NSObject {
    let identifier: Int
    let name: String
    
    init(identifier: Int, name: String) {
        self.identifier = identifier
        self.name = name
        super.init()
    }
  
    deinit {} // deallocate the resource/data after object exist its scope.
}

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var productOne = Product(identifier: 5, name: "ProductOne")
        var productTwo = productOne // sharing the same resources, aka point to the same memory address
        
        // comparing resource/data of 2 objects
        if (productOne === productTwo) {
            print("productTwo and productOne point to the same memory address of the resource/data in the heap memory, as shown below:")
            print(Unmanaged.passUnretained(productOne).toOpaque())
            print(Unmanaged.passUnretained(productTwo).toOpaque())
            print("The propety of the prodcutTwo will be the same as productTwo the following:")
            print("productOne has name: \(productOne.name)")
            print("productTwo has name: \(productTwo.name)")
            print("========================================================================")
            // making a var variable and passing the value of objectOne using input parameter.
            // get the memory address of the reference pointer of each product, expected the see differences.
            print("The reference pointer of each product in the stack memoery will be difference as following:")
            let referencePointer1 = UnsafeMutablePointer<Product>(&productOne)
            let referencePointer2 = UnsafeMutablePointer<Product>(&productTwo)
            print(referencePointer1)
            print(referencePointer2)
            
            
            // using LLDB commands to printout the memory addresses
            // frame variale productOne
            // frame variale productTwo
            
            // reading the memory address in hex form number in full
            // memory read 0x00006000008b0420
            // reading the first 8 numbers of the memory address in hex form number
            // memory read -c 8 0x00006000008b0420
            
            
        }
        

    
    }


}

