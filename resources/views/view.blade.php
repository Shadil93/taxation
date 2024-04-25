
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

        <div class="col-20">

        </div>
        <div class="col-4">
        <a href="{{route('dashboard')}}" class="btn btn-success ">back</a>
  <table class="table table-dark bg-white  table-bordered table-striped ">
                <tr>
                
                    <th>id</th>
                    <th>qty</th>
                    <th>Amount</th>
                    <th>TotalAmount</th>
                    <th>TaxPercentage</th>
                    <th>TaxAmout</th>
                    <th>NetAmount</th>
                    <th>CustomerName</th>
                    <th>invoiceDate</th>
                    <th>photo</th>
                    <th>customerEmail</th>
                    <th colspan="2">Action</th>
</tr>
@foreach($data as $datas)
                    
                    <tr>
                        <td>{{$datas->id}}</td>
                        <td>{{$datas->qty}}</td>
                        <td>{{$datas->amount}}</td>
                        <td>{{$datas->totalAmount}}</td>
                        <td>{{$datas->taxPercentage}}</td>
                        <td>{{$datas->taxAmount}}</td>
                        <td>{{$datas->netAmount}}</td>
                        <td>{{$datas->customerName}}</td>
                        <td>{{$datas->invoiceDate}}</td>
                        <td><img src="{{asset('storage/images/' .$datas->photo)}}"alt="images" width="100px" height="100px" ></td>
                        <td>{{$datas->customerEmail}}</td>
                        <td><a href="{{route('edit',$datas->id)}}" class="btn btn-success">edit</a></td>
                         <td><a href="{{route('delete',$datas->id)}}" class="btn btn-danger">delete</a></td>
                    </tr>
                    @endforeach

            </table>

        </div>
    </div>
</div>



</script>

</body>
</html>