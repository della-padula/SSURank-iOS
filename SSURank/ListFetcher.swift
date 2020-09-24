//
//  ListFetcher.swift
//  SSURank
//
//  Created by Denny on 2020/09/24.
//

import Foundation
import Alamofire
import Kanna

public class ListFetcher {
    public static let shared: ListFetcher = ListFetcher()
    private init() { }
    
    public func fetchItemList(category: EvaluationCategory,
                              reqType: RequestType,
                              content: String,
                              completion: @escaping (Result<ResultItem, Error>) -> Void) {
        
        let escapedString = content.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
        var urlString = ""
        switch category {
        case .lecture:
            urlString = "http://ssurank.site/\(category.urlString())/\(escapedString)/all"
        case .professor:
            urlString = "http://ssurank.site/\(category.urlString())/all/\(escapedString)"
        }
        
        if let url = URL(string: urlString) {
            AF.request(url).responseString(completionHandler: { response in
                print(response.description)
            })
        } else {
            print("Invalid URL")
        }
    }
}
