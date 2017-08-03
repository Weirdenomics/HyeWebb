import UIKit

class InstagramDescriptionLauncher: CompanyBaseDescriptionLauncher{
    
    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "to allow you to experience moments in your friends' lives through pictures as they happen...imagine a world more connected through photos.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Chairman - Mark Zuckerberg"),Setting(name: "CEO and Co-founder - Kevin Systrom"),Setting(name: "Co-founder - Mike Krieger")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Instagram"),Setting(name: "Facebook")]
    }()
    
    let affiliates: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: InstagramViewController?
    
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
                let navController = UINavigationController(rootViewController: InstagramRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Chairman - Mark Zuckerberg"{
                let navController = UINavigationController(rootViewController: MarkZuckerbergViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "CEO and Co-founder - Kevin Systrom"{
                let navController = UINavigationController(rootViewController: KevinSystromViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Co-founder - Mike Krieger"{
                let navController = UINavigationController(rootViewController: MikeKriegerViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Instagram"{
                let url = URL(string: "https://www.instagram.com/about/us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Facebook"{
                let url = URL(string: "https://newsroom.fb.com/company-info/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
