import UIKit

class GreyGooseDescriptionLauncher: CompanyBaseDescriptionLauncher{

    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "...TO REINFORCE OUR VALUES AS A GLOBAL BUSINESS THROUGH OUR 'GLOBAL PRINCIPLES'.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Chairman - Facundo L. Bacardi"), Setting(name: "Cellar Master - François Thibault")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Grey Goose"),Setting(name: "Bacardi Limited")]
    }()
    
    let affiliates: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: GreyGooseViewController?

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
                let navController = UINavigationController(rootViewController: GreyGooseRatingViewController())
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
            
            if setting.name == "Cellar Master - François Thibault"{
                let navController = UINavigationController(rootViewController: FrancoisThibaultViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Grey Goose"{
                let url = URL(string: "https://www.greygoose.com/gl/en/our-craft.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bacardi Limited"{
                let url = URL(string: "https://www.bacardilimited.com/our-company/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
