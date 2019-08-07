<%-- 
    Document   : home
    Created on : Jun 7, 2019, 1:04:06 PM
    Author     : starixc
--%>

<%@page import="org.apache.tomcat.util.http.Cookies"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.Cookie"%>
<!DOCTYPE html>
<head><style id="stndz-style"></style>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Lime List Management System</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link href="assets/bootstrap/css/bootstrap-glyphicons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/bootstrap/maps/glyphicons-fontawesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/footable.bootstrap.css">
    <link rel="stylesheet" href="css/select2.min.css">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-formhelpers.min.css">
    <link rel="stylesheet" href="assets/calender/lib/jquery-ui.min.css">
    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="assets/font-awesome/css/font-awesome.min.css">
    <link href="assets/offcanvas.css" rel="stylesheet">

</head>

<body class="bg-light" onload="">
    <nav class="navbar navbar-expand-lg fixed-top navbar-dark bg-dark">
        <a class="navbar-brand mr-auto mr-lg-0" href="#">Lime List Management System</a>
        <button class="navbar-toggler p-0 border-0" type="button" data-toggle="offcanvas">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="navbar-collapse offcanvas-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Dashboard <span class="sr-only">(current)</span></a>
                </li>

                <!-- <li class="nav-item">
                     <a class="nav-link" href="#">Notifications</a>
                 </li>
                -->

            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="nav-item">
                    <a class="nav-link" href="#">Welcome :<i class="glyphicon glyphicon-user"></i>User your ID:user</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" title="Help" data-toggle="modal" href="#help">
                        <i class="glyphicon glyphicon-question-sign"></i>
                        Help
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../logout.jsp">
                        <i class="glyphicon glyphicon-lock"></i>
                        Logout
                    </a>
                </li>
            </ul>

        </div>
    </nav>

    <div class="nav-scroller bg-default box-shadow">
        <nav class="nav nav-underline">
            <a class="nav-link active" href="#">Dashboard</a>
            <a class="nav-link" href="index.jsp">Maternal/ART</a>
            <!--  <a class="nav-link" href="#">
                  Friends
                  <span class="badge badge-pill bg-light align-text-bottom">27</span>
              </a>
              <a class="nav-link" href="#">Explore</a>
              <a class="nav-link" href="#">Suggestions</a>-->

        </nav>
    </div>

    <main role="main" class="container">
        <div class="row p-3 mt-2">
            <label class="col-sm-2"></label>
            <a class='btn btn-success col-sm-3' style="text-align: center;" href='https://hsdsacluster2.fhi360.org'>Dashboards Home</a>
            <label class="col-sm-2"></label>
            <a class='btn btn-success col-sm-3' style="text-align: center;" href='aca_mca_reports.jsp'>Generate Reports</a>
            <label class="col-sm-2"></label>
        </div>

        <div class="p-3 my-3  bg-white rounded box-shadow">

            <div class="lh-100 text-center ">
                <h5 class="mb-0 text-primary lh-100 ">Lime List Management System</h5>

            </div>
        </div>
        <div class="row p-1 m-2 offset-1">

            <a href="#" id='refreshpage' class="btn btn-danger col-md-6">
                <i class="glyphicon glyphicon-refresh"></i>
                <br> Refresh
            </a>
            <a class="btn btn-danger col-md-6" title="Help" data-toggle="modal" href="#help">
                <i class="glyphicon glyphicon-question-sign"></i>
                <br> Help
            </a>  
        </div>


        <div class="my-1 mb-5 p-2 bg-white rounded box-shadow">
            <section id="tabs" class="project-tab">
                <div class="container1">
                    <div class="row">

                        <div class="col-md-12">
                            <nav>
                                <ul class="nav nav-tabs" id="nav-pills">
                                    <li class='nav-item btn btn-primary p-0  mr-1 mb-1'><a class='nav-link active' data-toggle='tab' data-target='#nav-home'>Add New</a></li>
                                    <li class='nav-item btn btn-primary p-0  mr-1 mb-1' ><a class='nav-link' data-toggle='tab' data-target='#nav-records' >Edit Record</a></li>
                                </ul>
                            </nav>


                            <div class="tab-content " id="nav-tabContent" >

                                <div class="tab-pane fade show active" id="nav-home">
                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2">Enter New Record</h6>
                                    <div class="text-muted p-3 ">
                                        <center>
                                            <div id="loading" class="alert-success"></div>
                                        </center>

                                        <form  id="form_data" autocomplete="off" validate method="POST" >
                                        <div class="row offset-0 p-1 border border-gray bg-light">
                                            <div class="col-md-6">
                                                    <div class="form-group">
                                                        
                                                        <label for="county">County</label>
                                                        <select class="form-control"  onchange="patasubcounty()" name='county' id='county'>
                                                            <option value=""> Select County</option>
                                                            <option value="1"> Nakuru</option>
                                                            <option value="2"> Laikipia</option>
                                                            <option value="3"> Narok</option>
                                                            <option value="4"> Baringo</option>
                                                            <option value="5"> Kajiado</option>
                                                            <option value="7"> Samburu</option>
                                                            <option value="8"> Turkana</option>
                                                        </select>
                                                    </div>
                                                </div> 
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="subCounty">Sub-County</label>
                                                        <select class="form-control" onchange="patafacility()"   name='subcounty' id='subcounty' >

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="healthFaciities">Health Facilities</label>
                                                        <select class="form-control"  name='facility' id='facility' >

                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="patientNumber">Patient CCC Number(MFL+XXX) </label>
                                                        <input type="text" class="form-control" id="patientNumber" name="patientNumber" placeholder=" Enter Patient Number">
                                                    </div>
                                                </div>
                                        </div>
                                                    <!--start of second row -->
                                            <div class="row offset-0 mt-2 border border-gray bg-light">

                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label for="clientName">Client Name</label>
                                                        <input type="text" class="form-control" id="clientName" name="clientNme" placeholder=" Enter Client Name">
                                                    </div>
                                                </div>
                                                <div class="col-md-2">
                                                    <div class="form-group">
                                                        <label for="Gender">Sex</label>
                                                        <select class="form-control" id="gender" name="gender">
                                                            <option value="">Select One</option>
                                                            <option value="M">Male</option>
                                                            <option value="F">Female</option>
                                                        </select>
                                                    </div>

                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group" id="dtbirth" >
                                                        <label for="dateOfBirth">Date of Birth</label>
                                                        <input type="text" class="form-control" name="dateOfBirth" id="dateOfBirth">
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row offset-0 mt-2 border border-gray bg-light">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneNumber">Phone Number</label>
                                                        <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder=" Enter Phone Number">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="physicalAdress">Physical Address</label>
                                                        <input type="text" class="form-control" id="physicalAddress" name="physicalAddress" placeholder=" Enter Physical Address">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row offset-0 mt-2 border border-gray bg-light">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="uniqueIdentifier">Unique Identifier</label>
                                                        <input type="text" class="form-control" id="uniqueIdentifier" name="uniqueIdentifier" placeholder=" Enter Unique Identifier">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="uniqueIdDuplicates">Unique ID_Duplicates</label>
                                                        <input type="text" class="form-control" id="uniqueIdDuplicates" name="uniqueIdDuplicates" placeholder=" Enter Unique ID_Duplicates">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row offset-0 mt-2 border border-gray bg-light">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="dateConfirmed">Date Confirmed Positive (yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="dateConfirmed" name="dateConfirmed">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="enrollmentDate">Enrollment Date (yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="enrollmentDate" name="enrollmentDate">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="lastVisitDate">Last Visit Date(yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="lastVisitDate" name="lastVisitDate" placeholder=" Enter Unique Identifier">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="expectedReturnDate">Expected Return Date(TCA)(yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="expectedReturnDate" name="expectedReturnDate">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row offset-0 mt-2 border border-gray bg-light">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="attemptedDate">Attempted Date (yyyy-mm-dd)</label>
                                                        <input type="text" class="form-control" id="attemptedDate" name="attemptedDate">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="attemptedBy">Who Made The Attempt</label>
                                                        <input type="text" class="form-control" id="attemptedBy" name="attemptedBy" placeholder="Name of Person Who Made the Attempt">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="phoneCall">Phone Call Status</label>
                                                        <input type="text" class="form-control" id="phoneCall" name="phoneCall" placeholder="Phone Call Outcome">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="tracingOutcome">Tracing Outcome</label>
                                                        <input type="text" class="form-control" id="tracingOutcome" name="tracingOutcome">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="notReachedStatus">Status of Not Reached</label>
                                                        <input type="text" class="form-control" id="notReachedStatus" name="notReachedStatus" placeholder="Enter Status of Not Reached">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="dateResumed">Date Resumed Treatment</label>
                                                        <input type="text" class="form-control" id="dateResumed" name="dateResumed">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="comment">Comment</label>
                                                        <input type="text" class="form-control" id="comment" name="comment">
                                                    </div>
                                                </div>
                                            </div>
                                                    <div class="row offset-0 mt-2 pt-3 border border-gray bg-light">
                                                <div class="col-md-8">
                                                    <input type="submit" class="btn btn-success btn-lg mb-2" id="save_data" name="save_data" value="Save Record"/>

                                                </div>
                                                <div class="col-md-8">
                                                    <button type="submit" id='updatebutton' style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                                        UPDATE 
                                                    </button>

                                                </div>

                                            </div>
                                        </form>
                                    </div>

                                </div>

                                <div class="tab-pane fade" id="nav-records">

                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2"> Records</h6>
                                    <div class="text-muted pl-5 pt-3 bg-light">
                                        <center>
                                            <div id="loading" class="alert-success"></div>
                                        </center>
                                        <form onsubmit="return validatedata();" action="multisave" method="post">

                                            <div class="row offset-0 p-2">

                                            </div>
                                        </form>
                                    </div>

                                </div>


                            </div>

                        </div>
                    </div>
                </div>
            </section>


        </div>


    </main>
    <footer class="text-center m-5"> &copy; AphiaPlus USAID </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="pouchdb-7.0.0.min.js"></script>
    <script src="pouchdb.find.min.js"></script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/DT-Tables/js/jquery-3.3.1.min.js" ></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="assets/bootstrap/js/bootstrap.min.js" ></script>
    <script src="js/jquery.validate.min.js"></script>
    <script src="js/select2.min.js"></script>
    <script src="js/additional/additional.js"></script>
    <script src="js/footable.js"></script>
    <script src="assets/popper.min.js"></script>
    <script src="assets/offcanvas.js"></script>
    <script src="assets/bootstrap/js/bootstrap-formhelpers.js"></script>
    <script src="assets/calender/lib/jquery-ui.min.js"></script>
    <script src="js/form_1.js"></script>
    <script src="js/app.js"></script>
    <script src="js/facility.js"></script>
    <script src="js/datepicker.js"></script>

    <%/**
         * } else { response.sendRedirect("login.jsp"); }*
         */
    %>
    <script src="js/app.js"></script>
</body>
</html>