﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ViewBooks.aspx.cs" Inherits="ELibraryManagement.View_Books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container-fluid">
        <div class="row">
            <div class="col">

                <div class="card">
                    <div class="card-body">


                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Book Inventory List</h4>                                  
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
                      <a href="Homepage.aspx"><< Back To Home</a><br /><br />

            </div>
        </div>
    </div>

    




</asp:Content>
