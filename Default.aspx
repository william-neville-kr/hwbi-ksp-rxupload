<%@ page title="Upload Web Form" language="C#" masterpagefile="~/MasterPage.master" autoeventwireup="true" inherits="Default, App_Web_rgcjb10z" culture="auto" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="myJumboTron" Runat="Server">

    
    <div id="divForm" runat="server">
    <div class="row">
        <div class="col-xs-12 bs-callout bs-callout-primary">
               <div class="col-xs-3">
                  <h4><asp:Label ID="Step1" runat="server" Text="<%$ Resources:LocalizedText, Step1 %>"></asp:Label><br /><small><asp:Label ID="Step1Tag" runat="server" Text="<%$ Resources:LocalizedText, Step1Tag %>"></asp:Label></small></h4>
                   
               </div>
               <div class="col-xs-9">
                    <div class="form-group">
                        <label class="control-label"><asp:Label ID="Step1Title" for="file_upload" runat="server" Text="<%$ Resources:LocalizedText, Step1Title %>"></asp:Label></label>
                        <small id="fileHelp" class="help-block"><asp:Label ID="Step1Desc" runat="server" Text=""></asp:Label></small>
                    </div>
                    <div class="form-group">
                        <div id="filePanel" class="panel panel-default">
                            <div class="panel-heading">
                                <!--<span>List of Attachments to Upload</span>--> 
                                <label id="file_upload" class="btn btn-primary btn-file"><asp:Label ID="BrowseBtn" runat="server" Text="<%$ Resources:LocalizedText, BrowseBtn %>"></asp:Label><input ClientIDMode="Static" id="oFile" type="file" class="form-control-file" runat="server"  name="oFile[]" /></label>
                                
                            </div>
                            <div id="File_List" class="panel-body">
                            </div>
                        </div>
                    </div>
               </div> 
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 bs-callout bs-callout-primary ">
            <div class="col-xs-3">
                <h4><asp:Label ID="Step2" runat="server" Text="<%$ Resources:LocalizedText, Step2 %>"></asp:Label><br /><small><asp:Label ID="Step2Tag" runat="server" Text="<%$ Resources:LocalizedText, Step2Tag %>"></asp:Label></small></h4>
            </div>
            <div class="col-xs-9">
                <div class="form-group">
                <label for="FromEmail"><asp:Label ID="Step2ContactTitle" runat="server" Text="<%$ Resources:LocalizedText, Step2ContactTitle %>"></asp:Label></label>
                <asp:TextBox ID="FromEmail" CssClass="form-control" runat="server" placeholder="<%$ Resources:LocalizedText, Step2ContactDesc %>" TextMode="SingleLine" CausesValidation="False"></asp:TextBox>
                <small id="emailHelp" class="help-block"><asp:Label ID="Step2CtonactTag" runat="server" Text="<%$ Resources:LocalizedText, Step2ContactTag %>"></asp:Label></small>
                </div>
                <div class="form-group">
                <label for="oMsg"><asp:Label ID="Step2MsgTitle" runat="server" Text="<%$ Resources:LocalizedText, Step2MsgTitle %>"></asp:Label></label>
                <asp:TextBox ID="oMsg" CssClass="form-control" runat="server" placeholder="<%$ Resources:LocalizedText, Step2MsgDesc %>" Rows="3" TextMode="MultiLine"></asp:TextBox>
                <small id="MsgHelp" class="help-block"><asp:Label ID="Step2MsgTag" runat="server" Text="<%$ Resources:LocalizedText, Step2MsgTag %>"></asp:Label></small>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xs-12 bs-callout bs-callout-primary ">
            <div class="col-xs-3">
                <h4><asp:Label ID="Step3" runat="server" Text="<%$ Resources:LocalizedText, Step3 %>"></asp:Label><br /><small><asp:Label ID="Step3Tag" runat="server" Text="<%$ Resources:LocalizedText, Step3Tag %>"></asp:Label></small></h4>
            </div>
            <div class="col-xs-9">
                <div id="divError" class="alert alert-danger" role="alert" runat="server" visible="false">
                    <asp:Label id="lblError" Runat="server"></asp:Label>
                </div>
                <div class="form-group">
                    <asp:button id="btnUpload" type="submit" text="<%$ Resources:LocalizedText, SubmitBtn %>" runat="server" CssClass="btn btn-success" OnClick="btnUpload_Click"></asp:button>
                </div>
            </div>
        </div>
    </div>
  </div>
  <div class="row" id="divConfirm" Visible="False" runat="server">
      <div class="col-xs-12 bs-callout bs-callout-primary ">
          <div class="col-xs-3">
               <h4><asp:Label ID="Step4" runat="server" Text="<%$ Resources:LocalizedText, Step4 %>"></asp:Label><br /><small><asp:Label ID="Step4Tag" runat="server" Text="<%$ Resources:LocalizedText, Step4Tag %>"></asp:Label></small></h4>
          </div>
          <div class="col-xs-9">
              <asp:Panel ID="frmConfirmation" runat="server" CssClass="panel panel-success">
                  <div class="panel-heading"><span class=""><asp:Label ID="Step4ConfirmMsg" runat="server" Text="<%$ Resources:LocalizedText, Step4ConfirmMsg %>"></asp:Label></span></div>
                  <div class="panel-body">
                     <asp:Label ID="lblUploadResult" runat="server" CssClass="" Text="<%$ Resources:LocalizedText, MsgSuccess %>"></asp:Label>
                     <asp:Label ID="lblRefID" runat="server" CssClass=""></asp:Label>
                  </div>
              </asp:Panel>
              <span>
                <asp:Panel ID="frmHeaders" Visible="True" Runat="server" CssClass="panel panel-default">
                    <div class="panel-heading"><span class=""><asp:Label ID="Step4AnotherMsg" runat="server" Text="<%$ Resources:LocalizedText, Step4AnotherMsg %>"></asp:Label></span></div>
                    <div class="panel-body">
                        <!--<span class="lead">Need to Send Another Script?</span>-->
                    <asp:Button ID="NewRequest" runat="server" Text="New Upload" CssClass="btn btn-info" OnClick="NewRequest_Click" />
                    <asp:Label id="lblReqHeaders" Runat="server"></asp:Label>
                    </div>
                </asp:Panel>
              </span>
          </div>


      </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Marketing" Runat="Server">
</asp:Content>
<asp:Content ID="myScripts" ContentPlaceHolderID="CustomScripts" Runat="Server">
    <script src="scripts/jQuery.MultiFile.js"></script>
    <script src="scripts/krmulti-js.js"></script>
    <!--<script src="scripts/extra.js"></script>-->
</asp:Content>

