import UIKit
import Foundation
import Firebase

class CompaniesViewController: UIViewController, UITableViewDataSource,UITableViewDelegate,UISearchBarDelegate,CustomSearchControllerDelegate,UIViewControllerTransitioningDelegate
{
    var tableView: UITableView = UITableView()
    var identities : [(String,UIColor)] = []
    var identitiesFiltered : [(String,UIColor)] = []
    var customSearchController: CustomSearchController!
    var shouldShowSearchResults = false
    let viewTitle = "Companies"
    
    let transition = SimpleTransition()
    
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return transition
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
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.tableView.separatorColor = #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1)
        let copyCompanyNames : CompanyArray = CompanyArray()
        identities = copyCompanyNames.companyNames
        identitiesFiltered = identities
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title:"Logout", style: .plain, target: self, action: #selector(handleLogout))
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.frame.width - 32, height: view.frame.height))
        titleLabel.text = viewTitle
        titleLabel.textColor = UIColor.white
        navigationItem.titleView = titleLabel
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(handlePan))
        swipeLeft.direction = UISwipeGestureRecognizerDirection.left
        self.view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(dismissed))
        swipeRight.direction = UISwipeGestureRecognizerDirection.right
        self.view.addGestureRecognizer(swipeRight)
        
        tableView.frame = CGRect(x: 0,y: 0,width: view.frame.width,height: view.frame.height)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.view.addSubview(tableView)
        
        configureCustomSearchController()
    }
    
    func dismissed() {
        self.dismiss(animated: true, completion: nil)
    }
    
    func handleLogout(){
        do {
            try FIRAuth.auth()?.signOut()
        }catch let logoutError{
            print(logoutError)
        }
        let loginController = LoginViewController()
        present(loginController, animated: true, completion: nil)
    }
    
    func handlePan(){
        let navController = UINavigationController(rootViewController: OnePercentersViewController())
        navController.transitioningDelegate = self
        self.present(navController, animated: true, completion: nil)
    }
    
    //how many sections in table
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    //returns int (how many rows)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return identitiesFiltered.count
    }
    
    //contents of each cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = identitiesFiltered[indexPath.row].0
        cell.textLabel?.textColor = identitiesFiltered[indexPath.row].1
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let compName = identitiesFiltered[indexPath.row]
        var navController = UINavigationController()
        if compName.0 == "Weirdenomics"{
            navController = UINavigationController(rootViewController: WeirdenomicsViewController())
        }
        else if compName.0 == "Adidas Group"{
            navController = UINavigationController(rootViewController: AdidasViewController())
        }
        else if compName.0 == "Alphabet"{
            navController = UINavigationController(rootViewController: AlphabetViewController())
        }
        else if compName.0 == "American Eagle"{
            navController = UINavigationController(rootViewController: AmericanEagleViewController())
        }
        else if compName.0 == "Apple"{
            navController = UINavigationController(rootViewController: AppleViewController())
        }
        else if compName.0 == "Bacardi Limited"{
            navController = UINavigationController(rootViewController: BacardiLimitedViewController())
        }
        else if compName.0 == "Bank of America"{
            navController = UINavigationController(rootViewController: BankofAmericaViewController())
        }
        else if compName.0 == "Berkshire Hathaway"{
            navController = UINavigationController(rootViewController: BerkshireHathawayViewController())
        }
        else if compName.0 == "BP"{
            navController = UINavigationController(rootViewController: BPViewController())
        }
        else if compName.0 == "Calvin Klein"{
            navController = UINavigationController(rootViewController: CalvinKleinViewController())
        }
        else if compName.0 == "CBS"{
            navController = UINavigationController(rootViewController: CBSViewController())
        }
        else if compName.0 == "Ciroc"{
            navController = UINavigationController(rootViewController: CirocViewController())
        }
        else if compName.0 == "CNN"{
            navController = UINavigationController(rootViewController: CNNViewController())
        }
        else if compName.0 == "Coca-Cola"{
            navController = UINavigationController(rootViewController: CocaColaViewController())
        }
        else if compName.0 == "Diageo"{
            navController = UINavigationController(rootViewController: DiageoViewController())
        }
        else if compName.0 == "Disney"{
            navController = UINavigationController(rootViewController: DisneyViewController())
        }
        else if compName.0 == "Facebook"{
            navController = UINavigationController(rootViewController: FacebookViewController())
        }
        else if compName.0 == "George Mason University"{
            navController = UINavigationController(rootViewController: GeorgeMasonUniversityViewController())
        }
        else if compName.0 == "Google"{
            navController = UINavigationController(rootViewController: GoogleViewController())
        }
        else if compName.0 == "Green Bay Packers"{
            navController = UINavigationController(rootViewController: GreenBayPackersViewController())
        }
        else if compName.0 == "Grey Goose"{
            navController = UINavigationController(rootViewController: GreyGooseViewController())
        }
        else if compName.0 == "Harvard University"{
            navController = UINavigationController(rootViewController: HarvardUniversityViewController())
        }
        else if compName.0 == "Hersheys"{
            navController = UINavigationController(rootViewController: HersheysViewController())
        }
        else if compName.0 == "Howard University"{
            navController = UINavigationController(rootViewController: HowardUniversityViewController())
        }
        else if compName.0 == "Instagram"{
            navController = UINavigationController(rootViewController: InstagramViewController())
        }
        else if compName.0 == "Koch Industries"{
            navController = UINavigationController(rootViewController: KochIndustriesViewController())
        }
        else if compName.0 == "Louis Vuitton"{
            navController = UINavigationController(rootViewController: LouisVuittonViewController())
        }
        else if compName.0 == "LVHM"{
            navController = UINavigationController(rootViewController: LVHMViewController())
        }
        else if compName.0 == "McDonalds"{
            navController = UINavigationController(rootViewController: McDonaldsViewController())
        }
        else if compName.0 == "Miami Dolphins"{
            navController = UINavigationController(rootViewController: MiamiDolphinsViewController())
        }
        else if compName.0 == "Microsoft"{
            navController = UINavigationController(rootViewController: MicrosoftViewController())
        }
        else if compName.0 == "New England Patriots"{
            navController = UINavigationController(rootViewController: NewEnglandPatriotsViewController())
        }
        else if compName.0 == "NFL"{
            navController = UINavigationController(rootViewController: NFLViewController())
        }
        else if compName.0 == "Nike"{
            navController = UINavigationController(rootViewController: NikeViewController())
        }
        else if compName.0 == "PVH"{
            navController = UINavigationController(rootViewController: PVHViewController())
        }
        else if compName.0 == "Ralph Lauren Corporation"{
            navController = UINavigationController(rootViewController: RalphLaurenCorporationViewController())
        }
        else if compName.0 == "Reynolds American"{
            navController = UINavigationController(rootViewController: ReynoldsAmericanViewController())
        }
        else if compName.0 == "Samsung"{
            navController = UINavigationController(rootViewController: SamsungViewController())
        }
        else if compName.0 == "Seattle Seahawks"{
            navController = UINavigationController(rootViewController: SeattleSeahawksViewController())
        }
        else if compName.0 == "Starbucks Corporation"{
            navController = UINavigationController(rootViewController: StarbucksCorporationViewController())
        }
        else if compName.0 == "Time Warner"{
            navController = UINavigationController(rootViewController: TimeWarnerViewController())
        }
        else if compName.0 == "Tommy Hilfiger"{
            navController = UINavigationController(rootViewController: TommyHilfigerViewController())
        }
        else if compName.0 == "Turner"{
            navController = UINavigationController(rootViewController: TurnerViewController())
        }
        else if compName.0 == "Universal Music Group"{
            navController = UINavigationController(rootViewController: UniversalMusicGroupViewController())
        }
        else if compName.0 == "University of Virginia"{
            navController = UINavigationController(rootViewController: UniversityofVirginiaViewController())
        }
        else if compName.0 == "Viacom"{
            navController = UINavigationController(rootViewController: ViacomViewController())
        }
        else if compName.0 == "Virginia Commonwealth University"{
            navController = UINavigationController(rootViewController: VirginiaCommonwealthUniversityViewController())
        }
        else if compName.0 == "Virginia Tech"{
            navController = UINavigationController(rootViewController: VirginiaTechViewController())
        }
        else if compName.0 == "Walmart"{
            navController = UINavigationController(rootViewController: WalmartViewController())
        }
        else if compName.0 == "Warner Bros"{
            navController = UINavigationController(rootViewController: WarnerBrosViewController())
        }
        else if compName.0 == "Washington Redskins"{
            navController = UINavigationController(rootViewController: WashingtonRedskinsViewController())
        }
        else if compName.0 == "Whole Foods Market, Inc"{
            navController = UINavigationController(rootViewController: WholeFoodsMarketViewController())
        }
        navController.transitioningDelegate = self
        self.present(navController, animated: true, completion: nil)
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    func configureCustomSearchController() {
        customSearchController = CustomSearchController(searchResultsController: self, searchBarFrame: CGRect(x: 0, y: 0, width: tableView.frame.size.width, height: 50.0), searchBarFont: UIFont(name: "Futura", size: 16.0)!, searchBarTextColor: UIColor.white, searchBarTintColor: #colorLiteral(red: 1, green: 0.6664821494, blue: 0.1840490039, alpha: 1))
        
        customSearchController.customSearchBar.placeholder = "Search"
        tableView.tableHeaderView = customSearchController.customSearchBar
        
        customSearchController.customDelegate = self
    }
    
    // MARK: UISearchBarDelegate functions
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        shouldShowSearchResults = true
        tableView.reloadData()
    }
    
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        shouldShowSearchResults = false
        tableView.reloadData()
    }
    
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if !shouldShowSearchResults {
            shouldShowSearchResults = true
            tableView.reloadData()
        }
    }
    
    // MARK: CustomSearchControllerDelegate functions
    
    func didStartSearching() {
        shouldShowSearchResults = true
        tableView.reloadData()
    }
    
    
    func didTapOnSearchButton() {
        if !shouldShowSearchResults {
            shouldShowSearchResults = true
            tableView.reloadData()
        }
    }
    
    func didTapOnCancelButton() {
        shouldShowSearchResults = false
        tableView.reloadData()
    }
    
    
    func didChangeSearchText(_ searchText: String) {
        identitiesFiltered = searchText.isEmpty ? identities:identities.filter({ (dataString)  -> Bool in
            return dataString.0.range(of: searchText, options: .caseInsensitive) != nil
        })
        tableView.reloadData()
    }
}
