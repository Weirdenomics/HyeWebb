import UIKit

class GeorgeMasonUniversityDescriptionLauncher: CompanyBaseDescriptionLauncher{
    
    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "...creating a more just, free and prosperous world.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Rector - Thomas M. Davis"),Setting(name: "President - Ángel Cabrera")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Board of Visitors")]
    }()
    
    let affiliates: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: GeorgeMasonUniversityViewController?
    
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
                let navController = UINavigationController(rootViewController: GeorgeMasonUniversityRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "President - Ángel Cabrera"{
                let navController = UINavigationController(rootViewController: AngelCabreraViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Rector - Thomas M. Davis"{
                let navController = UINavigationController(rootViewController: TomDavisViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "George Mason University"{
                let url = URL(string: "https://www2.gmu.edu/about-mason")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Board of Visitors"{
                let url = URL(string: "http://bov.gmu.edu/?_ga=1.262312588.1617623701.1491031911")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
