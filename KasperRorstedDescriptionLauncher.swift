import UIKit

class KasperRorstedDescriptionLauncher: ExecutiveBaseDescriptionLauncher{

    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "adidas Group, CEO")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Bertelsmann SE & Co. KGaA, Member of the Supervisory Board")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Harvard Business School"),Setting(name: "Degree in Business Studies - International Business School")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2008 - 2016, Henkel AG & Co. KGaA., CEO"),Setting(name: "2007 - 2008, Henkel AG & Co. KGaA., Vice Chairman of the Management Board"),Setting(name: "2005 - 2007, Henkel AG & Co. KGaA., Executive Vice President (Human Resources/Purchasing/IT/Infrastructure Services)"),Setting(name: "2002 - 2004, Hewlett Packard, Senior Vice President and General Manager, EMEA region"),Setting(name: "2001-2002, Compaq, Vice President and General Manager, EMEA region "),Setting(name: "1995-2001, Companq, Various management positions, incl. head of Compaq Enterprise Business Group, EMEA region"),Setting(name: "Prior to 1995, Oracle and Digital Equipment Corporation, Different management positions in sales and marketing")]
    }()
    
    var homeController: KasperRorstedViewController?

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
            
            if setting.name == "Harvard Business School"{
                let url = URL(string: "http://www.hbs.edu/about/Pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Degree in Business Studies - International Business School"{
                let url = URL(string: "http://www.cbs.dk/en")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "adidas Group, CEO"{
                let url = URL(string: "http://www.adidas-group.com/en/group/executive-board/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bertelsmann SE & Co. KGaA, Member of the Supervisory Board"{
                let url = URL(string: "https://www.bertelsmann.com/company/company-profile/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2008 - 2016, Henkel AG & Co. KGaA., CEO"{
                let url = URL(string: "http://www.henkel.com/company")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2007 - 2008, Henkel AG & Co. KGaA., Vice Chairman of the Management Board"{
                let url = URL(string: "http://www.henkel.com/company")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2005 - 2007, Henkel AG & Co. KGaA., Executive Vice President (Human Resources/Purchasing/IT/Infrastructure Services)"{
                let url = URL(string: "http://www.henkel.com/company")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2002 - 2004, Hewlett Packard, Senior Vice President and General Manager, EMEA region"{
                let url = URL(string: "http://www8.hp.com/us/en/hp-information/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2001-2002, Compaq, Vice President and General Manager, EMEA region"{
                let url = URL(string: "http://www.compaq.com/cpq-country/overview-full.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1995-2001, Companq, Various management positions, incl. head of Compaq Enterprise Business Group, EMEA region"{
                let url = URL(string: "http://www.compaq.com/cpq-country/overview-full.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Prior to 1995, Oracle and Digital Equipment Corporation, Different management positions in sales and marketing"{
                let url = URL(string: "https://www.oracle.com/corporate/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
