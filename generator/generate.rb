require_relative './lib/generator'

raw = File.read('data/sessions.json')
data = JSON.parse(raw)
g = Generator.new('output', data)
g.generate
