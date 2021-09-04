tag todo-nav < nav
	css
		d:flex g:1ch py:1ex
		a c:cooler6 td:none
		.active c:blue4

	<self>
		<a route-to="/$"> "All"
		<a route-to="/completed"> "Completed"
		<a route-to="/pending"> "Pending"
