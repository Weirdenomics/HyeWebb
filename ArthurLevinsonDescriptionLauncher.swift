import UIKit

class ArthurLevinsonDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Apple, Chairman of the Board")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Apple, Audit Committee"),Setting(name: "Calico, CEO"),Setting(name: "Calico, Founder")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Princeton University, Doctorate in Biochemical Sciences"),Setting(name: "University of Washington, Bachelor of Science Degree")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "1999 - 2014, Genentech, Chairman"),Setting(name: "1995 - 2009, Genentech, CEO"),Setting(name: "2004 - 2009, Google, Director")]
    }()
    
    var homeController: ArthurLevinsonViewController?
    
    
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
            
            if setting.name == "Apple, Chairman of the Board"{
                let url = URL(string: "https://www.apple.com/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Apple, Audit Committee"{
                let url = URL(string: "https://www.apple.com/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Calico, CEO"{
                let url = URL(string: "https://www.calicolabs.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Calico, Founder"{
                let url = URL(string: "https://www.calicolabs.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Princeton University, Doctorate in Biochemical Sciences"{
                let url = URL(string: "https://www.princeton.edu/meet-princeton/history")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of Washington, Bachelor of Science Degree"{
                let url = URL(string: "http://www.washington.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1999 - 2014, Genentech, Chairman"{
                let url = URL(string: "https://www.gene.com/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1995 - 2009, Genentech, CEO"{
                let url = URL(string: "https://www.gene.com/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2004 - 2009, Google, Director"{
                let url = URL(string: "https://www.google.com/intl/en/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
