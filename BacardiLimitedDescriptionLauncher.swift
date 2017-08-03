import UIKit

class BacardiLimitedDescriptionLauncher: CompanyBaseDescriptionLauncher{

    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "...promote responsibile drinking...TO REINFORCE OUR VALUES AS A GLOBAL BUSINESS THROUGH OUR 'GLOBAL PRINCIPLES'.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Chairman - Facundo L. Bacardi"),Setting(name: "CEO - Mike Dolan")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "BACARDÍ rum"),Setting(name: "Dewar's Blended Scotch Whiskey"),Setting(name: "Bombay Sapphire gin"),Setting(name: "Grey Goose vodka"),Setting(name: "Martini vermouth"),Setting(name: "Eristoff vodka"),Setting(name: "CazaDores tequila"),Setting(name: "William Lawson's Blended Scotch Whisky")]
    }()
    
    let affiliates: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: BacardiLimitedViewController?

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
                let navController = UINavigationController(rootViewController: BacardiLimitedRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Chairman - Facundo L. Bacardi"{
                let navController = UINavigationController(rootViewController: FacundoBacardiViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "CEO - Mike Dolan"{
                let navController = UINavigationController(rootViewController: MichaelDolanViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "BACARDÍ rum"{
                let url = URL(string: "https://www3.bacardi.com/us/en/heritage/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Dewar's Blended Scotch Whiskey"{
                let url = URL(string: "https://www.bacardilimited.com/our-brands/dewars-blended-scotch-whisky/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bombay Sapphire gin"{
                let url = URL(string: "https://www.bombaysapphire.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Grey Goose vodka"{
                let url = URL(string: "https://www.greygoose.com/gl/en/home.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Martini vermouth"{
                let url = URL(string: "https://www3.martini.com/we-are-martini/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Eristoff vodka"{
                let url = URL(string: "http://www.eristoff.com/gl/home#story")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "CazaDores tequila"{
                let url = URL(string: "https://www.cazadores.com/#1")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "William Lawson's Blended Scotch Whisky"{
                let url = URL(string: "https://www.williamlawsons.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
