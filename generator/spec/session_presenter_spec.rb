require_relative './spec_helper'

describe SessionPresenter do
  before do
    @data = {"title"=>"Rich Hickey", "abstract"=>"Rich Hickey, the author of <a href=\"http://clojure.org/\">Clojure</a> and designer of <a href=\"http://datomic.com/\">Datomic</a>\r\nFoo", "name"=>"Rich Hickey", "bio"=>"Rich Hickey is a software developer with over 20 years of experience in various domains.", "starts_at"=>"2012-04-23T17:30:00Z", "ends_at"=>"2012-04-23T18:00:00Z", "category"=>"keynote", "room"=>"Salon HJK"}
    @presenter = SessionPresenter.new(@data)
  end

  it 'has a name' do
    @presenter.name.should == 'Rich Hickey'
  end

  it 'has a prefixed abstract with Unix newlines' do
    @presenter.abstract.should == "Rich Hickey, the author of <a href=\"http://clojure.org/\">Clojure</a> and designer of <a href=\"http://datomic.com/\">Datomic</a>\n> Foo"
  end

  context 'with an empty abstract' do
    before do
      @data['abstract'] = '.'
      @presenter = SessionPresenter.new(@data)
    end

    it 'does not have a abstract' do
      @presenter.has_abstract.should be_false
    end
  end

  it 'has a prefixed bio' do
    @presenter.bio.should == "Rich Hickey is a software developer with over 20 years of experience in various domains."
  end

  context 'with an empty bio' do
    before do
      @data['bio'] = '.'
      @presenter = SessionPresenter.new(@data)
    end

    it 'does not have a bio' do
      @presenter.has_bio.should be_false
    end
  end

  context 'when a keynote' do
    it 'has a title ending with "Keynote"' do
      @presenter.title.should == 'Rich Hickey Keynote'
    end

    it 'has a filename including the title and "Keynote"' do
      @presenter.filename.should == 'Rich-Hickey-Keynote.md'
    end
  end

  context 'when not a keynote' do
    before do
      @data['category'] = 'standard'
      @presenter = SessionPresenter.new(@data)
    end

    it 'has a title' do
      @presenter.title.should == 'Rich Hickey'
    end

    it 'has a filename with just the title' do
      @presenter.filename.should == 'Rich-Hickey.md'
    end
  end

  context 'when a break' do
    before do
      @data['category'] = 'break'
      @presenter = SessionPresenter.new(@data)
    end

    it 'is excluded' do
      @presenter.exclude?.should be_true
    end
  end

  context 'when not a break' do
    it 'is not excluded' do
      @presenter.exclude?.should be_false
    end
  end
end
