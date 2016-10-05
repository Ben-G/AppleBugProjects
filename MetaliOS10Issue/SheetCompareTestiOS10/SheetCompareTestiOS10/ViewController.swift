//
//  ViewController.swift
//  SheetCompareTestiOS10
//
//  Created by Benji Encz on 9/8/16.
//  Copyright © 2016 Benjamin Encz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let _kernelSourceURL = Bundle.main.url(forResource: "Shader", withExtension: "glsl")!
        let _kernelSource = try! NSString(contentsOf: _kernelSourceURL, encoding: String.Encoding.utf8.rawValue) as String
        let _kernel = CIColorKernel(string: _kernelSource)


        let inputImage = CIImage(image: UIImage(named: "graph")!)

        let dod = inputImage!.extent
        let args = [inputImage!]
        let image = _kernel!.apply(withExtent: dod, arguments: args)

        let view = UIImageView(image: UIImage(ciImage: image!))
        self.view.addSubview(view)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

