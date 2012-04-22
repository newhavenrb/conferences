require 'forwardable'
require 'ostruct'

class SessionPresenter
  extend Forwardable
  def_delegators :@session, :name, :abstract, :bio

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
end
