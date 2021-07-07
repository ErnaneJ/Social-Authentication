class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable,
         omniauth_providers: [:google_oauth2, :github, :facebook]

  def self.from_omniauth(auth, app)
    if app == "github"
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.name = auth.info.name
        user.password = Devise.friendly_token[0,20]
        user.image = auth.extra.raw_info.avatar_url
        user.url = auth.extra.raw_info.html_url
        user.bio = auth.extra.raw_info.bio
      end
    elsif app == "facebook"   
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.name = auth.info.name
        user.password = Devise.friendly_token[0,20]
        user.image = auth.info.image
        user.url = nil
        user.bio = nil
      end
    elsif app == "google"
      where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.email = auth.info.email
        user.name = auth.info.name
        user.password = Devise.friendly_token[0,20]
        user.image = auth.info.image
        user.url = nil
        user.bio = nil
      end
    end
  end
end
