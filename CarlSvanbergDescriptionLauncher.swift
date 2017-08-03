import UIKit

class CarlSvanbergDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "BP, Chairman")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "AB Volvo, Chairman"),Setting(name: "AB Volvo, Remuneration Committee Chairman"),Setting(name: "AB Volvo, Volvo CE Committtee Chairman"),Setting(name: "BP Nomination Committee, Chairman"),Setting(name: "BP Chairman Committee, Chairman"),Setting(name: "External Advisory Board of the Earth Institute at Columbia University, Member"),Setting(name: "Advisory Board of Harvard Kennedy School, Member")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Linköping Institute of Technology, Master of Science"),Setting(name: "University of Uppsala, BSc Business Administration")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2009 - 2012, Ericsson, Chairman"),Setting(name: "2003 - 2009, Ericsson, President and CEO"),Setting(name: "Sony Ericsson Mobile Communications AB, Chairman"),Setting(name: "Asea Brown Boveri"),Setting(name: "Securitas Group"),Setting(name: "Assa Abloy Gorup, President and CEO")]
    }()
    
    var homeController: CarlSvanbergViewController?
    
    
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
            
            if setting.name == "BP, Chairman"{
                let url = URL(string: "http://www.bp.com/en/global/corporate/about-bp.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "AB Volvo, Chairman"{
                let url = URL(string: "http://www.volvogroup.com/en-en/what-we-do.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "AB Volvo, Remuneration Committee Chairman"{
                let url = URL(string: "http://www.volvogroup.com/en-en/what-we-do.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "AB Volvo, Volvo CE Committtee Chairman"{
                let url = URL(string: "http://www.volvogroup.com/en-en/what-we-do.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "BP Nomination Committee, Chairman"{
                let url = URL(string: "http://www.bp.com/en/global/corporate/about-bp.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "BP Chairman Committee, Chairman"{
                let url = URL(string: "http://www.bp.com/en/global/corporate/about-bp.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "External Advisory Board of the Earth Institute at Columbia University, Member"{
                let url = URL(string: "http://www.earthinstitute.columbia.edu/articles/view/1791")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Advisory Board of Harvard Kennedy School, Member"{
                let url = URL(string: "https://www.hks.harvard.edu/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Linköping Institute of Technology, Master of Science"{
                let url = URL(string: "https://www.lith.liu.se/presentation?l=en")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of Uppsala, BSc Business Administration"{
                let url = URL(string: "https://www.uu.se/en/about-uu/mission-core-values/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2009 - 2012, Ericsson, Chairman"{
                let url = URL(string: "https://www.ericsson.com/en/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2003 - 2009, Ericsson, President and CEO"{
                let url = URL(string: "https://www.ericsson.com/en/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Sony Ericsson Mobile Communications AB, Chairman"{
                let url = URL(string: "https://www.ericsson.com/en/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Asea Brown Boveri"{
                let url = URL(string: "http://new.abb.com/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Securitas Group"{
                let url = URL(string: "http://www.securitas.com/en/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Assa Abloy Gorup, President and CEO"{
                let url = URL(string: "https://www.assaabloy.com/en/com/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
