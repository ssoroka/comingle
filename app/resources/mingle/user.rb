module Mingle
  # ["name", "version_control_user_name", "admin", "light", "id", "activated", "login", "email"]
  class User < Mingle::Base
    def self.find_by_partial_name(match)
      match = /#{match}/i if match.is_a?(String)
      find(:all).map(&:user).detect{|u| u.name =~ match || u.login =~ match}
    end
    
    def self.find_by_id(id)
      find(:all).map(&:user).detect{|u| u.id.to_i == id.to_i}
    end
  end
end