import UIKit

class JohnMartinDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Turner, Chairman and CEO")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Columbia University Business School, Member of the Board of Trustees"),Setting(name: "Paley Center for Media, Board Member")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Columbia University Business School - M.B.A. Degree in Finance"),Setting(name: "University of Pennsylvania Wharton School of Business - B.S. in Economics")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Time Warner Inc., Chief Financial and Administrative Officer"),Setting(name: "2005 - 2008, Time Warner Cable Inc., Executive Vice President and Chief Financial Officer"),Setting(name: "2002 - 2005, Time Warner, Senior Vice President, Investor Relations"),Setting(name: "2000 - 2002, ABN AMRO Securities LLC, Director"),Setting(name: "Time Warner, Director in the Office of the President"),Setting(name: "Time Warner, Director of Finance Special Products"),Setting(name: "Time Warner, Manager of SEC Financial Reporting"),Setting(name: "Ernst and Young LLP, Certified Public Accountant")]
    }()
    
    var homeController: JohnMartinViewController?
    
    
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
            
            if setting.name == "Turner, Chairman and CEO"{
                let url = URL(string: "http://www.turner.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Columbia University Business School, Member of the Board of Trustees"{
                let url = URL(string: "http://www8.gsb.columbia.edu/about-us/why-columbia-business-school")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Paley Center for Media, Member of the Board of Trustees"{
                let url = URL(string: "https://www.paleycenter.org/about?_ga=2.143244146.675732179.1496527008-1774373661.1496376260")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Columbia University Business School - M.B.A. Degree in Finance"{
                let url = URL(string: "http://www8.gsb.columbia.edu/about-us/why-columbia-business-school")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of Pennsylvania Wharton School of Business - B.S. in Economics"{
                let url = URL(string: "https://www.wharton.upenn.edu/about-wharton/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Time Warner Inc., Chief Financial and Administrative Officer"{
                let url = URL(string: "http://www.timewarner.com/company/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2005 - 2008, Time Warner Cable Inc., Executive Vice President and Chief Financial Officer"{
                let url = URL(string: "https://www.spectrum.com/about.html?v=1&cmp=TWC")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2002 - 2005, Time Warner, Senior Vice President, Investor Relations"{
                let url = URL(string: "http://www.timewarner.com/company/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2000 - 2002, ABN AMRO Securities LLC, Director"{
                let url = URL(string: "https://www.abnamro.com/en/about-abnamro/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Time Warner, Director in the Office of the President"{
                let url = URL(string: "http://www.timewarner.com/company/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Time Warner, Director of Finance Special Products"{
                let url = URL(string: "http://www.timewarner.com/company/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Time Warner, Manager of SEC Financial Reporting"{
                let url = URL(string: "http://www.timewarner.com/company/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Ernst and Young LLP, Certified Public Accountant"{
                let url = URL(string: "http://www.ey.com/us/en/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
