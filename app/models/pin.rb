Class Pin < ActiveRecord::Base
    has_attached_file :image,
            :styles => { :medium => "x300", :thumb => "x100" },
            :storage => :s3,
            :bucket => "my-pinteresting-app",
            :s3_credentials => {:access_key_id => ENV['S3_KEY'], :secret_access_key => ENV['S3_SECRET']}
end