require 'gruff'

class ReportsController < ApplicationController

  def burndowngraph
     g = Gruff::Line.new
     g.title = "Burndown Graph"

     g.data("Employee1", [1, 2, 3, 4, 5, 6])
     g.data("Employee2", [0, 6, 3, 8, 12, 1])

     g.labels = {0 => '2003', 2 => '2004', 3 => '2005'}

     g.write('burndownchart.png')
     send_data(g.to_blob, :type => 'image/png', :disposition => 'inline', :filename => "burndownchart.png")
  end

   def demogruff

	g = Gruff::Line.new
	g.title = "My Graph"

	g.data("Apples", [1, 2, 3, 4, 4, 3])
	g.data("Oranges", [4, 8, 7, 9, 8, 9])
	g.data("Watermelon", [2, 3, 1, 5, 6, 8])
	g.data("Peaches", [9, 9, 10, 8, 7, 9])

	g.labels = {0 => '2003', 2 => '2004', 4 => '2005'}

	filename = 'my_fruity_graph.png'

	# this writes the file to the hard drive for caching
	# and then writes it to the screen.
	#

	g.write(filename)
	send_file( filename, :type => 'image/png', :disposition => 'inline')
   end

end
