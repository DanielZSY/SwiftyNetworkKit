
import UIKit

/// 错误码
public enum ZEnumNetworkCode: Int {
    
    /// SuccessCode 0
    case Success = 0
    /// 账号余额不足 2001
    case Balance = 2001
    /// 登录过期 401
    case LoginExpired = 401
    /// 非法访问 403
    case UnAuthorized = 403
}
