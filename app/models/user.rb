class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def get_last_seen
    LastSeen.get_time(id) || last_seen_at
  end

  def set_last_seen
    LastSeen.set_time(id)
  end
end
