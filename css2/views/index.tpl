<html>
	<head>

		<title>Задачи на день</title>
		<link rel="stylesheet" href="static/styles.css">
		<script src="http://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src ="static/script.js"></script>
	</head>
	<body>

	<div class="gag">
			<h1>Текущие задачи</h1>
			<ul id="todo-list"></ul>

		% for task in tasks:
			%if task.is_completed:
			<li class="completed">
			  <input class='checkbox' type='checkbox' data-uid={{task.uid}} disabled ='disabled'checked = 'checked'/>
			%else:
			<li>
				<input class='checkbox' type='checkbox' data-uid={{task.uid}}>
			%end

			{{ task }}
			<a class="remove" href="/api/delete/{{task.uid}}">X</a>
			<hr/>
			</li>
		% end

	</div>
		<br/>
		<form action="/add-task" method="post">
			<input type="text" name="description"/>
			<button type="submit">+</button>
		</form>
		
	</body>
</html>