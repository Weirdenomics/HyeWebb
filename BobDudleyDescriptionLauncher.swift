import UIKit

class BobDudleyDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "BP, Group Chief Executive")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Rosneft, Non-executive Director"),Setting(name: "Tsinghua Management University Advisory Board, Member"),Setting(name: "BritishAmerican Business International Advisory Board"),Setting(name: "US Business Counil, Member"),Setting(name: "US Business Roundtable, Member"),Setting(name: "UAE/UK CEO Fourm, Member"),Setting(name: "Emirates Foundation Board of  Trustees, Member"),Setting(name: "World Economic Forum International Business Council, Member"),Setting(name: "World Economic Forum Oil and Gas Climate Initiative, Chair"),Setting(name: "Russian Geographical Society Board of Trustees, Member"),Setting(name: "Royal Academy of Engineering, Fellow")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Thunderbird School of Global Management"),Setting(name: "Illinois University")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2009- 2010, Gulf Coast Restoration Organization - BP, President and CEO"),Setting(name: "2003 - 2008, TNK-BP, President and CEO"),Setting(name: "1999 - 2000, BP, Executive Assistant"),Setting(name: "1979 - 1999, Amoco Corporation")]
    }()
    
    var homeController: BobDudleyViewController?
    
    
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
            
            if setting.name == "BP, Group Chief Executive"{
                let url = URL(string: "http://www.bp.com/en/global/corporate/about-bp.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Rosneft, Non-executive Director"{
                let url = URL(string: "https://www.rosneft.com/about/Rosneft_today/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Tsinghua Management University Advisory Board, Member"{
                let url = URL(string: "http://www.sem.tsinghua.edu.cn/en/aboutsem/deanmes.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "BritishAmerican Business International Advisory Board"{
                let url = URL(string: "https://www.babinc.org/international-advisory-board/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "US Business Counil, Member"{
                let url = URL(string: "http://businesscouncil.com/about-us/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "US Business Roundtable, Member"{
                let url = URL(string: "http://businessroundtable.org/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "UAE/UK CEO Fourm, Member"{
                let url = URL(string: "https://www.google.com/search?q=UAE%2FUK+CEO+Forum&ie=utf-8&oe=utf-8")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Emirates Foundation Board of  Trustees, Member"{
                let url = URL(string: "https://www.emiratesfoundation.ae/EF/en/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "World Economic Forum International Business Council, Member"{
                let url = URL(string: "https://www.weforum.org/about/world-economic-forum")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "World Economic Forum Oil and Gas Climate Initiative, Chair"{
                let url = URL(string: "http://www.oilandgasclimateinitiative.com/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Russian Geographical Society Board of Trustees, Member"{
                let url = URL(string: "https://www.rgo.ru/en/society")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Royal Academy of Engineering, Fellow"{
                let url = URL(string: "http://www.raeng.org.uk/about-us/what-we-do")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Thunderbird School of Global Management"{
                let url = URL(string: "https://thunderbird.asu.edu/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Illinois University"{
                let url = URL(string: "http://illinois.edu/about/index.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2009- 2010, Gulf Coast Restoration Organization - BP, President and CEO"{
                let url = URL(string: "http://www.bp.com/en/global/corporate/media/press-releases/bp-announces-new-gulf-coast-restoration-organization.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2003 - 2008, TNK-BP, President and CEO"{
                let url = URL(string: "https://www.google.com/search?q=Tyumenskaya+Neftyanaya+Kompaniya&ie=utf-8&oe=utf-8")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1999 - 2000, BP, Executive Assistant"{
                let url = URL(string: "http://www.bp.com/en/global/corporate/about-bp.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1979 - 1999, Amoco Corporation"{
                let url = URL(string: "http://www.bp.com/en/global/corporate/about-bp/our-history/heritage-brands/history-of-amoco.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
