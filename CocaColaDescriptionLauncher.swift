import UIKit

class CocaColaDescriptionLauncher: CompanyBaseDescriptionLauncher{

    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "To refresh the world..."),Setting(name: "To inspire moments of optimism and happiness..."),Setting(name: "To create value and make a difference.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Chairman and CEO - Muhtar Kent"),Setting(name: "President - James Quincey")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Coca Cola"),Setting(name: "Sprite"),Setting(name: "Fanta"),Setting(name: "Dasani"),Setting(name: "Minutes"),Setting(name: "ciel"),Setting(name: "Powerade"),Setting(name: "Simply Orange"),Setting(name: "Glacéau vitaminwater"),Setting(name: "Glacéau smartwater"),Setting(name: "mello yello"),Setting(name: "Fuze"),Setting(name: "Honest tea"),Setting(name: "odwalla")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: CocaColaViewController?

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
                let navController = UINavigationController(rootViewController: CocaColaRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Chairman and CEO - Muhtar Kent"{
                let navController = UINavigationController(rootViewController: MuhtarKentViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "President - James Quincey"{
                let navController = UINavigationController(rootViewController: JamesQuinceyViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Coca Cola"{
                let url = URL(string: "http://www.coca-colacompany.com/our-company/about-coca-cola-journey")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Sprite"{
                let url = URL(string: "https://www.sprite.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Fanta"{
                let url = URL(string: "https://www.fanta.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Dasani"{
                let url = URL(string: "http://www.dasani.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Minute Maid"{
                let url = URL(string: "http://www.minutemaid.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "ciel"{
                let url = URL(string: "http://www.coca-colacompany.com/brands/ciel")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Powerade"{
                let url = URL(string: "http://www.us.powerade.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "SimplyOrange"{
                let url = URL(string: "http://www.simplyorangejuice.com/our-story")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Fresca"{
                let url = URL(string: "http://www.fresca.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Glacéau vitaminwater"{
                let url = URL(string: "http://vitaminwater.com/products/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Glacéau smartwater"{
                let url = URL(string: "https://www.drinksmartwater.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "mello yello"{
                let url = URL(string: "https://www.melloyello.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Fuze"{
                let url = URL(string: "http://www.fuzebev.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "odwalla"{
                let url = URL(string: "http://www.odwalla.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
