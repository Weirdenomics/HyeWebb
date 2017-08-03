import UIKit

class DanielGriederDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Tommy Hilfiger Global, CEO")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Max Trade Service AG, Max Trade Service AG"),Setting(name: "PVH Europe, CEO")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Berufsmaturitätsschule"),Setting(name: "Höhere Wirtschafts- und Verwaltungsschule")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Tommy Hilfiger Europe, CEO"),Setting(name: "Pepe Jeans Switzerland, Managing Director"),Setting(name: "Tommy Hilfiger, COO and President"),Setting(name: "Tommy Hilfiger, Vice President of Commercial Operations"),Setting(name: "Tommy Hilfiger, Independent Sales Agent")]
    }()
    
    var homeController: DanielGriederViewController?
    
    
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
            
            if setting.name == "Tommy Hilfiger Global, CEO"{
                let url = URL(string: "http://global.tommy.com/int/en/about/overview/11")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Max Trade Service AG, Max Trade Service AG"{
                let url = URL(string: "https://www.google.com/search?q=Max+Trade+Service+AG&ie=utf-8&oe=utf-8")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "PVH Europe, CEO"{
                let url = URL(string: "https://www.pvh.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Berufsmaturitätsschule"{
                let url = URL(string: "https://www.bms-zuerich.ch/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Höhere Wirtschafts- und Verwaltungsschule"{
                let url = URL(string: "https://www.google.com/search?q=H%C3%B6here+Wirtschafts-+und+Verwaltungsschule&ie=utf-8&oe=utf-8")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Tommy Hilfiger Europe, CEO"{
                let url = URL(string: "http://global.tommy.com/int/en/about/overview/11")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

            if setting.name == "Pepe Jeans Switzerland, Managing Director"{
                let url = URL(string: "https://intl.pepejeans.com/en_gb/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Tommy Hilfiger, COO and President"{
                let url = URL(string: "http://global.tommy.com/int/en/about/overview/11")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Tommy Hilfiger, Vice President of Commercial Operations"{
                let url = URL(string: "http://global.tommy.com/int/en/about/overview/11")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Tommy Hilfiger, Independent Sales Agent"{
                let url = URL(string: "http://global.tommy.com/int/en/about/overview/11")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
