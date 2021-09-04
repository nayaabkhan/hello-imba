import Todo from '../models/todo'

tag todo-item < label
	todo\Todo

	css d:flex g:4px cursor:pointer fl:1
		.striked td:line-through

	<self>
		<input type="checkbox" bind=todo.completed @click=(todo.toggle)>
		<div.striked=todo.completed> todo.title
