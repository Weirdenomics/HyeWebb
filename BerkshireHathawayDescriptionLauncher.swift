import UIKit

class BerkshireHathawayDescriptionLauncher: CompanyBaseDescriptionLauncher{
    
    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "...to over time deliver significant growth, bumpy or not.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Chairman and CEO - Warren E. Buffett"),Setting(name: "Vice Chairman - Charles T. Munger")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Berkshire Subsidary Companies"),Setting(name: "Berkshire Activewear")]
    }()
    
    let affiliates: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: BerkshireHathawayViewController?
    
    override func handleDismiss(setting: Setting){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.blackView.alpha = 0
            
            if let window = UIApplication.shared.keyWindow{
                self.collectionView.frame = CGRect(x: 0, y: window.frame.height, width: self.collectionView.frame.width, height: self.collectionView.frame.height)
            }
        }) { (completed: Bool) in
            
            if setting.name == ""{
                self.homeController?.mapView.alpha = 1
            }
            
            if setting.name == "Mission"{
                self.settings = self.value
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Executives"{
                self.settings = self.executives
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Notable BAPS"{
                self.settings = self.brands
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Rate and Share your opinion, it matters!"{
                let navController = UINavigationController(rootViewController: BerkshireHathawayRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Chairman and CEO - Warren E. Buffett"{
                let navController = UINavigationController(rootViewController: WarrenBuffettViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Vice Chairman - Charles T. Munger"{
                let navController = UINavigationController(rootViewController: CharlieMungerViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Berkshire Subsidary Companies"{
                let url = URL(string: "http://www.berkshirehathaway.com/subs/sublinks.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Berkshire Activewear"{
                let url = URL(string: "https://berkshirewear.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
