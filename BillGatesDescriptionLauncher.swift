import UIKit

class BillGatesDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Microsoft, co-Founder and Technical Advisor ")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Bill & Melinda Gates Foundation, co-Chair"),Setting(name: "Berkshire Hathaway, Inc, Director"),Setting(name: "Corbis, Founder")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Harvard")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    var homeController: BillGatesViewController?
    
    
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
            
            if setting.name == "Microsoft, co-Founder and Technical Advisor"{
                let url = URL(string: "https://www.microsoft.com/en-us/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bill & Melinda Gates Foundation, co-Chair"{
                let url = URL(string: "http://www.gatesfoundation.org/Who-We-Are")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Berkshire Hathaway, Inc, Director"{
                let url = URL(string: "http://www.berkshirehathaway.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Corbis, Founder"{
                let url = URL(string: "http://bengroup.com/#section2")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard"{
                let url = URL(string: "http://www.harvard.edu/about-harvard")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
