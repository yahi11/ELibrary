﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookIssuing.aspx.cs" Inherits="ELibraryManagement.AdminBookIssuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">

            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Issuing</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img class="mb-0" width="100px" src="imgs/books1.png" />
                                </center>
                            </div>
                        </div>

                

                        <div class="row mb-3">
                            

                            <div class="col-md-6">
                                <label class="mb-1">Member ID</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Member ID"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label class="mb-1">Book ID</label>
                                <div class="mb-3">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:Button class="btn btn-success"  ID="Button4" runat="server" Text="Go" />
                                    </div>
                                    
                                </div>
                            </div>
                        </div>


                        <div class="row mb-3">
                            

                            <div class="col-md-6">
                                <label class="mb-1">Member Name</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Member Name" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label class="mb-1">Book Name</label>
                                <div class="mb-3">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Name" ReadOnly="True"></asp:TextBox>                                   
                                </div>
                            </div>
                        </div>


                        <div class="row mb-3">
                            

                            <div class="col-md-6">
                                <label class="mb-1">Start Date</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Start Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label class="mb-1">End Date</label>
                                <div class="mb-3">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="End Date" TextMode="Date"></asp:TextBox>                                   
                                </div>
                            </div>
                        </div>




                        <div class="row">
                            <div class="col-6">
                                <center>
                                    <div class="mb-3 d-grid ">                                                                       
                                       <asp:Button class="btn btn-primary btn-lg"  ID="Button2" runat="server" Text="Issue" />
                                    </div>
                                </center>                                
                            </div>


                            <div class="col-6">
                                <center>
                                    <div class="mb-3 d-grid ">                                                                       
                                       <asp:Button class="btn btn-success btn-lg"  ID="Button3" runat="server" Text="Return" />
                                    </div>
                                </center>                                
                            </div>
                        </div>

                    </div>
                </div>

                <a href="Homepage.aspx"><< Back To Home</a><br /><br />
            </div>


            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Issued Book List</h4>                                  
                                </center>
                            </div>
                        </div>
                 

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col">

                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>

                            </div>
                        </div>




                    </div>
                </div>

            </div>









        </div>
    </div>


</asp:Content>
