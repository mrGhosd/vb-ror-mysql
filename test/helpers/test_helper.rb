class ActiveSupport::TestCase

  def assert_presence(model, field)
    model.valid?
    asser_match /can't be blank/, model.errors[field].join,
                "Presence error for #{field} not found on #{model.class} "
  end
end