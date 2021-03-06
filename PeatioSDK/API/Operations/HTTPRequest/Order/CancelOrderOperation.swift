import Foundation

public final class CancelOrderOperation: RequestOperation {
    public typealias ResultData = JustOK

    public lazy private(set) var path: String = "/api/xn/v1/me/orders/\(param.orderID)/cancel"

    public let httpMethod: HTTPMethod = .post

    public let requestParams: [String: Any]? = nil

    public let param: Param

    public init(param: Param) {
        self.param = param
    }
}

extension CancelOrderOperation {
    public struct Param: Equatable {

        public let orderID: Int

        public init(orderID: Int) {
            self.orderID = orderID
        }
    }
}
