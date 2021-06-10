<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Employees</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <style>
        .image-preview{
            width: 50px;
            min-height: 25px;
            margin-top: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-weight: bold;
            color: #cccccc;
        }
        .image-preview__image{
            display: none;
            width: 100%;
        }
    </style>
   <style>
    .error {
        color: red;
        background-color: #acf;
    }
    .content {
        padding: 50px 25px;
    }
    </style>
</head>
<body>
    <div class="content  bg-light">
        <div class="animated fadeIn">
            <?php 
            //activate mesg
            if($this->session->tempdata("activated"))
                {
                    echo "<div class='alert alert-success'>". $this->session->tempdata("activated")."</div>";
                }
            if($this->session->tempdata("alreadyactivate"))
                {
                    echo "<div class='alert alert-success'>". $this->session->tempdata("alreadyactivate")."</div>";
                }
            //in_activate msg
            if($this->session->tempdata("in_activated"))
                {
                    echo "<div class='alert alert-success'>". $this->session->tempdata("in_activated")."</div>";
                }
            if($this->session->tempdata("alreadyinactivate"))
                {
                    echo "<div class='alert alert-success'>". $this->session->tempdata("alreadyinactivate")."</div>";
                }
            if($this->session->tempdata("deleted"))
                {
                    echo "<div class='alert alert-success'>". $this->session->tempdata("deleted")."</div>";
                }
            if($this->session->tempdata("failed"))
                {
                    echo "<div class='alert alert-danger'>". $this->session->tempdata("failed")."</div>";
                }
            if($this->session->tempdata("updated"))
                {
                    echo "<div class='alert alert-success'>". $this->session->tempdata("updated")."</div>";
                }
            ?>
            <h4  class="mb-4 ml-3">Manage  Employees:</h4>  
            <div class="row">         
                <div class="col-sm-6 text-right">   
                    <div class="input-group  rounded col-lg-12 mb-3">
                    <?php echo form_open(base_url('employees/manage')); ?>
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="search_text" id="search_text" class="form-control" value="<?php echo set_value("search_text") ?>" placeholder="Search by name..." aria-label="Search" aria-describedby="search-addon" /> 
                            </td>
                            <td>
                                <button type="submit" class="btn btn-primary ml-2">Search</button>
                            </td>
                            <?php echo form_close(); ?>
                            <td>
                                <a href="<?php echo current_url(); ?>" type="button"     class="btn btn-danger ml-2">Refresh</a>
                            </td>
                        </tr>
                    </table> 
                    </div>    
                </div>
                <div class="col-sm-6 text-right " >   
                    <?php echo form_open(base_url('employees/bulk'));?>
                    <a href="<?php echo base_url('employees/addEmployee');?>" class="btn btn-info">Add Employees</a>
                    <button  type="submit" name="active_all" id="active_data" class="btn btn-success " value="Active-All">Active</button>
                    <button  type="submit" name="in_active_all" id="in_active_data" class="btn btn-secondary" value="In-Active-All">In-Active</button>
                    <button  type="submit" name="delete_all" id="delete_data" class="btn btn-danger " value="Delete-All">Delete</button>
                </div>   
            </div>  
            <div class="row">
                <div class="col-12 ">
                    <div class="card">    
                        <div class="card-body card-block">
                            <div class="row" id="result">
                                <?php if(count((is_countable($data)?$data:[]))){ ?>
                                <table class="table table-striped">
                                    <thead>
                                        <tr  style="font-size: 15px; padding:200px !important;">
                                            <td><input type="checkbox"  id="checkall"/> </td>
                                            <th scope="col">S.No</th>
                                            <th scope="col">Name</th>
                                            <th scope="col">DOB</th>
                                            <th scope="col">Email</th>
                                            <th scope="col">Skills</th>
                                            <th scope="col">Mobile</th>
                                            <th scope="col">Gender</th>
                                            <th scope="col">Address</th>
                                            <th scope="col">Image</th>
                                            <th scope="col">Join Date</th>
                                            <th scope="col">Status</th>
                                            <th scope="col" >Action</th>                                                   
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php
                                        $i=1;
                                        foreach($data as $row)
                                        {
                                    ?>
                                    <tr  style="font-size: 20px; padding:120px !important;">
                                        <td><input type="checkbox" name="ids[]" class="CheckBoxClass" value="<?php echo $row->emp_id;?>"/> </td>
                                        <td><?php echo $i;?></td>
                                        <td><?php echo ucfirst($row->name);?></td>    
                                        <td><?php echo $row->dob;?></td>
                                        <td><?php echo $row->email;?></td>
                                        <td><?php echo $row->skills;?></td>
                                        <td><?php echo $row->mobile;?></td>
                                        <td> 
                                        <?php 
                                            if($row->gender==1)
                                            echo "<span>Male</span>";
                                            else
                                            echo "<span>Female</span>";	
                                        ?>
                                        </td>
                                        <td><?php echo $row->address;?></td>
                                        <td><img width="50px" height="50px" class="img-circle" src="<?php echo base_url(). $row->image;?>"></td>
                                        <td> <?php echo date("d-m-Y", strtotime($row->date_of_join));?></td> 
                                        <td> 
                                        <?php 
                                            if($row->status==1)
                                            echo "<span style='color:green;'>Active</span>";
                                            else
                                            echo "<span style='color:red;'>In-Active</span>";	
                                        ?>
                                        </td>
                                        <td> <a href="<?php echo base_url('employees/edit/'.$row->emp_id); ?>"> <button type="button" class="btn btn-primary">Edit</button>  </a> </td> 
                                    </tr>
                                    <?php 
                                        $i++;
                                        }
                                    ?>
                                    </tbody>
                                </table>  
                                <?php echo $this->pagination->create_links(); ?>
                                <!-- {!! $materials->links() !!} -->
                                </form> 
                                <?php } else{ echo '<p class="color-red text-center m-auto"> No Records found!</p>';}?>
                            </div> <!-- end row--> 
                        </div> <!-- end card-body-->
                    </div> <!-- end cord-->
                </div> <!-- end col-->
            </div><!-- end row-->     
        </div> <!-- container -->
    </div> <!-- content -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	$("#checkall").click(function(){
        if(this.checked){
            $('.CheckBoxClass').each(function(){
                $(".CheckBoxClass").prop('checked', true);
            })
        }else{
            $('.CheckBoxClass').each(function(){
                $(".CheckBoxClass").prop('checked', false);
            })
        }
    });
    var allids=[];
    $("input:checkbox[name=ids]:checked").each(function(){
        allids.push($(this).val());
        alert(allids);
    });
});
</script>
<script>
    $("#delete_data").click(function(){
    if ($('input:checkbox').filter(':checked').length < 1){
        alert("Please Check at least one Check Box");
    return false;
    }
    });
$(document).ready(function(){
	$('#delete_data').click(function(){
		if ($('input:checkbox').filter(':checked').length >0){
			if(confirm("Are you Sure  Want to Delete it?"))
				{
					return true;
				}
			else
				{
					return false;
				}
		}
	});
});
</script>
<script>
    $("#active_data").click(function(){
    if ($('input:checkbox').filter(':checked').length < 1){
        alert("Please Check at least one Check Box");
    return false;
    }
    });
$(document).ready(function(){
	$('#active_data').click(function(){
		if ($('input:checkbox').filter(':checked').length >0){
			if(confirm("Are you Sure  Want to Active it?"))
			{
				return true;
			}
			else
			{
				return false;
			}
		}
	});
});
</script>
<script>
$("#in_active_data").click(function(){
    if ($('input:checkbox').filter(':checked').length < 1){
        alert("Please Check at least one Check Box");
		return false;
		}
});
$(document).ready(function(){
	$('#in_active_data').click(function(){
		if ($('input:checkbox').filter(':checked').length >0){
			if(confirm("Are you Sure  Want to In-Active  it?"))
			{
			return true;
			}
			else
			{
			return false;
			}
		}
	});
});
</script>

		
