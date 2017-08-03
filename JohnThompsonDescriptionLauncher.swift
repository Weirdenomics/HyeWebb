import UIKit

class JohnThompsonDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Chairman, Microsoft")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Microsoft, Lead Independent Director"),Setting(name: "Virtual Instruments, CEO"),Setting(name: "Virtual Instruments, CEO"),Setting(name: "IBM Americas, General Manager"),Setting(name: "IBM's Worlwide Management Council")]
    }()
    
    var homeController: JohnThompsonViewController?
    
    
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
            
            if setting.name == "Chairman, Microsoft"{
                let url = URL(string: "https://www.microsoft.com/en-us/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Microsoft, Lead Independent Director"{
                let url = URL(string: "https://www.microsoft.com/en-us/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Virtual Instruments, CEO"{
                let url = URL(string: "https://www.virtualinstruments.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "IBM Americas, General Manager"{
                let url = URL(string: "https://www.ibm.com/ibm/us/en/?lnk=fab")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "IBM's Worlwide Management Council"{
                let url = URL(string: "https://www.ibm.com/ibm/us/en/?lnk=fab")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
