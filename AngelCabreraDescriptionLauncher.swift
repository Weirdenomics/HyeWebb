import UIKit

class AngelCabreraDescriptionLauncher:ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "George Mason University, President")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "United Nations Global Compact, Special Advisor"),Setting(name: "Inovia, Board of Directors"),Setting(name: "Georgia Tech Advisory Board, Board of Directors"),Setting(name: "Bankinter Foundation for Innovation, Board of Directors"),Setting(name: "Monterrey Institute of Technology, Academic Board"),Setting(name: "Northern Virginia Technology, Council Board")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Universidad Politécnica de Madrid - MS and BS Degree in Engineering"),Setting(name: "Georgia Institute of Technology - MS and PhD - Psychology and Cognitive Science")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2004 - 2012, Thunderbird School of Global Management, President"),Setting(name: "1998 - 2004, IE Business School, Dean"),Setting(name: "'Principles of Responsible Management Education', Chairman of International Task Force of Authors"),Setting(name: "Clinton Global Initiative, Topic Leader"),Setting(name: "World Economic Forum - 'Global Agenda Coucil for Entrepreneurship', Chairman"),Setting(name: "Georgia Tech Advisory Board, Chairman ")]
    }()
    
    var homeController: AngelCabreraViewController?
    
    
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
            
            if setting.name == "George Mason University, President"{
                let url = URL(string: "https://www2.gmu.edu/about-mason/university-leadership")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "United Nations Global Compact, Special Advisor"{
                let url = URL(string: "https://www.unglobalcompact.org/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Inovia, Board of Directors"{
                let url = URL(string: "http://www.inovio.com/company/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Georgia Tech Advisory Board, Board of Directors"{
                let url = URL(string: "http://www.gatech.edu/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Bankinter Foundation for Innovation, Board of Directors"{
                let url = URL(string: "https://www.fundacionbankinter.org/en/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Monterrey Institute of Technology, Academic Board"{
                let url = URL(string: "https://tec.mx/en/about-us")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Northern Virginia Technology, Council Board"{
                let url = URL(string: "https://www.nvtc.org/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Universidad Politécnica de Madrid - MS and BS Degree in Engineering"{
                let url = URL(string: "http://www.upm.es/internacional")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Georgia Institute of Technology - MS and PhD - Psychology and Cognitive Science"{
                let url = URL(string: "http://www.gatech.edu/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2004 - 2012, Thunderbird School of Global Management, President"{
                let url = URL(string: "https://thunderbird.asu.edu/executive-education-about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "1998 - 2004, IE Business School, Dean"{
                let url = URL(string: "http://www.ie.edu/values/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "'Principles of Responsible Management Education', Chairman of International Task Force of Authors"{
                let url = URL(string: "http://www.unprme.org/about-prme/index.php")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Clinton Global Initiative, Topic Leader"{
                let url = URL(string: "https://www.clintonfoundation.org/clinton-global-initiative/about-us/cgi-mission")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "World Economic Forum - 'Global Agenda Coucil for Entrepreneurship', Chairman"{
                let url = URL(string: "https://www.weforum.org/reports/global-agenda-council-fostering-entrepreneurship-2012-2014")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Georgia Tech Advisory Board, Chairman"{
                let url = URL(string: "http://www.gatech.edu/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
