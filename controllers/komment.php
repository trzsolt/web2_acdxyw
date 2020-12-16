<script type="text/javascript">
	$(document).ready(function () {
		var komment = $("#komment").val();
		if(komment.length > 3) {
			$.ajax({
				url: 'index.php',
				method: 'POST',
				datatType: 'text',
				data: {
					ujKomment: 1,
					komment: komment
				}, succes: function (response) {
					console.log(response);
				}
			}
		}
		
</script>