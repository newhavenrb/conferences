require 'fileutils'

require 'rubygems'
require 'mustache'

require_relative './session_presenter'

class Generator
  def initialize(directory, sessions)
    @directory = directory
    @sessions = Array(sessions)
  end

  # Write all sessions to files.
  def generate
    FileUtils.mkdir_p('output')

    @sessions.each do |s|
      sp = SessionPresenter.new(s)

      unless sp.exclude?
        filename = File.join(@directory, sp.filename)
        write(filename, sp)
      end
    end
  end

  private

  # Write a session to a file.
  def write(filename, session)
    # This is partially written using an `IO` because that makes testing easier (and `fakefs` isn't available to me because I'm working offline).
    io = File.open(filename, 'w')
    io.write(content(session))
    io.close
  end

  # Template the session into Markdown.
  def content(session)
    Mustache.to_html(template, session)
  end

  def template
    @template ||= File.read('Template.md.mustache')
  end
end
