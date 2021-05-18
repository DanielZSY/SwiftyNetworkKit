import UIKit
import Moya
import BFKit
import Result
import Foundation

class ZNetworkPluginType: PluginType {
    
    func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
        return request
    }
    func willSend(_ request: RequestType, target: TargetType) {
        NotificationCenter.default.post(name: Notification.Name.init(rawValue: "ApiRequestStart"), object: target.path)
    }
    func didReceive(_ result: Result<Response, MoyaError>, target: TargetType) {
        switch result {
        case .success(let data):
            NotificationCenter.default.post(name: Notification.Name.init(rawValue: "ApiRequestSuccess"), object: data)
        case .failure(let error):
            NotificationCenter.default.post(name: Notification.Name.init(rawValue: "ApiRequestError"), object: error.localizedDescription)
        default: break
        }
    }
}
