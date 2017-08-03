import UIKit

class HowardUniversityDescriptionLauncher: CompanyBaseDescriptionLauncher{
    
    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Enhance status as a major comprehensive metropolitan research university (with competitive undergraduate, graduate, and professional programs)"),Setting(name: "Increase excellence in teaching and learning"),Setting(name: "Expand the international footprint and role in world affairs"),Setting(name: "Provide environment of open discourse (Think Tank for the Nation)"),Setting(name: "Extend public service role through expanded engagement with local, national and international communities")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Chair of Board of Trustees - Stacey J. Mobley, Esq."),Setting(name: "President - Dr. Wayne A. I. Frederick")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Howard University"),Setting(name: "Boards of Trustees")]
    }()
    
    let affiliates: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: HowardUniversityViewController?
    
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
                let navController = UINavigationController(rootViewController: HowardUniversityRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Chair of Board of Trustees - Stacey J. Mobley, Esq."{
                let navController = UINavigationController(rootViewController: StaceyMobleyViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "President - Dr. Wayne A. I. Frederick"{
                let navController = UINavigationController(rootViewController: WayneFrederickViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Howard University"{
                let url = URL(string: "https://www2.howard.edu/about/about-howard")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Board of Trustees"{
                let url = URL(string: "http://www.howard.edu/secretary/trustees/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
