import UIKit
class ResultViewController:UIViewController {
    
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var characterImageView: UIImageView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        var number = Int.random(in: 0...9)
        switch number {
        case 9:
            //激レアキャラクター
            characterImageView.image = UIImage (named: "IoTMesh")
            backgroundImageView.image = UIImage (named: "bgBlue")
        case 7,8:
            // レアキャラクター
            characterImageView.image = UIImage (named: "camera")
            backgroundImageView.image = UIImage (named: "bgGreen")
        case 0..<7:
            characterImageView.image = UIImage (named: "iphone")
            backgroundImageView.image = UIImage (named: "bgRed")
        default:
            print("error")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // キャラクター出現のアニメーション
        self.characterImageView.center = self.view.center
        UIView.animate(withDuration: 1.0, delay: 0, options: [.curveEaseIn, .autoreverse, .repeat], animations: {
            self.characterImageView.center.y += 10.0
        }){_ in
        self.characterImageView.center.y -= 10.0
    }
}
    
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
}
