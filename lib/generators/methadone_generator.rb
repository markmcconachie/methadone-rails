class MethadoneGenerator < ::Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :command_name, :type => :string

  def generate_command
    template 'command', "bin/#{command_name}"
    chmod "bin/#{command_name}", 0777
  end

  def generate_features
    template 'command.feature', "features/bin/#{command_name}.feature"
  end

  def generate_steps_file
    template 'command_steps.rb', "features/step_definitions/#{command_name}_command_steps.rb"
  end
end
