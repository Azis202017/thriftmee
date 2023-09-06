import 'package:get/get.dart';

import '../modules/add_address/bindings/add_address_binding.dart';
import '../modules/add_address/views/add_address_view.dart';
import '../modules/add_product/bindings/add_product_binding.dart';
import '../modules/add_product/views/add_product_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/category/bindings/category_binding.dart';
import '../modules/category/views/category_view.dart';
import '../modules/category_detail/bindings/category_detail_binding.dart';
import '../modules/category_detail/views/category_detail_view.dart';
import '../modules/change_address/bindings/change_address_binding.dart';
import '../modules/change_address/views/change_address_view.dart';
import '../modules/choose_location/bindings/choose_location_binding.dart';
import '../modules/choose_location/views/choose_location_view.dart';
import '../modules/confirm_resi/bindings/confirm_resi_binding.dart';
import '../modules/confirm_resi/views/confirm_resi_view.dart';
import '../modules/create_account/bindings/create_account_binding.dart';
import '../modules/create_account/views/create_account_view.dart';

import '../modules/delivery_arrange/bindings/delivery_arrange_binding.dart';
import '../modules/delivery_arrange/views/delivery_arrange_view.dart';
import '../modules/description_product/bindings/description_product_binding.dart';
import '../modules/description_product/views/description_product_view.dart';
import '../modules/detail_pengiriman/bindings/detail_pengiriman_binding.dart';
import '../modules/detail_pengiriman/views/detail_pengiriman_view.dart';
import '../modules/detail_product/bindings/detail_product_binding.dart';
import '../modules/detail_product/views/detail_product_view.dart';
import '../modules/detail_shop/bindings/detail_shop_binding.dart';
import '../modules/detail_shop/views/detail_shop_view.dart';
import '../modules/edit_profile/bindings/edit_profile_binding.dart';
import '../modules/edit_profile/views/edit_profile_view.dart';
import '../modules/forgot-password/bindings/forgot_password_binding.dart';
import '../modules/forgot-password/views/forgot_password_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home_toko/bindings/home_toko_binding.dart';
import '../modules/home_toko/views/home_toko_view.dart';
import '../modules/list_address/bindings/list_address_binding.dart';
import '../modules/list_address/views/list_address_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/navigation_bottom/bindings/navigation_bottom_binding.dart';
import '../modules/navigation_bottom/views/navigation_bottom_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/open_shop_form/bindings/open_shop_form_binding.dart';
import '../modules/open_shop_form/views/open_shop_form_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/send_email_verification_register/bindings/send_email_verification_register_binding.dart';
import '../modules/send_email_verification_register/views/send_email_verification_register_view.dart';
import '../modules/setting_account/bindings/setting_account_binding.dart';
import '../modules/setting_account/views/setting_account_view.dart';
import '../modules/setting_address/bindings/setting_address_binding.dart';
import '../modules/setting_address/views/setting_address_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/settings_other/bindings/settings_other_binding.dart';
import '../modules/settings_other/views/settings_other_view.dart';
import '../modules/settings_pesanan/bindings/settings_pesanan_binding.dart';
import '../modules/settings_pesanan/views/settings_pesanan_view.dart';
import '../modules/shop/bindings/shop_binding.dart';
import '../modules/shop/views/shop_view.dart';
import '../modules/shop_detail/bindings/shop_detail_binding.dart';
import '../modules/shop_detail/views/shop_detail_view.dart';
import '../modules/successfull_create/bindings/successfull_create_binding.dart';
import '../modules/successfull_create/views/successfull_create_view.dart';
import '../modules/try_on/bindings/try_on_binding.dart';
import '../modules/try_on/views/try_on_view.dart';
import '../modules/verifikasi_password/bindings/verifikasi_password_binding.dart';
import '../modules/verifikasi_password/views/verifikasi_password_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore:
  static const INITIAL = Routes.DETAIL_PENGIRIMAN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => const RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASSWORD,
      page: () => const ForgotPasswordView(),
      binding: ForgotPasswordBinding(),
    ),
    GetPage(
      name: _Paths.VERIFIKASI_PASSWORD,
      page: () => const VerifikasiPasswordView(),
      binding: VerifikasiPasswordBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS_PESANAN,
      page: () => const SettingsPesananView(),
      binding: SettingsPesananBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS_OTHER,
      page: () => const SettingsOtherView(),
      binding: SettingsOtherBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PRODUCT,
      page: () => const DetailProductView(),
      binding: DetailProductBinding(),
    ),
    GetPage(
      name: _Paths.TRY_ON,
      page: () => const TryOnView(),
      binding: TryOnBinding(),
    ),
    GetPage(
      name: _Paths.OPEN_SHOP_FORM,
      page: () => const OpenShopFormView(),
      binding: OpenShopFormBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY,
      page: () => const CategoryView(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: _Paths.CATEGORY_DETAIL,
      page: () => const CategoryDetailView(),
      binding: CategoryDetailBinding(),
    ),
    GetPage(
      name: _Paths.SUCCESSFULL_CREATE,
      page: () => const SuccessfullCreateView(),
      binding: SuccessfullCreateBinding(),
    ),
    GetPage(
      name: _Paths.SEND_EMAIL_VERIFICATION_REGISTER,
      page: () => const SendEmailVerificationRegisterView(),
      binding: SendEmailVerificationRegisterBinding(),
    ),
    GetPage(
      name: _Paths.NAVIGATION_BOTTOM,
      page: () => const NavigationBottomView(),
      binding: NavigationBottomBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => const ShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_ACCOUNT,
      page: () => const CreateAccountView(),
      binding: CreateAccountBinding(),
    ),
    GetPage(
      name: _Paths.LIST_ADDRESS,
      page: () => const ListAddressView(),
      binding: ListAddressBinding(),
    ),
    GetPage(
      name: _Paths.SHOP_DETAIL,
      page: () => const ShopDetailView(),
      binding: ShopDetailBinding(),
    ),
    GetPage(
      name: _Paths.SETTING_ACCOUNT,
      page: () => const SettingAccountView(),
      binding: SettingAccountBinding(),
    ),
    GetPage(
      name: _Paths.SETTING_ADDRESS,
      page: () => const SettingAddressView(),
      binding: SettingAddressBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_ADDRESS,
      page: () => const ChangeAddressView(),
      binding: ChangeAddressBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ADDRESS,
      page: () => const AddAddressView(),
      binding: AddAddressBinding(),
    ),
    GetPage(
      name: _Paths.CHOOSE_LOCATION,
      page: () => const ChooseLocationView(),
      binding: ChooseLocationBinding(),
    ),
    GetPage(
      name: _Paths.HOME_TOKO,
      page: () => const HomeTokoView(),
      binding: HomeTokoBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_RESI,
      page: () => const ConfirmResiView(),
      binding: ConfirmResiBinding(),
    ),
    GetPage(
      name: _Paths.DELIVERY_ARRANGE,
      page: () => const DeliveryArrangeView(),
      binding: DeliveryArrangeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_SHOP,
      page: () => const DetailShopView(),
      binding: DetailShopBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCT,
      page: () => const AddProductView(),
      binding: AddProductBinding(),
    ),
    GetPage(
      name: _Paths.DESCRIPTION_PRODUCT,
      page: () => const DescriptionProductView(),
      binding: DescriptionProductBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_PENGIRIMAN,
      page: () => const DetailPengirimanView(),
      binding: DetailPengirimanBinding(),
    ),
  ];
}
