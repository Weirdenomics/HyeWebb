import UIKit

class HarvardUniversityDescriptionLauncher: CompanyBaseDescriptionLauncher{
    
    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "...is devoted to excellence in teaching, learning, and research, and to developing leaders in many disciplines who make a difference globally.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Board of Overseers"),Setting(name: "President - Drew G. Faust")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Harvard University"),Setting(name: "Board of Overseers")]
    }()
    
    let affiliates: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: HarvardUniversityViewController?
    
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
                let navController = UINavigationController(rootViewController: HarvardUniversityRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "President - Drew G. Faust"{
                let navController = UINavigationController(rootViewController: DrewFaustViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Harvard University"{
                let url = URL(string: "http://www.harvard.edu/about-harvard")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Board of Overseers"{
                let url = URL(string: "http://www.harvard.edu/about-harvard/harvards-leadership/board-overseers")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
