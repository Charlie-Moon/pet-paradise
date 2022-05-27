@extends('layout.index')

@section('meta')

<meta name="_token" content="{{csrf_token()}}" />
		
@endsection

@section('styles')

<style>

	body {
		display: flex;
		flex-direction: column;
	}
	footer {
		margin-top: auto;
	}

</style>
		
@endsection

@section('title', '- Contact'  )  

@section('content')

<div class="container py-5">

	<div class="row">
		<div class="col-lg-5">
			<img src="https://images.unsplash.com/photo-1581958485706-3c6f6eb4c1bf?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1769" class="w-100 rounded-3" alt="">
		</div>
		<div class="col-lg-7">

			<h1>Contact form</h1>

			<form class="needs-validation" novalidate>

			<div class="controls py-3">

				<div class="row">
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="form-floating has-validation">
							<input id="first_name" type="text" name="first_name" class="form-control" placeholder="Please enter your firstname *" required="required" data-error="Firstname is required.">
							<label for="first_name" class="form-label">First Name *</label>
						</div>
					</div>
					<div class="col-md-4 mb-3 mb-md-0">
						<div class="form-floating">
							<input id="last_name" type="text" name="last_name" class="form-control" placeholder="Last Name" required="required" data-error="Lastname is required.">
							<label for="last_name" class="form-label">Last Name *</label>
						</div>
					</div>

					<div class="col-md-4 mb-3 mb-md-0">
						<div class="form-floating">
							<input id="email" type="email" name="email" class="form-control" placeholder="Email" required="required" data-error="Valid email is required.">
							<label for="email" class="form-label">Email *</label>
						</div>
					</div>

					<div class="col-md-12 mt-3">
						<div class="form-floating">
							<textarea id="description" name="description" class="form-control" placeholder="Message" rows="4" required="required" data-error="Please,leave us a message."></textarea>
							<label for="description" class="form-label">Message *</label>
						</div>
					</div>
					<div class="col-md-4 mt-3 d-grid">
						<input type="submit" class="btn btn-primary btn-send text-white" id="btn-submit" value="Send message">
					</div>
				</div>
			</div>
			</form>
		</div>
	</div>

</div>

<!--Alter Success message -->
<div class="toast-container position-fixed bottom-0 end-0 p-3">
  <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
    <div class="toast-header">
      <strong class="me-auto">We appreciate your submission</strong>
      <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
    </div>
    <div class="toast-body">
      Your message sent to our system. Thank You!
    </div>
  </div>
</div>

@endsection

@section('scripts')

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
	(() => {
  'use strict'

  // Fetch all the forms we want to apply custom Bootstrap validation styles to
  const forms = document.querySelectorAll('.needs-validation')

  // Loop over them and prevent submission
  Array.from(forms).forEach(form => {
    form.addEventListener('submit', event => {
			event.preventDefault();
			form.classList.add('was-validated');

			let isValidated  = form.checkValidity();
      if (!isValidated) {
        event.stopPropagation();
      }

			if(isValidated) {
				let first_name = $("input[name=first_name]").val();
				let last_name = $("input[name=last_name]").val();
				let email = $("input[name=email]").val();
				let description = $("textarea[name=description]").val();

				$.ajax({
					type:'POST',
					url:"{{ route('ajax.contact.store') }}",
					data:{
						first_name: first_name, 
						last_name: last_name, 
						email: email,
						description: description,
						},
					success:function(data){
						const toastLiveExample = document.getElementById('liveToast')
						const toast = new bootstrap.Toast(toastLiveExample)
						toast.show()
					},
				});
			}

			return true;

    }, false);
  });
})();

</script>
@endsection