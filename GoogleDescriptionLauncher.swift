import UIKit

class GoogleDescriptionLauncher: CompanyBaseDescriptionLauncher{
    
    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "...to do important and meaningfulthings with the resources we have.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Co-founder - Larry Page"),Setting(name: "Co-founder - Sergey Brin"),Setting(name: "Chairman - Eric E. Schmidt"),Setting(name: "CEO - Sundar Pichai")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Google"),Setting(name: "Alphabet, Inc.")]
    }()
    
    let affiliates: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: GoogleViewController?

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
                let navController = UINavigationController(rootViewController: GoogleRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Co-founder - Larry Page"{
                let navController = UINavigationController(rootViewController: LarryPageViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Co-founder - Sergey Brin"{
                let navController = UINavigationController(rootViewController: SergeyBrinViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            if setting.name == "Chairman - Eric E. Schmidt"{
                let navController = UINavigationController(rootViewController: EricSchmidtViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "CEO - Sundar Pichai"{
                let navController = UINavigationController(rootViewController: SundarPichaiViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Google"{
                let url = URL(string: "https://www.google.com/intl/en/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Alphabet, Inc."{
                let url = URL(string: "https://abc.xyz/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
