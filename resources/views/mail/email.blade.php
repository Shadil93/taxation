
<?php 
use App\Models\Employee;
use Illuminate\Support\Facades\Auth;
    $user =Auth::user();
    $id = $user->id;
    
    $data = Employee::where('id','=',$id)->get();
    
    ?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
    
    <!-- Include any other jQuery plugins for validation -->
</head>
<body>
    <div class="container">
       
        <div class="row">
            <div class="col-4">

            </div>
            <div class="col-4">
                 @foreach($data as $datas)
            
            <div class="card" style="width: 18rem;">
           
            
  <div class="card-body">
  
    <h5 >InvoiceDate:{{$datas->invoiceDate}}</h5>
    <h5 >TaxAmount:{{$datas->taxAmount}}</h5>
    <h5 >Amount:{{$datas->amount}}</h5>
   
   
  </div>
</div>
            </div>
        </div>
        @endforeach 
            
    </div>



</body>
</html>