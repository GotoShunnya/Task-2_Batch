class ApplicationController < ActionController::Base

  validates :title, body, presence: true

end
