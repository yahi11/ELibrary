<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminBookInventory.aspx.cs" Inherits="ELibraryManagement.AdminBookInventory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>




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
                                    <h4>Book Details</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img class="mb-4" id="imgview" width="100px" src="book_inventory/books1.png" />
                                </center>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col mb-4">
                                <asp:FileUpload onchange="readURL(this);"  CssClass ="form-control" ID="FileUpload1" runat="server" />
                            </div>
                        </div>

                        <div class="row mb-3">                           
                            <div class="col-md-4">
                                <label class="mb-1">Book ID</label>
                                <div class="mb-3">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control me-1" ID="TextBox1" runat="server" placeholder="Book ID"></asp:TextBox>
                                        <asp:LinkButton class="btn btn-success rounded-1"  ID="LinkButton1" runat="server" Text="Go" OnClick="LinkButton1_Click"></asp:LinkButton>
                                    </div>                                    
                                </div>
                            </div>

                            <div class="col-md-8">
                                <label class="mb-1">Book Name</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Book Name"></asp:TextBox>
                                </div>
                            </div>                          
                        </div>


                        <div class="row">
                            <div class="col-md-4">
                                <label class="mb-1">Language</label>
                                <div class="mb-3">
                                    <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="English" Value="English" />
                                        <asp:ListItem Text="Sinhala" Value="Sinhala" />
                                        <asp:ListItem Text="Tamil" Value="Tamil" />
                                    </asp:DropDownList>
                                </div>



                                <label class="mb-1">Publisher Name</label>
                                <div class="mb-3">
                                    <asp:DropDownList Class="form-control" ID="DropDownList3" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Publisher 1" Value="Publisher 1" />
                                        <asp:ListItem Text="Publisher 2" Value="Publisher 2" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label class="mb-1">Author Name</label>
                                <div class="mb-3">
                                    <asp:DropDownList Class="form-control" ID="DropDownList4" runat="server">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Author 1" Value="Author 1" />
                                        <asp:ListItem Text="Author 2" Value="Author 2" />
                                    </asp:DropDownList>
                                </div>

                                <label class="mb-1">Publish Date</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox14" runat="server" placeholder="Publish Date" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label class="mb-1">Genre</label>
                                <div class="mb-3">
                                    <asp:ListBox CssClass="form-control" ID="ListBox1" runat="server" SelectionMode="Multiple" Rows="5">
                                        <asp:ListItem Text="Select" Value="Select" />
                                        <asp:ListItem Text="Action" Value="Action" />
                                        <asp:ListItem Text="Adventure" Value="Adventure" />
                                        <asp:ListItem Text="Comic Book" Value="Comic Book" />
                                        <asp:ListItem Text="Drama" Value="Drama" />
                                        <asp:ListItem Text="Historic" Value="Historic" />
                                        <asp:ListItem Text="Politics" Value="Politics" />
                                        <asp:ListItem Text="Motivation" Value="Motivation" />
                                        <asp:ListItem Text="Romance" Value="Romance" />
                                        <asp:ListItem Text="Fantasy" Value="Fantasy" />
                                        <asp:ListItem Text="Crime" Value="Crime" />
                                        <asp:ListItem Text="Horror" Value="Horror" />
                                        <asp:ListItem Text="Poetry" Value="Poetry" />
                                        <asp:ListItem Text="Thriller" Value="Thriller" />
                                        <asp:ListItem Text="Art" Value="Art" />
                                        <asp:ListItem Text="Suspense" Value="Suspense" />

                                    </asp:ListBox>
                                </div>
                            </div>

                        </div>



                        <div class="row mb-3">
                            
                            <div class="col-md-4">
                                <label class="mb-1">Edition</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Edition"></asp:TextBox>
                                </div>                                  
                            </div>

                            <div class="col-md-4">
                                <label class="mb-1">Book Cost(Per Unit)</label>
                                <div class="mb-3">
                                        <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Book Cost" TextMode="Number"></asp:TextBox>                                   
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label class="mb-1">Pages</label>
                                <div class="mb-3">
                                        <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server" placeholder="Pages" TextMode="Number"></asp:TextBox>                                   
                                </div>
                            </div>

                        </div>


                        <div class="row mb-3">
                            
                            <div class="col-md-4">
                                <label class="mb-1">Actual Stock</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Actual Stock" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label class="mb-1">Current Stock</label>
                                <div class="mb-3">
                                        <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Current Stock" ReadOnly="True" TextMode="Number"></asp:TextBox>                                   
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label class="mb-1">Issued Books</label>
                                <div class="mb-3">
                                        <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Issued Books" ReadOnly="True" TextMode="Number"></asp:TextBox>                                   
                                </div>
                            </div>
                        </div>

                        <div class="row mb-3">
                            <div class="col-md-12">
                                <label class="mb-1">Book Description</label>
                                <div class="mb-3">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server" placeholder="Book Description" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-4 mx-auto">
                                <center>
                                    <div class="mb-3 d-grid ">                                                                       
                                       <asp:Button class="btn btn-success btn-lg"  ID="Button2" runat="server" Text="Add" OnClick="Button2_Click" />
                                    </div>
                                </center>                                
                            </div>

                            <div class="col-4 mx-auto">
                                <center>
                                    <div class="mb-3 d-grid ">                                                                       
                                       <asp:Button class="btn btn-primary btn-lg"  ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
                                    </div>
                                </center>                                
                            </div>

                            <div class="col-4 mx-auto">
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString2 %>" SelectCommand="SELECT * FROM [book_master_tbl]"></asp:SqlDataSource>
                            <div class="col">

                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="book_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="book_id" HeaderText="book_id" ReadOnly="True" SortExpression="book_id" />
                                        <asp:BoundField DataField="book_name" HeaderText="book_name" SortExpression="book_name" />
                                        <asp:BoundField DataField="genre" HeaderText="genre" SortExpression="genre" />
                                        <asp:BoundField DataField="author_name" HeaderText="author_name" SortExpression="author_name" />
                                        <asp:BoundField DataField="publisher_name" HeaderText="publisher_name" SortExpression="publisher_name" />
                                        <asp:BoundField DataField="publish_date" HeaderText="publish_date" SortExpression="publish_date" />
                                        <asp:BoundField DataField="language" HeaderText="language" SortExpression="language" />
                                        <asp:BoundField DataField="edition" HeaderText="edition" SortExpression="edition" />
                                        <asp:BoundField DataField="book_cost" HeaderText="book_cost" SortExpression="book_cost" />
                                        <asp:BoundField DataField="no_of_pages" HeaderText="no_of_pages" SortExpression="no_of_pages" />
                                        <asp:BoundField DataField="book_description" HeaderText="book_description" SortExpression="book_description" />
                                        <asp:BoundField DataField="actual_stock" HeaderText="actual_stock" SortExpression="actual_stock" />
                                        <asp:BoundField DataField="current_stock" HeaderText="current_stock" SortExpression="current_stock" />
                                        <asp:BoundField DataField="book_img_link" HeaderText="book_img_link" SortExpression="book_img_link" />
                                    </Columns>
                                </asp:GridView>

                            </div>
                        </div>




                    </div>
                </div>

            </div>









        </div>
    </div>



</asp:Content>
