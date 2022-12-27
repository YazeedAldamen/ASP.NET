<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="tasks_27_12.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
<section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>

              <form>

                <div class="form-outline mb-4">
                    <asp:TextBox ID="name" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup='Group1' runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="name" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <label class="form-label" for="name">Your Name</label>
                </div>

                <div class="form-outline mb-4">
                    <asp:TextBox ID="email" runat="server" CssClass="form-control form-control-lg" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup='Group1' runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="email" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <label class="form-label" for="email">Your Email</label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email"></asp:RegularExpressionValidator>
                </div>

                <div class="form-outline mb-4">
                    <asp:TextBox ID="password" runat="server" CssClass="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ValidationGroup='Group1' runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="password" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <label class="form-label" for="password">Password</label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="password" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"></asp:RegularExpressionValidator>
                </div>

                <div class="form-outline mb-4">
                    <asp:TextBox ID="confirmPassword" runat="server" CssClass="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup='Group1' runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="confirmPassword" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <label class="form-label" for="confirmPassword">Repeat your password</label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="RegularExpressionValidator" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$" ControlToValidate="confirmPassword"></asp:RegularExpressionValidator>

                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="password" ControlToCompare="confirmPassword" Operator="Equal"></asp:CompareValidator>

                </div>

                <div class="form-check d-flex justify-content-center mb-5">
                  <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3cg" />
                  <label class="form-check-label" for="form2Example3g">
                    I agree all statements in <a href="#!" class="text-body"><u>Terms of service</u></a>
                  </label>
                </div>

                <div class="d-flex justify-content-center">
                  
                    <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup='Group1' class="btn btn-success btn-block btn-lg gradient-custom-4 text-body" OnClick="Button1_Click"/>
                </div>

                <p class="text-center text-muted mt-5 mb-0">Have already an account? <a href="#!"
                    class="fw-bold text-body"><u>Login here</u></a></p>
                  <br />
                  <br />
                  <br />

              </form>
                </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

    <div>
        <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Login</h2>
              <p class="text-white-50 mb-5">Please enter your login and password!</p>

              <div class="form-outline form-white mb-4">
                  <asp:TextBox ID="emaillog" runat="server" class="form-control form-control-lg" TextMode="Email" ></asp:TextBox>
                                  <label class="form-label" for="typeEmailX">Email</label>

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup='Group2' runat="server" ErrorMessage="Enter a Valid Email" ControlToValidate="emaillog" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Enter a proper email" ControlToValidate="emaillog" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
              </div>

              <div class="form-outline form-white mb-4">
                  <asp:TextBox ID="passwordlog" runat="server" class="form-control form-control-lg" TextMode="Password"></asp:TextBox>
                                  <label class="form-label" for="passwordlog">Password</label>

                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ValidationGroup='Group2' ErrorMessage="RequiredFieldValidator" ControlToValidate="passwordlog" ForeColor="Red">*</asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="passwordlog" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"></asp:RegularExpressionValidator>

              </div>

              <p class="small mb-5 pb-lg-2"><a class="text-white-50" href="#!">Forgot password?</a></p>


                <asp:Button ID="Button2" runat="server" Text="Login" class="btn btn-outline-light btn-lg px-5" ValidationGroup='Group2' OnClick="Button2_Click" />

              <div class="d-flex justify-content-center text-center mt-4 pt-1">
                <a href="#!" class="text-white"><i class="fab fa-facebook-f fa-lg"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-twitter fa-lg mx-4 px-2"></i></a>
                <a href="#!" class="text-white"><i class="fab fa-google fa-lg"></i></a>
              </div>

            </div>

            <div>
              <p class="mb-0">Don't have an account? <a href="#!" class="text-white-50 fw-bold">Sign Up</a>
              </p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </div>
</asp:Content>
