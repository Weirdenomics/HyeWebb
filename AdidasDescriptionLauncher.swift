import UIKit

class AdidasDescriptionLauncher: CompanyBaseDescriptionLauncher{
    
    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "...To be the best sports brand in the world.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Chairman - Igor Landau"),Setting(name: "CEO - Kasper Rorsted")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Adidas"),Setting(name: "Reebok"),Setting(name: "TaylorMade-Adidas Golf")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: AdidasViewController?
    
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
                let navController = UINavigationController(rootViewController: AdidasRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "References"{
                self.settings = self.brands
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Chairman - Igor Landau"{
                let navController = UINavigationController(rootViewController: IgorLandauViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "CEO - Kasper Rorsted"{
                let navController = UINavigationController(rootViewController: KasperRorstedViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Adidas"{
                let url = URL(string: "http://www.adidas.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Reebok"{
                let url = URL(string: "http://www.reebok.com/us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "TaylorMade-Adidas Golf"{
                let url = URL(string: "http://www.taylormadegolf.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
