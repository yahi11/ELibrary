<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminAuthorManagement.aspx.cs" Inherits="ELibraryManagement.AdminAuthorManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
      
            $(document).ready(function () {
              $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
           });

      /*  $(document).ready(function () {
            $(".table").each(function () {
                var table = $(this).DataTable({
                    // DataTables options and configurations
                });

                // Manually create thead element and append the header row
                var thead = $("<thead></thead>");
                thead.append($(this).find("tr:first").clone());
                table.prepend(thead);
            });
        });
        */
        /*
        $(document).ready(function () {
            $(".table").each(function () {
                var headerRow = $(this).find("tr:first").clone();
                $(this).find("thead").empty().append(headerRow);

                var table = $(this).DataTable({
                    // DataTables options and configurations
                });
            });
        });
        */

        /*let table = new DataTable('#table');*/

        /*$(document).ready(function () {
            var table = $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });*/

        /*$(document).ready(function () {
            $('.table').DataTable();
        });*/

         /*   $(document).ready(function () {
                $(".table").each(function () {
                    var table = $(this).DataTable(); // Initialize DataTables on the current table
                    $(this).prepend(table.columns().header().to$().addClass('thead')); // Add thead class to the cloned headers
                });
    }); */

    </script>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="row">

            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Author Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img class="mb-0" width="100px" src="imgs/writer.png" />
                                </center>
                            </div>
                        </div>

                

                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label class="mb-1">Author ID</label>
                                <div class="mb-3">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                        <asp:Button class="btn btn-success"  ID="Button4" runat="server" Text="Go" OnClick="Button4_Click" />
                                    </div>
                                    
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label class="mb-1">Author Name</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Author Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">

                            <div class="col-4">
                                <center>
                                    <div class="mb-3 d-grid ">                                                                       
                                       <asp:Button class="btn btn-success btn-lg"  ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" />
                                    </div>
                                </center>                                
                            </div>


                            <div class="col-4">
                                <center>
                                    <div class="mb-3 d-grid ">                                                                       
                                       <asp:Button class="btn btn-primary btn-lg"  ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
                                    </div>
                                </center>                                
                            </div>


                            <div class="col-4">
                                <center>
                                    <div class="mb-3 d-grid ">                                                                       
                                       <asp:Button class="btn btn-danger btn-lg"  ID="Button3" runat="server" Text="Delete" OnClick="Button3_Click" />
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
                                    <h4>Author List</h4>                                  
                                </center>
                            </div>
                        </div>
                 

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>


                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [author_master_tbl]"></asp:SqlDataSource>
                            <div class="col">

                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="author_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="author_id" HeaderText="author_id" ReadOnly="True" SortExpression="author_id" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                    </Columns>
                                </asp:GridView>

                               <%--
                                   <script type="text/javascript">
                                    /*$(document).ready(function () {
                                        $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
                                    });*/

                                    /*$(document).ready(function () {
                                        var table = $(".table1").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
                                    });*/

                                </script>--%> 


                            </div>
                        </div>




                    </div>
                </div>

            </div>









        </div>
    </div>



</asp:Content>
