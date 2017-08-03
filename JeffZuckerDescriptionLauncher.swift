import UIKit

class JeffZuckerDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "CNN Worldwide, President")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Harvard College - Bachelor's Degree in American History")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "The Today Show"),Setting(name: "NBC Universal"),Setting(name: "Hulu")]
    }()
    
    var homeController: JeffZuckerViewController?
    
    
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
            
            if setting.name == "CNN Worldwide, President"{
                let url = URL(string: "http://www.edition.cnn.com/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Harvard College - Bachelor's Degree in American History"{
                let url = URL(string: "http://www.harvard.edu/about-harvard")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Today Show"{
                let url = URL(string: "http://www.today.com/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "NBC Universal"{
                let url = URL(string: "http://www.nbcuniversal.com/who-we-are")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Hulu"{
                let url = URL(string: "https://www.hulu.com/welcome?orig_referrer=https%3A%2F%2Fwww.google.com%2F")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
