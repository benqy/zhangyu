// const _apiVersion = 'v6';

// class _Config {
//   final String passportUrl;
//   final String apihost;
//   final String urlHost;
//   final String quickNavUrl;
//   final String quickNavConUrl;
//   final String updateHost;
//   final String passportAppId;
//   final String passportAppKey;
//   final String commentHost;
//   static String mode = '';

//   static final Map<String, _Config> _cache = <String, _Config>{
//     'DEV' : _Config._internal(
//       passportUrl: 'https://passport.17173.com',
//       apihost: 'http://hao-app.dev.17173.com/api/$_apiVersion',
//       urlHost: 'http://hao.dev.17173.com',
//       // quickNavUrl: 'http://newgame.17173.com/quicknav/index.shtml',
//       quickNavConUrl: 'http://newgame.17173.com/inc/2020/quick-nav',
//       updateHost: const String.fromEnvironment('UPDATE_HOST').isEmpty ? 
//         'http://ue.17173cdn.com/a/hao/app' : 
//         'http://${const String.fromEnvironment('UPDATE_HOST')}:4000',
//       passportAppId: '3123',
//       passportAppKey: '>&;NjuHlJvf7lY:%',
//       commentHost:'http://10.5.117.135:8315/front/comment'
//     ),
//     'TEST' : _Config._internal(
//       passportUrl: 'https://passport.17173.com',
//       apihost: 'http://hao-app.test.17173.com/api/$_apiVersion',
//       urlHost: 'http://hao.test.17173.com',
//       // quickNavUrl: 'http://newgame.17173.com/quicknav/index.shtml',
//       quickNavConUrl: 'http://newgame.17173.com/inc/2020/quick-nav',
//       updateHost: const String.fromEnvironment('UPDATE_HOST').isEmpty ? 
//         'http://ue.17173cdn.com/a/hao/app' : 
//         'http://${const String.fromEnvironment('UPDATE_HOST')}:4000',
//       passportAppId: '3123',
//       passportAppKey: '>&;NjuHlJvf7lY:%',
//       commentHost:'http://10.5.117.135:8315/front/comment'
//     ),
//     'PRODUCTION' : _Config._internal(
//       passportUrl: 'https://passport.17173.com',
//       // Todo 正式上线前先手动更改
//       apihost: 'https://hao-app.17173.com/api/$_apiVersion',
//       // apihost: 'http://hao-app.internal.17173.com/api/$_apiVersion',
//       urlHost: 'http://hao.17173.com',
//       // quickNavUrl: 'http://newgame.17173.com/quicknav/index.shtml',
//       quickNavConUrl: 'http://newgame.17173.com/inc/2020/quick-nav',
//       updateHost: 'http://ue.17173cdn.com/a/hao/app',
//       passportAppId: '3123',
//       passportAppKey: '>&;NjuHlJvf7lY:%',
//       commentHost:'http://comment2.17173.com/front/comment'
//     )
//   };

//   factory _Config() {
//     if(mode.isEmpty) {
//       const String modeArgs = String.fromEnvironment('BUILD_MODE');
//       mode = modeArgs;
//       if(mode.isEmpty) {
//         mode = 'DEV';
//       }
//       // mode = 'TEST';
//       print('===========当前运行模式:$mode===============');
//     }
//     return _cache[mode];
//   }

//   _Config._internal({
//     this.passportUrl, 
//     this.apihost, 
//     this.urlHost, 
//     this.quickNavUrl, 
//     this.quickNavConUrl, 
//     this.updateHost,
//     this.passportAppId,
//     this.passportAppKey,
//     this.commentHost
//   });
// }

// //  = kReleaseMode ? _BuildMode.TEST : _BuildMode.DEV;

// class APPCONFIGS {
//   // 游戏定制版开启
//   static bool isCustomGame = const String.fromEnvironment('IS_CUSTOM').isEmpty ? false : true;
//   // 游戏定制版名称，由后端根据相应的游戏提供
//   static String customGameName = 'tmns';
// }


// class API {
//   static String runMode = _Config.mode;
//   static String passportAppId = _Config().passportAppId;
//   static String passportAppKey = _Config().passportAppKey;
//   static String urlhost = _Config().urlHost;
//   static String quickNavUrl = _Config().quickNavUrl;
//   static String quickNavConUrl = _Config().quickNavConUrl;
//   static String getGift = '${_Config().apihost}/gift/card';
//   static String taoHao = '${_Config().apihost}/gift/tao';
//   static String takePart = '${_Config().apihost}/gift/take-part';
//   static String follow = '${_Config().apihost}/game/follow';
//   static String unFollow = '${_Config().apihost}/game/cancel';
//   static String message = '${_Config().apihost}/message/list';
//   static String unReadMessageCount = '${_Config().apihost}/message/count-info';
//   // static String config = 'http://news.17173.com/hao/app/config.json';
//   // static String updateInfo = 'http://10.5.15.97:4000/updateinfo.json';
//   static String updateInfo = APPCONFIGS.isCustomGame ? 
//     '${_Config().updateHost}/updateinfo_${APPCONFIGS.customGameName}.json' : 
//     '${_Config().updateHost}/updateinfo.json';
//   static String myGiftUrl = '${_Config().urlHost}/my-giftlist-1-1.html';
//   static String myFollowUrl = '${_Config().urlHost}/my-schelist-1-1.html';
//   static String searchUrl = 'https://ka.17173.com';
//   static String privacyPolicy = 'http://news.17173.com/hao/app/privacypolicy.html';
//   static String help = 'https://support.qq.com/embed/phone/165656';
//   //获取验证短信信息
//   static String getUpLinkSMS = '${_Config().apihost}/gift/uplink-sms';
//   static String checkMobile = '${_Config().apihost}/gift/check';
//   static String captchSMS = '${_Config().apihost}/gift/sms';
//   //获取短信验证结果
//   static String getUpLinkStatus = '${_Config().apihost}/gift/check-uplink';
//   static String updateMobileNum = 'https://passport.17173.com/safe/mobile/oldConfirm';
//   //passport 注销
//   static String removeAccount = 'https://passport.17173.com/account';

//   // 首页
//   static String hotGame = '${_Config().apihost}/game/hot';
//   static String gameList = '${_Config().apihost}/game/list';
//   static String shareCount = '${_Config().apihost}/video/share';

//   //list
//   static String getGallery = '${_Config().apihost}/other/ad-list';
//   static String getSearchKeyword = '${_Config().apihost}/other/search-word';
//   static String hotGiftList = '${_Config().apihost}/gift/hot-list';
//   static String weekGiftList = '${_Config().apihost}/gift/week-list';
//   static String activeGiftList = '${_Config().apihost}/gift/activation-list';
//   static String allGiftList = '${_Config().apihost}/gift/site-list';
//   static String giftDetail = '${_Config().apihost}/gift/info';
//   static String lotteryTakePart = '${_Config().apihost}/gift/lottery-take-part';
//   static String lotteryAward = '${_Config().apihost}/gift/lottery-award';

//   //search
//   static String kaSuggest = '${_Config().apihost}/game/suggest';
//   static String searchGiftList = '${_Config().apihost}/gift/ka-list';
//   static String sitesList = '${_Config().apihost}/other/sites';
//   static String searchGame = '${_Config().apihost}/game/search';
//   static String searchTag = '${_Config().apihost}/search/tag';

//   //game
//   static String gameIndex = '${_Config().apihost}/game/find-game';
//   static String gameTagList = '${_Config().apihost}/game/tag-list';
//   static String videoFindGame = '${_Config().apihost}/video/find-game';
//   static String gameNews = '${_Config().apihost}/game/news';
//   static String listByGame = '${_Config().apihost}/gift/list-by-game';
//   static String gameInfo = '${_Config().apihost}/game/info';
//   static String gamePicture = '${_Config().apihost}/game/picture';
//   static String gameVideo = '${_Config().apihost}/game/video';

//   // customgame
//   static String customGame = '${_Config().apihost}/other/custom-game-info';

//   //mine
//   static String myAccountBox = '${_Config().apihost}/my/account-box';
//   static String myFollow = '${_Config().apihost}/my/follow';
//   static String myAccountStatus = '${_Config().apihost}/my/get-status';

//   // top
//   static String topList = '${_Config().apihost}/top/list';

//   // test
//   static String testList = '${_Config().apihost}/game/test-list';

//   //passport 
//   static String passportHost = _Config().passportUrl;
//   static String loginByUsername = '${_Config().passportUrl}/sso/gettoken';
//   static String loginDynamic = '${_Config().passportUrl}/appapi/dynamic/SignIn';
//   static String getUidByUsername = '${_Config().passportUrl}/api/user/getUidByUsername';
//   static String getAvatar = 'https://avatar.17173.com/sdk/getavatar';
//   static String sendMobileCaptcha = '${_Config().passportUrl}/appapi/dynamic/mobileCaptcha';
//   static String sendBindMobileCaptcha = '${_Config().passportUrl}/appapi/safe/mobile/bindMobileCaptcha';
//   static String getSid = '${_Config().passportUrl}/api/default/getsessionid';
//   static String getUserInfo = '${_Config().passportUrl}/appapi/login/authtoken';
//   static String changeSex = '${_Config().passportUrl}/appapi/user/ChangeSex';
//   static String changeNickname = '${_Config().passportUrl}/appapi/user/ChangeNickname';
//   static String changeAvator = 'https://avatar.17173.com/sdk/saveimg';
//   static String thirdLogin = '${_Config().passportUrl}/appapi/partner/Login';
//   static String bindMobile = '${_Config().passportUrl}/appapi/safe/mobile/bind';
//   static String thirdBind = '${_Config().passportUrl}/appapi/partner/bind';
//   static String thirdUnBind = '${_Config().passportUrl}/appapi/partner/unbind';

//   static String addComment = '${_Config().commentHost}/standpoint/add';
//   static String addReply = '${_Config().commentHost}/standpoint/reply';
//   static String eidtComment = '${_Config().commentHost}/standpoint/edit';
//   static String listComment = '${_Config().commentHost}/standpoint/list';
//   static String replyListComment = '${_Config().commentHost}/standpoint/reply/list';
//   static String reportComment = '${_Config().commentHost}/standpoint/report';
//   static String supportComment = '${_Config().commentHost}/support';
//   static String opposeComment = '${_Config().commentHost}/oppose';
//   static String commentSendMessage = '${_Config().apihost}/message/send';
// }

class API {
  static final baiduGetToken = 'https://aip.baidubce.com/oauth/2.0/token';
  static final baiduOCR = 'https://aip.baidubce.com/rest/2.0/ocr/v1/general_basic';
}