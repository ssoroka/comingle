module Mingle
  class Base < ActiveResource::Base
    cattr_reader :project, :domain
    cattr_writer :project, :domain

    def self.setup_from_config(file)
      config = YAML::load(File.read(file))
      mingle = config && config['mingle']
      if mingle
        %w(domain project user password).each{|field|
          Mingle::Base.send("#{field}=", mingle[field])
        }
        self.site = "http://#{domain}/projects/#{project}"
      end
    end

    # self.domain = 'mingle.my_domain.com'
    # self.project = 'my_project'
    # self.user = 'username'
    # self.password = 'password'
    # self.site = "http://#{domain}/projects/#{project}"
  end
end