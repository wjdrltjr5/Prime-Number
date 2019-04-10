//
//  ViewController.swift
//  PrimeNumber
//
//  Created by 방문 사용자 on 2019. 4. 10..
//  Copyright © 2019년 방문 사용자. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    var isPrime = true
    @IBOutlet weak var texta: UITextField!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btn(_ sender: Any) {
        
    
        if let num = Int(texta.text!){
            print(num)
            var isPrime = true
            if  num <= 1{
            result.text="정확한 값을 입력하시오."
            texta.text = ""
            return
        }else{  //입력받은 숫자를 나누어서 0으로 떨어지는지 안떨어지는지
            for i in (2..<num){
                if num % i == 0 {
                isPrime = false
                }
            }
        }
        if isPrime == false {
            result.text = "소수가아님"
        }else{
            result.text = "소수"
        }
        }else {//숫자가 아닌경우를 입력했을떄
            result.text = "정확한 값을 입력하시오."
        }
       texta.text = "" //입력한후 입력창 초기화
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true) //background view 를 누르면 키패드가 내려감
    }
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        texta.resignFirstResponder()
        return true
    }
    
}

