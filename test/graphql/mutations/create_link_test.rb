require 'test_helper'

class Mutations::CreateLinkTest < ActiveSupport::TestCase

  def perform(user: nil, **args)
    Mutations::CreateLink.new(object: nil, field: nil, context: {}).resolve(args)
  end

  test 'create a new link' do 
    link = perform(
      description: "je suis une test généré",
      url: "www.test.com"
    )

    assert link.persisted?
    assert_equal link.description, "je suis une test généré"
    assert_equal link.url, "www.test.com"
    
  end 
end
