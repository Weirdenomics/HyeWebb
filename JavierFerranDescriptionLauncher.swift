import UIKit

class JavierFerranDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Diageo PLC, Chairman")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Lion Capital LLP, Partner"),Setting(name: "Associated British Foods plc, Non-Executive Director"),Setting(name: "Coca Cola European Partners, Non-Executive Director"),Setting(name: "ESADE Business School, Member")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Agrolimen, Advisory Board Member"),Setting(name: "2014 - 2016, Desigual, Non-Executive Director"),Setting(name: "Bacardi Limited, President & CEO"),Setting(name: "2015 - 2016, SAB Miller plc, Non-Executive Director"),Setting(name: "2005 - 2015, William Grant & Sons, Member of the Board")]
    }()
    
    var homeController: JavierFerranViewController?
    
    
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
            
            if setting.name == "Diageo PLC, Chairman"{
                let url = URL(string: "http://www.diageo.com/en-us/ourbusiness/aboutus/pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Lion Capital LLP, Partner"{
                let url = URL(string: "http://www.lioncapital.com/about/#!overview")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Associated British Foods plc, Non-Executive Director"{
                let url = URL(string: "http://www.abf.co.uk/about_us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Coca Cola European Partners, Non-Executive Director"{
                let url = URL(string: "https://www.ccep.com/#about-us-1011")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "ESADE Business School, Member"{
                let url = URL(string: "http://www.esade.edu/web/eng/about-esade")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Agrolimen, Advisory Board Member"{
                let url = URL(string: "https://www.google.com/search?q=Agrolimen&ie=utf-8&oe=utf-8")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2014 - 2016, Desigual, Non-Executive Director"{
                let url = URL(string: "http://www.desigual.com/en_US/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bacardi Limited, President & CEO"{
                let url = URL(string: "https://www.bacardilimited.com/our-company/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2015 - 2016, SAB Miller plc, Non-Executive Director"{
                let url = URL(string: "https://www.google.com/search?q=SAB+Miller+plc&ie=utf-8&oe=utf-8")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2005 - 2015, William Grant & Sons, Member of the Board"{
                let url = URL(string: "http://www.williamgrant.com/overview.php")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
