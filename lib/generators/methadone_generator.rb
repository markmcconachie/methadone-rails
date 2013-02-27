class MethadoneGenerator < ::Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)
  argument :command_name, :type => :string

  def generate_command
    template 'command', "bin/#{command_name}"
    chmod "bin/#{command_name}", 0777
  end
end
