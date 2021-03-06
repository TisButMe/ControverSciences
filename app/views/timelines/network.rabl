object false

child @nodes, root:"nodes", :object_root => false do
  node(:name) { |link| link.name }
  attributes :id
  node(:size) { |node| node.score }
  node(:group) { |node| node.score.to_i }
end

node (:nodes) {[]} if @nodes.empty?

child @links, root:"links", :object_root => false do
  node(:source) { |link| link.timeline_id }
  node(:target) { |link| link.target }
  node(:value) { |link| 1 }
end

node (:links) {[]} if @links.empty?