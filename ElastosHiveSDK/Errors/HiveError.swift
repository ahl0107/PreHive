/*
 * Copyright (c) 2019 Elastos Foundation
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

import Foundation

public enum HiveError: Error {
    case insufficientParameters(des: String?)
    case invalidatedBuilder(des: String?)
    case failure(des: String?)
    case IllegalArgument(des: String?)
    case netWork(des: Error?)
    case unsupportedOperation(des: String?)
    case providerIsNil(des: String?)
    case accessAuthToken(des: String?)
    case jwtVerify(des: String?)
    case transactionIdIsNil(des: String?)
    case fileNotFound(des: String?)
    case providerNotSet(des: String?)
    case authorizationIsNil(des: String?)
    case vaultAlreadyExistException(des: String?)
    case challengeIsNil(des: String?)
    case jsonSerializationInvalidType(des: String?)
    case vaultNotFound(des: String?)
}

// jsonSerializationInvalidType
extension HiveError {

   public static func description(_ error: HiveError) -> String {
        switch error {
        case .failure(let des):
            return des ?? "Operation failed"
        case .insufficientParameters(let des):
            return des ?? ""
        case .invalidatedBuilder(let des):
            return des ?? ""
        case .IllegalArgument(let des):
            return des ?? ""
        case .netWork(let des):
            return des.debugDescription
        case .unsupportedOperation(let des):
            return des ?? ""
        case .providerIsNil(des: let des):
            return des ?? ""
        case .accessAuthToken(let des):
            return des ?? ""
        case .jwtVerify(let des):
            return des ?? ""
        case .transactionIdIsNil(let des):
            return des ?? ""
        case .fileNotFound(let des):
            return des ?? ""
        case .providerNotSet(let des):
            return des ?? ""
        case .authorizationIsNil(let des):
            return des ?? ""
        case .vaultAlreadyExistException(let des):
            return des ?? ""
        case .challengeIsNil(let des):
            return des ?? ""
        case .jsonSerializationInvalidType(let des):
            return des ?? ""
        case .vaultNotFound(let des):
            return des ?? ""
        }
    }

    static func praseError(_ json: JSON) -> String {
        let status = json["_status"].stringValue
        let code = json["_error"]["code"].intValue
        let message = json["_error"]["message"].stringValue

        let dic = ["_status": status, "_error": ["code": code, "message": message]] as [String : Any]
        let data = try? JSONSerialization.data(withJSONObject: dic as Any, options: [])
        guard data != nil else {
            return ""
        }
        return String(data: data!, encoding: String.Encoding.utf8)!
    }
}

