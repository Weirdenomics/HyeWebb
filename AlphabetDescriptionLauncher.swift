import UIKit

class AlphabetDescriptionLauncher: CompanyBaseDescriptionLauncher{

    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "...To develop services that significantly improve the lives of as many people as possible.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "CEO and Co-founder - Larry Page"),Setting(name: "President and Co-founder - Sergey Brin"),Setting(name: "Chairman - Eric E. Schmidt")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Google"),Setting(name: "YouTube"),Setting(name: "Calico"),Setting(name: "CapitalG"),Setting(name: "GV"),Setting(name: "Nest"),Setting(name: "Verily"),Setting(name: "Waymo"),Setting(name: "X"),Setting(name: "Android"),Setting(name: "Chrome")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: AlphabetViewController?

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
                let navController = UINavigationController(rootViewController: AlphabetRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "CEO and Co-founder - Larry Page"{
                let navController = UINavigationController(rootViewController: LarryPageViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            if setting.name == "President and Co-founder - Sergey Brin"{
                let navController = UINavigationController(rootViewController: SergeyBrinViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            if setting.name == "Chairman - Eric E. Schmidt"{
                let navController = UINavigationController(rootViewController: EricSchmidtViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Google"{
                let url = URL(string: "https://www.google.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "YouTube"{
                let url = URL(string: "https://www.youtube.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Calico"{
                let url = URL(string: "https://www.calicolabs.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "CapitalG"{
                let url = URL(string: "https://www.capitalg.com/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "GV"{
                let url = URL(string: "https://www.gv.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Nest"{
                let url = URL(string: "https://nest.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Verily"{
                let url = URL(string: "https://verily.com/projects/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Waymo"{
                let url = URL(string: "https://waymo.com/journey/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "X"{
                let url = URL(string: "https://x.company/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Android"{
                let url = URL(string: "https://www.android.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Chrome"{
                let url = URL(string: "https://www.google.com/chrome/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
