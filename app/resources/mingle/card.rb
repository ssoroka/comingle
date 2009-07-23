module Mingle
  # ["name", "modified_by_user_id", "card_type_name", "project_id", "updated_at", "number", "project_card_rank", "id", "description", "version", "created_by_user_id", "created_at"]
  # http://www.studios.thoughtworks.com/mingle-agile-project-management/2.0/help/card_properties.html
  # comments seem broken for updating cards. Only works in API through transitions. sucky.
  class Card < Mingle::Base
    
    # here's some suggested methods for your own use.  Override this class in your app to extend it:
    
    # def owner=(partial_user_name)
    #   u = Mingle::User.find_by_partial_name(partial_user_name)
    #   self.cp_owner_user_id = u.id if u
    # end
    # 
    # def owner
    #   Mingle::User.find_by_id(self.cp_owner_user_id)
    # end
    # 
    # def status=(new_status)
    #   self.cp_status = new_status
    # end
    # 
    # def status
    #   cp_status
    # end
    # 
    # def reopen
    #   self.status = 'New'
    #   self.cp_milestone = 'Upcoming'
    # end
    # 
    # def completed?
    #   status == 'Completed'
    # end
    # 
    # def self.find_by_hoptoad_id(hoptoad_id)
    #   find :first, :params => {:filters => {:mql => "'Hoptoad ID'=#{hoptoad_id}"}}
    # end
    # 
    # def self.build_from_hoptoad_error(error)
    #   card = new :card_type_name => 'Bug', :cp_hoptoad_id => error.id, :cp_milestone => 'Upcoming',
    #              :name => error.error_message, :description => "Full details: #{error.view_url}"
    #   card.status = 'New'
    #   card
    # end
    
    def mingle_url
      "#{site}/cards/#{number}"
    end
  end
end
