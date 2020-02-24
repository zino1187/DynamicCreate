//
//  ViewController.swift
//  DynamicCreate
//
//  Created by zino-mac on 2020/02/24.
//  Copyright © 2020 zino-mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var y:Int = 200
    var x:Int = 0
    
    @IBOutlet weak var txt_row: UITextField!
    @IBOutlet weak var txt_col: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //이벤트의 종류가 바뀔수 있기 때문에
    //왠만하면 이벤트 핸들러 영역에 로직을 짜지
    //말자!! 별도의 함수 빼놓자!!
    //그래야 로직이 보호받음...
    @IBAction func btnClick(_ sender: Any) {
        
        createImage()
    }
    
    @IBAction func clearView(_ sender: Any) {
        removeImage()
    }
    
    func removeImage(){
        print("자식 view의 갯수는 ", self.view.subviews.count)
        
        for v in self.view.subviews{
            v.removeFromSuperview()
        }
        
    }
    
    func createImage(){
        //평소와는 다르게 UIImageView객체를
        //프로그래밍 적으로 생성하여 (동적) 기존의
        //뷰에 부착하자!!!
        var row:Int = Int(txt_row.text!)!
        var col:Int = Int(txt_col.text!)!
        
        for i in 0..<row {
            for a in 0..<col{
                var imgView = UIImageView(image: UIImage(named: "bird.png"))
                
                // 이미지 크기 조절하기
                imgView.frame = CGRect(x: x, y: y, width: 80, height: 80)
                self.view.addSubview(imgView)
                x = x + 85
            }
            y = y + 85
            x = 0
            
        }
    }
    
}







