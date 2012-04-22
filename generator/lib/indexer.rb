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
    
    @sessions.group_by(&time).sort_by(&:first).each do |time, ss|
      puts
      puts Time.parse(time).strftime('%Y-%m-%d %H:%M')
      puts list[ss.map(&summary)]
    end
  end

  private

  def get(key)
    lambda { |s| s[key].empty? ? nil : s[key] }
  end
end
