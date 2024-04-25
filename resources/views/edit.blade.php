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
    <a href="{{route('dashboard')}}" class="btn btn-success ">back</a>
        <div class="row">
            <div class="col-3">

            </div>
            <div class="col-4">
            <div class="card " style="width: 18rem;">

<div class="card-body bg-light-subtle">
            <h2 style="text-align: center;"><u>Edit</u></h2>
 <form id="invoiceForm" action="{{route('update',$data->id)}}" method="POST" enctype="multipart/form-data">
        @csrf        
    <div>
        <label for="qty">Qty:</label>
        <input type="number" id="qty" class="form-control" name="qty" value="{{$data->qty}}" required>
    </div>
    <div>
        <label for="amount">Amount:</label>
        <input type="number" id="amount" name="amount" class="form-control" value="{{$data->amount}}" required>
    </div>
    <div>
        <label for="totalAmount">Total Amount:</label>
        <input type="text" id="totalAmount" name="totalAmount" class="form-control" value="{{$data->totalAmount}}" readonly>
    </div>
    <div>
        <label for="taxPercentage">Tax Percentage:</label>
        <select id="taxPercentage" name="taxPercentage" class="form-select" value="{{$data->taxPercentage}}">
            <option value="0">0%</option>
            <option value="5">5%</option>
            <option value="12">12%</option>
            <option value="18">18%</option>
            <option value="28">28%</option>
        </select>
    </div>
    <div>
        <label for="taxAmount">Tax Amount:</label>
        <input type="text" id="taxAmount" name="taxAmount" class="form-control" value="{{$data->taxAmount}}" readonly>
    </div>
    <div>
        <label for="netAmount">Net Amount:</label>
        <input type="text" id="netAmount" name="netAmount" class="form-control" value="{{$data->netAmount}}" readonly>
    </div>
    <div>
        <label for="customerName">Customer Name:</label>
        <input type="text" id="customerName" name="customerName" pattern="[A-Za-z ]+" value="{{$data->customerName}}" class="form-control" required>
    </div>
    <div>
        <label for="invoiceDate">Invoice Date:</label>
        <input type="date" id="invoiceDate" name="invoiceDate" class="form-control"  value="{{$data->invoiceDate}}" required>
    </div>
    <div>
        <label for="fileUpload">File Upload:</label>
        <input type="file" id="fileUpload" name="photo" accept=".jpg, .png, .pdf" class="form-control" value="{{$data->photo}}"  required>
    </div>
    <div>
        <label for="customerEmail">Customer Email:</label>
        <input type="email" id="customerEmail" name="customerEmail" class="form-control" value="{{$data->customerEmail}}" required>
    </div>
    <button type="submit" value="update" class="btn btn-success">Submit</button>
</form>
</div>
</div>


        </div>
        </div>
    </div>
    <script>
    $(document).ready(function(){
        $("#qty, #amount").on("input", function(){
        var qty = parseFloat($("#qty").val());
        var amount = parseFloat($("#amount").val());
        var totalAmount = qty * amount;
        $("#totalAmount").val(totalAmount.toFixed(2));
    });
    
    // Calculate tax amount and net amount
    $("#taxPercentage").on("change", function(){
        var taxPercentage = parseFloat($(this).val());
        var totalAmount = parseFloat($("#totalAmount").val());
        var taxAmount = (totalAmount * taxPercentage) / 100;
        var netAmount = totalAmount + taxAmount;
        $("#taxAmount").val(taxAmount.toFixed(2));
        $("#netAmount").val(netAmount.toFixed(2));
    });
});
    </script>
</body>
</html>

