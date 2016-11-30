//  My Playground - a place where people can play
//  贝思客服务器地址
//
//  Created by 贺嘉炜 on 2016/11/30.
//  Copyright © 2016年 贺嘉炜. All rights reserved.
//
import UIKit

let HttpHeader = "http://"
let BSKURL = "bestcake.com"
let WSDL =  ".svc?wsdl"

//MARK: - Libs
let RealLib = HttpHeader + "api." + BSKURL
let FakeRealLib  = HttpHeader + "api.test." + BSKURL
let TestLib = HttpHeader + "testapp." + BSKURL + ":9102"


//MARK: - Final Lib

let FinalLib = TestLib;

let ActivityURL          = FinalLib + "/Activities" + WSDL
let MemberURL            = FinalLib + "/Member" + WSDL
let MessageURL           = FinalLib + "/Message" + WSDL
let OrderURL             = FinalLib + "/Order" + WSDL
let ProductURL           = FinalLib + "/Product" + WSDL
let MemberAccountURL     = FinalLib + "/MemberAccount" + WSDL
let CrowdfundingURL      = FinalLib + "/Crowdfunding" + WSDL
let DeliveryCloudURL     = FinalLib + "/DeliveryCloud" + WSDL
let WeChatAttestURL      = FinalLib + "/WeChatAttest" + WSDL
let TaskURL              = FinalLib + "/Task" + WSDL
let ReceiveActivityURL   = FinalLib + "/ReceiveActivity" + WSDL
let DeliveryURL          = FinalLib + "/Delivery" + WSDL
let AdvertisingURL       = FinalLib + "/Advertising" + WSDL
let ShoppingCartURL      = FinalLib + "/ShoppingCart" + WSDL
