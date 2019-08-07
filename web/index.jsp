<%-- 
    Document   : index
    Created on : Aug 2, 2019, 6:24:06 PM
    Author     : starixc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
<div class="tab-pane fade show active  border border-gray" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2">Enter New Record</h6>
                                    <div class="text-dark ">
                                        <center>
                                            <div id="loading" class="alert-success"></div>
                                        </center>

                                        <form  id="form_data" autocomplete="off" validate method="POST" >
                                            <div class="row bg-light border border-gray">
                                                <input type="hidden"  name ="id" id="id" value="<%="2"%>" />
                                                <input type="hidden"  name ="rowid" id="rowid"  />
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
                                            <div class="row p-1 mt-2 border border-gray">

                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="clientName">Client Name</label>
                                                        <input type="text" class="form-control" id="clientName" name="clientNme" placeholder=" Enter Client Name">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label for="Gender">Sex</label>
                                                        <select class="form-control" id="gender" name="gender">
                                                            <option value="">Select One</option>
                                                            <option value="M">Male</option>
                                                            <option value="F">Female</option>
                                                        </select>
                                                    </div>

                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group" id="dtbirth" >
                                                        <label for="dateOfBirth">Date of Birth</label>
                                                        <input type="text" class="form-control" name="dateOfBirth" id="dateOfBirth">
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="row offset-0 p-2">
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label for="phoneNumber">Phone Number</label>
                                                        <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder=" Enter Phone Number">
                                                    </div>
                                                </div>
                                                <div class="col-md-5">
                                                    <div class="form-group">
                                                        <label for="physicalAdress">Physical Address</label>
                                                        <input type="text" class="form-control" id="physicalAddress" name="physicalAddress" placeholder=" Enter Physical Address">
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- <div class="row offset-0 p-2">
                                                 
                                                 <div class="col-md-5">
                                                     <div class="form-group">
                                                         <label for="serialNumber">Serial Number</label>
                                                         <input type="text" class="form-control" id="serialNumber" name="serialNumber" placeholder=" Enter Serial Number">
                                                     </div>
                                                     <div class="form-group">
                                                         <label for="dateOfRegistration">Date of Registration</label>
                                                         <input type="text" class="form-control" id="dateOfRegistration" name="dateOfRegistration" >
                                                     </div>	
                                                     <div class="form-group">
                                                         <label for="subCountyRegNo">Sub County Registration No.</label>
                                                         <input type="text" class="form-control" id="subCountyRegNo" name="subCountyRegNo">
                                                     </div>
                                                 </div>
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
                                                     <div class="form-group">
                                                         <label for="subCounty">Sub-County</label>
                                                         <select class="form-control" onchange="patafacility()"   name='subcounty' id='subcounty' >
 
                                                         </select>
                                                     </div>
                                                     <div class="form-group">
                                                         <label for="healthFaciities">Health Facilities</label>
                                                         <select class="form-control"  name='facility' id='facility' >
 
                                                         </select>
                                                     </div>
                                                 </div>
                                             </div>
                                             <div class="row p-2">
                                                 <div class="col-md-5">
 
                                                     <div class="form-group">
                                                         <label for="sex">Sex</label>
                                                         <select class="form-control" id="sex" name="sex">
                                                             <option value="">Select One</option>
                                                             <option value="M">Male</option>
                                                             <option value="F">Female</option>
                                                         </select>
                                                     </div>
                                                     <div class="form-group">
                                                         <label for="ageOnRegistration">Age on Registration</label>
                                                         <input type="number" class="form-control" id="ageOnRegistration" name="ageOnRegistration" min="1" max="100">
                                                     </div>
                                                     <div class="form-group">
                                                         <label for="xray">Xray</label>
                                                         <select class="form-control" id="xray" name="xray">
                                                             <option value="">Select One</option>
                                                             <option value="Y">Yes</option>
                                                             <option value="N">No</option>
                                                         </select>
                                                     </div>
 
                                                     <div class="form-group">
                                                         <label for="hivStatus">HIV Status</label>
                                                         <select class="form-control" id="hivStatus" name="hivStatus">
                                                             <option value="">Select One</option>
                                                             <option value="ND">ND</option>
                                                             <option value="Neg">Neg</option>
                                                             <option value="Pos">Pos</option>
                                                         </select>
                                                     </div>
                                                     <div class="form-group">
                                                         <label for="hivTestDate">HIV Test Date</label>
                                                         <input type="text" class=" form-control" name="hivTestDate" id="hivTestDate">
                                                     </div>
                                                     <div class="form-group" id="dttreatment" >
                                                         <label for="dateTreamentStarted">Date of Treatment Started</label>
                                                         <input type="text" class="form-control" name="dateTreamentStarted" id="dateTreatmentStarted">
                                                     </div>
                                                 </div>
                                                 <div class="col-md-6">
                                                     <div class="form-group">
                                                         <label for="art">ART</label>
                                                         <select class="form-control" id="art" name="art">
                                                             <option value="">Select One</option>
                                                             <option value="Y">YES</option>
                                                             <option value="N">NO</option>
                                                         </select>
                                                     </div>
                                                     <div class="form-group">
                                                         <label for="artDate">ART Date</label>
                                                         <input type="text" class=" form-control" name="artdate" id="artdate">
                                                     </div>
                                                     <div class="form-group">
                                                         <label for="sputumSmear">Sputum Smear Examination 0th Month Result</label>
                                                         <select class="form-control" id="sputumSmear" name="sputumSmear">
                                                             <option value="">Select One</option>
                                                             <option value="ND">ND</option>
                                                             <option value="Neg">Neg</option>
                                                             <option value="Pos">Pos</option>
                                                         </select>
                                                     </div>
 
                                                     <div class="form-group">
                                                         <label for="generalExpert">General Expert</label>
                                                         <select class="form-control" id="generalExpert" name="generalExpert">
                                                             <option value="">Select One</option>
                                                             <option value="MTB detected, Rifampicin resistance detected">MTB detected, Rifampicin resistance detected</option>
                                                             <option value="MTB detected, Rifampicin resistance indeterminate">MTB detected, Rifampicin resistance indeterminate</option>
                                                             <option value="MTB detected, Rifampicin resistance not detected">MTB detected, Rifampicin resistance not detected</option>
                                                             <option value="MTB not detected">MTB not detected</option>
                                                             <option value="Not Applicable">Not Applicable</option>
                                                             <option value="Not Done">Not Done</option>
                                                         </select>
                                                     </div>
 
                                                     <div class="form-group">
                                                         <label for="testedWithinFacility">Was the Client Tested for HIV within the Facility ?</label>
                                                         <select class="form-control" id="withinFacility" name="withinFacility">
                                                             <option value="">Select One</option>
                                                             <option value="Y">YES</option>
                                                             <option value="N">NO</option>
                                                         </select>
                                                     </div>
                                                     <div class="form-group">
                                                         <label for="hivTestModality">What was the HIV Test Modality ?</label>
                                                         <select class="form-control" id="hivModality" name="hivModality">
                                                             <option value="">Select One</option>
                                                             <option value="Other PITC">Other PITC</option>
                                                             <option value="Inpatient">Inpatient</option>
                                                             <option value="Emergency">Emergency</option>
                                                             <option value="Malnutrition">Malnutrition</option>
                                                             <option value="Pediatrics">Pediatrics</option>
                                                             <option value="PMTCT- ANC1 Only">PMTCT- ANC1 Only</option>
                                                             <option value="STI">STI</option>
                                                             <option value="VCT">VCT</option>
                                                             <option value="Index Testing">Index Testing</option>
                                                             <option value="PMTCT POST ANC1">PMTCT POST ANC1</option>
                                                         </select>
                                                     </div>
                                                 </div>
                                             </div>
                                             <div class="row offset-1">
                                                 <div class="col-md-8">
                                                     <input type="submit" class="btn btn-success btn-lg mb-2" id="save_data" name="save_data" value="Save Record"/>
 
                                                 </div>
                                                 <div class="col-md-8">
                                                     <button type="submit" id='updatebutton' style="margin-left: 0%;display:none;" class="btn-lg btn-info active">
                                                         UPDATE 
                                                     </button>
 
                                                 </div>
 
                                             </div>-->

                                        </form>
                                    </div>
                                    <div id="sync-wrapper" class="editorPage">
                                        <strong>Sync Status: </strong><span id="sync-span"></span>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                    <h6 class="border-bottom border-gray pb-2 mb-0 mt-2">Tb Register Records</h6>

                                    <div class="text-muted pt-3">
                                        <div class="table-responsive toggle-circle-filled">
                                            <div id="showRecords">
                                                <table id="TableResults" data-paging-container="#paging-ui-container" class="table table-bordered footable footable-1 footable-filtering  footable-paging footable-paging-center breakpoint breakpoint-xs" data-paging="true" data-filtering="true" data-sorting="true" style="display:table">
                                                    <thead>
                                                        <tr>
                                                            <th data-visible="true">S/No:</th>
                                                            <th>SubPartner ID</th>
                                                            <th data-breakpoints="xs sm md">Sub County Reg #</th>
                                                            <th data-breakpoints="xs">MFL Code</th>
                                                            <th data-breakpoints="all">Facility Name</th>
                                                            <th data-breakpoints="all">ART Status</th>
                                                            <th data-breakpoints="all">Sex</th>
                                                            <th data-breakpoints="all">Age</th>
                                                            <th data-breakpoints="xs sm md">Registration Date</th>
                                                            <th>Edit</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                    </tbody>
                                                </table>
                                                <div id="paging-ui-container"></div>
                                            </div>


                                        </div>

                                    </div>
                                </div>