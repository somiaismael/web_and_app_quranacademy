class Applink {
  static const String server = "http://10.0.2.2/ecommerce";
  //================= image =================//
  static const String imagestatic = "$server/upload";
  static const String imagecategories = "$imagestatic/categories";
  static const String imageitems = "$imagestatic/items";

//================= Test =================//

  static const String test = "$server/test.php";

//================= Auth =================//
  static const String signUp = "$server/auth/signup.php";
  static const String verfiycodesignUp = "$server/auth/verfiycode.php";
  static const String login = "$server/auth/login.php";
//================= Forgetpassword =================//
  static const String checkemail = "$server/forgetpassword/checkemail.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  static const String verfiycoderestpassword =
      "$server/forgetpassword/verifycode.php";
       static const String resendverfiycode = "$server/forgetpassword/resend.php";

//================= Home =================//
  static const String home = "$server/home.php";


//================= items =================//
  static const String items = "$server/items/items.php";
   static const String searchitems = "$server/items/search.php";

//================= fevorite =================//  
static const String addfevorite = "$server/favorite/add.php";
static const String deletfevorite = "$server/favorite/delet.php";
static const String fevoriteview = "$server/favorite/favorite.php";
static const String deletfromfavorite = "$server/favorite/deletfromfavorite.php";

//================= cart =================// 
static const String cartview = "$server/cart/view.php";
static const String addtocart = "$server/cart/add.php";
static const String deletfromcart = "$server/cart/delet.php";
static const String cartgetcount = "$server/cart/getcount.php";


//================= address =================// 
static const String addressview = "$server/address/view.php";
static const String addressadd = "$server/address/add.php";
static const String addressdelet = "$server/address/delet.php";
static const String addressedit = "$server/address/edit.php";

//================= coupon =================// 

static const String ceckcoupon = "$server/coupon/ceckcoupon.php";

//================= orders =================// 

static const String checkout = "$server/orders/checkout.php";
static const String archiveorder = "$server/orders/archive.php";
static const String pendingorder = "$server/orders/pending.php";
static const String ordersdetails = "$server/orders/details.php";
static const String ordersdelet= "$server/orders/delet.php";
static const String ordersdeletArchive= "$server/orders/archive.php";

//================= offers =================// 
static const String offers = "$server/offers.php";

//================= rating =================// 
static const String rating = "$server/rating.php";
}
