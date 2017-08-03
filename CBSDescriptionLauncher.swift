import UIKit

class CBSDescriptionLauncher: CompanyBaseDescriptionLauncher{

    let value: [Setting] = {
        return [Setting(name: "<"),Setting(name: "...creates and distributes industry-leading content across a variety of platforms to audiences around the world.")]
    }()
    
    let executives: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Chairman Emeritus - Sumner M. Redstone"),Setting(name: "Chairman, President, and CEO - Leslie Moonves")]
    }()
    
    let brands: [Setting] = {
        return [Setting(name: "<"),Setting(name: "CBS"),Setting(name: "CBS Subsidiaries List - Exhibit 21")]
    }()
    
    let affiliates: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    let references: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University"),Setting(name: "Virginia Wesleyan College")]
    }()
    
    var homeController: CBSViewController?

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
                let navController = UINavigationController(rootViewController: CBSRatingViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Chairman, President, and CEO - Leslie Moonves"{
                let navController = UINavigationController(rootViewController: LeslieMoonvesViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "Chairman Emeritus - Sumner M. Redstone"{
                let navController = UINavigationController(rootViewController: SumnerRedstoneViewController())
                navController.modalTransitionStyle = .crossDissolve
                self.homeController?.present(navController, animated: true, completion: nil)
            }
            
            if setting.name == "CBS"{
                let url = URL(string: "http://www.cbscorporation.com/about-cbs/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "CBS Subsidiaries List - Exhibit 21"{
                let url = URL(string: "http://investors.cbscorporation.com/phoenix.zhtml?c=99462&p=irol-SECText&TEXT=aHR0cDovL2FwaS50ZW5rd2l6YXJkLmNvbS9maWxpbmcueG1sP2lwYWdlPTExNDA4NTQ2JkRTRVE9MCZTRVE9MCZTUURFU0M9U0VDVElPTl9FTlRJUkUmc3Vic2lkPTU3")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
