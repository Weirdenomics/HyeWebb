import UIKit

class AmericanEagleDescriptionLauncher: CompanyBaseDescriptionLauncher{

    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Delivering innovation, quality and outstanding value to our customers"),Setting(name: "Strengthening our brands, customer experience and engagement"),Setting(name: "Leveraging omni-channel and enhancing capabilities to gain market share through a focus on our customers and where they choose to shop"),Setting(name: "Growing Aeri to be the leading intimates brand in the marketplace"),Setting(name: "Strengthening our finacial discipline including inventory and expense management, delivering profitable revenue growth and focus on high return investments among other areas")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Executive Chairman and CEO - Jay L. Schottenstein")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "American Eagle Outfitters"),Setting(name: "Aerie"),Setting(name: "Tailgate"),Setting(name: "Todd Snyder New York")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: AmericanEagleViewController?

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
                let navController = UINavigationController(rootViewController: AmericanEagleRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Executive Chairman and CEO - Jay L. Schottenstein"{
                let navController = UINavigationController(rootViewController: JaySchottensteinViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "American Eagle Outfitters"{
                let url = URL(string: "https://betterworld.ae.com/?page_id=19")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Aerie"{
                let url = URL(string: "https://www.ae.com/featured-aerie-supports/aerie/s-cms/7610002?cm=sUS-cUSD&navdetail=mega:cat6610030:c1:p12")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Tailgate"{
                let url = URL(string: "https://www.ae.com/tailgate/tailgate/s-cms/8050004?cm=sUS-cUSD&navdetail=mega:cat8080002")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Todd Snyder New York"{
                let url = URL(string: "http://www.toddsnyder.com/pages/bio")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
