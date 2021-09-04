import Todo from './src/models/todo'
import './src/tags/todo-item'
import './src/tags/todo-nav'

tag app
	todos = [new Todo title: "Buy milk"]
	value = ''

	get completed
		todos.filter do(todo) todo.completed

	get pending
		todos.filter do(todo) not todo.completed

	css d:flex ai:center jc:center fld:column h:100% bgc:cooler1 ff:sans
		.container d:flex fld:column ai:stretch jc:center g:4
		input
			ta:center fs:1.4em rd:1em bd:0 py:10px bgc:cooler2
			shadow:inset 2px 2px 4px cooler3 c:cooler6

	def save
		todos.push(new Todo title: value)
		value = ''

	<self>
		<todo-nav>
		<form.container @submit.prevent=save>
			<input
				type='text' @submit=save
				placeholder="What do you want to remember?"
				bind=value
			>

			<div route="/$">
				for todo in todos
					<todo-item todo=todo>

			<div route="/completed$">
				for todo in completed
					<todo-item todo=todo>

			<div route="/pending$">
				for todo in pending
					<todo-item todo=todo>

			<footer>
				completed.length
				<span> " out of "
				todos.length

imba.mount <app>
