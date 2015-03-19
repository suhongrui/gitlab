#coding:utf-8
class Spinach::Features::AdminSettings < Spinach::FeatureSteps
  include SharedAuthentication
  include SharedPaths
  include SharedAdmin
  include Gitlab::CurrentSettings

  step '我修改设置和保存形式' do
    uncheck 'Gravatar enabled'
    fill_in 'Home page url', with: 'http://www.gituse.com/'
    click_button 'Save'
  end

  step '我应该看到应用程序的设置保存' do
    current_application_settings.gravatar_enabled.should be_false
    current_application_settings.home_page_url.should == 'http://www.gituse.com/'
    page.should have_content '应用程序设置保存成功'
  end
end
