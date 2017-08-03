import UIKit
import Firebase
import FBSDKLoginKit
import FBSDKShareKit

class ExecutiveBaseRatingController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    var tableView: UITableView = UITableView()
    var postID: String!
    var following = [String]()
    var posts = [Post]()
    var name: String {
        return ""
    }
    
    var executives: String {
        return "Executives"
    }
    var supports: String {
        return "Supporters"
    }
    var hmmSupports: String {
        return "Hmm Supports"
    }
    var againstSupports: String {
        return "Against Supports"
    }
    var execPosts: String {
        return "posts"
    }
    var supportCount: String {
        return "Support Count"
    }
    var hmmCount: String {
        return "Hmm Count"
    }
    var againstCount: String {
        return "Against Count"
    }
    
    let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Independent"
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.textColor = #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1)
        titleLabel.font = titleLabel.font.withSize(18)
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let supportcountLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Support Label"
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.textColor = UIColor.green
        titleLabel.font = titleLabel.font.withSize(11)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let socratesLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Hello Socrates!"
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.textColor = #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1)
        titleLabel.font = titleLabel.font.withSize(11)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let hmmcountLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Hmm Label"
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.textColor = #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1)
        titleLabel.font = titleLabel.font.withSize(11)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let againstcountLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Against Label"
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.textColor = UIColor.red
        titleLabel.font = titleLabel.font.withSize(11)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let ceoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let peopleratingLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "People's Rating:"
        titleLabel.textAlignment = NSTextAlignment.center
        titleLabel.textColor = #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1)
        titleLabel.font = titleLabel.font.withSize(18)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let opinionLabel: UILabel = {
        let opinionLabel = UILabel()
        opinionLabel.text = "Have an Opinion?"
        opinionLabel.textAlignment = NSTextAlignment.center
        opinionLabel.textColor = UIColor.blue
        opinionLabel.font = opinionLabel.font.withSize(16)
        opinionLabel.translatesAutoresizingMaskIntoConstraints = false
        return opinionLabel
    }()
    
    let opinionContent: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Share it..."
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
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

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        ratingPicture() // parameters for ratings picture
        fetchPosts() // determines which users to get posts from
        hideButton()//reads info from database to determine the state of rating buttons
        FBShare()
        
        let backButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(self.goBack))
        navigationItem.leftBarButtonItem = backButton
        backButton.tintColor = #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1)
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(self.goBack))
        rightSwipe.direction = .right
        view.addGestureRecognizer(rightSwipe)
        
        view.addSubview(supportButton)
        view.addSubview(supportcountLabel)
        view.addSubview(hmmButton)
        view.addSubview(hmmcountLabel)
        view.addSubview(againstButton)
        view.addSubview(againstcountLabel)
        view.addSubview(socratesLabel)
        view.addSubview(titleLabel)
        view.addSubview(peopleratingLabel)
        view.addSubview(opinionLabel)
        view.addSubview(opinionContent)
        view.addSubview(ceoImage)
        view.addSubview(unsupportButton)
        view.addSubview(takebackButton)
        view.addSubview(shareButton)
        
        setupsupportcountLabel()
        setupagainstcountLabel()
        setuppeopleratingLabel()
        setuphmmcountLabel()
        setupsocratesLabel()
        setuptitleLabel()
        setupopinionLabel()
        setupsupportButton()
        setuphmmButton()
        setupagainstButton()
        setupunsupportButton()
        setuptakebackButton()
        setupshareButton()
        setupceoImage()
        setupopinionTextField()
        
        unsupportButton.isHidden = true
        socratesLabel.isHidden = true
        takebackButton.isHidden = true
        socratesLabel.isHidden = true
        
        addLine(fromPoint: CGPoint(x: 0,y: 350), toPoint: CGPoint(x: view.frame.width,y: 350))
        addLine(fromPoint: CGPoint(x: 0,y: 420), toPoint: CGPoint(x: view.frame.width,y: 420))
        
        self.tableView.separatorColor = #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1)
        tableView.delegate = self
        tableView.dataSource = self
        
        view.addSubview(tableView)
        tableView.frame = CGRect(x: 0,y: 420, width: view.frame.width, height: 275)
    }
    
    func addLine(fromPoint start: CGPoint, toPoint end:CGPoint) {
        let line = CAShapeLayer()
        let linePath = UIBezierPath()
        linePath.move(to: start)
        linePath.addLine(to: end)
        line.path = linePath.cgPath
        line.strokeColor = #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1).cgColor// UIColor.red.cgColor
        line.lineWidth = 5
        line.lineCap = "round"
        line.lineJoin = kCALineJoinRound
        self.view.layer.addSublayer(line)
    }
    
    func goBack(){
        dismiss(animated: true, completion: nil)
    }
    
    /*fileprivate*/ func FBShare() {
        let content : FBSDKShareLinkContent = FBSDKShareLinkContent()
        content.contentURL = NSURL(string: "https://www.facebook.com") as URL!
        content.contentTitle = "HyeWebb"
        content.contentDescription = "Explore HyeWebb and Rate your Favorite Executives, Companies, and Organizations!"
        content.imageURL = NSURL(string: "https://scontent-lax3-2.xx.fbcdn.net/v/t1.0-9/16938628_407838339560795_5548315857265863048_n.jpg?oh=b712bddfb6f1bdd90cecece9f240fcee&oe=5938620F") as URL!
        let button : FBSDKShareButton = FBSDKShareButton()
        button.shareContent = content
        button.frame = CGRect(x: 297, y: 378, width: 65, height: 25)
        self.view.addSubview(button)
    }
    
    let shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Share", for: .normal)
        button.setTitleColor( #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(sharebuttonPressed), for: .touchUpInside)
        return button
    }()
    
    func sharebuttonPressed(){
        AppDelegate.instance().showActivityIndicator()
        
        let uid = FIRAuth.auth()!.currentUser!.uid
        let ref = FIRDatabase.database().reference()
        let key = ref.child(self.executives).child(self.name).child(self.execPosts).childByAutoId().key
        let timeStamp = NSDate.timeIntervalSinceReferenceDate
        let posst = Post()
        let feed = ["userID" : uid,
                    "Comment": self.opinionContent.text!,
                    "likes": 0,
                    "timeStamp": timeStamp,
                    "author" : FIRAuth.auth()!.currentUser!.displayName!,
                    "postID" : key] as [String : Any]
        let postFeed = ["\(key)" : feed]
        ref.child(self.executives).child(self.name).child(self.execPosts).updateChildValues(postFeed)
        
        posst.author = FIRAuth.auth()!.currentUser!.displayName!
        posst.likes = 0
        posst.Comment = self.opinionContent.text!
        posst.postID = key
        posst.userID = uid
        posst.timeStamp = timeStamp as NSNumber?
        self.posts.append(posst)
        let insertionIndexPath = IndexPath(row: posts.count - 1, section: 0)
        tableView.insertRows(at: [insertionIndexPath], with: UITableViewRowAnimation.automatic)
        
        AppDelegate.instance().dismissActivityIndicator()
        self.opinionContent.text = ""
        self.opinionContent.clearsOnInsertion = true
        self.opinionContent.resignFirstResponder()
        self.tableView.reloadData()
    }
    
    let supportButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Support", for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(supportbuttonPressed), for: .touchUpInside)
        return button
    }()
    
    func supportbuttonPressed(){
        self.supportButton.isEnabled = false
        let ref = FIRDatabase.database().reference()
        let uid = FIRAuth.auth()!.currentUser!.uid
        
        let feed = ["userID" : uid] as [String : Any]
        let postFeed = ["\(uid)" : feed]
        
        ref.child(self.executives).child(self.name).child(self.supports).updateChildValues(postFeed)
        
        ref.child(self.executives).child(self.name).observeSingleEvent(of: .value, with: { (snap) in
            if let properties = snap.value as? [String: AnyObject]{
                if let supports = properties[self.supports] as? [String:AnyObject]{
                    let count = supports.count
                    self.supportcountLabel.text = "\(count) Supporters"
                    
                    let update = [self.supportCount: count]
                    ref.child(self.executives).child(self.name).updateChildValues(update)
                    
                    self.supportButton.isHidden = true
                    self.unsupportButton.isHidden = false
                    self.supportButton.isEnabled = true
                }
            }
        })
        ref.removeAllObservers()
    }
    
    let hmmButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Hmm...", for: .normal)
        button.setTitleColor(#colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(hmmbuttonPressed), for: .touchUpInside)
        return button
    }()
    
    func hmmbuttonPressed(){
        self.hmmButton.isEnabled = false
        let ref = FIRDatabase.database().reference()
        let uid = FIRAuth.auth()!.currentUser!.uid
        
        let feed = ["userID" : uid] as [String : Any]
        let postFeed = ["\(uid)" : feed]
        
        ref.child(self.executives).child(self.name).child(self.hmmSupports).updateChildValues(postFeed)
        
        ref.child(self.executives).child(self.name).observeSingleEvent(of: .value, with: { (snap) in
            if let properties = snap.value as? [String: AnyObject]{
                if let supports = properties[self.hmmSupports] as? [String:AnyObject]{
                    let count = supports.count
                    self.hmmcountLabel.text = "\(count) are unsure"
                    
                    let update = [self.hmmCount: count]
                    ref.child(self.executives).child(self.name).updateChildValues(update)
                    
                    self.hmmButton.isHidden = true
                    self.socratesLabel.isHidden = false
                    self.hmmButton.isEnabled = true
                }
            }
        })
        ref.removeAllObservers()
        
    }
    
    let againstButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Against", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(againstbuttonPressed), for: .touchUpInside)
        return button
    }()
    
    func againstbuttonPressed(){
        self.againstButton.isEnabled = false
        let ref = FIRDatabase.database().reference()
        let uid = FIRAuth.auth()!.currentUser!.uid
        
        let feed = ["userID" : uid] as [String : Any]
        let postFeed = ["\(uid)" : feed]
        
        ref.child(self.executives).child(self.name).child(self.againstSupports).updateChildValues(postFeed)
        
        ref.child(self.executives).child(self.name).observeSingleEvent(of: .value, with: { (snap) in
            if let properties = snap.value as? [String: AnyObject]{
                if let supports = properties[self.againstSupports] as? [String:AnyObject]{
                    let count = supports.count
                    self.againstcountLabel.text = "\(count) are against"
                    
                    let update = [self.againstCount: count]
                    ref.child(self.executives).child(self.name).updateChildValues(update)
                    
                    self.againstButton.isHidden = true
                    self.takebackButton.isHidden = false
                    self.againstButton.isEnabled = true
                }
            }
        })
        ref.removeAllObservers()
    }
    
    let unsupportButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Unsupport", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(unsupportbuttonPressed), for: .touchUpInside)
        return button
    }()
    
    func unsupportbuttonPressed(){
        self.unsupportButton.isEnabled = false
        let ref = FIRDatabase.database().reference()
        let uid = FIRAuth.auth()!.currentUser!.uid
        
        ref.child(self.executives).child(self.name).child(self.supports).observeSingleEvent(of: .value, with: { (snapshot) in
            
            if let properties = snapshot.value as? [String: AnyObject] {
                if let Supporters = properties[uid] as? [String : AnyObject]{
                    for (_, person) in Supporters {
                        print(person)
                        if person as? String == FIRAuth.auth()!.currentUser!.uid {
                            ref.child(self.executives).child(self.name).child(self.supports).child(person as! String).removeValue(completionBlock: { (error, reff) in
                                if error == nil{
                                    ref.child(self.executives).child(self.name).observeSingleEvent(of: .value, with: { (snap) in
                                        if let prop = snap.value as? [String: AnyObject]{
                                            if let supports  = prop[self.supports] as? [String : AnyObject] {
                                                let count = supports.count
                                                let update = [self.supportCount: count]
                                                ref.child(self.executives).child(self.name).updateChildValues(update)
                                                self.supportcountLabel.text = "\(count) Supporters"
                                                
                                                
                                            }else {
                                                let update = [self.supportCount: 0]
                                                ref.child(self.executives).child(self.name).updateChildValues(update)
                                                self.supportcountLabel.text = "0 Supporters"
                                            }
                                        }
                                    })
                                }
                            })
                            self.supportButton.isHidden = false
                            self.unsupportButton.isHidden = true
                            self.unsupportButton.isEnabled = true
                            break
                        }
                    }
                }
            }
            
        })
        ref.removeAllObservers()
    }
    
    let takebackButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Take it Back?", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        button.layer.masksToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(takebackbuttonPressed), for: .touchUpInside)
        return button
    }()
    
    func takebackbuttonPressed(){
        self.takebackButton.isEnabled = false
        let ref = FIRDatabase.database().reference()
        let uid = FIRAuth.auth()!.currentUser!.uid
        
        ref.child(self.executives).child(self.name).child(self.againstSupports).observeSingleEvent(of: .value, with: { (snapshot) in
            
            if let properties = snapshot.value as? [String: AnyObject] {
                if let Supporters = properties[uid] as? [String : AnyObject]{
                    for (_, person) in Supporters {
                        print(person)
                        if person as? String == FIRAuth.auth()!.currentUser!.uid {
                            ref.child(self.executives).child(self.name).child(self.againstSupports).child(person as! String).removeValue(completionBlock: { (error, reff) in
                                if error == nil{
                                    ref.child(self.executives).child(self.name).observeSingleEvent(of: .value, with: { (snap) in
                                        if let prop = snap.value as? [String: AnyObject]{
                                            if let supports  = prop[self.againstSupports] as? [String : AnyObject] {
                                                let count = supports.count
                                                let update = [self.againstCount: count]
                                                ref.child(self.executives).child(self.name).updateChildValues(update)
                                                self.againstcountLabel.text = "\(count) are Against"
                                                
                                            }else {
                                                let update = [self.againstCount: 0]
                                                ref.child(self.executives).child(self.name).updateChildValues(update)
                                                self.againstcountLabel.text = "0 are Against"
                                            }
                                        }
                                    })
                                }
                            })
                            self.againstButton.isHidden = false
                            self.takebackButton.isHidden = true
                            self.takebackButton.isEnabled = true
                            break
                        }
                    }
                }
            }
        })
        ref.removeAllObservers()
    }
    
    func setupsupportButton(){
        //need x, y, width, height constraints
        supportButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -115).isActive = true
        supportButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        supportButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        supportButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupunsupportButton(){
        //need x, y, width, height constraints
        unsupportButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -115).isActive = true
        unsupportButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        unsupportButton.widthAnchor.constraint(equalToConstant: 90).isActive = true
        unsupportButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setuphmmButton(){
        //need x, y, width, height constraints
        hmmButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        hmmButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        hmmButton.widthAnchor.constraint(equalToConstant: 60).isActive = true
        hmmButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupagainstButton(){
        //need x, y, width, height constraints
        againstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 115).isActive = true
        againstButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        againstButton.widthAnchor.constraint(equalToConstant: 90).isActive = true
        againstButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setuptakebackButton(){
        //need x, y, width, height constraints
        takebackButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 115).isActive = true
        takebackButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        takebackButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        takebackButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupshareButton(){
        //need x, y, width, height constraints
        shareButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        shareButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 57).isActive = true
        shareButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
        shareButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func hideButton(){
        let ref = FIRDatabase.database().reference()
        ref.child(self.executives).child(self.name).child(self.supports).queryOrderedByKey().observeSingleEvent(of: .value, with: { (snapshot) in
            if let dictionary = snapshot.value as? [String: AnyObject]{
                for(_,value) in dictionary {
                    if let uid = value["userID"] as? String{
                        if uid == FIRAuth.auth()!.currentUser!.uid{
                            self.unsupportButton.isHidden = false
                            self.supportButton.isHidden = true
                        }
                    }
                }
            }
        })
        
        ref.child(self.executives).child(self.name).child(self.hmmSupports).queryOrderedByKey().observeSingleEvent(of: .value, with: { (snapshot) in
            if let dictionary = snapshot.value as? [String: AnyObject]{
                for(_,value) in dictionary {
                    if let uid = value["userID"] as? String{
                        if uid == FIRAuth.auth()!.currentUser!.uid{
                            self.socratesLabel.isHidden = false
                            self.hmmButton.isHidden = true
                        }
                    }
                }
            }
        })
        
        ref.child(self.executives).child(self.name).child(self.againstSupports).queryOrderedByKey().observeSingleEvent(of: .value, with: { (snapshot) in
            if let dictionary = snapshot.value as? [String: AnyObject]{
                for(_,value) in dictionary {
                    if let uid = value["userID"] as? String{
                        if uid == FIRAuth.auth()!.currentUser!.uid{
                            self.takebackButton.isHidden = false
                            self.againstButton.isHidden = true
                        }
                    }
                }
            }
        })
    }
    
    func ratingPicture(){
        let ref = FIRDatabase.database().reference()
        ref.child(self.executives).child(self.name).observeSingleEvent(of: .value, with: { (snap) in
            if let properties = snap.value as? [String: AnyObject]{
                
                // If you are going to take this route you have to give each rating value an initial click to give a default value of zero otherwise the app will crash! The values dont exist unless you give an initial click.
                
                let supports = properties[self.supportCount] as! Int
                let hmmsupports = properties[self.hmmCount] as! Int
                let againstsupports = properties[self.againstCount] as! Int
                
                self.supportcountLabel.text = "\(supports) Supporters"
                self.hmmcountLabel.text = "\(hmmsupports) are unsure"
                self.againstcountLabel.text = "\(againstsupports) are Against"
                
                if (supports < againstsupports)
                {
                    self.ceoImage.image = #imageLiteral(resourceName: "disapprove")
                }
                
                if (supports == againstsupports)
                {
                    self.ceoImage.image = #imageLiteral(resourceName: "unsure")
                }
                
                if (supports > againstsupports)
                {
                    self.ceoImage.image = #imageLiteral(resourceName: "approve")
                }
            }
        })
    }

    func setupopinionLabel(){
        opinionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        opinionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 37).isActive = true
        opinionLabel.widthAnchor.constraint(equalToConstant: 130).isActive = true
        opinionLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupopinionTextField(){
        opinionContent.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 12).isActive = true
        opinionContent.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 65).isActive = true
        opinionContent.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -150).isActive = true
        opinionContent.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setuppeopleratingLabel(){
        peopleratingLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -100).isActive = true
        peopleratingLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
        peopleratingLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true
        peopleratingLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setuptitleLabel(){
        titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -250).isActive = true
        titleLabel.widthAnchor.constraint(equalToConstant: 250).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupsupportcountLabel(){
        //need x, y, width, height constraints
        supportcountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -115).isActive = true
        supportcountLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        supportcountLabel.widthAnchor.constraint(equalToConstant: 90).isActive = true
        supportcountLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setuphmmcountLabel(){
        //need x, y, width, height constraints
        hmmcountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        hmmcountLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        hmmcountLabel.widthAnchor.constraint(equalToConstant: 90).isActive = true
        hmmcountLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupsocratesLabel(){
        //need x, y, width, height constraints
        socratesLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        socratesLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20).isActive = true
        socratesLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        socratesLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupagainstcountLabel(){
        //need x, y, width, height constraints
        againstcountLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 115).isActive = true
        againstcountLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        againstcountLabel.widthAnchor.constraint(equalToConstant: 90).isActive = true
        againstcountLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupceoImage(){
        //need x, y, width, height constraints
        ceoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 75).isActive = true
        ceoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -150).isActive = true
        ceoImage.widthAnchor.constraint(equalToConstant: 150).isActive = true
        ceoImage.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    /////////////////////////////////////TableView Stuff/////////////////////////////////////////
    func fetchPosts() {
        let ref = FIRDatabase.database().reference()
        ref.child("users").queryOrderedByKey().observeSingleEvent(of: .value, with: { snapshot in
            let users = snapshot.value as! [String: AnyObject]
            
            for(_,value) in users {
                if let uid = value["uid"] as? String {
                    if uid == FIRAuth.auth()?.currentUser?.uid{
                        if let followingUsers = value["following"] as? [String : String]{
                            for(_, user) in followingUsers{
                                self.following.append(user)
                            }
                        }
                        self.following.append(FIRAuth.auth()!.currentUser!.uid)
                        
                        ref.child(self.executives).child(self.name).child(self.execPosts).queryOrderedByKey().observeSingleEvent(of: .value, with: { (snap) in
                            if let postsSnap = snap.value as? [String: AnyObject]{
                                for (_,post) in postsSnap{
                                    
                                    if let userID = post["userID"] as? String{
                                        let posst = Post()
                                        if let author = post["author"] as? String, let likes = post["likes"] as? NSNumber, let Comment = post["Comment"] as? String, let postID = post["postID"] as? String, let timeStamp = post["timeStamp"] as? NSNumber  {
                                            posst.author = author
                                            posst.likes = likes
                                            posst.Comment = Comment
                                            posst.postID = postID
                                            posst.userID = userID
                                            posst.timeStamp = timeStamp
                                            if let people = post["peopleWhoLike"] as? [String : AnyObject]{
                                                for(_,person) in people {
                                                    posst.peopleWhoLike.append(person as! String)
                                                }
                                            }
                                            self.posts.append(posst)
                                            self.posts.sort(by: { (Post1, Post2) -> Bool in
                                                if (Post1.likes?.intValue)! > (Post2.likes?.intValue)!{
                                                    return (Post1.likes?.intValue)! > (Post2.likes?.intValue)!
                                                }
                                                else{
                                                    return (Post1.timeStamp?.intValue)! > (Post2.timeStamp?.intValue)!
                                                }
                                            })
                                        }
                                        self.tableView.reloadData()
                                    }
                                }
                            }
                        })
                    }
                }
            }
        })
        ref.removeAllObservers()
    }

    func deleteCell(cell: UITableViewCell){
        if let deletionIndexPath = tableView.indexPath(for: cell){
            posts.remove(at: deletionIndexPath.row)
            tableView.deleteRows(at: [deletionIndexPath], with: UITableViewRowAnimation.automatic)
            self.tableView.reloadData()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! WholeFoodsMarketTableViewCell
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.posts.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }

}
