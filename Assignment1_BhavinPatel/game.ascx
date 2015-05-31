<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="game.ascx.cs" Inherits="Assignment1_BhavinPatel.game" %>


<div class="form-group">
    <table class="table-group">    
        <tr>
            <td>
                <asp:Label ID="lblResult" runat="server" Text="Result:"></asp:Label>                
            </td>
            <td>
                <asp:RadioButtonList ID="rblResult" runat="server">
                    <asp:ListItem Text="Win" Value ="0"></asp:ListItem>
                    <asp:ListItem Text="Loss" Value="1"></asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblScored" runat="server" Text="Scored:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtScored" runat="server" TextMode="Number" required/>
            </td>
        </tr>
        
        <tr>
            <td>
                <asp:Label ID="lblAllowed" runat="server" Text="Allowed:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtAllowed" runat="server" TextMode="Number" required/>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="lblSpectators" runat="server" Text="Spectators:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSpectators" runat="server" TextMode="Number" required/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:RequiredFieldValidator ID="rfvResult" runat="server"
                    ErrorMessage="Result must be Selected" 
                    CssClass="alert" 
                    ControlToValidate="rblResult" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                <asp:RangeValidator ID="rvScore" runat="server" 
                    ErrorMessage="Scored must be zeor or Higher"
                    MinimumValue="0" MaximumValue="999999999"
                    CssClass="alert" 
                    ControlToValidate="txtScored"
                    Type="Double" Display="Dynamic" ForeColor="Red">
                </asp:RangeValidator>

                <asp:RangeValidator ID="rvAllowed" runat="server" 
                    ErrorMessage="Allowed must be zeor or Higher"
                    MinimumValue="0" MaximumValue="999999999"
                    CssClass="alert" ControlToValidate="txtAllowed"
                    Type="Double" Display="Dynamic" ForeColor="Red">
                </asp:RangeValidator>

                <asp:RangeValidator ID="rvSpectators" runat="server" 
                    ErrorMessage="Spectators must be zeor or Higher"
                    MinimumValue="0" MaximumValue="999999999"
                    CssClass="alert" ControlToValidate="txtSpectators"
                    Type="Double" Display="Dynamic" ForeColor="Red">
                </asp:RangeValidator>

                <asp:CompareValidator ID="cvNumbers" runat="server" 
                    ControlToValidate="txtAllowed" ControlToCompare="txtScored"
                    CssClass="alert" 
                    Operator="NotEqual" type="Integer"
                    ErrorMessage="For and Against must be different" ForeColor="Red">
                </asp:CompareValidator>
            </td>
        </tr>
    </table>
</div>