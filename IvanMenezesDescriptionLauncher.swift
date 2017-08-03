import UIKit

class IvanMenezesDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Diageo plc, Chief Executive")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Diageo plc, Executive Director"),Setting(name: "Scotch Whiskey Association, Member of the Council"),Setting(name: "Coach Inc, Non-Executive Director"),Setting(name: "Northwestern University Kellogg School of Management, Global Advisory Board")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Northwestern University Kellog School of Management - M.B.A."),Setting(name: "Indian Institute of Management, Ahmedabad - Post Graduate Diploma"),Setting(name: "St. Stephen's College - Bachelor of Arts Degree in Economics")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Diageo plc, COO"),Setting(name: "Diageo North America, President"),Setting(name: "Diageo Asia Pacific, Chairman"),Setting(name: "Diageo Latin America and Caribbean, Chairman"),Setting(name: "Guinness, Senior Management Positions"),Setting(name: "Nestle, Marketing and Strategy Roles "),Setting(name: "Booz Allen Hamilton Inc, Marketing and Strategy Roles "),Setting(name: "Whirlpool, Marketing and Strategy Roles")]
    }()
    
    var homeController: IvanMenezesViewController?
    
    
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
            
            if setting.name == "Diageo plc, Chief Executive"{
                let url = URL(string: "http://www.diageo.com/en-us/ourbusiness/aboutus/Pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Diageo plc, Executive Director"{
                let url = URL(string: "http://www.diageo.com/en-us/ourbusiness/aboutus/Pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Scotch Whiskey Association, Member of the Council"{
                let url = URL(string: "http://www.scotch-whisky.org.uk/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Coach Inc, Non-Executive Director"{
                let url = URL(string: "http://www.coach.com/careers-about-coach.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Northwestern University Kellogg School of Management, Global Advisory Board"{
                let url = URL(string: "http://www.kellogg.northwestern.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Diageo plc, COO"{
                let url = URL(string: "http://www.diageo.com/en-us/ourbusiness/aboutus/Pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Diageo North America, President"{
                let url = URL(string: "http://www.diageo.com/en-us/ourbusiness/aboutus/Pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Diageo Asia Pacific, Chairman"{
                let url = URL(string: "http://www.diageo.com/en-us/ourbusiness/aboutus/Pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Diageo Latin America and Caribbean, Chairman"{
                let url = URL(string: "http://www.diageo.com/en-us/ourbusiness/aboutus/Pages/default.aspx")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Guinness, Senior Management Positions"{
                let url = URL(string: "https://www.guinness.com/en-us/our-story/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Nestle, Marketing and Strategy Roles"{
                let url = URL(string: "http://www.nestle.com/aboutus")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Booz Allen Hamilton Inc, Marketing and Strategy Roles"{
                let url = URL(string: "https://www.boozallen.com/about.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Whirlpool, Marketing and Strategy Roles"{
                let url = URL(string: "https://www.whirlpool.com/services/about-us.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Northwestern University Kellog School of Management - M.B.A."{
                let url = URL(string: "http://www.kellogg.northwestern.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Indian Institute of Management, Ahmedabad - Post Graduate Diploma"{
                let url = URL(string: "https://www.iima.ac.in/web/about-iima")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "St. Stephen's College - Bachelor of Arts Degree in Economics"{
                let url = URL(string: "http://www.ststephens.edu/vision-and-mission/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }

        }
    }
}
