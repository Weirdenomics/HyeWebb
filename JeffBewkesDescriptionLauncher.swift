import UIKit

class JeffBewkesDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Time Warner Inc, Chairman of the Board and CEO")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Yale University, Board Member"),Setting(name: "Partnership for New York City, Board Member"),Setting(name: "The Creative Coalition, Advisory Board"),Setting(name: "The Business Council, Member")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Stanford Graduate School of Business - MBA"),Setting(name: "Yale University - BA")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2006 - 2007, Time Warner, President and COO"),Setting(name: "2002 - 2005, Time Warner - Entertainment and Networks, Chairman"),Setting(name: "1995 - 2002, HBO, Chairman and CEO"),Setting(name: "1991 - 1995, HBO, President and COO")]
    }()
    
    var homeController: JeffBewkesViewController?
    
    
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
            
            if setting.name == "Time Warner Inc, Chairman of the Board and CEO"{
                let url = URL(string: "http://www.timewarner.com/company/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Yale University, Board Member"{
                let url = URL(string: "https://www.yale.edu/about-yale")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Partnership for New York City, Board Member"{
                let url = URL(string: "http://pfnyc.org/our-organization/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Creative Coalition, Advisory Board"{
                let url = URL(string: "http://thecreativecoalition.org/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Business Council, Member"{
                let url = URL(string: "http://businesscouncil.com/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Stanford Graduate School of Business - MBA"{
                let url = URL(string: "https://www.gsb.stanford.edu/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Yale University - BA"{
                let url = URL(string: "https://www.yale.edu/about-yale")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2006 - 2007, Time Warner, President and COO"{
                let url = URL(string: "http://www.timewarner.com/company/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2002 - 2005, Time Warner - Entertainment and Networks, Chairman"{
                let url = URL(string: "http://www.timewarner.com/company/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1995 - 2002, HBO, Chairman and CEO"{
                let url = URL(string: "http://www.hbo.com/about/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1991 - 1995, HBO, President and COO"{
                let url = URL(string: "http://www.hbo.com/about/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
