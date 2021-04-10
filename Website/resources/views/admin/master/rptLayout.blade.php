<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>{{ config('app.name') }}</title>
	<link rel="stylesheet" href="{{asset('/admin/css/font-awesome.min.css')}}">
	<link href="{{asset('/css/bootstrap.min.css')}}" rel="stylesheet">
	<script src="{{asset('/js/jquery.min.js')}}"></script>
	<style type="text/css">
		.none {
			display: none;
		}

		.table td,
		.table th {
			padding: 3px 5px;
			font-size: 16px;
		}

		tfoot th {
			background: #95c5fb;
		}

		thead th {
			background: #95c5fb;
		}

		@media print {
			.hidden-print {
				display: none;
			}

			.invoice {
				font-size: 11px !important;
				overflow: hidden !important
			}

			.invoice footer {
				position: absolute;
				bottom: 10px;
				page-break-after: always
			}

			.invoice>div:last-child {
				page-break-before: always
			}
		}

		#invoice {
			padding: 30px;
		}

		.invoice {
			position: relative;
			background-color: #FFF;
			min-height: 680px;
			padding: 15px
		}

		.invoice header {
			padding: 10px 0;
			margin-bottom: 20px;
			border-bottom: 1px solid #3989c6
		}
	</style>
</head>

<body>
	<div id="invoice" class="container">
		<div class="toolbar hidden-print">
			<div class="text-left float-left">
				<a href="{{ url()->previous() }}" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Back</a>
			</div>
			<div class="text-right">
				<a id="printInvoice" href="Javascript:;" class="btn btn-info"><i class="fa fa-print"></i> Print</a>
			</div>
			<hr>
		</div>
		<div class="invoice overflow-auto">
			<div style="min-width: 600px">
				<header>
					<div class="row">
						<div class="col-sm-3">
							<img src="{{asset('images/logo.png')}}" data-holder-rendered="true" width="80px" />
						</div>
						<div class="col-sm-5 text-center">
							<h3 class="text-danger">{{$title}}</h3>
						</div>
						<div class="col-sm-4 text-right">
							<h2 class="name">
								<a target="_blank" href="#" style="font-family: cursive;">World University of Bangladesh</a>
							</h2>
							<address>Plot # 3/A, Road # 4, Dhanmondi, Dhaka - 1205</address>
						</div>
					</div>
				</header>
				@yield('content')
				<footer>
					@yield('footer')
				</footer>
			</div>
		</div>
	</div>
</body>
<script src="{{asset('/js/bootstrap.min.js')}}"></script>
<script>
	function sumColumn(index) {
		var total = 0;
		$("#rpt-table tbody td:nth-child(" + index + ")").each(function() {
			total += parseFloat(toEng($(this).text()), 10) || 0;
		});
		return total.toFixed(0);
	}
	$('#printInvoice').click(function() {
		Popup($('.invoice')[0].outerHTML);

		function Popup(data) {
			window.print();
			return true;
		}
	});
</script>

</html>