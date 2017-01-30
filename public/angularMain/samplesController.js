/**
 * Created by Abno-44 on 1/13/2017.
 */

(function () {
    var samplesModule = angular.module('ReportModule');
    ReportModule.constant('serverSamplesURL', 'http://localhost:8082/admin/Bacteriologydbci/');
    samplesModule.controller('samplesController', function ($scope, $http, serverSamplesURL, EptServices, $timeout) {
        $scope.samples = {};
        $scope.samples.menuLength = 2;

        $scope.samples.alphaNumHyDashRegExp = new RegExp(EptServices.EptServiceObject.returnAlphaNumHyDashRegExp());

        $scope.samples.alphaNumHyDashSpaceRegExp = new RegExp(EptServices.EptServiceObject.returnAlphaNumHyDashSpaceRegExp());

        $scope.samples.sampleFormData = {}
        $scope.samples.itemsPerPage = EptServices.EptServiceObject.returnItemsPerPage();

        $scope.samples.toggleSamplesMenu = function () {
            if ($scope.samples.menuLength == 2) {
                $scope.samples.menuLength = 0;
            } else {
                $scope.samples.menuLength = 2;
            }

        }


        $scope.samples.changeItemsPerPage = function (pages) {
            $scope.samples.itemsPerPage = pages;
        }
        function changeFb(data) {
            $scope.samples.feedbackObject = data;
            $('.alert').show('slow');
        }

        $scope.samples.samplesData = {};
        $scope.samples.feedbackObject = EptServices.EptServiceObject.loaderStatus;

        $scope.samples.loaderProgressSpinner = '';
        $scope.samples.panelsToShipment = {};
        $scope.samples.sampleToPanel = {};
        function assignHTTPResponse(data, tableName) {
            if (tableName == 'tbl_bac_samples') {
                $scope.samples.samplesData = data.data;
            }
            if (tableName == 'tbl_bac_panel_mst') {
                $scope.samples.panelsData = data.data;
            }
            if (tableName == 'tbl_bac_shipments') {
                $scope.samples.shipmentsData = data.data;
            }
            if (tableName == 'tbl_bac_panels_shipments') {
                $scope.samples.panelsToShipment = data.data
            }
            if (tableName == 'tbl_bac_sample_to_panel') {
                $scope.samples.sampleToPanel = data.data;
            }
            if (tableName == 'participant') {
                $scope.samples.labs = data.data;
            }

        }

        $scope.samples.shipmentsData = {};
        $scope.samples.panelsData = {};
        $scope.samples.labs = {}
        $scope.samples.getAllLabs = function () {

            var where = {status: 'active'};
            console.log(where)
            $scope.samples.getAllSamples('participant', where);
            console.log($scope.samples.labs);
        }

        $scope.samples.getAllSamples = function (tableName, where) {

            try {
                $scope.samples.loaderProgressSpinner = 'fa-spinner'
                var url = serverSamplesURL + EptServices.EptServiceObject.returnServerUrl(tableName);

                var varData = {};
                varData.tableName = tableName;
                if (angular.isDefined(where)) {
                    varData.where = where;
                }


                $http
                    .post(url, varData)
                    .success(function (data) {
                        console.log(data);
                        $scope.samples.loaderProgressSpinner = '';
                        if (data.status == 1) {
                            assignHTTPResponse(data, tableName);
                        } else {
                            changeFb(EptServices.EptServiceObject.returnLoaderStatus(data.status));
                        }

                    })
                    .error(function (error) {
                        console.log(error)
                        $scope.samples.loaderProgressSpinner = '';
                        changeFb(EptServices.EptServiceObject.returnLoaderStatus(0));
                    })
            } catch (e) {
                console.log(e)
            }

        }
        $scope.samples.returnSampleStatus = function (panelStatus) {
            if (panelStatus == 1) {
                return 'Delivered';
            }
            if (panelStatus == 0) {
                return 'Unshipped';
            }
            if (panelStatus == 2) {
                return 'Dispatched';
            }
            if (panelStatus == 3) {
                return 'Delivered Broken';
            }
            if (panelStatus == 4) {
                return 'Delivered & Checked Ok';
            }
            if (panelStatus == 5) {
                return 'Delivered & Rejected';
            }
        }
        $scope.samples.returnPanelStatus = function (panelStatus) {
            if (panelStatus == 2) {
                return 'Dispatched';
            }
            else if (panelStatus == 0) {
                return 'Unshipped';
            }
            else if (panelStatus == 1) {
                return 'Delivered';
            }
            else if (panelStatus == 3) {
                return 'Delivered Broken';
            }
            else if (panelStatus == 4) {
                return 'Delivered & Checked';
            }
            else {
                return "Unknown status"
            }
        }
        $scope.samples.returnShipmentStatus = function (shipmentStatus) {

            if (shipmentStatus == 2) {
                return 'Dispatched';
            }
            if (shipmentStatus == 0) {
                return 'In Lab';
            }
            if (shipmentStatus == 1) {
                return 'Delivered Ok';
            }
            if (shipmentStatus == 3) {
                return 'Delivered Broken';
            } else {
                return 'Unknown';
            }
        }


        $scope.samples.linksObject = {
            samplesLink: 'viewsamples',
            currentTemplate: '../partialHTMLS/viewsamples.html'
        }

        $scope.samples.linksLabObject = {
            samplesLink: 'viewReceivedSamples',
            currentTemplate: '../partialHTMLS/labOperations/viewReceivedSamples.html'
        }

        $scope.samples.samplesActivePage = function (link, module) {
            $scope.samples.createNanobar(0)
            if (module == 1) {
                var currentTemplate = "../partialHTMLS/labOperations/" + link + ".html";

                $scope.samples.linksLabObject = {
                    samplesLink: link,
                    currentTemplate: currentTemplate
                }
                console.log($scope.samples.linksLabObject);
            } else {
                var currentTemplate = "../partialHTMLS/" + link + ".html";

                $scope.samples.linksObject = {
                    samplesLink: link,
                    currentTemplate: currentTemplate
                }
            }
            console.log($scope.samples.linksObject)

        }

        $scope.samples.addSampleGrading = function (sample) {
            $scope.samples.samplesActivePage('addsamplegrading', 0);
            $scope.samples.clickedSample = sample;
        }


        $scope.samples.sampleFormData.materialOrigin = 'NPHL';
        $scope.samples.panelFormData = {};
        $scope.samples.shipmentFormData = {};

        $scope.samples.savingSpinner = '';
        $scope.samples.savingInProgress = false;
        $scope.samples.showPanelModal = false;
        $scope.samples.hidePanelModal = function () {
            $scope.samples.showPanelModal = false;
        }
        $scope.samples.addSamplesToPanel = function (panel) {

            $scope.samples.currentPanel = panel;
            $scope.samples.showPanelModal = true;
            console.log($scope.samples.samplesData.length)
            $scope.samples.samplePanelArray = [];
            if ($scope.samples.samplesData.length == 0) {

                $scope.samples.getAllSamples('tbl_bac_samples');
            }

        }
        function changeSavingSpinner(status) {

            if (status) {
                $scope.samples.savingSpinner = 'fa-spinner';
                $scope.samples.savingInProgress = true;
            } else {
                $scope.samples.savingSpinner = '';
                $scope.samples.savingInProgress = false;
            }
        }

        function emptyFormData(tableName) {
            if (tableName == 'tbl_bac_samples') {
                $scope.samples.sampleFormData = {};
            }
            if (tableName == 'tbl_bac_panel_mst') {
                $scope.samples.panelFormData = {};
            }
            if (tableName == 'tbl_bac_shipments') {
                $scope.samples.shipmentFormData = {};
            }
            if (tableName == 'tbl_bac_panels_shipments') {

            }
        }


        /*---------------------------------------------------------------------add panels to shipments-----------------------------------------------------------------------------*/
        $scope.samples.currentShipment = {}
        $scope.samples.showShipmentModal = false;
        $scope.samples.panelsToShipmentArray = [];
        $scope.samples.addPanelsToShipment = function (shipment) {
            $scope.samples.currentShipment = shipment;
            $scope.samples.showShipmentModal = true;
            $scope.samples.panelsToShipmentArray = [];


        }
        $scope.samples.hideShipmentModal = function () {
            $scope.samples.showShipmentModal = false;
        }
        $scope.samples.savePanelsToShipments = function (shipment) {
            try {
                if (angular.isDefined(shipment)) {
                    changeSavingSpinner(true);
                    var postedData = {};
                    postedData.shipmentId = shipment.id;
                    postedData.panelId = $scope.samples.panelsToShipmentArray;
                    var url = serverSamplesURL + 'savepaneltoshipment';
                    $http
                        .post(url, postedData)
                        .success(function (response) {
                            console.log(response)
                            changeSavingSpinner(false);
                            if (response.status == 1) {
                                $scope.samples.panelsToShipmentArray = [];
                                changeFb(EptServices.EptServiceObject.returnLoaderStatus(response.status));
                            } else {
                                changeFb(EptServices.EptServiceObject.returnLoaderStatus(response.status));
                            }

                        })
                        .error(function (error) {
                            changeSavingSpinner(false);
                            changeFb(EptServices.EptServiceObject.returnLoaderStatus(0));
                        })

                } else {
                    changeSavingSpinner(false);
                    console.log('error')
                }
            } catch (error) {
                changeFb(EptServices.EptServiceObject.returnLoaderStatus(response.status, message));
            }
        }

        /*-------------------------------------------------------------------END savePanelsToShipments----------------------------------------------------------*/


        /*-------------------------------------------------------------------Get panels from a specific shipment----------------------------------------------------------*/

        $scope.samples.getPanelFromShipment = function (shipmentId) {
            $scope.samples.clickedShipment = shipmentId;
            if (isNumeric(shipmentId)) {
                try {
                    var where = {shipmentId: shipmentId};
                    $scope.samples.getAllSamples('tbl_bac_panels_shipments', where);

                } catch (Exc) {
                    console.log(Exc);
                }
            }
        }
        /*-------------------------------------------------------------------END get Panel From Shipment----------------------------------------------------------*/


        /*-------------------------------------------------------------------End function to add Panel To Shipment------------------------------------------------------*/
        $scope.samples.addPanelToShipment = function (id, checker) {
            try {
                $scope.samples.panelsToShipmentArray = EptServices.EptServiceObject.returnIdArray($scope.samples.panelsToShipmentArray, id, checker);
            } catch (error) {
                console.log(error);
            }
        }

        /*-------------------------------------------------------------------End function to add Panel To Shipment----------------------------------------------------------*/
        /*---------------------------------------------------------------------END of add panels to shipments---------------------------------------------------------------*/

        /*-----------------------------------------------------------samples from panels data------------------------------------------------------------------------*/


        $scope.samples.getSampleFromPanel = function (panelId, tableName) {
            try {
                $scope.samples.clickedPanel = panelId;
                console.log(panelId);
                if (isNumeric(panelId)) {
                    try {
                        var where = {panelId: panelId};
                        $scope.samples.getAllSamples(tableName, where);

                    } catch (Exc) {
                        console.log(Exc);
                    }
                }

            }
            catch (error) {
                console.log(error)
            }

        }

        /*---------------------------------------------------------------------------END of samples from panels data--------------------------------------------------------------------------------*/
        $scope.samples.checkerAll = '';
        /*-------------START  : check all rows ------*/
        $scope.samples.checkAll = function (checker) {

            $scope.samples.checkerAll = checker ? 'checked' : '';

        }

        /*array to hold checked samples*/
        $scope.samples.samplePanelArray = [];

        /*-------------------------------------------------------------------------START of function  for adding sample to a panel---------------------------------------------------------------------------------*/

        $scope.samples.addSampleToArray = function (id, checker) {
            try {
                $scope.samples.samplePanelArray = EptServices.EptServiceObject.returnIdArray($scope.samples.samplePanelArray, id, checker);
            } catch (error) {
                console.log(error);
            }
        }
        /*-------------------------------------------------------------------------END of adding a sample to array---------------------------------------------------------------------------------*/

        /*-------------------------------------------------------------------------START of function to return row checked status---------------------------------------------------------------------------------*/

        $scope.samples.returnCheckedRow = function (id, data) {
            if (data.indexOf(id) > -1) {
                return true;
            } else {
                return false;
            }


        }
        /*-------------------------------------------------------------------------END of function to return checked Status---------------------------------------------------------------------------------*/

        /*-------------------------------------------------------------------------START watcher for slow feedback hiding---------------------------------------------------------------------------------*/

        $scope.$watch('samples.feedbackObject', function () {
            console.log($scope.samples.feedbackObject);
            if ($scope.samples.feedbackObject.fbStatus) {

                $timeout(function () {
                    $('.alert').hide('slow');
                    $timeout(function () {
                        $scope.samples.feedbackObject.fbStatus = false;
                    }, 1000)

                }, 3300)

            }
        });

        /*-------------------------------------------------------------------------End of watcher for feedback slow hiding---------------------------------------------------------------------------------*/


        /*-------------------------------------------------------------------------START of save samples to a selected Panel---------------------------------------------------------------------------------*/
        $scope.samples.saveSamplesToPanel = function (panel) {

            try {

                var url = serverSamplesURL + 'savesamplestopanel';
                var postedData = {};
                postedData = {
                    panelId: panel.id,
                    sampleIds: $scope.samples.samplePanelArray
                };
                console.log(panel);
                changeSavingSpinner(true);
                $http
                    .post(url, postedData)
                    .success(function (response) {
                        console.log(response)
                        changeSavingSpinner(false);
                        if (response.status == 1) {
                            $scope.samples.samplePanelArray = [];
                            changeFb(EptServices.EptServiceObject.returnLoaderStatus(response.status));
                        } else {
                            changeFb(EptServices.EptServiceObject.returnLoaderStatus(0));
                        }
                    })
                    .error(function (error) {
                        changeSavingSpinner(false);
                        changeFb(EptServices.EptServiceObject.returnLoaderStatus(0));
                        console.log(error)
                    })
            } catch (error) {
                console.log(error);
            }

        }

        /*--------------------------------------------------------------------End of saving function------------------------------------------------------------------------------------------*/

        /*---------------------------------------------------------------------Save Data to DB generic function------------------------------------------------------------------------ */
        $scope.samples.saveSampleFormData = function (tableName, data) {

            try {
                if (angular.isDefined(tableName) && angular.isDefined(data)) {
                    var postedData = {};


                    if (tableName == 'tbl_bac_panel_mst' || tableName == 'tbl_bac_samples') {
                        data.barcode = EptServices.EptServiceObject.returnBarcode();
                    }
                    postedData.data = data;
                    postedData.tableName = tableName;
                    console.log(data);

                    var url = serverSamplesURL + 'insert';
                    changeSavingSpinner(true);
                    try {
                        console.log(data)
                        $http.post(url, postedData)
                            .success(function (response) {

                                console.log('data')
                                console.log(response.data)
                                changeFb(EptServices.EptServiceObject.returnLoaderStatus(response.data.status));
                                if (response.status == 1) {
                                    emptyFormData(tableName);

                                }
                                changeSavingSpinner(false);
                            })
                            .error(function (error) {
                                changeSavingSpinner(false);
                                changeFb(EptServices.EptServiceObject.returnLoaderStatus(0));
                            })
                    } catch (error) {
                        console.log(error)
                    }

                } else {
                    changeFb(EptServices.EptServiceObject.returnLoaderStatus(4));
                }
            } catch (error) {
                changeFb(EptServices.EptServiceObject.returnLoaderStatus(0));
                console.log(error)
            }


        }
        /*-------------------------------------------------------------------------------END of saving generic function------------------------------------------------------------------------------------*/
        /*-------------------------------------------------------------------------------return the correct sample data from table name---------------------------------*/
        function sampleData(tableName, operation, changedData) {
            try {
                var data = {};

                if (tableName == 'tbl_bac_samples') {

                    data = $scope.samples.samplesData;
                    if (operation == 1) {
                        $scope.samples.samplesData = changedData;
                    }
                }
                if (tableName == 'tbl_bac_panel_mst') {
                    data = $scope.samples.panelsData;
                    if (operation == 1) {
                        $scope.samples.panelsData = changedData;
                    }
                }
                if (tableName == 'tbl_bac_shipments') {
                    data = $scope.samples.shipmentsData;
                    if (operation == 1) {
                        $scope.samples.shipmentsData = changedData;
                    }
                }
                if (tableName == 'tbl_bac_panels_shipments') {
                    data = $scope.samples.panelsToShipment;
                    if (operation == 1) {
                        $scope.samples.panelsToShipment = changedData;
                    }
                }
                if (tableName == 'tbl_bac_sample_to_panel') {

                    data = $scope.samples.sampleToPanel;
                    if (operation == 1) {
                        $scope.samples.sampleToPanel = changedData;
                    }
                }
                if (operation != 1) {
                    return data;
                }
            } catch (Exc) {
                console.log(Exc)
            }
        }


        /*-------------------------------------------------------------------------End of returing the correct data---------------------------------------------------------*/
        /*---------------------------------------------------------------------------------------Start of custom delete function------------------------------------*/
        $scope.samples.deleteCustomRow = function (id, tableName) {

            try {
                var data = sampleData(tableName, 0);
                console.log(data)
                data = EptServices.EptServiceObject.sliceRowFromDData(id, data);

                if (data.length >= 0) {
                    sampleData(tableName, 1, data);
                    $scope.samples.deleteCustomeRowFromDb(tableName, id);
                }
            } catch (Exc) {
                console.log(Exc);
            }


        }
        /*---------------------------------------------------------------------------------------END of custom delte function-------------------*/
        /*----------------------------------------------------------------------STart custome function to delete from db-------------------------*/
        $scope.samples.deleteCustomeRowFromDb = function (tableName, id) {
            try {
                var postedData = {};
                postedData.tableName = tableName;
                postedData.where = id;
                var url = serverSamplesURL + 'customdelete';
                $http.post(url, postedData)
                    .success(function (response) {
                        console.log(response);
                    })
                    .error(function (error) {
                        console.log(error)
                    })
            } catch (Exc) {
                console.log(Exc);
            }
        }


        /*--------------------------------------------------------------------end of custom data to delete from db--------------------------------*/
        /*create modal path*/
        $scope.samples.returnActiveModal = function (link) {

            var currentTemplate = "../partialHTMLS/modals/" + link + ".html";

            return currentTemplate;


        }
        /*--------------------------------------------------------------dispatch shipment------------------------------------------*/
        $scope.samples.dispatchShipment = function (shipment, modal) {
            try {
                $scope.samples.addPanelsToShipment(shipment);
            } catch (Exc) {
                console.log(Exc)
            }

        }

        /*------------------------------------------------------end of dispatch shipping-----------------------------------------------*/
        /*-----------------------------------------------------------------------STart of mark as received shipment-----------------------*/
        $scope.samples.showClickedShipment = '';
        $scope.samples.receiveShipment = function (shipment, modal) {

            try {
                $scope.samples.addPanelsToShipment(shipment);
            } catch (Exc) {
                console.log(Exc)
            }

        }
        $scope.samples.updateWhere = function (postedData) {
            try {

                var url = serverSamplesURL + 'updatetablewhere';
                changeSavingSpinner(true);
                $http.post(url, postedData)
                    .success(function (response) {
                        console.log(response)
                        changeSavingSpinner(false);
                        changeFb(EptServices.EptServiceObject.returnLoaderStatus(response.status));

                        if (response.status == 1) {
                            $scope.samples.receiveShipmentFormData = {};
                        }
                    })
                    .error(function (error) {
                        changeSavingSpinner(false);
                        console.log(error);
                        changeFb(EptServices.EptServiceObject.returnLoaderStatus(0));
                    })
            } catch (Exc) {
                changeSavingSpinner(true);
                console.log(Exc)
            }
        }
        $scope.samples.saveDispatchShipmentForm = function (dispatchShipmentData) {
            try {
                dispatchShipmentData.dateDispatched = $scope.samples.getClickedDate();
                dispatchShipmentData.shipmentStatus = 2;
                console.log(dispatchShipmentData);


                var postedData = {};
                postedData.tableName = 'tbl_bac_shipments';
                postedData.updateData = dispatchShipmentData;
                postedData.where = {id: $scope.samples.currentShipment.id};
                if (angular.isDefined(postedData)) {
                    $scope.samples.updateWhere(postedData);
                }

            } catch (Exc) {
                console.log(Exc);
            }
        }
        $scope.samples.updateStatus = function (tableName, status, id) {
            var postedData = {};
            try {
                postedData.updateData = {deliveryStatus: status};
                postedData.tableName = tableName;
                postedData.where = {id: id}
                $scope.samples.updateWhere(postedData);

                $scope.samples.getSampleFromPanel($scope.receive.clickedPanel.id, 'tbl_bac_sample_to_panel');

            } catch (Exception) {
                console.log(Exception)
            }
        }
        $scope.samples.panelReceived = function (panelId, table, status) {
            try {
                if (angular.isDefined(panelId)) {
                    var postedData = {
                        where: {panelId: panelId},
                        tableName: table,
                        updateData: {deliveryStatus: status}
                    }
                    console.log(postedData)
                    $scope.samples.updateWhere(postedData);

                    $scope.samples.getAllSamples('tbl_bac_panel_mst');

                }
            } catch (Exc) {
                console.log(Exc)
            }
        }
        $scope.samples.currentBarcodeData = 'test code'

        $scope.samples.showBarcode = function () {
            // try {
            //     $("#barcode").barcode("124512652", "ean13",
            //         {barWidth: 2, barHeight: 50}
            //     );
            //     console.log($scope.samples.currentBarcodeData + ' works')
            // } catch (Exc) {
            //     console.log(Exc)
            // }
        }
        $scope.samples.printDiv = function (div) {
            // $("#demo").clone().printThis(
            //     {
            //         debug: true,        //     * show the iframe for debugging
            //         importCSS: true,           // * import page CSS
            //         importStyle: false,         //* import style tags
            //         printContainer: true,       //* grab outer container as well as the contents of the selector
            //         // loadCSS: "path/to/my.css",  //* path to additional css file - use an array [] for multiple
            //         pageTitle: "",           //   * add title to print page
            //         removeInline: false,       // * remove all inline styles from print elements
            //         printDelay: 333,            //* variable print delay; depending on complexity a higher value may be necessary
            //         header: null,               //* prefix to html
            //         footer: null,               //* postfix to html
            //         base: false,                //* preserve the BASE tag, or accept a string for the URL
            //         formValues: true,           //* preserve input/form values
            //         canvas: false,
            //     }
            // );
            console.log('called hidden')
            $scope.samples.showBarcode = false;
            $("#demo").print();
            console.log(div)
        }
        $scope.samples.showBarcode = false;
        $scope.samples.generateBarcode = function (data) {
            try {
                $scope.samples.showBarcode = true;
                $timeout(function () {
                    $scope.samples.currentBarcodeData = data;

                    var barcodeString = data.barcode;
                    console.log(barcodeString)
                    $("#demo").barcode(barcodeString, "ean13",
                        {barWidth: 3, barHeight: 60}
                    );
                }, 300)


            } catch (Exc) {
                console.log(Exc)
            }
        }
        $scope.samples.saveReceiveShipmentForm = function (receiveShipmentData) {
            try {
                receiveShipmentData.dateReceived = $scope.samples.getClickedDate();
                receiveShipmentData.shipmentStatus = 2;
                console.log(receiveShipmentData);


                var postedData = {};
                postedData.tableName = 'tbl_bac_shipments';
                postedData.updateData = receiveShipmentData;
                postedData.where = {id: $scope.samples.currentShipment.id};
                if (angular.isDefined(postedData)) {
                    $scope.samples.updateWhere(postedData);
                }

            } catch (Exc) {
                console.log(Exc);
            }
        }
        /*---------------------------------------------------------------------End of receiving function--------------------------------*/
        /*onloader function*/

        $scope.samples.showLoadingFile = function () {


        }

        $scope.samples.currenctClickedDate = new Date();

        $scope.samples.sampleFormData.datePrepared = EptServices.EptServiceObject.EptFormatDate($scope.samples.currenctClickedDate);
        $scope.samples.panelFormData.panelDatePrepared = EptServices.EptServiceObject.EptFormatDate($scope.samples.currenctClickedDate);
        $scope.samples.panelFormData.panelDateOfDelivery = EptServices.EptServiceObject.EptFormatDate($scope.samples.currenctClickedDate);
        $scope.samples.shipmentFormData.datePrepared = EptServices.EptServiceObject.EptFormatDate($scope.samples.currenctClickedDate);

        $scope.samples.setDatePrepared = function () {

            $scope.samples.panelFormData.panelDatePrepared = EptServices.EptServiceObject.EptFormatDate($scope.samples.currenctClickedDate);

        }
        $scope.samples.setShipmentDatePrepared = function () {
            $scope.samples.shipmentFormData.datePrepared = EptServices.EptServiceObject.EptFormatDate($scope.samples.currenctClickedDate);
        }
        $scope.samples.setSampleDatePrepared = function () {
            $scope.samples.sampleFormData.datePrepared = EptServices.EptServiceObject.EptFormatDate($scope.samples.currenctClickedDate);
        }
        $scope.samples.setExpectedDeliveryDate = function () {

            $scope.samples.panelFormData.panelDateOfDelivery = EptServices.EptServiceObject.EptFormatDate($scope.samples.currenctClickedDate);

        }

        $scope.samples.changeCurrentDate = function (cDate) {
            try {
                $scope.samples.currenctClickedDate = cDate;
            } catch (Exc) {
                console.log(Exc);
            }

        }

        $scope.samples.getClickedDate = function () {

            var cDate = EptServices.EptServiceObject.EptFormatDate($scope.samples.currenctClickedDate);
            $scope.samples.currenctClickedDate = cDate;
            return cDate;

        }

        $scope.samples.createNanobar = function (len) {

            var options = {};
            var simplebar = new Nanobar();
            simplebar.go(len);

        }
        //===========================================================================================================================================================
        //--------------------------------------------------------------RECEIVE PANELS AND SHIPMENT FUNCTIONS START HERE---------------------------------------------
        //===========================================================================================================================================================

        $scope.receive = {}
        $scope.receive.showPanelFullDetails = function (panelInfo) {
            console.log(panelInfo)
            $scope.receive.clickedPanel = panelInfo;
            $scope.samples.getSampleFromPanel(panelInfo.id, 'tbl_bac_sample_to_panel');
            $scope.samples.samplesActivePage('panelFullDetails', 1);

        }

        /*===================================================================END OF RECEIVE FUNCTION==================================================================*/


        /*-----------------------------------------------------------------filter to capitialize the first letter of the word---------------------------------------*/

    }).controller('DatepickerPopupCtrl', function ($scope) {
        $scope.today = function () {
            $scope.dt = new Date();
        };
        $scope.today();

        $scope.clear = function () {
            $scope.dt = null;
        };

        $scope.inlineOptions = {
            customClass: getDayClass,
            minDate: new Date(),
            showWeeks: true
        };

        $scope.dateOptions = {
            dateDisabled: disabled,
            formatYear: 'yy',
            maxDate: new Date(2020, 5, 22),
            minDate: new Date(),
            startingDay: 1
        };

        // Disable weekend selection
        function disabled(data) {
            var date = data.date,
                mode = data.mode;
            return false;//mode === 'day' && (date.getDay() === 0 || date.getDay() === 6);
        }

        $scope.toggleMin = function () {
            $scope.inlineOptions.minDate = $scope.inlineOptions.minDate ? null : new Date();
            $scope.dateOptions.minDate = $scope.inlineOptions.minDate;
        };

        $scope.toggleMin();

        $scope.open1 = function () {
            $scope.popup1.opened = true;
        };

        $scope.open2 = function () {
            $scope.popup2.opened = true;
        };

        $scope.setDate = function (year, month, day) {
            $scope.dt = new Date(year, month, day);
        };

        $scope.formats = ['dd-MMMM-yyyy'];
        $scope.format = $scope.formats[0];
        $scope.altInputFormats = ['M!/d!/yyyy'];

        $scope.popup1 = {
            opened: false
        };

        $scope.popup2 = {
            opened: false
        };

        var tomorrow = new Date();
        tomorrow.setDate(tomorrow.getDate() + 1);
        var afterTomorrow = new Date();
        afterTomorrow.setDate(tomorrow.getDate() + 1);
        $scope.events = [
            {
                date: tomorrow,
                status: 'full'
            },
            {
                date: afterTomorrow,
                status: 'partially'
            }
        ];

        function getDayClass(data) {
            var date = data.date,
                mode = data.mode;
            if (mode === 'day') {
                var dayToCheck = new Date(date).setHours(0, 0, 0, 0);

                for (var i = 0; i < $scope.events.length; i++) {
                    var currentDay = new Date($scope.events[i].date).setHours(0, 0, 0, 0);

                    if (dayToCheck === currentDay) {
                        return $scope.events[i].status;
                    }
                }
            }

            return '';
        }
    }).directive("datePicker", function () {
        return {
            template: "<div class='' ng-controller='DatepickerPopupCtrl'>" +
            "<p class='input-group'>" +
            "<input type='text' class='form-control' ng-change='samples.changeCurrentDate(dt)' " +
            " required uib-datepicker-popup ng-model='dt' is-open='popup2.opened' datepicker-options='dateOptions' ng-required='true' close-text='Close'/>" +
            "<span class='input-group-btn'>" +
            "<button type='button' class='btn btn-default' ng-click='open2()'>" +
            "<i class='glyphicon glyphicon-calendar'></i>" +
            "</button>" +
            "</span>" +
            "</p>" +
            "</div>"
        };
    })
        .filter('capitalizeLetter', function () {
            return function (input) {
                return (!!input) ? input.charAt(0).toUpperCase() + input.substr(1).toLowerCase() : '';
            }
        }).filter('spaceCapitals', function () {
        return function (input) {
            return input.replace(/([A-Z])/g, ' $1').trim();
        }
    })

    /*-------------------------------------------------------------------END if of the capitalizing filter-------------------------------------------------------------------------------------*/


})();
