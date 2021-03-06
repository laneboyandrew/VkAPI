class VkpagesController < ApplicationController
	 def new
    # генерируем случайный state
    srand
    session[:state] ||= Digest::MD5.hexdigest(rand.to_s)
    # и URL страницы авторизации
    @vk_url = VkontakteApi.authorization_url(scope: [:friends, :groups, :offline, :notify], state: session[:state])
  end
end
