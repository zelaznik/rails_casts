class FormGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def create_form_file
    create_file "app/forms/#{file_name}_form.rb", <<-FILE
module #{class_name}Form
  extend  ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  def persisted?
    false
  end
end
    FILE
  end

  def create_test_file
    create_file "test/forms/#{file_name}_form_test.rb", <<-FILE
## Add your unit tests here.
    FILE
  end

end