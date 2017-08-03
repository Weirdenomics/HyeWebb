import UIKit

class BruceAllenDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Washington Redskins, President")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Washington Redskins, Executive Vice President and General Manager"),Setting(name: "Tampa Bay Buccaneers, General Manager and Executive"),Setting(name: "Oakland Raiders, General Manager and Executive"),Setting(name: "USFL - Chicago Blitz"),Setting(name: "USFL - Arizona Wranglers")]
    }()
    
    var homeController: BruceAllenViewController?
    
    
    override func handleDismiss(setting: Setting){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.blackView.alpha = 0
            
            if let window = UIApplication.shared.keyWindow{
                self.collectionView.frame = CGRect(x: 0, y: window.frame.height, width: self.collectionView.frame.width, height: self.collectionView.frame.height)
            }
            
        }) { (completed: Bool) in
            
            if setting.name == "Positions"{
                self.settings = self.positions
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Affiliations"{
                self.settings = self.affiliations
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Education"{
                self.settings = self.education
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "History"{
                self.settings = self.history
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "References"{
                self.settings = self.positions
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "<"{
                self.settings = self.menu
                self.showSettings()
                self.collectionView.reloadData()
            }
            
            if setting.name == "Washington Redskins, President"{
                let url = URL(string: "http://www.redskins.com/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Washington Redskins, Executive Vice President and General Manager"{
                let url = URL(string: "http://www.redskins.com/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Tampa Bay Buccaneers, General Manager and Executive"{
                let url = URL(string: "http://www.buccaneers.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Oakland Raiders, General Manager and Executive"{
                let url = URL(string: "http://www.raiders.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "USFL - Chicago Blitz"{
                let url = URL(string: "http://www.usfl.info/about.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "USFL - Arizona Wranglers"{
                let url = URL(string: "http://www.usfl.info/about.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
