import UIKit

class ExecutiveBaseViewController: UIViewController {
    
    var companyName: String {
        return ""
    }
    
    var executiveName: String {
        return ""
    }
    
    override func viewDidLoad()
    {
        view.backgroundColor = UIColor.white
        let backButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(goBack))
        navigationItem.leftBarButtonItem = backButton
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(goBack))
        rightSwipe.direction = .right
        view.addGestureRecognizer(rightSwipe)
        
        navigationItem.title = "\(executiveName) Webb"
        compButton.layer.cornerRadius = (compButton.frame.size.width)/2
        execButton.layer.cornerRadius = (execButton.frame.size.width)/2
        
        view.addSubview(compButton)
        view.addSubview(execButton)
        
        setupCompanyButton()
        setupExecutiveButton()
    }
    
   lazy var compButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1)
        button.setTitle(self.companyName, for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame = CGRect(x: 0,y: 0,width: 200,height: 200)
        button.addTarget(self, action: #selector(compPressed), for: .touchUpInside)
        return button
    }()
    
    lazy var execButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1)
        button.setTitle(self.executiveName, for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.titleLabel?.adjustsFontSizeToFitWidth = true
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleMore), for: .touchUpInside)
        button.frame = CGRect(x: 0,y: 0,width: 110,height: 110)
        return button
    }()
    
    func setupCompanyButton(){
        //need x, y, width, height constraints
        compButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        compButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
        compButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        compButton.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    
    func setupExecutiveButton(){
        //need x, y, width, height constraints
        execButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        execButton.topAnchor.constraint(equalTo: compButton.bottomAnchor,constant: 25).isActive = true
        execButton.widthAnchor.constraint(equalToConstant: 110).isActive = true
        execButton.heightAnchor.constraint(equalToConstant: 110).isActive = true
    }
    
    func handleMore(){
    }
    
    func compPressed(){
    }

    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask
    {
        return .portrait
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?)
    {
        self.view.endEditing(true)
    }
    
    func goBack(){
        dismiss(animated: true, completion: nil)
    }

}
