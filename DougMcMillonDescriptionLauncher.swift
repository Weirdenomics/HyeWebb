import UIKit

class DougMcMillonDescriptionLauncher: ExecutiveBaseDescriptionLauncher{
    
    let positions: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Walmart, President and CEO")]
    }()
    
    let affiliations: [Setting] = {
        return [Setting(name: "<"),Setting(name: "Wal-Mart Stores, Inc, Board of Directors"),Setting(name: "Wal-Mart Stores, Inc, Chair of the Executive and Global Compensation Committee"),Setting(name: "Consumer Goods Forum, Board of Directors"),Setting(name: "U.S.-china Business Council, Board of Directors"),Setting(name: "Crystal Bridges Museum of American Art, Board of Directors"),Setting(name: "Tsinghua University School of Economics and Management, Advisory Board"),Setting(name: "Business Roundtable, Executive Committee"),Setting(name: "Walton College of Business, Dean's Advisory Board")]
    }()
    
    let education: [Setting] = {
        return [Setting(name: "<"),Setting(name: "University of Tulsa - MBA"),Setting(name: "University of Arkansas - Bachelor of Science in Business Administration")]
    }()
    
    let history: [Setting] = {
        return [Setting(name: "<"),Setting(name: "2009 - 2014, Walmart International, President and CEO"),Setting(name: "2006 - 2009, Sam's Club, President and CEO")]
    }()
    
    var homeController: DougMcMillonViewController?
    
    
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
            
            if setting.name == "Walmart, President and CEO"{
                let url = URL(string: "http://corporate.walmart.com/our-story/our-business")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Wal-Mart Stores, Inc, Board of Directors"{
                let url = URL(string: "http://corporate.walmart.com/our-story/our-business")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Wal-Mart Stores, Inc, Chair of the Executive and Global Compensation Committee"{
                let url = URL(string: "http://corporate.walmart.com/our-story/our-business")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Consumer Goods Forum, Board of Directors"{
                let url = URL(string: "http://www.theconsumergoodsforum.com/about-the-forum")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "U.S.-china Business Council, Board of Directors"{
                let url = URL(string: "https://www.uschina.org/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Crystal Bridges Museum of American Art, Board of Directors"{
                let url = URL(string: "http://crystalbridges.org/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Tsinghua University School of Economics and Management, Advisory Board"{
                let url = URL(string: "http://www.sem.tsinghua.edu.cn/en/aboutsem/deanmes.html")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Business Roundtable, Executive Committee"{
                let url = URL(string: "http://businessroundtable.org/about")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "Walton College of Business, Dean's Advisory Board"{
                let url = URL(string: "http://walton.uark.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of Tulsa - MBA"{
                let url = URL(string: "https://utulsa.edu/about/")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "University of Arkansas - Bachelor of Science in Business Administration"{
                let url = URL(string: "http://www.uark.edu/about/index.php")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2009 - 2014, Walmart International, President and CEO"{
                let url = URL(string: "http://corporate.walmart.com/our-story/our-business")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
            
            if setting.name == "2006 - 2009, Sam's Club, President and CEO"{
                let url = URL(string: "https://www.samsclub.com/sams/homepage.jsp?xid=hdr_logo")!
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
    }
}
