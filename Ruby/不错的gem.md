```
# 搜索
ElasticSearch
```

## [Devise](https://rubygems.org/gems/devise/) 

```
$ rails generate devise:install     
$ rails generate devise user    # 创建模块 user
$ rails db:migrate                   
$ rails generate devise:views   # 生成视图
```

- 添加登录拦截 (比如： 在 ArticlesController)
```
class ArticlesController < ApplicationController
  before_action :authenticate_user!, except: [ :index ] // 添加这一行，允许访问 主页
end
```
- 添加白名单
```
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :password, :password_confirmation]) // 比如，登录的白名单
  end
end
```
- 使用 name 进行登录 
```
$ rails generate migration add_name_to_users name:string
$ rails db:migrate
```
-- 添加 name 输入框
```
// views/devise/registrations/new.html
  <div class="field">
    <%= f.label :name %><br />
    <%= f.text_field :first_name, autofocus: true %>
  </div>
```

## 参考
[Devise - Adding custom fields to Devise User model and Customization 2018](https://www.bogotobogo.com/RubyOnRails/RubyOnRails_Devise_Adding_User_Field_and_Customization_Update_Saved.php)

