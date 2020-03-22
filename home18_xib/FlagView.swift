
import UIKit

class FlagView: UIView {
    
    @IBOutlet var mainView: UIView!
    
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    
    var clickHandler: (() -> Void)?
    
    @IBAction func redButtonDidClick(_ sender: UIButton) {
        clickHandler?()
        UIView.animate(withDuration: 1.0) {
            self.mainView.backgroundColor = UIColor.init(displayP3Red: 1.0 , green: 0, blue: 0, alpha: 1.0)
            
        }
        
    }
    
    @IBAction func blueButtonDidClick(_ sender: UIButton) {
        clickHandler?()
        UIView.animate(withDuration: 1.0) {
            self.mainView.backgroundColor = UIColor.init(displayP3Red: 0, green: 0, blue: 1.0 , alpha: 1.0)
        }
    }
    
    @IBAction func greenButtonDidClick(_ sender: UIButton) {
        clickHandler?()
        UIView.animate(withDuration: 1.0) {
            self.mainView.backgroundColor = UIColor.init(displayP3Red: 0, green: 1.0, blue: 0, alpha: 1.0)
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("FlagView", owner: self, options: nil)
        self.addSubview(mainView)
        mainView.frame = self.bounds
        mainView.autoresizingMask = [.flexibleHeight,.flexibleWidth]
        mainView.backgroundColor = .black
    }
    
}
