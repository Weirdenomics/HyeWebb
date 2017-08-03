import UIKit

class DebraACrewDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Reynolds American, Inc, President, CEO, and Memeber of the Board")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Stanley Black & Decker, Inc, Member of the Board of Directors")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "University of Chicago - Masters in Business Administration"),Setting(name: "University of Denver - Bachelor of Arts Degree in International Studies")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Reynolds American - R.J. Reynolds Tobacco Company, President and Chief Operating Officer"),Setting(name: "PepsiCo North American Nutrition, President and General Manager"),Setting(name: "Pepsico - Western Europe region of PepsiCo PepsiCo Europe, President"),Setting(name: "PepsiCo Americas Beverage, President"),Setting(name: "Mars, Incorporated, General Manager"),Setting(name: "Nestle S.A."),Setting(name: "Kraft Foods, Inc")]
    }()
    
    var homeController: DebraACrewViewController?
    
    
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
            
            if setting.name == "Reynolds American, Inc, President, CEO, and Memeber of the Board"{
                let url = URL(string: "http://www.reynoldsamerican.com/About-Us/Who-We-Are/Our-Operating-Companies/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Stanley Black & Decker, Inc, Member of the Board of Directors"{
                let url = URL(string: "http://www.stanleyblackanddecker.com/who-we-are/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of Chicago - Masters in Business Administration"{
                let url = URL(string: "http://www.uchicago.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            if setting.name == "University of Denver - Bachelor of Arts Degree in International Studies"{
                let url = URL(string: "http://www.du.edu/explore/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Reynolds American - R.J. Reynolds Tobacco Company, President and Chief Operating Officer"{
                let url = URL(string: "http://www.reynoldsamerican.com/About-Us/Who-We-Are/Our-Operating-Companies/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "PepsiCo North American Nutrition, President and General Manager"{
                let url = URL(string: "http://www.pepsico.com/company")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Pepsico - Western Europe region of PepsiCo PepsiCo Europe, President"{
                let url = URL(string: "http://www.pepsico.com/company")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "PepsiCo Americas Beverage, President"{
                let url = URL(string: "http://www.pepsico.com/company")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Mars, Incorporated, General Manager"{
                let url = URL(string: "http://www.mars.com/global/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Nestle S.A."{
                let url = URL(string: "http://www.nestle.com/aboutus")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Kraft Foods, Inc"{
                let url = URL(string: "http://www.kraftheinzcompany.com/company.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
