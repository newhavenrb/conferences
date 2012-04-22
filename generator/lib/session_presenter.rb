require 'forwardable'
require 'ostruct'

class SessionPresenter
  extend Forwardable
  def_delegators :@session, :name

  def initialize(session)
    @session = OpenStruct.new(session)
  end

  def exclude?
    case @session.category
    when 'bohconf', 'break', 'exhibit hall', 'products'
      true
    end
  end

  def title
    [
      @session.title,
      ('keynote' == @session.category) ? ' Keynote' : '',
    ].join
  end

  def filename
    base = @session.title.empty? ? name : title

    [
      # Possible alternative: `.force_encoding('ascii').name.gsub(/[\x80-\xff]/, ''),`
      base.gsub(/[^a-z0-9@():.', ]/i, '').gsub(/\s+/, '-'),
      '.md',
    ].join
  end

  def has_bio
    unless @session.bio == @session.abstract
      content?(@session.bio)
    end
  end
  
  def bio(prefix = '> ')
    prefixed(prefix, @session.bio)
  end

  def has_abstract
    content?(@session.abstract)
  end

  def abstract(prefix = '> ')
    prefixed(prefix, @session.abstract)
  end

  private

  def content?(s)
    !!s.match(/[a-z]/i)
  end

  def prefixed(prefix, s)
    nl = "\n"

    s.
      gsub(/\r\n/, nl).
      split(nl).
      map.with_index { |l, i|
        if i.zero?
          l
        else
          l.length.zero? ? prefix.strip : "#{prefix}#{l}"
        end
      }.
      join(nl)
  end
end
