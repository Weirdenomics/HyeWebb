import UIKit

class FrancoisThibaultDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Greygoose, Cellar Master")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    var homeController: FrancoisThibaultViewController?
    
    
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
            
            if setting.name == "Greygoose, Cellar Master"{
                let url = URL(string: "https://www.greygoose.com/us/en/our-craft.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
