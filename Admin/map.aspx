<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite1.Master" AutoEventWireup="true" CodeBehind="map.aspx.cs" Inherits="pezeshkaneSalamat_wf.Admin.map" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- Leaflet  -->

    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <link rel="stylesheet" href="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.css" />
    <script src="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-md-12">
            <h1 class="page-head-line">ثبت موقعیت 
                <asp:Label ID="LbDoctorName" runat="server" Text="Label"></asp:Label></h1>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="panel-body">

                <div class="alert alert-danger" runat="server" id="err" visible="false">
                    متاسفانه خطایی رخ داده است! لطفا مجددا سعی نمایید.
                </div>
                <div class="alert alert-success" runat="server" id="suc" visible="false">
                    عملیات با موفقیت انجام شد.
                </div>

                <div id="map" style="height: 400px;"></div>
                <asp:HiddenField ID="hfLatitude" runat="server" />
                <asp:HiddenField ID="hfLongitude" runat="server" />

                <asp:Button ID="btnSaveLocation" runat="server" Text="ذخیره موقعیت" OnClick="btnSaveLocation_Click" CssClass="btn btn-primary" />
                <asp:Button ID="btnDel" runat="server" Text="حذف موقعیت فعلی" CssClass="btn btn-info" OnClick="btnDel_Click" />

            </div>
        </div>
    </div>

    <script>
        var lat = document.getElementById('<%= hfLatitude.ClientID %>').value;
        var lng = document.getElementById('<%= hfLongitude.ClientID %>').value;

        var defaultLat = 35.6892;
        var defaultLng = 51.3890;
        var zoomLevel = 12;

        if (lat && lng) {
            defaultLat = parseFloat(lat);
            defaultLng = parseFloat(lng);
            zoomLevel = 16;
        }

        var map = L.map('map').setView([defaultLat, defaultLng], zoomLevel);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; OpenStreetMap contributors'
        }).addTo(map);

        var marker;
        if (lat && lng) {
            marker = L.marker([defaultLat, defaultLng]).addTo(map);
        }

        map.on('click', function (e) {
            var clickedLat = e.latlng.lat;
            var clickedLng = e.latlng.lng;

            if (marker) {
                map.removeLayer(marker);
            }

            marker = L.marker([clickedLat, clickedLng]).addTo(map);
            document.getElementById('<%= hfLatitude.ClientID %>').value = clickedLat;
           document.getElementById('<%= hfLongitude.ClientID %>').value = clickedLng;
       });

        // Add search box
        L.Control.geocoder({
            defaultMarkGeocode: false
        })
            .on('markgeocode', function (e) {
                var center = e.geocode.center;
                map.setView(center, 16);
                if (marker) {
                    map.removeLayer(marker);
                }
                marker = L.marker(center).addTo(map);
                document.getElementById('<%= hfLatitude.ClientID %>').value = center.lat;
            document.getElementById('<%= hfLongitude.ClientID %>').value = center.lng;
        })
            .addTo(map);
    </script>

</asp:Content>
