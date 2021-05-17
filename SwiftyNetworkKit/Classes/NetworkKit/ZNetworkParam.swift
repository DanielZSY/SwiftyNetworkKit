
import UIKit

/// 请求公共参数定义
public enum ZEnumNetworkParam: String {
    
    /// 获取总数量关键字
    case Total = "total"
    /// 获取当前第几页参数
    case page = "page"
    /// 获取每页显示多少条数据
    case perPage = "per_page"
    /// 筛选条件
    case filter = "filter"
    /// 筛选关键字
    case quick = "quick"
    /// id关键字
    case id = "ID"
}
