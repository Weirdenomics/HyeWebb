import UIKit

class BPDescriptionLauncher: CompanyBaseDescriptionLauncher{
    
    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "...deliver energy products and services to people around the world.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Chairman - Carl-Henric Svanberg"),Setting(name: "CEO - Bob Dudley")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Rosneft"),Setting(name: "BP 2016 Annual Report Pg. 227")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: BPViewController?

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
                let navController = UINavigationController(rootViewController: BPRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Chairman - Carl-Henric Svanberg"{
                let navController = UINavigationController(rootViewController: CarlSvanbergViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "CEO - Bob Dudley"{
                let navController = UINavigationController(rootViewController: BobDudleyViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Rosneft"{
                let url = URL(string: "https://www.rosneft.com/about/Rosneft_today/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "BP 2016 Annual Report Pg. 227"{
                let url = URL(string: "http://www.bp.com/content/dam/bp/en/corporate/pdf/investors/bp-annual-report-and-form-20f-2016.pdf")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
