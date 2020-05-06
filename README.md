# Class-in-depth-Swift
Memory level of class object: displaying the memory address of the reference pointer on the stack memory and the memory address on the heap memory.

- Swift class have 2 types of initializers: 
    - Designated initializer: 
        - Each class should have 1 type of this initializer. 
        - must always delegeate up 
    - Convenience initializer: 
        - a customized initialier for a class. 
        - must always delegate across.

- we can deallocatewd the resources aka the actuall data on the heap memory via 
`deinit{}`

Note: we can use keyword "required" to make **Required Initializer** which indicates that every subclass have to implement this initializer.  
`required init() {}`


**Reference**: [ https://medium.com/swift-india/explore-class-in-swift-in-depth-678867e03eb5]( https://medium.com/swift-india/explore-class-in-swift-in-depth-678867e03eb5)
