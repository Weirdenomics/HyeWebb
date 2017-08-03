import UIKit

class JamesQuinceyDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "The Coca-Cola Company, President and CEO")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "University of Liverpool - Bachelor's Degree in Electronic Engineering")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2015 - 2017, The Coca-Cola Company, President and COO"),Setting(name: "2013 - 2015, The Coca-Cola Company, President of The Coca-Cola Comapy's Europe Group"),Setting(name: "2008 - 2012,The Coca-Cola Company's Northwest Europe and Nordics Business Unit, President"),Setting(name: "2005 - 2008,The Coca-Cola Company's Mexico Division, President"),Setting(name: "The Coca-Cola Company, Director of Learning Strategy for the Latin America Group"),Setting(name: "The Coca-Cola Company, President of the South Latin Division"),Setting(name: "The Kalchas Group, Partner in Strategy Consulting")]
    }()
    
    var homeController: JamesQuinceyViewController?
    
    
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
            
            if setting.name == "The Coca-Cola Company, President and CEO"{
                let url = URL(string: "http://www.coca-colacompany.com/our-company/about-coca-cola-journey")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of Liverpool - Bachelor's Degree in Electronic Engineering"{
                let url = URL(string: "https://www.liverpool.ac.uk/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2015 - 2017, The Coca-Cola Company, President and COO"{
                let url = URL(string: "http://www.coca-colacompany.com/our-company/about-coca-cola-journey")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2013 - 2015, The Coca-Cola Company, President of The Coca-Cola Comapy's Europe Group"{
                let url = URL(string: "http://www.coca-colacompany.com/our-company/about-coca-cola-journey")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2008 - 2012,The Coca-Cola Company's Northwest Europe and Nordics Business Unit, President"{
                let url = URL(string: "http://www.coca-colacompany.com/our-company/about-coca-cola-journey")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2005 - 2008,The Coca-Cola Company's Mexico Division, President"{
                let url = URL(string: "http://www.coca-colacompany.com/our-company/about-coca-cola-journey")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Coca-Cola Company, Director of Learning Strategy for the Latin America Group"{
                let url = URL(string: "http://www.coca-colacompany.com/our-company/about-coca-cola-journey")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Coca-Cola Company, President of the South Latin Division"{
                let url = URL(string: "http://www.coca-colacompany.com/our-company/about-coca-cola-journey")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "The Kalchas Group, Partner in Strategy Consulting"{
                let url = URL(string: "https://www.google.com/search?q=The+Kalchas+Group&ie=utf-8&oe=utf-8")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
