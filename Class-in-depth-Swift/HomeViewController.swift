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
    
    init(identifier: Int) {
        self.identifier = identifier
        super.init()
    }
  
    deinit {} // deallocate the resource/data after object exist its scope.
}

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var productOne = Product(identifier: 5)
        var productTwo = productOne // sharing the same resources, aka point to the same memory address
        
        // comparing resource/data of 2 objects
        if (productOne === productTwo) {
            print("productTwo and productOne point to the same memory address of the resource/data, as shown below ")
            print(Unmanaged.passUnretained(productOne).toOpaque())
            print(Unmanaged.passUnretained(productTwo).toOpaque())
            
            // making a var variable and passing the value of objectOne using input parameter.
            // get the memory address of the reference pointer of each product, expected the see differences.
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

