#
#  Be sure to run `pod spec lint BeerboardBeerchip.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "BeerboardBeerchip"

  s.version      = "1.1.1"
  
s.summary      = "It Contains beerchips login view. after login you will get the cash"


  s.description  = " this framework contains beerchips login view. After login you will 		    get some cash. for every beer chip you collect, you will get cash. 
		    you can redeem that cash."

  s.homepage     = "http://vmokshagroup.com"

  s.license      = "MIT"

  s.author       = { "Srinivasulu3264" => "srinivasulu.budharapu@vmokshagroup.com" }

  s.platform     = :ios, "9.0"

  s.ios.deployment_target = "11.0"

  s.source       = { :git => "http://EXAMPLE/BeerboardBeerchip.git", :tag => "1.1.1" }


  s.source_files  = "BeerboardBeerchip", "BeerboardBeerchip/**/*.{h,m,swift}"

  s.resources = "BeerboardBeerchip/**/*.{xcassets,png,jpeg,jpg,storyboard,xib}"


#  s.resource_bundle = {
#      'BeerboardBeerchip' => 
#        'BeerboardBeerchip/**/*.{xcassets,png,jpeg,jpg,storyboard,xib}'
#    }


  s.framework  = "UIKit"

   s.requires_arc = true

  `echo "3.2" > .swift-version`


end
