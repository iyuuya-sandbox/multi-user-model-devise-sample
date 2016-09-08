# Deviseで複数モデルのユーザー認証をするときのサンプル

- Ruby: 2.3.1
- Rails: 5.0.0.1

## Model

名前空間があっても大丈夫か気になったので適当にEventを付けた。

- Event::User : 一般ユーザー
- Event::Admin::User : 管理ユーザー

## Routing

```ruby
  devise_for :users, class_name: "Event::User"

  namespace :admin do
    devise_for :users, class_name: "Event::Admin::User"
  end
```

## Devise (config/initializers/devise.rb)

Controller, View, SignOut時のSessionを切り分けたい

```ruby
  config.scoped_views = true
  config.sign_out_all_scopes = false
```
