/// <reference path="../jquery-2.1.1.min.js" />
/// <reference path="../knockout-3.2.0.js" />

(function () {
    var SearchViewModel = function () {
        var self = this;
        //self.radioSelectedOptionValue = ko.observable()

        self.Transactions = ko.observableArray([]); //The Transactions Array

        self.FilterValue = ko.observable(); //The Filter value for Searching Transaction

        //self.multipleSelectedOptionValues = ko.observable();

        self.ErrorMessage = ko.observable("");
        self.Transactions.EmplyeeName

        var Transactions = {
            Id:"",
            Dataset:"",
            TranFile:"",
            RefFile: "",
            CreatedDate: "",
            EmplyeeName: "",
            SalesTerri: ""
        };

        self.Properties = ko.observableArray([]); //The Array of properties for the selection criteria

        //The Function Call
        loadProperties();

        //This function will read all properties
        //from the Trsansaction object and display
        //them into the select element on the View
        function loadProperties() {
            for (prop in Transactions) {
                if (typeof Transactions[prop] !== 'function') {
                    self.Properties.push(prop);
                }
            }
        }

        self.Property = ko.observable(""); //For the Property Name selected
        self.SelectedProperty = ko.observable();

        var searchFlag = 0;
        //The Function for Selection of the Property for Search Criteria
        self.SelectedProperty.subscribe(function (val) {
            if (val !== 'undefined') {
                self.Property(val);
                searchFlag = 1;
            }
        });

        //self.PropertyValue = ko.observable();
        //self.PropertyValuesArray = ko.observableArray([]);

        //self.SetPropertyValues = function () {
        //    alert("ddfd");
        //    if (self.Property() !== '') {
        //        $.ajax({
        //            url: "/Person/" + self.Property(),
        //            type:"GET"
        //        }).done(function (resp) {
        //            self.PropertyValuesArray(resp);
        //        }).error(function (err) {
        //            self.ErrorMessage("Error!!" + err.status);
        //        });
        //    }
        //}

        
        loadTransactions(); //Function Call

        //Function to Get All Persons
        function loadTransactions() {
            $.ajax({
                url: "/Transactions",
                type: "GET"
            }).done(function (resp) {
                self.Transactions(resp);
            }).error(function (err) {
                self.ErrorMessage("Error " + err.status);
            });
        }


        //Make an ajax call to WEB API
        //And Put Data in Transactions observablearray



        self.FilterValue.subscribe(function (val) {
            if (val !== 'undefined' || val !== '') {
                if (searchFlag === 1) {
                    var url = "/Transactions/" + self.Property() + "/" + val;
                    $.ajax({
                        url: url,
                        type: "GET",
                        }).done(function (resp) {
                        self.Transactions(resp);
                    }).error(function (err) {
                        self.ErrorMessage("Error " + err.status);
                    });
                }
            }
            if (val === '') {
                loadTransactions();
            }
        });

    };

    ko.applyBindings(new SearchViewModel());
})();