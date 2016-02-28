class User < ActiveRecord::Base
  after_destroy :ensure_an_admin_remains
  has_secure_password

  ROLES = %w[user editor admin]
  before_create do
    if User.first.nil?
      self.role = 'admin'
    end
  end

  def editor? 
    self.role == 'editor' || 'admin' 
  end

  def admin? 
    self.role == 'admin' 
  end



  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end  
end
