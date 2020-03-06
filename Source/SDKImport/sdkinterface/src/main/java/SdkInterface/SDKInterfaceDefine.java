package sdkInterface;

/**
 * Created by GaiKai on 2018/4/4.
 */

public class SDKInterfaceDefine {
    public static final String ModuleName = "ModuleName";
    public static final String FunctionName = "FunctionName";
    public static final String ListenerName = "ListenerName";

    public static final String SDKName = "SDKName";
    public static final String SDKIndex = "SDKIndex";
    public static final String Tag = "Tag";

    public static final String ParameterName_IsSuccess = "IsSuccess";
    public static final String ParameterName_Error = "Error";
    public static final String ParameterName_Content = "Content";
    public static final String ParameterName_UserID = "UserID";

    public static final String ModuleName_Init = "Init";
    public static final String ModuleName_Dispose = "Dispose";
    public static final String ModuleName_Debug = "Debug";

    public static final String ModuleName_Login = "Login";
    public static final String ModuleName_Pay = "Pay";
    public static final String ModuleName_AD = "AD";
    public static final String ModuleName_Other = "Other";
    public static final String ModuleName_Log = "Log";
    public static final String ModuleName_LifeCycle = "LifeCycle";

    //回调方法
    public static final String FunctionName_OnError = "OnError";
    public static final String FunctionName_OnLog = "OnLog";

    public static final String FunctionName_OnInit = "OnInit";
    public static final String FunctionName_OnLogin = "OnLogin";
    public static final String FunctionName_OnLogout = "OnLogout";
    public static final String FunctionName_OnPay = "OnPay";
    public static final String Pay_FunctionName_GetGoodsInfo = "GetGoodsInfo";//获取商品信息回调
    public static final String Pay_FunctionName_ClearPurchase = "ClearPurchase";//擦除购买记录（已正常发货）
    public static final String FunctionName_OnOther = "OnOther";

    //LifeCycle 相关参数
    public static final String LifeCycle_FunctionName_OnApplicationQuit = "OnApplicationQuit";

    //Login相关参数
    public static final String Login_FunctionName_Login    = "Login";
    public static final String Login_FunctionName_LoginOut = "LoginOut";

    public static final String Login_ParameterName_Device = "Device";
    public static final String Login_ParameterName_AccountId = "AccountId";
    public static final String Login_ParameterName_loginPlatform = "loginPlatform";
    public static final String Login_ParameterName_AuchToken = "AuchToken";

    //Pay相关参数
    public static final String Pay_ParameterName_GoodsID = "GoodsID";
    public static final String Pay_ParameterName_GoodsType = "GoodsType";
    public static final String Pay_ParameterName_Count = "Count";
    public static final String Pay_ParameterName_GoodsName = "GoodsName";
    public static final String Pay_ParameterName_GoodsDescription = "GoodsDescription";
    public static final String Pay_ParameterName_CallBackUrl = "CallBackUrl";
    public static final String Pay_ParameterName_CpOrderID = "CpOrderID";//第三方支付ID
    public static final String Pay_ParameterName_OrderID = "OrderID";  //我们自己的支付ID
    public static final String Pay_ParameterName_Price = "Price";  //价格
    public static final String Pay_ParameterName_Currency = "Currency";  //货币
    public static final String Pay_ParameterName_Payment = "Payment";   //支付途径
    public static final String Pay_ParameterName_Receipt = "Receipt";   //支付回执
    public static final String Pay_ParameterName_LocalizedPriceString = "localizedPriceString";//本地货币类型与数目

    public static final String Pay_GoodsTypeEnum_ONCE_ONLY = "ONCE_ONLY";
    public static final String Pay_GoodsTypeEnum_NORMAL = "NORMAL";
    public static final String Pay_GoodsTypeEnum_RIGHTS = "RIGHTS";

    //AD相关参数
    public static final String AD_ParameterName_ADType = "ADType";

    public static final String AD_FunctionName_LoadAD = "LoadAD";
    public static final String AD_FunctionName_PlayAD = "PlayAD";
    public static final String AD_FunctionName_CloseAD = "CloseAD";
    public static final String AD_FunctionName_ADIsLoaded = "ADIsLoaded";

    //Log相关参数
    public static final String Log_FunctionName_Login = "LogLogin";
    public static final String Log_FunctionName_LoginOut = "LogLoginOut";
    public static final String Log_FunctionName_Event = "LogEvent";
    public static final String Log_FunctionName_LogPay = "LogPay";
    public static final String Log_FunctionName_LogPaySuccess = "LogPaySuccess";


    public static final String Log_FunctionName_RewardVirtualCurrency = "LogRewardVirtualCurrency"; //奖励虚拟币
    public static final String Log_FunctionName_PurchaseVirtualCurrency = "LogPurchaseVirtualCurrency";//消费虚拟币
    public static final String Log_FunctionName_UseItem = "LogUseItem";//使用虚拟物品（通过虚拟币购买的）

    //Log Login相关
    public static final String Log_ParameterName_AccountId = "AccountId";

    //Log VirtualCurrency相关
    public static final String Log_ParameterName_RewardReason = "RewardReason";

    //Log Event相关
    public static final String Log_ParameterName_EventID = "EventID";
    public static final String Log_ParameterName_EventLabel = "EventLabel";
    public static final String Log_ParameterName_EventMap = "EventMap";

    //Other相关参数
    public static final String Other_FunctionName_Exit = "Exit";

    //Other -> 剪贴板
    public static final String Other_FunctionName_CopyToClipboard = "CopyToClipboard";
    public static final String Other_FunctionName_CopyFromClipboard = "CopyFromClipboard";
    public static final String Other_ParameterName_Content = "Content";

    //Other -> 热更新安装包
    public static final String Other_FunctionName_DownloadAPK = "DownloadAPK";
    public static final String Other_FunctionName_GetAPKSize = "GetAPKSize";
    public static final String Other_ParameterName_DownloadURL = "DownloadURL";
    public static final String Other_ParameterName_Progress = "Progress";
    public static final String Other_ParameterName_TotalProgress = "TotalProgress";
    public static final String Other_ParameterName_Size = "Size";

    //Properties
    public static final String FileName_ChannelProperties = "Channel";
    public static final String PropertiesKey_IsLog = "IsLog";                           //是否输出日志
    public static final String PropertiesKey_SelectNetworkPath = "SelectNetworkPath";  //选服配置下载地址
    public static final String PropertiesKey_UpdateDownLoadPath = "UpdateDownLoadPath"; //热更新下载地址(最后没有斜线)
    public static final String PropertiesKey_TestUpdateDownLoadPath = "TestUpdateDownLoadPath"; //热更新下载测试地址(最后没有斜线)
    public static final String PropertiesKey_ChannelName = "ChannelName";               //渠道名称
    public static final String PropertiesKey_StoreName = "StoreName";                 //商店名称
    public static final String PropertiesKey_LoginPlatform = "LoginPlatform";           //登录平台
    public static final String PropertiesKey_NetworkID = "NetworkID";                   //服务器选择
    public static final String PropertiesKey_QQGroup = "QQGroup";                     //玩家QQ群
    public static final String PropertiesKey_DirectlyLogin = "DirectlyLogin";           //是否直接登录，不选择登录模式
}
