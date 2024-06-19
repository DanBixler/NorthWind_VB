<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="NorthWind_VB._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <section class="row" aria-labelledby="aspnetTitle">
            <div class="col-md-4">
                <img src="Content/Images/ee19715b7a2149b1a1b35bc43575e0be.png" class="img-fluid" style="max-width:300px; height:auto; padding:25px;" alt="Northwind logo" />                  
            </div>  
            <div class ="col-md-8">
                <h2>Welcome to Northwind Traders!</h2> 
            </div>
        </section>

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Who are we?</h2>
                <p>
                    At Northwind Traders, we pride ourselves on being your trusted partner in the world of trading and order fulfillment. 
                    With a commitment to excellence and customer satisfaction, we offer a wide range of services to meet your business needs.
                </p>               
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">What can we do for you?</h2>
                <p>
                    Whether you're seeking efficient logistics solutions, reliable order fulfillment services, or expert trading advice, Northwind Traders has you covered.
                    Our dedicated team is equipped with the expertise and resources to ensure your orders are filled promptly and accurately, allowing you to focus on what matters most – growing your business.
                </p>                
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Try us out</h2>
                <p>
                    Join countless satisfied clients who have experienced the reliability and professionalism of Northwind Traders.
                    Explore our services today and let us help you succeed in the competitive marketplace.
                </p>
                <p>
                   Partner with Northwind Traders and experience the difference firsthand!
                </p>
            </section>
        </div>
    </main>

</asp:Content>
