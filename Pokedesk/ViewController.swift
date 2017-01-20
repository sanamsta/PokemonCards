//
//  ViewController.swift
//  Pokedesk
//
//  Created by IOS DEVELOPER on 1/20/17.
//  Copyright © 2017 New IT Venture. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let jsonrequest = URLSession.shared
        
        let url = URL(string: "http://swapi.co/api/people")
        
        
        jsonrequest.dataTask(with: url!) { (data : Data?,response: URLResponse?,error: Error?) in
            
            
            if let json = data{
                do{
                let jsondata = try JSONSerialization.jsonObject(with: json, options: JSONSerialization.ReadingOptions.allowFragments)
                    
                    
                    if let dict = jsondata as? Dictionary<String,AnyObject>{
                        
                        
                        if let name = dict["results"] as? [AnyObject]{
                          
                            for name2 in name{
                                
                               
                                
                                let pokedata = Pokedata(name: name2["name"] as! String, count: "100")
                                
                                 print(pokedata.name)
                                
                                
                                
                                
                            }
                            
                        }
                        
                        
                    }
                    
                   
                    
                    
                }catch{
                    
                    
                }
            }
            
            
        }.resume()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

