import 'package:portfolio/globles/app_images.dart';

class AppStrings {
  AppStrings._();

  static const portfolio = 'Portfolio';
  static const flutterDeveloper = 'Flutter Developer';
  static const androidDeveloper = 'Android Developer';
  static const openSourceContributor = 'Open Source Contributor';
  static const speaker = 'Speaker';
  static const freelancer = 'Freelancer';
  static const youtuber = 'Youtuber';
  static const shabbirRajput = 'Shabbir Rajput';
  static const home = 'Home';
  static const about = 'About ';
  static const service = 'Service';
  static const me = 'Me';
  static const mobileApplicationDeveloper = 'Mobile Application Developer';
  static const welcomeToMyPortfolio = 'Welcome to my portfolio! I’m Mohammad Shabbir Rajput, a dedicated mobile developer with over 1+ years of experience in building engaging and user-friendly applications for both Android and iOS platforms. My work is driven by a passion for transforming innovative ideas into functional and seamless mobile experiences.Throughout my career, I have had the opportunity to work on a diverse range of projects, each presenting unique challenges and learning experiences. Whether it’s designing sleek user interfaces, optimizing app performance, or integrating cutting-edge technologies, I approach every project with a blend of creativity and technical expertise. \nThank you for visiting my portfolio. I invite you to explore my work and reach out if you have any questions or opportunities for collaboration. I look forward to connecting with you!.';
  static const mobileApplicationDevelopment = 'Mobile Application Development';
  static const creatingNativeAndroidAndCrossPlatformApplicationUsingFlutterEnsuringHighQualityPerformanceAndUserExperience = 'Creating native android and cross platform application using flutter. ensuring high quality performance and user experience.';
  static const webApplicationDevelopment = 'Web Application Development';
  static const buildingResponsiveAndScalableWebApplicationUsingModernFrameworkAndTechnologiesTailoredToMeetYourBusinessNeeds = 'Building responsive and scalable web application using modern framework and technologies, tailored to meet your business needs.';
  static const apiIntegration = 'Api Integration';
  static const seamlesslyIntegrationThirdPartApisToEnhanceYourApplicationFunctionalityProvidingARicherUserExperience = 'Seamlessly integration third-part Apis to enhance your application functionality, providing a richer user experience.';
  static const portfolioWeb = 'Portfolio-Web';
  static const thisPersonalPortfolioIsMadeWithFlutterThisIsOneTemplateEveryoneCanCreateInJust5Minutes = 'This personal portfolio is made with Flutter. This is one template everyone can create in just 5 minutes.';
  static const workLink1 = 'https://github.com/oyefalak';
  static const nekiyaan = 'Nekiyaan';
  static const nekiyaanIsAnIslamicAppThatHelpsPeopleIncreaseProductivityAndPerformGoodDeedsOnADailyBasis = 'Nekiyaan is an Islamic app that helps people increase productivity and perform good deeds on a daily basis.';
  static const workLink2 = 'https://github.com/oyefalak';
  static const medicare = 'Medicare';
  static const medicareIsAnOnlineDoctorAppointmentConsultationAppThatHelpsPeopleGetDoctorAdviceAnywhere = 'Medicare is an online doctor appointment/consultation app that helps people get doctor advice anywhere.';
  static const workLink3 = 'https://github.com/oyefalak';
  static const stackOverFlowLink = 'https://stackoverflow.com/users/21155166/shabbir-rajput';
  static const githubLink = 'https://github.com/oyefalak';
  static const linkedInLink = 'https://www.linkedin.com/in/shabbir-rajput-b2739b208?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app';
  static const twitterLink = 'https://x.com/oyefalakk?s=11&t=xWBrMUaYqy4f6PfNRRnD8A';
  static const instagramLink = 'https://www.instagram.com/oyefalakk?igsh=MXYxemY4anl2amxkcA%3D%3D&utm_source=qr';
  static const resumeLink = 'https://drive.google.com/file/d/1CLuBkS_CLPywrpda2-j_FEBsVD8eqTDG/view?usp=drivesdk';
  static const descHome = 'passionate mobile developer with 1+ years of experience in creating dynamic and user-friendly mobile applications. I specialize in mobile application development, bringing a comprehensive approach to mobile development. My journey in tech started with a fascination for how mobile apps can transform daily life, and I have since honed my skills to turn innovative ideas into reality.';
  static const readMore = 'Read More';
  static const helloItsMe = 'Hello, it\'s Me';
  static const andIAmA = 'And I\'m a ';
  static const fullName = 'Full Name';
  static const emailAddress = 'Email Address';
  static const mobileNumber = 'Mobile Number';
  static const emailSubject = 'Email Subject';
  static const sendButton = 'Send Button';
  static const yourMessage = 'Your Message';
  static const contact = 'Contact ';
  static const createdWithLoveByShabbirRajputUsingFlutter = 'Created with ❤️ by Shabbir Rajput using Flutter';
  static const downloadCV = 'Download CV';
  static const menu = 'Menu';
  static const latest = 'Latest ';
  static const projects = 'Projects';
  static const my = 'My ';
  static const services = 'Services';
  static const abc = '';
}

/// [Main Dashboard]
const portfolio = AppStrings.portfolio;
final List<String> menuItems = [
  AppStrings.home,
  AppStrings.about,
  AppStrings.service,
  AppStrings.portfolio,
];

///Home Page
const String helloHome = AppStrings.helloItsMe;
const String nameHome = AppStrings.shabbirRajput;
const String iamHome = AppStrings.andIAmA;
const List<String> skillList = [
  AppStrings.flutterDeveloper,
  AppStrings.androidDeveloper,
  AppStrings.openSourceContributor,
  AppStrings.speaker,
  AppStrings.freelancer,
  AppStrings.youtuber,
];

class SocialModel {
  String imagePath;
  String link;

  SocialModel({required this.imagePath, required this.link});
}

final socialButtons = <SocialModel>[
  SocialModel(
    imagePath: AppImages.so,
    link: AppStrings.stackOverFlowLink,
  ),
  SocialModel(
    imagePath: AppImages.github,
    link: AppStrings.githubLink,
  ),
  SocialModel(
    imagePath: AppImages.linkedIn,
    link: AppStrings.linkedInLink,
  ),
  SocialModel(
    imagePath: AppImages.twitter,
    link: AppStrings.twitterLink,
  ),
  // SocialModel(imagePath: AppImages.facebook, link: ,link),
  SocialModel(
    imagePath: AppImages.insta,
    link: AppStrings.instagramLink,
  ),
];

const String resume = AppStrings.resumeLink;
const String descHome = AppStrings.descHome;

///about-us Page
const String about = AppStrings.about;
const String me = AppStrings.me;
const String skillTitle = AppStrings.mobileApplicationDeveloper;
const String descAbout = AppStrings.welcomeToMyPortfolio;

///service
class Service {
  final String title;
  final String desc;
  final String? imageUrl;

  Service({required this.title, required this.desc, this.imageUrl});
}

List<Service> serviceList = [
  Service(
    title: AppStrings.mobileApplicationDevelopment,
    desc: AppStrings.creatingNativeAndroidAndCrossPlatformApplicationUsingFlutterEnsuringHighQualityPerformanceAndUserExperience,
    imageUrl: AppImages.app,
  ),
  Service(
    title: AppStrings.webApplicationDevelopment,
    desc: AppStrings.buildingResponsiveAndScalableWebApplicationUsingModernFrameworkAndTechnologiesTailoredToMeetYourBusinessNeeds,
    imageUrl: AppImages.web,
  ),
  Service(
    title: AppStrings.apiIntegration,
    desc: AppStrings.seamlesslyIntegrationThirdPartApisToEnhanceYourApplicationFunctionalityProvidingARicherUserExperience,
    imageUrl: AppImages.code,
  )
];

///My Work/Portfolio
class Work {
  final String imagePath;
  final String title;
  final String desc;
  final String link;

  Work({required this.imagePath, required this.title, required this.desc, required this.link});
}

List<Work> workList = [
  Work(
    imagePath: AppImages.work,
    title: AppStrings.portfolioWeb,
    desc: AppStrings.thisPersonalPortfolioIsMadeWithFlutterThisIsOneTemplateEveryoneCanCreateInJust5Minutes,
    link: AppStrings.workLink1,
  ),
  Work(
    imagePath: AppImages.work1,
    title: AppStrings.nekiyaan,
    desc: AppStrings.nekiyaanIsAnIslamicAppThatHelpsPeopleIncreaseProductivityAndPerformGoodDeedsOnADailyBasis,
    link: AppStrings.workLink2,
  ),
  Work(
    imagePath: AppImages.work2,
    title: AppStrings.medicare,
    desc: AppStrings.medicareIsAnOnlineDoctorAppointmentConsultationAppThatHelpsPeopleGetDoctorAdviceAnywhere,
    link: AppStrings.workLink3,
  ),
];
