#pragma checksum "F:\web training\Travello\Travello\Views\Home\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "55479934805c2e7efbc200097b5ccaf5e0c4c024"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Home_Index), @"mvc.1.0.view", @"/Views/Home/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Home/Index.cshtml", typeof(AspNetCore.Views_Home_Index))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "F:\web training\Travello\Travello\Views\_ViewImports.cshtml"
using Travello;

#line default
#line hidden
#line 2 "F:\web training\Travello\Travello\Views\_ViewImports.cshtml"
using Travello.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"55479934805c2e7efbc200097b5ccaf5e0c4c024", @"/Views/Home/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"66ec7e4fd4ebe2ab6889097053b8d2f27a5db25d", @"/Views/_ViewImports.cshtml")]
    public class Views_Home_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<Travello.ViewModel.HotelCityViewModel>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("form-wrap"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("img-fluid"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("alt", new global::Microsoft.AspNetCore.Html.HtmlString(""), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("src", new global::Microsoft.AspNetCore.Html.HtmlString("~/img/about-img.jpg"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#line 2 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
  
    ViewData["Title"] = "Home Page";

#line default
#line hidden
            BeginContext(91, 513, true);
            WriteLiteral(@"<div class=""col-lg-4 col-md-6 banner-right"">
    <ul class=""nav nav-tabs"" id=""myTab"" role=""tablist"">
       
        <li class=""nav-item"">
            <a class=""nav-link active show"" id=""hotel-tab"" data-toggle=""tab"" href=""#hotel"" role=""tab"" aria-controls=""hotel"" aria-selected=""true"">Book Hotels</a>
        </li>
        
    </ul>
    <div class=""tab-content"" id=""myTabContent"">
     
        <div class=""tab-pane fade active show"" id=""hotel"" role=""tabpanel"" aria-labelledby=""hotel-tab"">
            ");
            EndContext();
            BeginContext(604, 863, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "55479934805c2e7efbc200097b5ccaf5e0c4c0245525", async() => {
                BeginContext(628, 832, true);
                WriteLiteral(@"
                <input type=""text"" class=""form-control"" name=""name"" placeholder=""From "" onfocus=""this.placeholder = ''"" onblur=""this.placeholder = 'From '"">
                <input type=""text"" class=""form-control"" name=""to"" placeholder=""To "" onfocus=""this.placeholder = ''"" onblur=""this.placeholder = 'To '"">
                <input type=""text"" class=""form-control date-picker hasDatepicker"" name=""start"" placeholder=""Type "" onfocus=""this.placeholder = ''"" onblur=""this.placeholder = 'Start '"" id=""dp1568899776537"">
                
                <input type=""number"" min=""1"" max=""20"" class=""form-control"" name=""adults"" placeholder=""persons "" onfocus=""this.placeholder = ''"" onblur=""this.placeholder = 'Adults '"">
               
                <a href=""#"" class=""primary-btn text-uppercase"">Search Hotels</a>
            ");
                EndContext();
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(1467, 688, true);
            WriteLiteral(@"
        </div>
       
    </div>
</div>

           

            </div>
        </div>
    </section>


<!-- Start popular-destination Area -->
<section class=""popular-destination-area section-gap"">
    <div class=""container"">
        <div class=""row d-flex justify-content-center"">
            <div class=""menu-content pb-70 col-lg-8"">
                <div class=""title text-center"">
                    <h1 class=""mb-10"">Popular Destinations</h1>
                    <p>We all live in an age that belongs to the young at heart. Life that is becoming extremely fast, day.</p>
                </div>
            </div>
        </div>
        <div class=""row"">
");
            EndContext();
#line 49 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
             for (int i = 0; i < Model.Cities.Count; i++)
            {


#line default
#line hidden
            BeginContext(2231, 253, true);
            WriteLiteral("                <div class=\"col-lg-4\">\r\n                    <div class=\"single-destination relative\">\r\n                        <div class=\"thumb relative\">\r\n                            <div class=\"overlay overlay-bg\"></div>\r\n                            ");
            EndContext();
            BeginContext(2484, 64, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "55479934805c2e7efbc200097b5ccaf5e0c4c0249193", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "src", 2, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 2512, "~/", 2512, 2, true);
#line 56 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
AddHtmlAttributeValue("", 2514, Model.Cities[i].City_pic, 2514, 25, false);

#line default
#line hidden
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(2548, 160, true);
            WriteLiteral("\r\n                        </div>\r\n                        <div class=\"desc\">\r\n\r\n                            <h4>Dream City</h4>\r\n                            <p>");
            EndContext();
            BeginContext(2709, 25, false);
#line 61 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                          Write(Model.Cities[i].City_Name);

#line default
#line hidden
            EndContext();
            BeginContext(2734, 90, true);
            WriteLiteral("</p>\r\n                        </div>\r\n                    </div>\r\n                </div>\r\n");
            EndContext();
#line 65 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
            }

#line default
#line hidden
            BeginContext(2839, 795, true);
            WriteLiteral(@"        </div>
    </div>
</section>

<!-- End popular-destination Area -->
<!-- Start price Area -->
<section class=""price-area section-gap"">
    <div class=""container"">
        <div class=""row d-flex justify-content-center"">
            <div class=""menu-content pb-70 col-lg-8"">
                <div class=""title text-center"">
                    <h1 class=""mb-10"">We Provide Affordable Prices</h1>
                    <p>Well educated, intellectual people, especially scientists at all times demonstrate considerably.</p>
                </div>
            </div>
        </div>
        <div class=""row"">
            <div class=""col-lg-4"">
                <div class=""single-price"">
                    <h4>Cheap Packages</h4>
                    <ul class=""price-list"">
");
            EndContext();
#line 87 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                         for (int i = 0; i < Model.CheapHotels.Count; i++)
                        {

#line default
#line hidden
            BeginContext(3737, 130, true);
            WriteLiteral("                            <li class=\"d-flex justify-content-between align-items-center\">\r\n                                <span>");
            EndContext();
            BeginContext(3868, 31, false);
#line 90 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                                 Write(Model.CheapHotels[i].Hotel_name);

#line default
#line hidden
            EndContext();
            BeginContext(3899, 72, true);
            WriteLiteral("</span>\r\n                                <a  class=\"price-btn disabled\">");
            EndContext();
            BeginContext(3972, 31, false);
#line 91 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                                                          Write(Model.CheapHotels[i].Room_price);

#line default
#line hidden
            EndContext();
            BeginContext(4003, 43, true);
            WriteLiteral(" $</a>\r\n                            </li>\r\n");
            EndContext();
#line 93 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                        }

#line default
#line hidden
            BeginContext(4073, 246, true);
            WriteLiteral("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-4\">\r\n                <div class=\"single-price\">\r\n\r\n                    <h4>Luxury Packages</h4>\r\n                    <ul class=\"price-list\">\r\n");
            EndContext();
#line 103 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                         for (int i = 0; i < Model.luxuryHotels.Count; i++)
                        {

#line default
#line hidden
            BeginContext(4423, 130, true);
            WriteLiteral("                            <li class=\"d-flex justify-content-between align-items-center\">\r\n                                <span>");
            EndContext();
            BeginContext(4554, 32, false);
#line 106 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                                 Write(Model.luxuryHotels[i].Hotel_name);

#line default
#line hidden
            EndContext();
            BeginContext(4586, 72, true);
            WriteLiteral("</span>\r\n                                <a  class=\"price-btn disabled\">");
            EndContext();
            BeginContext(4659, 32, false);
#line 107 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                                                          Write(Model.luxuryHotels[i].Room_price);

#line default
#line hidden
            EndContext();
            BeginContext(4691, 43, true);
            WriteLiteral(" $</a>\r\n                            </li>\r\n");
            EndContext();
#line 109 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                        }

#line default
#line hidden
            BeginContext(4761, 245, true);
            WriteLiteral("                    </ul>\r\n\r\n                </div>\r\n            </div>\r\n            <div class=\"col-lg-4\">\r\n                <div class=\"single-price\">\r\n                    <h4>Camping Packages</h4>\r\n                    <ul class=\"price-list\">\r\n");
            EndContext();
#line 118 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                         for (int i = 0; i < Model.luxuryHotels.Count; i++)
                        {

#line default
#line hidden
            BeginContext(5110, 130, true);
            WriteLiteral("                            <li class=\"d-flex justify-content-between align-items-center\">\r\n                                <span>");
            EndContext();
            BeginContext(5241, 33, false);
#line 121 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                                 Write(Model.campingHotels[i].Hotel_name);

#line default
#line hidden
            EndContext();
            BeginContext(5274, 72, true);
            WriteLiteral("</span>\r\n                                <a  class=\"price-btn disabled\">");
            EndContext();
            BeginContext(5347, 33, false);
#line 122 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                                                          Write(Model.campingHotels[i].Room_price);

#line default
#line hidden
            EndContext();
            BeginContext(5380, 43, true);
            WriteLiteral(" $</a>\r\n                            </li>\r\n");
            EndContext();
#line 124 "F:\web training\Travello\Travello\Views\Home\Index.cshtml"
                        }

#line default
#line hidden
            BeginContext(5450, 514, true);
            WriteLiteral(@"                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- End price Area -->
<!-- Start home-about Area -->
<section class=""home-about-area"">
    <div class=""container-fluid"">
        <div class=""row align-items-center justify-content-end"">
            <div class=""col-lg-6 col-md-12 home-about-left"">
                <h1>
                    Did you find your Package? <br>
                    Start Booking Now ! <br>

                </h1>
");
            EndContext();
            BeginContext(6298, 196, true);
            WriteLiteral("                <a href=\"Room/index\" class=\"primary-btn text-uppercase\">Book Now</a>\r\n            </div>\r\n            <div class=\"col-lg-6 col-md-12 home-about-right no-padding\">\r\n                ");
            EndContext();
            BeginContext(6494, 56, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "55479934805c2e7efbc200097b5ccaf5e0c4c02418484", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(6550, 92, true);
            WriteLiteral("\r\n            </div>\r\n        </div>\r\n    </div>\r\n</section>\r\n<!-- End home-about Area -->\r\n");
            EndContext();
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<Travello.ViewModel.HotelCityViewModel> Html { get; private set; }
    }
}
#pragma warning restore 1591
