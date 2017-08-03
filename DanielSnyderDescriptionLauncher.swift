import UIKit

class DanielSnyderDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Washington Redskins, Owner")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Red Zebra Broadcasting, LLC, Founder and Managing Member of the Board"),Setting(name: "inVentiv Health, Founder and Chairman"),Setting(name: "Washington Redkskins Charitable Foundation, Creator"),Setting(name: "Washington's Children's Hospital, Supporter"),Setting(name: "National Center for Missing and Exploited Children, Supporter"),Setting(name: "Children's Hospital Foundation, Board of Directors"),Setting(name: "NFL - Media Committee, Member"),Setting(name: "NFL - Business Ventures Committee, Member"),Setting(name: "NFL - Digital Media Committee, Member"),Setting(name: "NFL - International Committee, Member"),Setting(name: "NFL - Stadium Committee, Member"),Setting(name: "NFL - Hall of Fame Committee, Member"),Setting(name: "NFL - Pro Football Hall of Fame, Board of Trustees")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Snyder Communications, Inc, Founder, Chairman, and CEO")]
    }()
    
    var homeController: DanielSnyderViewController?
    
    
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
            
            if setting.name == "Washington Redskins, Owner"{
                let url = URL(string: "http://www.redskins.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Red Zebra Broadcasting, LLC, Founder and Managing Member of the Board"{
                let url = URL(string: "http://www.redzebrabroadcasting.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "inVentiv Health, Founder and Chairman"{
                let url = URL(string: "http://www.inventivhealth.com/our-company/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Washington Redkskins Charitable Foundation, Creator"{
                let url = URL(string: "http://www.redskins.com/community/about-us.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Washington's Children's Hospital, Supporter"{
                let url = URL(string: "https://childrensnational.org/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "National Center for Missing and Exploited Children, Supporter"{
                let url = URL(string: "http://www.missingkids.org/About")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Children's Hospital Foundation, Board of Directors"{
                let url = URL(string: "https://childrensnational.org/giving/about-childrens-hospital-foundation")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "NFL - Media Committee, Member"{
                let url = URL(string: "http://www.nfl.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "NFL - Business Ventures Committee, Member"{
                let url = URL(string: "http://www.nfl.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "NFL - Digital Media Committee, Member"{
                let url = URL(string: "http://www.nfl.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "NFL - International Committee, Member"{
                let url = URL(string: "http://www.nfl.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "NFL - Stadium Committee, Member"{
                let url = URL(string: "http://www.nfl.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "NFL - Hall of Fame Committee, Member"{
                let url = URL(string: "http://www.nfl.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "NFL - Pro Football Hall of Fame, Board of Trustees"{
                let url = URL(string: "http://www.nfl.com/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Snyder Communications, Inc, Founder, Chairman, and CEO"{
                let url = URL(string: "https://www.google.com/search?q=NFL+-+International+Committee&ie=utf-8&oe=utf-8#q=Snyder+Communications,+Inc")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
