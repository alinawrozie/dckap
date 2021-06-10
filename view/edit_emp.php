<!doctype html>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Employees</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
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
        padding: 50px 150px;
    }
    </style>
</head>
<body>
    <div class="content">           
        <div class="animated fadeIn">
            <div class="card">
                <div class="card-body">
                    <h3 class="card-title mb-4 d-inline-block">Edit Employee:</h3>
                    <a href="<?php echo base_url('employees/manage') ?>" class="btn btn-info float-right">Cancel</a>
                    <?php 
                    if($this->session->tempdata("success"))
                    {
                        echo "<p class='alert alert-success'>".$this->session->tempdata("success")."</p>";
                    }
                    if($this->session->tempdata("error"))
                    {
                        echo "<p class='alert alert-danger'>".$this->session->tempdata("error")."</p>";
                    }
                    ?>
                    <?php echo form_open_multipart('', 'id="employee"'); ?>
                    <div class="row">				
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="name">Name:<em style="color: red;">*</em></label>
                                <input class="form-control" type="text" id="name" value="<?php echo $data->name;?>" name="name" placeholder="Enter Name">
                                <?php echo "<span style='color: red;'". form_error("name")."</span>"; ?>
                            </div>
                            <div class="form-group">
                                <label for="email">Email:<em style="color: red;">*</em></label>
                                <input class="form-control" type="text" id="email" value="<?php echo $data->email;?>" name="email" placeholder="Enter Email">
                                <?php echo "<span style='color: red;'". form_error("email")."</span>"; ?>
                            </div>
                            <div class="form-group">
                                <label for="mobile">Mobile:<em style="color: red;">*</em></label>
                                <input class="form-control" type="text" id="mobile" value="<?php echo $data->mobile;?>" name="mobile" placeholder="Enter Mobile">
                                <?php echo "<span style='color: red;'". form_error("mobile")."</span>"; ?>
                            </div>
                            <div class="form-group">
                                <label for="address">Address:<em style="color: red;">*</em></label>
                                <input class="form-control" type="text" id="address" value="<?php echo $data->address;?>" name="address" placeholder="Enter Address">
                                <?php echo "<span style='color: red;'". form_error("address")."</span>"; ?>
                            </div>
                            <div class="form-group">
                                <label for="inpFile">Profile Image:<em style="color: red;">*</em></label>
                                <input class="form-control-file" type="file" name="inpFile" id="inpFile" class="form-control-file">
                                <?php echo "<span style='color: red;'". form_error("inpFile")."</span>"; ?>
                                <div  class="image-preview" id="imagePreview" style="width: 50%">
                                    <img src="" alt="image preview " class="image-preview__image">
                                    <span class="image-preview__default-text">  </span>
                                </div>
                            </div>
                        </div>	
                        <div class="col-sm-6">
                            <div class="form-group">
                                <label for="dob">DOB:<em style="color: red;">*</em></label>
                                <input class="form-control" type="text" id="dob" value="<?php echo $data->dob;?>" name="dob" placeholder="Date of Birth">
                                <?php echo "<span style='color: red;'". form_error("dob")."</span>"; ?>
                            </div>
                            <div class="form-group">
                                <label for="skills">Skills:<em style="color: red;">*</em></label>
                                <input class="form-control" type="text" id="skills" value="<?php echo $data->skills;?>" name="skills" placeholder="Enter Skills">
                                <?php echo "<span style='color: red;'". form_error("skills")."</span>"; ?>
                            </div>
                            <div class="form-group">
                                <label for="gender">Gender:<em style="color: red;">*</em></label>
                                <?php
                                    $select='selected';
                                    echo "<select class='browser-default custom-select form-control' id='gender' name='gender'>";
                                    if($data->gender==1)
                                    {
                                        echo "<option value='1' $select >Male</option>";
                                        echo "<option value='0' >Female</option>";
                                    }else {
                                        echo "<option value='0' $select >Female</option>";
                                        echo "<option value='1' >Male</option>";
                                        }
                                    echo "</select>";
							    ?>
                                <?php echo "<span style='color: red;'". form_error("gender")."</span>"; ?>
                            </div>
                            <div class="form-group">
                                <label for="status">Status:<em style="color: red;">*</em></label>
                                <?php
                                    $select='selected';
                                    echo "<select class='browser-default custom-select form-control' id='status' name='status'>";
                                    if($data->status==1)
                                    {
                                        echo "<option value='1' $select >Active</option>";
                                        echo "<option value='0' >In-Active</option>";
                                    }else {
                                        echo "<option value='0' $select >In-Active</option>";
                                        echo "<option value='1' >Active</option>";
                                        }
                                    echo "</select>";
                                ?>
                                <?php echo "<span style='color: red;'". form_error("status")."</span>"; ?>
                            </div>
                            <div class="m-3">
                                <img width="250px" height="250px" src="<?php echo base_url(). $data->image;?>" alt="" class="emp_image">
                                <input type="hidden" name="old_img" value="<?php echo $data->image;?>">
                            </div>
                        </div>
                        <div class="col-sm-12">
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary pl-5 pr-5" id="submit" name="submit">Update</button>
                            </div>
                        </div>
                    </div>
                    <?php echo form_close(); ?>
                </div>
            </div>	
        </div>
    </div>
    <div class="clearfix"></div>
    </div>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.11.1/jquery.validate.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        // Validation Staff
        $(function(){
            var $training = $('#employee');
            $.validator.addMethod("nospace", function(value, element){
                return value == '' || value.trim().length !=0
            },'this field should not be empty!');
            if($training.length)
            {
                $training.validate({
                    rules:{
                        name:{
                            required: true,
                            nospace: true
                        },
                        dob:{
                            required: true,
                            nospace: true
                        },
                        email:{
                            required: true,
                            nospace: true,
                            email: true
                        },
                        skills:{
                            required: true,
                            nospace: true
                        },
                        mobile:{
                            required: true
                        },
                        gender:{
                            required: true
                        },
                        address:{
                            required: true,
                            nospace: true
                        },
                        status:{
                            required: true,
                        }
                    },
                    messages:{
                        name:{
                            required: 'Name is Mandatory!'
                        },
                        dob:{
                            required: 'Date of Birth is Mandatory!'
                        },
                        email:{
                            required: 'Email is Mandatory!'
                        },
                        skills:{
                            required: 'Skills are Mandatory!'
                        },
                        mobile:{
                            required: 'Mobile Number is Mandatory!'
                        },
                        gender:{
                            required: 'Gender is Mandatory!'
                        },
                        address:{
                            required: 'Address is Mandatory!'
                        },
                        status:{
                            required: 'Status is Mandatory!'
                        }
                    }
                })
            }
        });
    </script>
    <script>
        //Date Picker
        $( function() {
            $( "#dob" ).datepicker({
                dateFormat : 'mm-dd-yy',
                changeMonth : true,
                changeYear : true,
                yearRange: '-100y:c+nn',
                maxDate: '-1d'
            });
        });
    </script>
    <script type="text/javascript">
        // Image Preview
        const inpFile=document.getElementById("inpFile");
        const previewContainer=document.getElementById("imagePreview");
        const previewImage = previewContainer.querySelector(".image-preview__image");
        const previewDefaultText=previewContainer.querySelector(".image-preview__default-text");  
        //ading event listener for the imp file to say when it gets change, wanna do something 
            inpFile.addEventListener("change", function(){
                const file=this.files[0];			
                if(file){	
                    //if file is there we can create a reader
                    const reader= new FileReader();
                    previewDefaultText.style.display= "none";
                    previewImage.style.display="block";
                    reader.addEventListener("load", function(){	
                        previewImage.setAttribute("src", this.result);
                    });
                    reader.readAsDataURL(file);
                    $(".emp_image").remove();								
                }
            });
    </script>
</body>
</html>
