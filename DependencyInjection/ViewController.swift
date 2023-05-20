//
//  ViewController.swift
//  DependencyInjection
//
//  Created by Nazar Kopeika on 20.05.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource { /* 2 */
    
    @IBOutlet var table: UITableView! /* 1 */
    var data = [EmailAccount]() /* 26 */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.delegate = self /* 3 */
        table.dataSource = self /* 4 */
        data = models() /* 27 */
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { /* 5 */
        return data.count /* 28 */
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell { /* 6 */
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) /* 7 */
        let account = data[indexPath.row] /* 29 */
        cell.textLabel?.text = account.domain /* 30 */
        return cell /* 8 */
    }
}
    
    func models() -> [EmailAccount] { /* 9 */
        return [Gmail(), Yahoo(), Outlook()] /* 25 */
    }
    
    protocol EmailAccount { /* 10 */
        var username: String { get } /* 11 */
        var domain: String { get } /* 12 */
        var lastEmailReceived: Date { get } /* 13 */
        
    }
    
class Gmail: EmailAccount { /* 14 */
    var username: String { /* 17 */
        return "John " /* 20 */
    }
    var domain: String { /* 17 */
        return "gmail.com" /* 21 */
    }
    var lastEmailReceived: Date { /* 17 */
        return Date() /* 22 */
    }
}
    
class Yahoo: EmailAccount { /* 15 */
    var username: String { /* 18 */
        return "Marie" /* 23 */
    }
    var domain: String { /* 18 */
        return "yahoo.com" /* 23 */
    }
    var lastEmailReceived: Date { /* 18 */
        return Date() /* 23 */
    }
        
    }
    
class Outlook: EmailAccount { /* 16 */
    var username: String { /* 19 */
        return "Daniel" /* 24 */
    }
    var domain: String { /* 19 */
        return "outlook.com" /* 24 */
    }
    var lastEmailReceived: Date { /* 19 */
        return Date() /* 24 */
    }
        
    }



