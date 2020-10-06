//
//  TKTCloud.swift
//  TikiTechLibrary
//
//  Created by Nguyen Hieu Trung on 9/5/20.
//  Copyright © 2020 NHTSOFT. All rights reserved.
//

import Foundation
import ObjectMapper

public class TKTCLoud {
    public static let shared = TKTCLoud()
    var configure: TKTConfiguration?
    
    public func setConfigure(configure: TKTConfiguration){
        self.configure = configure
        AppLanguage.shared.languageKey = configure.lang?.rawValue ?? TKTLanguage.EN.rawValue
    }
    
    public func getConfig() -> TKTConfiguration?{
        return configure
    }
    
    public func execute(complete: @escaping((_ json: [String: AnyObject])->Void)){
        var request = URLRequest(url: URL(string: "https://powerful-stream-90084.herokuapp.com/api/userskin/5f4a422ddf666f0b9c9aa9e2")!)
        request.httpMethod = "GET"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            print(response!)
            do {
                let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                complete(json)
            } catch {
                print("error")
            }
        })
        
        task.resume()
    }
    
    //MARK: Execute Upload Image Base 4
    func executeUpload(imageBase64: String, complete: @escaping((_ json: [String: AnyObject]?, _ error: Error?)->Void)){
        
        let params = ["image_base64": imageBase64,
                      "email":configure?.email ?? ""] as Dictionary<String, Any>
        let jsonData = try? JSONSerialization.data(withJSONObject: params)
        let strURL = (configure?.domain ?? "") + "/api/userskin"
        let request = NSMutableURLRequest(url: URL(string:  strURL)!)
        request.httpMethod = "POST"
        request.httpBody = jsonData
        
        request.setValue("application/json", forHTTPHeaderField: "Accept")
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        request.setValue(configure?.apiKey ?? "", forHTTPHeaderField: "apikey")
        
        let session = URLSession.shared
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error -> Void in
            if error != nil {
                complete(nil, error)
            }else {
                do {
                    let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                    print(json)
                    complete(json, nil)
                } catch let error {
                    print("error: \(error.localizedDescription)")
                }
            }
        })
        task.resume()
    }
    
    public func start(fromViewController vc: UIViewController){
        let storyboardName = STORY_BOARD_NAME
        let storyboardBundle = Bundle(for: AnalysisViewController.self)
        let analysisStoryboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        let analysisVC = analysisStoryboard.instantiateViewController(withIdentifier:  "AnalysisViewController")
        vc.present(analysisVC, animated: true, completion: nil)
    }
}
