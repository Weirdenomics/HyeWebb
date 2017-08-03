import UIKit

class DavidKochDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Executive Vice President, Koch Industries Inc.")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "American Museum of Natural History, Trustee"),Setting(name: "MIT, Board Member"),Setting(name: "American Ballet Theatre, Trustee"),Setting(name: "Rockefeller University, Trustee Emeriti"),Setting(name: "New York Presbyterian Hospital, Trustee"),Setting(name: "The Aspen Institute, Trustee"),Setting(name: "Reason Foundation, Trustee")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    var homeController: DavidKochViewController?
    
    
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
            
            if setting.name == "Executive Vice President, Koch Industries Inc."{
                let url = URL(string: "http://www.kochind.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "American Museum of Natural History, Trustee"{
                let url = URL(string: "http://www.amnh.org/about-the-museum")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "MIT, Board Member"{
                let url = URL(string: "http://mitstory.mit.edu/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "American Ballet Theatre, Trustee"{
                let url = URL(string: "http://www.abt.org/insideabt/history.asp")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Rockefeller University, Trustee Emeriti"{
                let url = URL(string: "https://www.rockefeller.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "New York Presbyterian Hospital, Trustee"{
                let url = URL(string: "http://www.nyp.org/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Aspen Institute, Trustee"{
                let url = URL(string: "https://www.aspeninstitute.org/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Reason Foundation, Trustee"{
                let url = URL(string: "http://reason.org/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
