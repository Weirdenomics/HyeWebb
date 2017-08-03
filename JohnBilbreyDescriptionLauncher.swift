import UIKit

class JohnBilbreyDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "The Hershey Company, Chairman of the Board")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Colgate-Palmolive Company")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Kansas State University - Bachelors Degree in Psychology")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2015 - 2017, The Hershey Company, Chairman, President and CEO"),Setting(name: "2011 - 2015, The Hershey Company, President and CEO"),Setting(name: "2010 - 2011, The Hershey Company, Chairman, Executive Vice President and COO"),Setting(name: "2007 - 2010, The Hershey Company, Senior Vice President and President Hershey North America"),Setting(name: "2005 - 2007, The Hershey Company, Senior Vice President and President International Commercial Group"),Setting(name: "2003 - 2005, The Hershey Company, Chairman, President Hershey International"),Setting(name: "2005 - 2015, McCormick & Company, Incorporated")]
    }()
    
    var homeController: JohnBilbreyViewController?
    
    
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
            
            if setting.name == "The Hershey Company, Chairman of the Board"{
                let url = URL(string: "https://www.thehersheycompany.com/en_us/this-is-hershey.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Colgate-Palmolive Company"{
                let url = URL(string: "https://www.colgatepalmolive.com/en/us/corp/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Kansas State University - Bachelors Degree in Psychology"{
                let url = URL(string: "http://www.k-state.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2015 - 2017, The Hershey Company, Chairman, President and CEO"{
                let url = URL(string: "https://www.thehersheycompany.com/en_us/this-is-hershey.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2011 - 2015, The Hershey Company, President and CEO"{
                let url = URL(string: "https://www.thehersheycompany.com/en_us/this-is-hershey.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2010 - 2011, The Hershey Company, Chairman, Executive Vice President and COO"{
                let url = URL(string: "https://www.thehersheycompany.com/en_us/this-is-hershey.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2007 - 2010, The Hershey Company, Senior Vice President and President Hershey North America"{
                let url = URL(string: "https://www.thehersheycompany.com/en_us/this-is-hershey.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2005 - 2007, The Hershey Company, Senior Vice President and President International Commercial Group"{
                let url = URL(string: "https://www.thehersheycompany.com/en_us/this-is-hershey.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2003 - 2005, The Hershey Company, Chairman, President Hershey International"{
                let url = URL(string: "https://www.thehersheycompany.com/en_us/this-is-hershey.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2005 - 2015, McCormick & Company, Incorporated"{
                let url = URL(string: "http://www.mccormickcorporation.com/Our-Company")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
