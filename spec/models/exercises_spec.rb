require 'rails_helper'

describe Exercise do

  it { should validate_presence_of :activity }
  it { should validate_presence_of :calories }


end
