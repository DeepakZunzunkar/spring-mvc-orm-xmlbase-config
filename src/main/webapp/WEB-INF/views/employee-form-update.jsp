<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>DZ | EMP UPDATE</title>

<%@ include file="header.jsp"%>
<div class="row" style="padding-top: 60px">
    <div class="card" style="margin-top: 5px">
        <div class="card-body">
            <span> <a href="${pageContext.request.contextPath }/employee/employeesByPageNumber?currentPage=1" class="btn btn-primary float-sm-left">Back</a></span> 
            <span style="font-family: cursive; font-size: 24px; color: black; padding: 28px">Update Employee </span> <span> </span>
            <hr>
            ${updatedemp}
            <form action="${pageContext.request.contextPath }/employee/update" method="post">
                <div class="container">
                    
                    <input type="hidden"  name="eid" value="${updatedemp.eid}"/>
                    <div class="row">
                        <div class="col">
                            <input type="text" class="form-control inpSty" id="firstName"
                                name="firstName" placeholder="First Name" value="${updatedemp.firstName}"
                                aria-label="First Name" required>
                        </div>
                        <div class="col">
                            <input type="text" class="form-control inpSty" id="middleName"
                                name="middleName" placeholder="Middle Name" value="${updatedemp.middleName}"
                                aria-label="Middle Name">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control inpSty" id="lastName"
                                name="lastName" placeholder="Last Name" aria-label="Last Name" value="${updatedemp.lastName}"
                                required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <input type="text" class="form-control inpSty datepicker" data-provide="datepicker" name="birthDate"
                                placeholder="Date Of Birth" id='birthDate' required value="${updatedemp.birthDate}">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control inpSty" id="salary"
                                name="salary" placeholder="Salary" aria-label="Salary" value="${updatedemp.salary}" required>
                        </div>
                        <div class="col"></div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <label class="form-label"> Gender </label>
                            <div>
                                <span class="form-check"> <input class="form-check-input"
                                    type="radio" name="gender" value="M" id="flexRadioDefault1"
                                    checked> <label class="form-check-label"
                                    for="flexRadioDefault1"> Male </label>
                                </span> <span class="form-check"> <input
                                    class="form-check-input" type="radio" name="gender" value="F"
                                    id="flexRadioDefault2"> <label class="form-check-label"
                                    for="flexRadioDefault2">Female </label>
                                </span>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12">
                            <button type="submit" class="btn btn-outline-primary"
                                onClick="return checkform()">Update</button>
                            <button type="reset" class="btn btn-outline-secondary">Reset</button>
                        </div>
                    </div>

                </div>
            </form>

        </div>
    </div>
</div>