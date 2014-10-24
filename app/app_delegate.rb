# # Obj-C way
# class AppDelegate
#   attr_accessor :window
#   def application(application, didFinishLaunchingWithOptions:launchOptions)
#     vc = UIViewController.alloc.init
#     vc.view.backgroundColor = UIColor.whiteColor
#     nav = UINavigationController.alloc.initWithRootViewController vc

#     @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
#     @window.rootViewController = nav
#     @window.rootViewController.wantsFullScreenLayout = true
#     @window.makeKeyAndVisible

#     token = "4lqguut1xkmp2wmc8lo89dsqq"
#     url = "http://support.tradegecko.com/"
#     settings = SKTSettings.settingsWithAppToken token
#     settings.knowledgeBaseURL = url
#     SupportKit.initWithSettings(settings)

#     true
#   end
# end


# Rubymotion way
class AppDelegate < PM::Delegate
  def on_load(app, opts)

    # create UIViewController inside a NavController
    screen = PM::Screen.new(nav_bar: true)
    screen.view.backgroundColor = UIColor.whiteColor

    # open it, and make it window's rootViewcontroller
    open screen

    token = "4lqguut1xkmp2wmc8lo89dsqq"
    url = "http://support.tradegecko.com/"
    settings = SKTSettings.settingsWithAppToken token
    settings.knowledgeBaseURL = url
    SupportKit.initWithSettings(settings)
  end
end