require 'rubygems'
require 'mustache'

require_relative './session_presenter'

class Generator
  def initialize(sessions)
    @sessions = Array(sessions)
  end

  # Write all sessions to files.
  def generate
    @sessions.each do |s|
      sp = SessionPresenter.new(s)
      write(sp.filename, sp)
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
