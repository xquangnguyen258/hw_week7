module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    gravatar_url = "http://sirelwm.com/wp-content/uploads/2015/02/yahoo-messenger-icon-512x512.png"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end