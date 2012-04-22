require 'forwardable'
require 'ostruct'

require 'rubygems'
require 'json'

class SessionPresenter
  extend Forwardable
  def_delegators :@session, :name, :abstract, :bio

  def initialize(session)
    @session = OpenStruct.new(session)
  end

  def filename
    [
      @session.title.gsub(/\s+/, '-'),
      ('keynote' == @session.category) ? '-Keynote' : '',
      '.md',
    ].join
  end
end
