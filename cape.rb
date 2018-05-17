class Cape
  attr_reader :real_name, :cape_name
  attr_accessor :power
  def initialize(real_name, cape_name)
    @cape_name = cape_name
    @real_name = real_name
  end


end
