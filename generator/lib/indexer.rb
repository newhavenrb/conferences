require 'time'

require 'rubygems'
require 'mustache'

require_relative './session_presenter'

# Original author: @danbernier
#
# Contributors:
#
# * @dscataglini
# * @benjaminoakes
class Indexer
  def initialize(directory, sessions)
    @directory = directory
    @sessions = Array(sessions)
  end

  # Write an index file
  def generate
    data = { session_groups: session_groups }
    s = content(data)
    puts s
  end

  private

  # Template the session into Markdown.
  def content(data)
    Mustache.to_html(template, data)
  end

  def template
    @template ||= File.read('Index.md.mustache')
  end

  def get(key)
    lambda { |s| s[key].empty? ? nil : s[key] }
  end

  # Organize sessions into groups by day, ordered by time.
  def session_groups
    # ["title", "abstract", "name", "bio", "starts_at", "ends_at", "category", "room"] 
    title = get('title')
    author = get('name')
    space = get('room')
    desc = get('abstract')
    time = get('starts_at')
    
    list = lambda { |items| items.map { |i| "* #{i}" } }
    future = lambda { |sess| time[sess] > (Time.now - (45 * 60)) }
    
    # Categories:
    # keynote standard products intro external break 'exhibit hall' bohconf
    summary = lambda { |sess|
      case sess['category']
        when 'keynote'
        ["Keynote: #{title[sess]}", space[sess]]
        when 'standard'
        [title[sess], author[sess], space[sess]]
        when 'products'
        ["Product: #{title[sess]}", author[sess], space[sess]]
        when 'intro'
        [title[sess], author[sess], space[sess]]
        when 'external'  # Ignite, KidsRuby
        [author[sess], space[sess]]
        when 'break'
        [title[sess]]
        when 'exhibit hall'
        [title[sess]]
        when 'bohconf'
        [title[sess]]
      end.compact.join(', ')
    }

    groups = Hash.new do [] end
    
    @sessions.group_by(&time).sort_by(&:first).each { |time, ss|
      ss.each { |s|
        sp = SessionPresenter.new(s)

        unless sp.exclude?
          groups[sp.start_date] += [sp]
        end
      }
    }

    groups.keys.map { |k|
      {
          start_date: k,
          sessions: groups[k],
      }
    }
  end
end
