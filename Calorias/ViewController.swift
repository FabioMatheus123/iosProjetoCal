//
//  ViewController.swift
//  Calorias
//
//  Created by Treinamento on 16/06/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TextoTela1: UITextField!
    @IBOutlet weak var Texto2Tela1: UITextField!
    
    var valores: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func nextView(_ sender: Any) {
        
        if TextoTela1.text != "" && Texto2Tela1.text != ""{
            calcular()
            performSegue(withIdentifier: "1para2", sender: self)
        }
        
    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func calcular (){
       let  valor1: Int! = Int(TextoTela1.text!)
        let valor2: Int! = Int(Texto2Tela1.text!)
        for index in 0...15 {
           let result = valor1 * valor2 * index
            let stringResult = String(result)
            valores.append("\(stringResult) Kcal \(index) Km/h")
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "1para2"{
            if let vc = segue.destination as? ViewController2{
                vc.valores1 = self.valores
                
            }
        }
    }
    
}

