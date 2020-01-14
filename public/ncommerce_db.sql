
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE `activity_category` (
  `activity_categoryid` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `activity_category` (`activity_categoryid`, `category_name`) VALUES
(1, 'logout'),
(2, 'login'),
(3, 'Variant'),
(4, 'Product');
/*
CREATE TABLE `activity_configuratioon` (
  `activity_conf_id` int(11) NOT NULL,
  `line_notification` tinyint(4) NOT NULL,
  `email_master_admin` tinyint(4) NOT NULL,
  `email_to_login_user` tinyint(4) NOT NULL,
  `sound_notification` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `activity_configuratioon` (`activity_conf_id`, `line_notification`, `email_master_admin`, `email_to_login_user`, `sound_notification`) VALUES
(1, 1, 1, 1, 1);

CREATE TABLE `activity_history` (
  `activity_historyid` int(11) NOT NULL,
  `icon_fontawsome` varchar(200) NOT NULL,
  `title_activity` varchar(200) NOT NULL,
  `subject_activity` varchar(50) NOT NULL,
  `activity_description` text NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_category` int(11) NOT NULL,
  `activity_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `read_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `api_line` (
  `api_line_id` int(11) NOT NULL,
  `line_token` varchar(200) NOT NULL,
  `line_active_status` int(1) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `api_line` (`api_line_id`, `line_token`, `line_active_status`, `last_update`) VALUES
(1, '', 1, '2017-12-11 05:03:10');


CREATE TABLE `blog_category` (
  `blog_category_id` int(11) NOT NULL,
  `blog_category_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `blog_category` (`blog_category_id`, `blog_category_name`) VALUES
(7, 'party'),
(8, 'dance');

CREATE TABLE `blog_category_details` (
  `blog_category_details_id` int(11) NOT NULL,
  `blog_category_details_title` varchar(45) DEFAULT NULL,
  `blog_category_details_review` text NOT NULL,
  `blog_category_details_description` text,
  `blog_category_details_image` varchar(200) DEFAULT NULL,
  `blog_category_details_image_url` text NOT NULL,
  `blog_author` varchar(200) NOT NULL,
  `blog_category_details_create_date` datetime DEFAULT NULL,
  `viewers_blog` int(11) NOT NULL,
  `blog_category_blog_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `chat_api` (
  `chat_apiid` int(11) NOT NULL,
  `chat_api_script` text NOT NULL,
  `chat_api_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `chat_api` (`chat_apiid`, `chat_api_script`, `chat_api_status`) VALUES
(1, '', 1);


CREATE TABLE `contact_message` (
  `contact_message_id` int(11) NOT NULL,
  `contact_name` varchar(150) NOT NULL,
  `contact_email` varchar(200) NOT NULL,
  `contact_subject` varchar(100) NOT NULL,
  `contact_message` text NOT NULL,
  `message_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_message`
--

INSERT INTO `contact_message` (`contact_message_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`, `message_date`) VALUES
(6, 'Test mail', 'testcontact@gmail.com', 'test subject', 'test email', '2017-02-28 18:18:51'); 

-- --------------------------------------------------------

--
-- Table structure for table `email_api`
--

CREATE TABLE `email_api` (
  `email_api_id` int(11) NOT NULL,
  `email_api_protocol` varchar(255) NOT NULL,
  `email_api_smtphost` varchar(255) NOT NULL,
  `email_api_smtpuser` varchar(255) NOT NULL,
  `email_api_smtppassword` varchar(255) NOT NULL,
  `email_api_smtpport` varchar(255) NOT NULL,
  `email_api_sender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_api`
--

INSERT INTO `email_api` (`email_api_id`, `email_api_protocol`, `email_api_smtphost`, `email_api_smtpuser`, `email_api_smtppassword`, `email_api_smtpport`, `email_api_sender`) VALUES
(1, 'smtp', 'ssl://in-v3.mailjet.com', '3693d6aa1834f830083b3681dbf0f066', '35c3b09d34271872d815ab45bc6c7b7c', '465', 'no-reply@ncommerce.id');

-- --------------------------------------------------------

--
-- Table structure for table `email_checkout_setting`
--

CREATE TABLE `email_checkout_setting` (
  `email_checkout_id` int(11) NOT NULL,
  `email_subject_cust` varchar(200) NOT NULL,
  `email_description_message_cust` text NOT NULL,
  `email_receiver` varchar(200) NOT NULL,
  `email_subject_owner` varchar(200) NOT NULL,
  `email_description_message_owner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_checkout_setting`
--

INSERT INTO `email_checkout_setting` (`email_checkout_id`, `email_subject_cust`, `email_description_message_cust`, `email_receiver`, `email_subject_owner`, `email_description_message_owner`) VALUES
(1, 'konfirmasi pembelian anda', 'terimakasih telah berbelanja di toko kami,di bawah merupakan Kontak kami', 'ariessa.larasati@gmail.com,denin.resky@gmail.com,michael.tjoeng@gmail.com,denin@worktrees.com', 'to get more detail about the order, you can check to your admin system', 'anda mendapatkan pesanan belanja, di bawah ini detail belanja');

-- --------------------------------------------------------

--
-- Table structure for table `email_confirmation_payment`
--

CREATE TABLE `email_confirmation_payment` (
  `email_confirmation_id` int(11) NOT NULL,
  `conf_subject_customer` varchar(250) NOT NULL,
  `conf_message_customer` text NOT NULL,
  `conf_subject_owner` varchar(250) NOT NULL,
  `conf_message_owner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_confirmation_payment`
--

INSERT INTO `email_confirmation_payment` (`email_confirmation_id`, `conf_subject_customer`, `conf_message_customer`, `conf_subject_owner`, `conf_message_owner`) VALUES
(1, 'Thank you for your confirmation payment', 'Thank you for yout payment confiration , we will check within 1x24 hours your payment', 'you got confirmation payment', 'Please check the confirmation payment in your ccount, and change the status of ');

-- --------------------------------------------------------

--
-- Table structure for table `email_contact`
--

CREATE TABLE `email_contact` (
  `email_contact_id` int(11) NOT NULL,
  `customer_subject_contact` varchar(250) NOT NULL,
  `customer_content` text NOT NULL,
  `owner_subject` varchar(250) NOT NULL,
  `owner_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_contact`
--

INSERT INTO `email_contact` (`email_contact_id`, `customer_subject_contact`, `customer_content`, `owner_subject`, `owner_content`) VALUES
(1, 'mengirim pesan untuk worktrees', 'terimakasih sudah mengirimkan pesna kepada kami, kami akan merespon email anda paling lama 1x24 jam\r\n', 'pesan dari website worktrees', 'anda mendapatkan pesan dari customer anda di bawah ini merupakan pesan dari pelanggan adnda :<br />');

-- --------------------------------------------------------

--
-- Table structure for table `email_forgot_password`
--

CREATE TABLE `email_forgot_password` (
  `email_forgot_password` int(11) NOT NULL,
  `forgot_content` text NOT NULL,
  `forgot_subject` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_forgot_password`
--

INSERT INTO `email_forgot_password` (`email_forgot_password`, `forgot_content`, `forgot_subject`) VALUES
(1, 'your password has been reset, below is your new password<br /></br />', 'Reset password');

-- --------------------------------------------------------

--
-- Table structure for table `email_registration_user`
--

CREATE TABLE `email_registration_user` (
  `id_email` int(11) NOT NULL,
  `email_content_customer` text NOT NULL,
  `subject_customer` text NOT NULL,
  `email_content_owner` text NOT NULL,
  `subject_owner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_registration_user`
--

INSERT INTO `email_registration_user` (`id_email`, `email_content_customer`, `subject_customer`, `email_content_owner`, `subject_owner`) VALUES
(1, 'Thank you for regiter to our store,when you register in our store, you can see the shopping history and status of your product, and also you can checkout more faster', 'Thakyou for registering to our store', 'congratulations you got new customer register, please mantain your customer like your son,', 'congratulations you got new customer register');

-- --------------------------------------------------------

--
-- Table structure for table `email_shipping_code`
--

CREATE TABLE `email_shipping_code` (
  `email_shop_code_id` int(11) NOT NULL,
  `email_subject` text NOT NULL,
  `shipping_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_shipping_code`
--

INSERT INTO `email_shipping_code` (`email_shop_code_id`, `email_subject`, `shipping_content`) VALUES
(1, 'Shipping number', 'your product has been ship, below is your shipping detail');

-- --------------------------------------------------------

--
-- Table structure for table `feature_slider`
--

CREATE TABLE `feature_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` varchar(250) NOT NULL,
  `slider_image` varchar(250) NOT NULL,
  `slider_image_full_link` text NOT NULL,
  `slider_content` text NOT NULL,
  `btn_name` varchar(250) NOT NULL,
  `btn_url` text NOT NULL,
  `status` int(11) NOT NULL,
  `slider_position` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feature_subscribe_user`
--

CREATE TABLE `feature_subscribe_user` (
  `id_subsciber` int(11) NOT NULL,
  `subscribe_email` varchar(200) NOT NULL,
  `time_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feature_subscribe_user`
--

INSERT INTO `feature_subscribe_user` (`id_subsciber`, `subscribe_email`, `time_added`) VALUES
(1, 'denin@gmail.com', '2017-08-21 15:38:37'),
(2, 'denin.resky@gmail.com', '2017-08-21 17:08:37'),
(3, 'denin.resky1@gmail.com', '2017-08-22 04:36:55'),
(4, 'dnein@gmail.com', '2017-08-22 09:29:43'),
(5, 'hery.idriansyah@gmail.com', '2017-10-17 07:36:29'),
(6, 'ricohanan11@gmail.con', '2017-11-01 11:52:19'),
(7, 'sasha10121993@yahoo.co.id', '2017-11-30 21:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `google_analitics_script`
--

CREATE TABLE `google_analitics_script` (
  `analitics_id` int(11) NOT NULL,
  `analitics_code` text NOT NULL,
  `analitics_acative_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `google_analitics_script`
--

INSERT INTO `google_analitics_script` (`analitics_id`, `analitics_code`, `analitics_acative_status`) VALUES
(1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `layer2_result_question`
--

CREATE TABLE `layer2_result_question` (
  `id_layer2_question` int(11) NOT NULL,
  `funding_are_you_looking_for` text NOT NULL,
  `type_of_collateral` text NOT NULL,
  `expecting_to_pay` text NOT NULL,
  `typical_maturity_you_are_expecting` text NOT NULL,
  `ideally_need_the_money` text NOT NULL,
  `need_beyond_the_capital` text NOT NULL,
  `available_for_a_program` text NOT NULL,
  `program_you_are_expecting` text NOT NULL,
  `gender_approach` text NOT NULL,
  `are_you_Indonesian` text NOT NULL,
  `legal_status_of_your_company` text NOT NULL,
  `add_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `layer1_question_result` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `midtrans_api`
--

CREATE TABLE `midtrans_api` (
  `id_midtrans` int(11) NOT NULL,
  `production_server_key` text NOT NULL,
  `production_client_key` text NOT NULL,
  `sandbox_server_key` text NOT NULL,
  `sandbox_client_key` text NOT NULL,
  `production_javascript_link` text NOT NULL,
  `sandbox_javascript_link` text NOT NULL,
  `midtrans_payment_method` text NOT NULL,
  `active_midtrans` int(11) NOT NULL,
  `active_production_status` int(11) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `midtrans_api`
--

INSERT INTO `midtrans_api` (`id_midtrans`, `production_server_key`, `production_client_key`, `sandbox_server_key`, `sandbox_client_key`, `production_javascript_link`, `sandbox_javascript_link`, `midtrans_payment_method`, `active_midtrans`, `active_production_status`, `update_date`) VALUES
(1, '', '', '', '', 'https://app.midtrans.com/snap/snap.js', 'https://app.sandbox.midtrans.com/snap/snap.js', 'credit_card', 1, 1, '2017-12-11 07:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `pages_about`
--

CREATE TABLE `pages_about` (
  `pages_about_id` int(11) NOT NULL,
  `pages_title` text NOT NULL,
  `pages_about_content` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages_about`
--

INSERT INTO `pages_about` (`pages_about_id`, `pages_title`, `pages_about_content`, `last_update`) VALUES
(1, 'About Us', '', '2017-12-11 07:49:10');

-- --------------------------------------------------------

--
-- Table structure for table `pages_general`
--

CREATE TABLE `pages_general` (
  `pages_id` int(11) NOT NULL,
  `pages_name` text NOT NULL,
  `pages_title` text NOT NULL,
  `pages_content` text NOT NULL,
  `pages_status` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment_confirmation`
--

CREATE TABLE `payment_confirmation` (
  `payment_confirmation_id` int(11) NOT NULL,
  `payment_method` varchar(150) NOT NULL,
  `amount_payment` int(11) NOT NULL,
  `bank_acc_number` varchar(100) NOT NULL,
  `get_orderpurchase_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_confirmation`
--

INSERT INTO `payment_confirmation` (`payment_confirmation_id`, `payment_method`, `amount_payment`, `bank_acc_number`, `get_orderpurchase_id`) VALUES
(1, 'BCA / 1234567890 / Denindra', 300000, 'denindra', '42'),
(2, 'BCA / 1234567890 / Denindra', 100000, 'dnein', '52');

-- --------------------------------------------------------

--
-- Table structure for table `payment_method_transfer`
--

CREATE TABLE `payment_method_transfer` (
  `payment_method_id` int(11) NOT NULL,
  `p_bank_name` varchar(100) DEFAULT NULL,
  `p_account_number` varchar(100) DEFAULT NULL,
  `p_cardholder` varchar(100) DEFAULT NULL,
  `p_bank_branch` varchar(100) DEFAULT NULL,
  `bank_status` int(11) NOT NULL,
  `crate_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_location_setting`
--

CREATE TABLE `product_location_setting` (
  `product_location_id` int(11) NOT NULL,
  `product_location` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_location_setting`
--

INSERT INTO `product_location_setting` (`product_location_id`, `product_location`) VALUES
(1, 'wholesale and regular store / account'),
(2, 'Only in regular store /account'),
(3, 'Only in  wholesale store /account');

-- --------------------------------------------------------

--
-- Table structure for table `prod_img`
--

CREATE TABLE `prod_img` (
  `id_prod_img` int(11) NOT NULL,
  `img_name` varchar(45) DEFAULT NULL,
  `img_full_link` text NOT NULL,
  `image_position` int(11) NOT NULL,
  `img_token` varchar(100) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `tb_product_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promo_code`
--

CREATE TABLE `promo_code` (
  `promo_code_id` int(11) NOT NULL,
  `Promo_Name` text NOT NULL,
  `promo_description` text NOT NULL,
  `total_user_using_promo` int(11) NOT NULL,
  `remain_coupon_user` int(11) NOT NULL,
  `promo_code` varchar(45) NOT NULL,
  `total_promo` int(11) NOT NULL,
  `promo_target_user` int(11) NOT NULL,
  `pro_start` date NOT NULL,
  `pro_end` date NOT NULL,
  `promotion_create` date NOT NULL,
  `promo_statusid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promo_spesific_user`
--

CREATE TABLE `promo_spesific_user` (
  `promo_spesific_id` int(11) NOT NULL,
  `promo_email` varchar(200) NOT NULL,
  `promo_code_tb_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `promo_status`
--

CREATE TABLE `promo_status` (
  `promo_status_id` int(11) NOT NULL,
  `promo_status_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_status`
--

INSERT INTO `promo_status` (`promo_status_id`, `promo_status_name`) VALUES
(1, 'Active'),
(2, 'Expired'),
(3, 'unactive'),
(4, 'maximum limit');

-- --------------------------------------------------------

--
-- Table structure for table `promo_target_user`
--

CREATE TABLE `promo_target_user` (
  `promo_target_1` int(11) NOT NULL,
  `promo_target` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `promo_target_user`
--

INSERT INTO `promo_target_user` (`promo_target_1`, `promo_target`) VALUES
(1, 'all registered user'),
(2, 'all registered and not register'),
(4, 'spesific registered user');

-- --------------------------------------------------------

--
-- Table structure for table `promo_user_history`
--

CREATE TABLE `promo_user_history` (
  `promo_history_id` int(11) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `promo_id` int(11) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `using_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE `purchase_history` (
  `id_history` int(11) NOT NULL,
  `history_title` text NOT NULL,
  `history_description` text NOT NULL,
  `update_by` varchar(250) NOT NULL,
  `purchase_id` int(11) NOT NULL,
  `purchase_status` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `setting_limit_shop`
--

CREATE TABLE `setting_limit_shop` (
  `setting_limit_shop_id` int(11) NOT NULL,
  `setting_name` varchar(100) NOT NULL,
  `total_limit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_limit_shop`
--

INSERT INTO `setting_limit_shop` (`setting_limit_shop_id`, `setting_name`, `total_limit`) VALUES
(1, 'set limit customer shopping', 100);

-- --------------------------------------------------------

--
-- Table structure for table `setting_tax`
--

CREATE TABLE `setting_tax` (
  `set_store_id` int(11) NOT NULL,
  `tax` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_tax`
--

INSERT INTO `setting_tax` (`set_store_id`, `tax`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `setting_url`
--

CREATE TABLE `setting_url` (
  `url_setting_id` int(11) NOT NULL,
  `url_name` varchar(100) NOT NULL,
  `url_web` varchar(200) NOT NULL,
  `url_logo` varchar(200) NOT NULL,
  `url_img_gallery` varchar(200) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting_url`
--

INSERT INTO `setting_url` (`url_setting_id`, `url_name`, `url_web`, `url_logo`, `url_img_gallery`, `create_date`) VALUES
(1, 'image url', '', '', '', '2017-12-07 15:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_api`
--

CREATE TABLE `shipping_api` (
  `shipping_id` int(11) NOT NULL,
  `shipping_api_name` varchar(200) NOT NULL,
  `shipping_api_acc` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_api`
--

INSERT INTO `shipping_api` (`shipping_id`, `shipping_api_name`, `shipping_api_acc`, `create_date`) VALUES
(1, 'rajaongkir.com', ' 388d4887462bd2bfe03ac0a8710f678e', '2017-09-21 05:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_country`
--

CREATE TABLE `shipping_country` (
  `ship_country_id` int(11) NOT NULL,
  `ship_country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_country`
--

INSERT INTO `shipping_country` (`ship_country_id`, `ship_country`) VALUES
(1, 'Indonesia\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `store_detail`
--

CREATE TABLE `store_detail` (
  `store_detail_id` int(11) NOT NULL,
  `store_name` varchar(100) NOT NULL,
  `store_domain_name` varchar(100) NOT NULL,
  `store_logo` varchar(200) NOT NULL,
  `store_logo_full_link` text NOT NULL,
  `favicon_logo` varchar(200) NOT NULL,
  `favicon_logo_full_link` text NOT NULL,
  `light_logo` varchar(200) NOT NULL,
  `light_logo_full_link` text NOT NULL,
  `store_office_address` varchar(100) NOT NULL,
  `store_province` varchar(100) NOT NULL,
  `store_province_id` int(11) NOT NULL,
  `store_city` varchar(100) NOT NULL,
  `store_city_id` int(11) NOT NULL,
  `zipcode` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `google_map` text NOT NULL,
  `store_phone_number` varchar(100) NOT NULL,
  `store_status` int(11) NOT NULL,
  `store_email` varchar(100) NOT NULL,
  `email_receiver` text NOT NULL,
  `store_limit_purchasing_in_second` int(11) NOT NULL,
  `payment_method_transfer_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_detail`
--

INSERT INTO `store_detail` (`store_detail_id`, `store_name`, `store_domain_name`, `store_logo`, `store_logo_full_link`, `favicon_logo`, `favicon_logo_full_link`, `light_logo`, `light_logo_full_link`, `store_office_address`, `store_province`, `store_province_id`, `store_city`, `store_city_id`, `zipcode`, `country`, `google_map`, `store_phone_number`, `store_status`, `store_email`, `email_receiver`, `store_limit_purchasing_in_second`, `payment_method_transfer_status`) VALUES
(1, 'ncommerce', 'www.ncommerce.id', '1997332890_1512979344_logo.png', 'http://res.cloudinary.com/worktrees-com/image/upload/v1512979345/ncommapps_assets/ncommcust/byarraofficial.com/logo_url/1997332890_1512979344_logo.png.png', '143287709_1512980232_android-chrome-192x192.png', 'http://res.cloudinary.com/worktrees-com/image/upload/v1512980233/ncommapps_assets/ncommcust/byarraofficial.com/logo_url/143287709_1512980232_android-chrome-192x192.png.png', '1346543554_1512980254_logo-light.png', 'http://res.cloudinary.com/worktrees-com/image/upload/v1512980255/ncommapps_assets/ncommcust/byarraofficial.com/logo_url/1346543554_1512980254_logo-light.png.png', 'JL. ruko prominence', 'DKI Jakarta', 6, 'Jakarta Selatan', 153, '12310', 'id', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.8650338040106!2d106.79205881420508!3d-6.28146786323351!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f1ea9d58f411%3A0x537a47ec39f74513!2sHawkeye+Fightwear!5e0!3m2!1sen!2sid!4v1507271211442', '+62 81212-2626-44', 2, 'no-reply@ncommerce.id', 'no-reply@ncommerce.id', 172800, 0);

-- --------------------------------------------------------

--
-- Table structure for table `store_status`
--

CREATE TABLE `store_status` (
  `store_status_id` int(11) NOT NULL,
  `store_status_name` varchar(100) NOT NULL,
  `store_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `store_status`
--

INSERT INTO `store_status` (`store_status_id`, `store_status_name`, `store_description`) VALUES
(1, 'store close', 'customer cannot buy anything'),
(2, 'store open', 'customer can shopping'),
(3, 'store shut down', 'customer cannot access the website');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `sub_category` varchar(100) DEFAULT NULL,
  `sub_category_log` varchar(100) NOT NULL,
  `create_date` timestamp NULL DEFAULT NULL,
  `tb_prod_category_tb_prod_category_id` int(11) NOT NULL,
  `active_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`sub_category_id`, `sub_category`, `sub_category_log`, `create_date`, `tb_prod_category_tb_prod_category_id`, `active_status`) VALUES
(817000001, 'ready to wear', 'ready-to-wear', '2017-08-17 17:00:00', 817000001, 1),
(817000002, 'long sleeve', 'long-sleeve', '2017-08-20 17:00:00', 817000002, 1),
(1017000003, 'Handwrap', 'Handwrap', '2017-10-02 00:00:00', 817000003, 1),
(1017000004, 'Hoodie', 'Hoodie', '2017-10-02 00:00:00', 817000002, 1),
(1017000005, 'Joggers & Sweatpants', 'Joggers-Sweatpants', '2017-10-02 00:00:00', 817000002, 1),
(1017000006, 'Tops & T-Shirt', 'Tops-T-Shirt', '2017-10-02 00:00:00', 817000002, 1),
(1017000007, 'ready to wear', 'ready-to-wear', '2017-10-16 00:00:00', 817000001, 1),
(1017000008, 'Gear', 'Gear', '2017-10-19 00:00:00', 817000003, 1),
(1117000009, 'Workout Glove', 'Workout-Glove', '2017-11-29 00:00:00', 817000003, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_brand`
--

CREATE TABLE `tb_brand` (
  `tb_brand_id` int(11) NOT NULL,
  `tb_brand_name` varchar(200) NOT NULL,
  `tb_brand_name_log` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_brand`
--

INSERT INTO `tb_brand` (`tb_brand_id`, `tb_brand_name`, `tb_brand_name_log`) VALUES
(1, 'Figtergear', 'Figtergear');

-- --------------------------------------------------------

--
-- Table structure for table `tb_currency`
--

CREATE TABLE `tb_currency` (
  `ft_currencyid` int(11) NOT NULL,
  `ft_currency_symbol` varchar(5) NOT NULL,
  `ft_currency_name` text NOT NULL,
  `ft_currency_rate` int(11) NOT NULL,
  `currency_status` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_currency`
--

INSERT INTO `tb_currency` (`ft_currencyid`, `ft_currency_symbol`, `ft_currency_name`, `ft_currency_rate`, `currency_status`, `last_update`) VALUES
(2, 'USD', 'USD', 13550, 1, '2017-10-10 09:58:08'),
(6, 'RM', 'Ringgit', 3300, 1, '2017-10-10 09:59:26'),
(8, 'SGD', 'Dollar Sing', 10000, 1, '2017-09-25 15:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `prod_SKU_id` int(11) NOT NULL,
  `user_prod_sku_id` varchar(100) DEFAULT NULL,
  `p_name` varchar(100) DEFAULT NULL,
  `variant_option_name` varchar(100) DEFAULT NULL,
  `p_name_log` varchar(200) DEFAULT NULL,
  `p_main_photo` varchar(100) DEFAULT NULL,
  `p_main_full_link_photo` varchar(500) NOT NULL,
  `p_description` text,
  `p_normal_price` int(11) DEFAULT NULL,
  `p_discount_price` float DEFAULT NULL,
  `p_wholesale_price` int(11) DEFAULT NULL,
  `p_whole_sale_discount` float DEFAULT NULL,
  `p_metadata` text,
  `p_updatedate` datetime DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `tb_prod_category_tb_prod_category_id` int(11) NOT NULL,
  `tb_sub_category` int(11) DEFAULT NULL,
  `fk_prod_status` int(11) DEFAULT NULL,
  `fk_tb_brand_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_option_value`
--

CREATE TABLE `tb_product_option_value` (
  `tb_product_option_value_id` int(11) NOT NULL,
  `option_value` varchar(200) NOT NULL,
  `fk_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_order`
--

CREATE TABLE `tb_product_order` (
  `tb_product_order_id` int(11) NOT NULL,
  `o_variant_id` int(11) NOT NULL,
  `o_SKU_prod` varchar(100) NOT NULL,
  `o_SKU_per_item` varchar(200) NOT NULL,
  `o_prodname` varchar(45) NOT NULL,
  `o_prod_variant` varchar(100) NOT NULL,
  `o_prod_option_group_name` varchar(200) NOT NULL,
  `option_value_name` varchar(200) NOT NULL,
  `o_prodprice` float NOT NULL,
  `o_real_prodprice` int(11) NOT NULL,
  `o_prod_price_currency` varchar(10) NOT NULL,
  `o_pricediscount` int(11) NOT NULL,
  `o_price_method` tinyint(4) NOT NULL,
  `o_qty` int(11) NOT NULL,
  `o_total_price` float NOT NULL,
  `o_real_total_price` int(11) NOT NULL,
  `tb_purchase_purchase_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_review`
--

CREATE TABLE `tb_product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `review_body` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_prod_category`
--

CREATE TABLE `tb_prod_category` (
  `tb_prod_category_id` int(11) NOT NULL,
  `category_name` varchar(100) DEFAULT NULL,
  `category_name_log` varchar(100) NOT NULL,
  `category_status` int(4) NOT NULL,
  `category_link` text NOT NULL,
  `category_feature_status` int(11) NOT NULL,
  `bg_category` text NOT NULL,
  `bg_category_url` text NOT NULL,
  `crate_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_prod_category`
--

INSERT INTO `tb_prod_category` (`tb_prod_category_id`, `category_name`, `category_name_log`, `category_status`, `category_link`, `category_feature_status`, `bg_category`, `bg_category_url`, `crate_date`) VALUES
(817000001, 'Boxing Glove', 'Boxing-Glove', 1, 'http://hawkeyefightwear.com/product_process/get_product_category/category/Boxing-Glove/817000001', 1, '585010615_1512661686_1725_1503302555.png', 'http://res.cloudinary.com/worktrees-com/image/upload/v1512661688/ncommapps_assets/ncommcust/hawkeyefightwear.com/img_gallery/585010615_1512661686_1725_1503302555.png.png', '2017-08-18'),
(817000002, 'Apparel', 'Apparel', 1, 'http://hawkeyefightwear.com/product_process/get_product_category/category/Apparel/817000002', 1, '669712038_1512661711_1456743050_1508358762.png', 'http://res.cloudinary.com/worktrees-com/image/upload/v1512661713/ncommapps_assets/ncommcust/hawkeyefightwear.com/img_gallery/669712038_1512661711_1456743050_1508358762.png.png', '2017-08-21'),
(817000003, 'Equipment', 'Equipment', 1, 'http://hawkeyefightwear.com/product_process/get_product_category/category/Equipment/817000003', 1, '613941655_1512661726_823192824_1508358792.png', 'http://res.cloudinary.com/worktrees-com/image/upload/v1512661729/ncommapps_assets/ncommcust/hawkeyefightwear.com/img_gallery/613941655_1512661726_823192824_1508358792.png.png', '2017-08-21');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prod_status`
--

CREATE TABLE `tb_prod_status` (
  `idprod_status` int(11) NOT NULL,
  `active_product_status` tinyint(4) DEFAULT NULL,
  `active_normal_discount` tinyint(4) DEFAULT NULL,
  `active_wholesale_discount` tinyint(4) DEFAULT NULL,
  `active_featured` tinyint(4) NOT NULL,
  `mark_as_new` int(11) NOT NULL,
  `product_location` int(11) NOT NULL,
  `tb_product_product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_purchase`
--

CREATE TABLE `tb_purchase` (
  `purchase_id` int(11) NOT NULL,
  `cus_firstname` varchar(100) NOT NULL,
  `cust_lastname` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone_number` varchar(100) NOT NULL,
  `purchase_date` datetime NOT NULL,
  `payment_method` varchar(45) NOT NULL,
  `last_update_order` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `shipping_country` varchar(100) NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_address_note` text NOT NULL,
  `shipping_province` varchar(100) NOT NULL,
  `shipping_city` varchar(100) NOT NULL,
  `shipping_kecamatan` varchar(100) NOT NULL,
  `shipping_method` text NOT NULL,
  `shipping_zipcode` varchar(60) NOT NULL,
  `order_note` text NOT NULL,
  `bill_address` text NOT NULL,
  `promo_code` varchar(45) NOT NULL,
  `promo_number` varchar(250) NOT NULL,
  `promo_table_id` int(11) NOT NULL,
  `tax_price` float NOT NULL,
  `subtotal_price` int(11) NOT NULL,
  `real_subtotal` int(11) NOT NULL,
  `shipping_kurir` varchar(100) NOT NULL,
  `invoice_template` text NOT NULL,
  `shipping_service_type` varchar(100) NOT NULL,
  `shipping_estimate_date` varchar(100) NOT NULL,
  `shipping_code` varchar(45) NOT NULL,
  `shipping_price` float NOT NULL,
  `real_shipping_price` int(11) NOT NULL,
  `purchase_total_price` float NOT NULL,
  `real_purchase_total_price` int(11) NOT NULL,
  `currency` varchar(11) NOT NULL,
  `currancy_rate` int(11) NOT NULL,
  `purchase_location` varchar(100) NOT NULL,
  `customer_identity` varchar(100) NOT NULL,
  `customer_type_id` int(11) NOT NULL,
  `pricing_type` varchar(100) NOT NULL,
  `purchase_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_purchase_status`
--

CREATE TABLE `tb_purchase_status` (
  `id_status` int(11) NOT NULL,
  `status_name` varchar(100) NOT NULL,
  `status_message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_purchase_status`
--

INSERT INTO `tb_purchase_status` (`id_status`, `status_name`, `status_message`) VALUES
(1, 'New order', 'Your purchase now is in New Order'),
(2, 'process', 'Your purchase now is in process'),
(3, 'on delivery', 'Your purchase no is in delivery'),
(4, 'problem', 'Your purchase have a problem'),
(5, 'success', 'Your purchase has been successfult deliverd'),
(6, 'Cancel', 'Your purchase has been cancel'),
(7, 'confirmation payment', 'Your Purchase now is in Confirmation payment'),
(8, 'payment confirmed', 'Your payment have been confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `tb_shipping_method`
--

CREATE TABLE `tb_shipping_method` (
  `s_shipping_id` int(11) NOT NULL,
  `s_company` varchar(100) DEFAULT NULL,
  `s_logo` varchar(100) DEFAULT NULL,
  `s_packge_name` varchar(100) DEFAULT NULL,
  `s_price` int(11) DEFAULT NULL,
  `s_estimation_received` varchar(100) DEFAULT NULL,
  `create_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `u_email` varchar(100) DEFAULT NULL,
  `u_password` varchar(100) DEFAULT NULL,
  `u_birth` date DEFAULT NULL,
  `u_gender` tinyint(4) DEFAULT NULL,
  `u_firstname` varchar(45) DEFAULT NULL,
  `u_lastname` varchar(45) DEFAULT NULL,
  `u_phonenumber` varchar(100) DEFAULT NULL,
  `u_shipping_address` text NOT NULL,
  `u_shipping_address_note` text NOT NULL,
  `province_id` int(11) NOT NULL,
  `u_shipping_province` varchar(100) NOT NULL,
  `city_id` int(11) NOT NULL,
  `u_shipping_city` varchar(100) NOT NULL,
  `u_shipping_kecamatan` varchar(100) NOT NULL,
  `u_shipping_zipcode` varchar(100) NOT NULL,
  `tb_user_privillage_tb_user_privillage_id` int(11) NOT NULL,
  `user_type_user_type_id` int(11) NOT NULL,
  `tb_user_status_tb_user_status` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_privillage`
--

CREATE TABLE `tb_user_privillage` (
  `tb_user_privillage_id` int(11) NOT NULL,
  `privillage_name` varchar(100) DEFAULT NULL,
  `create_privillage_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user_privillage`
--

INSERT INTO `tb_user_privillage` (`tb_user_privillage_id`, `privillage_name`, `create_privillage_date`) VALUES
(1, 'full access', '2017-11-08 09:23:23');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_status`
--

CREATE TABLE `tb_user_status` (
  `tb_user_status` int(11) NOT NULL,
  `user_status` int(11) DEFAULT NULL,
  `status_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user_status`
--

INSERT INTO `tb_user_status` (`tb_user_status`, `user_status`, `status_name`) VALUES
(1, 1, 'active'),
(2, 2, 'Blocked');

-- --------------------------------------------------------

--
-- Table structure for table `tb_variant`
--

CREATE TABLE `tb_variant` (
  `tb_stock_id` int(11) NOT NULL,
  `tb_product_product_id` int(11) NOT NULL,
  `sku_code_per_item` varchar(100) NOT NULL,
  `size_name` varchar(100) DEFAULT NULL,
  `prod_weight` float DEFAULT NULL,
  `prod_stock` int(11) DEFAULT NULL,
  `variant_available` int(11) NOT NULL,
  `variant_active_status` int(11) NOT NULL,
  `fk_option_value` int(11) NOT NULL,
  `add_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `user_type_id` int(11) NOT NULL,
  `user_type` varchar(80) DEFAULT NULL,
  `create_type_Date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`user_type_id`, `user_type`, `create_type_Date`) VALUES
(1, 'admin', '2017-01-24 05:16:19'),
(2, 'wholesale', '2017-01-24 03:00:00'),
(3, 'regular', '2017-01-24 06:16:19');

-- --------------------------------------------------------

--
-- Table structure for table `variant_status`
--

CREATE TABLE `variant_status` (
  `variant_status_id` int(11) NOT NULL,
  `variant_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variant_status`
--

INSERT INTO `variant_status` (`variant_status_id`, `variant_name`) VALUES
(1, 'active'),
(2, 'non - active'),
(3, 'Mark Out of stock');

-- --------------------------------------------------------

--
-- Table structure for table `wholesale_registration`
--

CREATE TABLE `wholesale_registration` (
  `wholesale_id` int(11) NOT NULL,
  `type_of_join` varchar(200) NOT NULL,
  `store_name` varchar(200) NOT NULL,
  `store_address` varchar(200) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `store_email` varchar(100) NOT NULL,
  `store_website` varchar(100) NOT NULL,
  `social_media` varchar(100) NOT NULL,
  `tax_store` varchar(100) NOT NULL,
  `billing_address` varchar(100) NOT NULL,
  `store_bank` varchar(100) NOT NULL,
  `store_bank_numb` varchar(100) NOT NULL,
  `store_type` varchar(200) NOT NULL,
  `operation` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL,
  `retail_space` varchar(200) NOT NULL,
  `monthly_sales` varchar(200) NOT NULL,
  `discribe_business` text NOT NULL,
  `pic_name` varchar(100) NOT NULL,
  `pic_phone` varchar(100) NOT NULL,
  `pic_email` varchar(100) NOT NULL,
  `regis_date` datetime NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `wholesale_status` int(11) NOT NULL,
  `admin_wholesale_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wholesale_registration_status`
--

CREATE TABLE `wholesale_registration_status` (
  `id_regis` int(11) NOT NULL,
  `wholesale_regis_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wholesale_registration_status`
--

INSERT INTO `wholesale_registration_status` (`id_regis`, `wholesale_regis_status`) VALUES
(1, 'New request'),
(2, 'Follow up'),
(3, 'Negotiation'),
(4, 'Deal'),
(5, 'Cancel'),
(6, 'Problem'),
(7, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_category`
--
ALTER TABLE `activity_category`
  ADD PRIMARY KEY (`activity_categoryid`);

--
-- Indexes for table `activity_configuratioon`
--
ALTER TABLE `activity_configuratioon`
  ADD PRIMARY KEY (`activity_conf_id`);

--
-- Indexes for table `activity_history`
--
ALTER TABLE `activity_history`
  ADD PRIMARY KEY (`activity_historyid`),
  ADD KEY `activity_category` (`activity_category`);

--
-- Indexes for table `api_line`
--
ALTER TABLE `api_line`
  ADD PRIMARY KEY (`api_line_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`blog_category_id`);

--
-- Indexes for table `blog_category_details`
--
ALTER TABLE `blog_category_details`
  ADD PRIMARY KEY (`blog_category_details_id`),
  ADD KEY `fk_blog_category_details_blog_category1_idx` (`blog_category_blog_category_id`);

--
-- Indexes for table `chat_api`
--
ALTER TABLE `chat_api`
  ADD PRIMARY KEY (`chat_apiid`);

--
-- Indexes for table `contact_message`
--
ALTER TABLE `contact_message`
  ADD PRIMARY KEY (`contact_message_id`);

--
-- Indexes for table `email_api`
--
ALTER TABLE `email_api`
  ADD PRIMARY KEY (`email_api_id`);

--
-- Indexes for table `email_checkout_setting`
--
ALTER TABLE `email_checkout_setting`
  ADD PRIMARY KEY (`email_checkout_id`);

--
-- Indexes for table `email_confirmation_payment`
--
ALTER TABLE `email_confirmation_payment`
  ADD PRIMARY KEY (`email_confirmation_id`);

--
-- Indexes for table `email_contact`
--
ALTER TABLE `email_contact`
  ADD PRIMARY KEY (`email_contact_id`);

--
-- Indexes for table `email_forgot_password`
--
ALTER TABLE `email_forgot_password`
  ADD PRIMARY KEY (`email_forgot_password`);

--
-- Indexes for table `email_registration_user`
--
ALTER TABLE `email_registration_user`
  ADD PRIMARY KEY (`id_email`);

--
-- Indexes for table `email_shipping_code`
--
ALTER TABLE `email_shipping_code`
  ADD PRIMARY KEY (`email_shop_code_id`);

--
-- Indexes for table `feature_slider`
--
ALTER TABLE `feature_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `feature_subscribe_user`
--
ALTER TABLE `feature_subscribe_user`
  ADD PRIMARY KEY (`id_subsciber`);

--
-- Indexes for table `google_analitics_script`
--
ALTER TABLE `google_analitics_script`
  ADD PRIMARY KEY (`analitics_id`);

--
-- Indexes for table `layer2_result_question`
--
ALTER TABLE `layer2_result_question`
  ADD PRIMARY KEY (`id_layer2_question`),
  ADD KEY `layer1_question_result` (`layer1_question_result`);

--
-- Indexes for table `midtrans_api`
--
ALTER TABLE `midtrans_api`
  ADD PRIMARY KEY (`id_midtrans`);

--
-- Indexes for table `pages_about`
--
ALTER TABLE `pages_about`
  ADD PRIMARY KEY (`pages_about_id`);

--
-- Indexes for table `pages_general`
--
ALTER TABLE `pages_general`
  ADD PRIMARY KEY (`pages_id`);

--
-- Indexes for table `payment_confirmation`
--
ALTER TABLE `payment_confirmation`
  ADD PRIMARY KEY (`payment_confirmation_id`);

--
-- Indexes for table `payment_method_transfer`
--
ALTER TABLE `payment_method_transfer`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `product_location_setting`
--
ALTER TABLE `product_location_setting`
  ADD PRIMARY KEY (`product_location_id`);

--
-- Indexes for table `prod_img`
--
ALTER TABLE `prod_img`
  ADD PRIMARY KEY (`id_prod_img`),
  ADD KEY `fk_prod_img_tb_product1_idx` (`tb_product_product_id`);

--
-- Indexes for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD PRIMARY KEY (`promo_code_id`),
  ADD KEY `fk_promo_code_promo_status1_idx` (`promo_statusid`),
  ADD KEY `fk_promo_code_promo_target_user1_idx` (`promo_target_user`);

--
-- Indexes for table `promo_spesific_user`
--
ALTER TABLE `promo_spesific_user`
  ADD PRIMARY KEY (`promo_spesific_id`),
  ADD KEY `fk_promo_spesific_user_promo_code1_idx` (`promo_code_tb_id`);

--
-- Indexes for table `promo_status`
--
ALTER TABLE `promo_status`
  ADD PRIMARY KEY (`promo_status_id`);

--
-- Indexes for table `promo_target_user`
--
ALTER TABLE `promo_target_user`
  ADD PRIMARY KEY (`promo_target_1`);

--
-- Indexes for table `promo_user_history`
--
ALTER TABLE `promo_user_history`
  ADD PRIMARY KEY (`promo_history_id`),
  ADD KEY `fk_promo_user_history_promo_code1_idx` (`promo_id`),
  ADD KEY `fk_promo_user_history_tb_purchase1_idx` (`purchase_id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `fk_purchase_history_tb_purchase1_idx` (`purchase_id`);

--
-- Indexes for table `setting_limit_shop`
--
ALTER TABLE `setting_limit_shop`
  ADD PRIMARY KEY (`setting_limit_shop_id`);

--
-- Indexes for table `setting_tax`
--
ALTER TABLE `setting_tax`
  ADD PRIMARY KEY (`set_store_id`);

--
-- Indexes for table `setting_url`
--
ALTER TABLE `setting_url`
  ADD PRIMARY KEY (`url_setting_id`);

--
-- Indexes for table `shipping_api`
--
ALTER TABLE `shipping_api`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `shipping_country`
--
ALTER TABLE `shipping_country`
  ADD PRIMARY KEY (`ship_country_id`);

--
-- Indexes for table `store_detail`
--
ALTER TABLE `store_detail`
  ADD PRIMARY KEY (`store_detail_id`);

--
-- Indexes for table `store_status`
--
ALTER TABLE `store_status`
  ADD PRIMARY KEY (`store_status_id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`),
  ADD KEY `fk_sub_category_tb_prod_category1_idx1` (`tb_prod_category_tb_prod_category_id`);

--
-- Indexes for table `tb_brand`
--
ALTER TABLE `tb_brand`
  ADD PRIMARY KEY (`tb_brand_id`);

--
-- Indexes for table `tb_currency`
--
ALTER TABLE `tb_currency`
  ADD PRIMARY KEY (`ft_currencyid`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`prod_SKU_id`),
  ADD KEY `fk_tb_product_tb_prod_category1_idx` (`tb_prod_category_tb_prod_category_id`),
  ADD KEY `fk_tb_product_tb_brand1_idx` (`fk_tb_brand_id`);

--
-- Indexes for table `tb_product_option_value`
--
ALTER TABLE `tb_product_option_value`
  ADD PRIMARY KEY (`tb_product_option_value_id`),
  ADD KEY `fk_product_id` (`fk_product_id`);

--
-- Indexes for table `tb_product_order`
--
ALTER TABLE `tb_product_order`
  ADD PRIMARY KEY (`tb_product_order_id`),
  ADD KEY `fk_tb_product_order_tb_purchase1_idx` (`tb_purchase_purchase_id`),
  ADD KEY `tb_purchase_purchase_id` (`tb_purchase_purchase_id`);

--
-- Indexes for table `tb_product_review`
--
ALTER TABLE `tb_product_review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tb_product_review_tb_user1_idx` (`user_id`),
  ADD KEY `fk_tb_product_review_tb_product1_idx` (`product_id`);

--
-- Indexes for table `tb_prod_category`
--
ALTER TABLE `tb_prod_category`
  ADD PRIMARY KEY (`tb_prod_category_id`);

--
-- Indexes for table `tb_prod_status`
--
ALTER TABLE `tb_prod_status`
  ADD PRIMARY KEY (`idprod_status`),
  ADD KEY `idprod_status` (`idprod_status`),
  ADD KEY `fk_tb_prod_status_tb_product1_idx` (`tb_product_product_id`),
  ADD KEY `fk_tb_prod_status_product_location_setting1_idx` (`product_location`);

--
-- Indexes for table `tb_purchase`
--
ALTER TABLE `tb_purchase`
  ADD PRIMARY KEY (`purchase_id`),
  ADD KEY `fk_tb_purchase_tb_purchase_status1_idx` (`purchase_status`);

--
-- Indexes for table `tb_purchase_status`
--
ALTER TABLE `tb_purchase_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tb_shipping_method`
--
ALTER TABLE `tb_shipping_method`
  ADD PRIMARY KEY (`s_shipping_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_tb_user_tb_user_privillage1_idx` (`tb_user_privillage_tb_user_privillage_id`),
  ADD KEY `fk_tb_user_user_type1_idx` (`user_type_user_type_id`),
  ADD KEY `fk_tb_user_tb_user_status1_idx` (`tb_user_status_tb_user_status`);

--
-- Indexes for table `tb_user_privillage`
--
ALTER TABLE `tb_user_privillage`
  ADD PRIMARY KEY (`tb_user_privillage_id`);

--
-- Indexes for table `tb_user_status`
--
ALTER TABLE `tb_user_status`
  ADD PRIMARY KEY (`tb_user_status`);

--
-- Indexes for table `tb_variant`
--
ALTER TABLE `tb_variant`
  ADD PRIMARY KEY (`tb_stock_id`),
  ADD KEY `fk_tb_variant_tb_product_option_value1_idx` (`fk_option_value`),
  ADD KEY `fk_tb_variant_variant_status1_idx` (`variant_active_status`),
  ADD KEY `fk_tb_variant_tb_product1_idx` (`tb_product_product_id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`user_type_id`);

--
-- Indexes for table `variant_status`
--
ALTER TABLE `variant_status`
  ADD PRIMARY KEY (`variant_status_id`);

--
-- Indexes for table `wholesale_registration`
--
ALTER TABLE `wholesale_registration`
  ADD PRIMARY KEY (`wholesale_id`),
  ADD KEY `fk_wholesale_registration_wholesale_registration_status1_idx` (`wholesale_status`);

--
-- Indexes for table `wholesale_registration_status`
--
ALTER TABLE `wholesale_registration_status`
  ADD PRIMARY KEY (`id_regis`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_category`
--
ALTER TABLE `activity_category`
  MODIFY `activity_categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `activity_configuratioon`
--
ALTER TABLE `activity_configuratioon`
  MODIFY `activity_conf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `activity_history`
--
ALTER TABLE `activity_history`
  MODIFY `activity_historyid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `api_line`
--
ALTER TABLE `api_line`
  MODIFY `api_line_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `blog_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `blog_category_details`
--
ALTER TABLE `blog_category_details`
  MODIFY `blog_category_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `chat_api`
--
ALTER TABLE `chat_api`
  MODIFY `chat_apiid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contact_message`
--
ALTER TABLE `contact_message`
  MODIFY `contact_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `email_api`
--
ALTER TABLE `email_api`
  MODIFY `email_api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_checkout_setting`
--
ALTER TABLE `email_checkout_setting`
  MODIFY `email_checkout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_confirmation_payment`
--
ALTER TABLE `email_confirmation_payment`
  MODIFY `email_confirmation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_contact`
--
ALTER TABLE `email_contact`
  MODIFY `email_contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_forgot_password`
--
ALTER TABLE `email_forgot_password`
  MODIFY `email_forgot_password` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_registration_user`
--
ALTER TABLE `email_registration_user`
  MODIFY `id_email` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `email_shipping_code`
--
ALTER TABLE `email_shipping_code`
  MODIFY `email_shop_code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `feature_slider`
--
ALTER TABLE `feature_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `feature_subscribe_user`
--
ALTER TABLE `feature_subscribe_user`
  MODIFY `id_subsciber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `google_analitics_script`
--
ALTER TABLE `google_analitics_script`
  MODIFY `analitics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `layer2_result_question`
--
ALTER TABLE `layer2_result_question`
  MODIFY `id_layer2_question` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `midtrans_api`
--
ALTER TABLE `midtrans_api`
  MODIFY `id_midtrans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pages_about`
--
ALTER TABLE `pages_about`
  MODIFY `pages_about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pages_general`
--
ALTER TABLE `pages_general`
  MODIFY `pages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `payment_confirmation`
--
ALTER TABLE `payment_confirmation`
  MODIFY `payment_confirmation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `payment_method_transfer`
--
ALTER TABLE `payment_method_transfer`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product_location_setting`
--
ALTER TABLE `product_location_setting`
  MODIFY `product_location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `prod_img`
--
ALTER TABLE `prod_img`
  MODIFY `id_prod_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1217000200;
--
-- AUTO_INCREMENT for table `promo_code`
--
ALTER TABLE `promo_code`
  MODIFY `promo_code_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `promo_spesific_user`
--
ALTER TABLE `promo_spesific_user`
  MODIFY `promo_spesific_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `promo_status`
--
ALTER TABLE `promo_status`
  MODIFY `promo_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `promo_target_user`
--
ALTER TABLE `promo_target_user`
  MODIFY `promo_target_1` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `promo_user_history`
--
ALTER TABLE `promo_user_history`
  MODIFY `promo_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;
--
-- AUTO_INCREMENT for table `setting_limit_shop`
--
ALTER TABLE `setting_limit_shop`
  MODIFY `setting_limit_shop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting_tax`
--
ALTER TABLE `setting_tax`
  MODIFY `set_store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `setting_url`
--
ALTER TABLE `setting_url`
  MODIFY `url_setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shipping_api`
--
ALTER TABLE `shipping_api`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shipping_country`
--
ALTER TABLE `shipping_country`
  MODIFY `ship_country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `store_detail`
--
ALTER TABLE `store_detail`
  MODIFY `store_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `store_status`
--
ALTER TABLE `store_status`
  MODIFY `store_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `sub_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1217000005;
--
-- AUTO_INCREMENT for table `tb_brand`
--
ALTER TABLE `tb_brand`
  MODIFY `tb_brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_currency`
--
ALTER TABLE `tb_currency`
  MODIFY `ft_currencyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `prod_SKU_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117000046;
--
-- AUTO_INCREMENT for table `tb_product_option_value`
--
ALTER TABLE `tb_product_option_value`
  MODIFY `tb_product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `tb_product_order`
--
ALTER TABLE `tb_product_order`
  MODIFY `tb_product_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;
--
-- AUTO_INCREMENT for table `tb_product_review`
--
ALTER TABLE `tb_product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_prod_category`
--
ALTER TABLE `tb_prod_category`
  MODIFY `tb_prod_category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117000020;
--
-- AUTO_INCREMENT for table `tb_prod_status`
--
ALTER TABLE `tb_prod_status`
  MODIFY `idprod_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117000045;
--
-- AUTO_INCREMENT for table `tb_purchase`
--
ALTER TABLE `tb_purchase`
  MODIFY `purchase_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1117000290;
--
-- AUTO_INCREMENT for table `tb_purchase_status`
--
ALTER TABLE `tb_purchase_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_shipping_method`
--
ALTER TABLE `tb_shipping_method`
  MODIFY `s_shipping_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120044;
--
-- AUTO_INCREMENT for table `tb_user_privillage`
--
ALTER TABLE `tb_user_privillage`
  MODIFY `tb_user_privillage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_user_status`
--
ALTER TABLE `tb_user_status`
  MODIFY `tb_user_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_variant`
--
ALTER TABLE `tb_variant`
  MODIFY `tb_stock_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1217000028;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `user_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `variant_status`
--
ALTER TABLE `variant_status`
  MODIFY `variant_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wholesale_registration`
--
ALTER TABLE `wholesale_registration`
  MODIFY `wholesale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `wholesale_registration_status`
--
ALTER TABLE `wholesale_registration_status`
  MODIFY `id_regis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_history`
--
ALTER TABLE `activity_history`
  ADD CONSTRAINT `activity_history_ibfk_1` FOREIGN KEY (`activity_category`) REFERENCES `activity_category` (`activity_categoryid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `blog_category_details`
--
ALTER TABLE `blog_category_details`
  ADD CONSTRAINT `fk_blog_category_details_blog_category1` FOREIGN KEY (`blog_category_blog_category_id`) REFERENCES `blog_category` (`blog_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prod_img`
--
ALTER TABLE `prod_img`
  ADD CONSTRAINT `fk_prod_img_tb_product1` FOREIGN KEY (`tb_product_product_id`) REFERENCES `tb_product` (`prod_SKU_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promo_code`
--
ALTER TABLE `promo_code`
  ADD CONSTRAINT `fk_promo_code_promo_status1` FOREIGN KEY (`promo_statusid`) REFERENCES `promo_status` (`promo_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_promo_code_promo_target_user1` FOREIGN KEY (`promo_target_user`) REFERENCES `promo_target_user` (`promo_target_1`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `promo_spesific_user`
--
ALTER TABLE `promo_spesific_user`
  ADD CONSTRAINT `fk_promo_spesific_user_promo_code1` FOREIGN KEY (`promo_code_tb_id`) REFERENCES `promo_code` (`promo_code_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `promo_user_history`
--
ALTER TABLE `promo_user_history`
  ADD CONSTRAINT `fk_promo_user_history_promo_code1` FOREIGN KEY (`promo_id`) REFERENCES `promo_code` (`promo_code_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD CONSTRAINT `fk_purchase_history_tb_purchase1` FOREIGN KEY (`purchase_id`) REFERENCES `tb_purchase` (`purchase_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD CONSTRAINT `fk_sub_category_tb_prod_category1` FOREIGN KEY (`tb_prod_category_tb_prod_category_id`) REFERENCES `tb_prod_category` (`tb_prod_category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD CONSTRAINT `fk_tb_product_tb_prod_category1` FOREIGN KEY (`tb_prod_category_tb_prod_category_id`) REFERENCES `tb_prod_category` (`tb_prod_category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tb_product_ibfk_1` FOREIGN KEY (`fk_tb_brand_id`) REFERENCES `tb_brand` (`tb_brand_id`);

--
-- Constraints for table `tb_product_option_value`
--
ALTER TABLE `tb_product_option_value`
  ADD CONSTRAINT `fk_tb_product_option_value_tb_product1` FOREIGN KEY (`fk_product_id`) REFERENCES `tb_product` (`prod_SKU_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_product_order`
--
ALTER TABLE `tb_product_order`
  ADD CONSTRAINT `tb_product_order_ibfk_1` FOREIGN KEY (`tb_purchase_purchase_id`) REFERENCES `tb_purchase` (`purchase_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_product_review`
--
ALTER TABLE `tb_product_review`
  ADD CONSTRAINT `fk_tb_product_review_tb_product1` FOREIGN KEY (`product_id`) REFERENCES `tb_product` (`prod_SKU_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tb_product_review_tb_user1` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_prod_status`
--
ALTER TABLE `tb_prod_status`
  ADD CONSTRAINT `fk_tb_prod_status_product_location_setting1` FOREIGN KEY (`product_location`) REFERENCES `product_location_setting` (`product_location_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tb_prod_status_tb_product1` FOREIGN KEY (`tb_product_product_id`) REFERENCES `tb_product` (`prod_SKU_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_purchase`
--
ALTER TABLE `tb_purchase`
  ADD CONSTRAINT `fk_tb_purchase_tb_purchase_status1` FOREIGN KEY (`purchase_status`) REFERENCES `tb_purchase_status` (`id_status`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `fk_tb_user_tb_user_privillage1` FOREIGN KEY (`tb_user_privillage_tb_user_privillage_id`) REFERENCES `tb_user_privillage` (`tb_user_privillage_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tb_user_tb_user_status1` FOREIGN KEY (`tb_user_status_tb_user_status`) REFERENCES `tb_user_status` (`tb_user_status`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tb_user_user_type1` FOREIGN KEY (`user_type_user_type_id`) REFERENCES `user_type` (`user_type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tb_variant`
--
ALTER TABLE `tb_variant`
  ADD CONSTRAINT `fk_tb_variant_tb_product1` FOREIGN KEY (`tb_product_product_id`) REFERENCES `tb_product` (`prod_SKU_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tb_variant_tb_product_option_value1` FOREIGN KEY (`fk_option_value`) REFERENCES `tb_product_option_value` (`tb_product_option_value_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tb_variant_variant_status1` FOREIGN KEY (`variant_active_status`) REFERENCES `variant_status` (`variant_status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `wholesale_registration`
--
ALTER TABLE `wholesale_registration`
  ADD CONSTRAINT `fk_wholesale_registration_wholesale_registration_status1` FOREIGN KEY (`wholesale_status`) REFERENCES `wholesale_registration_status` (`id_regis`) ON DELETE NO ACTION ON UPDATE NO ACTION;

*/