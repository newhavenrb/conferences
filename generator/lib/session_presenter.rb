require 'forwardable'
require 'ostruct'

class SessionPresenter
  extend Forwardable
  def_delegators :@session, :name

  def initialize(session)
    @session = OpenStruct.new(session)
  end

  def title
    [
      @session.title,
      ('keynote' == @session.category) ? ' Keynote' : '',
    ].join
  end

  def filename
    [
      title.gsub(/\s+/, '-'),
      '.md',
    ].join
  end
  
  def bio(prefix = '> ')
    prefixed(prefix, @session.bio)
  end

  def abstract(prefix = '> ')
    prefixed(prefix, @session.abstract)
  end

  private

  def prefixed(prefix, s)
    nl = "\n"

    s.
      gsub(/\r\n/, nl).
      split(nl).
      map.with_index { |l, i| i.zero? ? l : "#{prefix}#{l}" }.
      join(nl)
  end
end
