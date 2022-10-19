require 'diffy'
require_relative 'constants'

s1 = <<-YAML
globals:
  connection_type: xml
  actor_id: 11
  transform_srid: 900913
YAML

s2 = <<-YAML
globals:
  connection_type: xml
  actor_id: 13
  transform_srid: 900913
YAML

puts Diffy::Diff.new(s1, s2)


File.open("index.html","w") do |line|
  css_rules = Diffy::Diff.new(s1, s2).to_s(:html_simple)
  line.puts BEGIN_HTML
  line.puts "<h1>THIS IS IT</h1>"
  line.puts generateCss(Diffy::CSS)

  puts Diffy::CSS
  line.puts Diffy::Diff.new(s1, s2).to_s(:html_simple)
  line.puts END_HTML
end

