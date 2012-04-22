require 'stringio'

require_relative './spec_helper'

describe Generator do
  before do
    @data = [
      {"title"=>"Rich Hickey", "abstract"=>"Rich Hickey, the author of <a href=\"http://clojure.org/\">Clojure</a> and designer of <a href=\"http://datomic.com/\">Datomic</a>", "name"=>"Rich Hickey", "bio"=>"Rich Hickey is a software developer with over 20 years of experience in various domains.", "starts_at"=>"2012-04-23T17:30:00Z", "ends_at"=>"2012-04-23T18:00:00Z", "category"=>"keynote", "room"=>"Salon HJK"},
    ]

    @generator = Generator.new(@data)
  end

  it 'writes templated Markdown for its sessions to files' do
    io = StringIO.new
    File.should_receive(:open).with('Rich-Hickey-Keynote.md', 'w').and_return(io)
    @generator.generate
    s = io.string
    s.should match(/\*\*Presenter:\*\* Rich Hickey/)
    s.should match(/> Rich Hickey is a software developer with over 20 years of experience in various domains/)
    s.should match(%r{> Rich Hickey, the author of <a href="http://clojure.org/">Clojure</a> and designer of <a href="http://datomic.com/">Datomic</a>})
  end
end
