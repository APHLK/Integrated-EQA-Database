<?php

/**
 * Created by PhpStorm.
 * User: Abno-44
 * Date: 1/13/2017
 * Time: 16:40
 */
require_once substr($_SERVER['CONTEXT_DOCUMENT_ROOT'], 0, stripos($_SERVER['CONTEXT_DOCUMENT_ROOT'], 'public'))
        . DIRECTORY_SEPARATOR . 'library' . DIRECTORY_SEPARATOR . 'Bacteriology' . DIRECTORY_SEPARATOR . 'application'
        . DIRECTORY_SEPARATOR . 'controllers' . DIRECTORY_SEPARATOR . 'main.php';

class Admin_BacteriologydbciController extends Zend_Controller_Action {

    protected $homeDir;
    protected $dbConnection;

    public function init() {

        $this->homeDir = dirname($_SERVER['DOCUMENT_ROOT']);
        $this->dbConnection = new Main();
    }

    public function returnTotalCount($tableName, $id, $column) {

        try {
            $where[$column] = $id;
            return $this->dbConnection->selectCount($tableName, $where);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function returnJson($dataArray) {
        if (sizeof($dataArray) > 0) {
            return json_encode($dataArray);
        } else {
            return (json_encode(array('status' => 0)));
        }
    }

    public function savesamplestopanelAction() {
        try {
            $jsPostData = file_get_contents('php://input');

            $jsPostData = (array) (json_decode($jsPostData));
            $idArray = $jsPostData['sampleIds'];
            $idArray = (array) $idArray;

            if (is_array($jsPostData)) {
                $response = array();
                foreach ($idArray as $value) {
                    //   $connection = new Main();
                    $value = ((array) $value);

                    $data['sampleId'] = $value['id'];
                    $data['totalAddedSamples'] = $value['quantity'];
                    $data['panelId'] = $jsPostData['panelId'];
                    $response = $this->dbConnection->insertData('tbl_bac_sample_to_panel', $data);
                }
                echo $this->returnJson($response);
            }
            exit();
        } catch (Exception $error) {
            echo $error->getMessage();
        }
    }

    public function saveuserstosampleAction() {
        try {
            $jsPostData = file_get_contents('php://input');

            $jsPostData = (array) (json_decode($jsPostData));
            $idArray = $jsPostData['userIds'];

            if (is_array($jsPostData)) {
                $response = array();
                foreach ($idArray as $value) {
                    //   $connection = new Main();
                    $data['userId'] = $value;
                    $data['sampleId'] = $jsPostData['sampleId'];
                    $data['panelToSampleId'] = $jsPostData['panelToSampleId'];
                    $data['roundId'] = $jsPostData['roundId'];
                    $data['participantId'] = $jsPostData['participantId'];
                    $response = $this->dbConnection->insertData('tbl_bac_samples_to_users', $data);
                }
                echo $this->returnJson($response);
            }
            exit();
        } catch (Exception $error) {
            echo $error->getMessage();
        }
    }

    public function createEmailBody($name, $message) {

        $html = "<div style='heigth:40px;width:100%;background-color:gray;color:White;text-align:left'>"
                . "<p style='margin-left : 10px;padding-top : 10px;padding-bottom : 10px;font-size:18px'><b>NPHL</b><br>"
                . "National Public Health Laboratories,<br>PT Testing</p></div>"
                . "<br><div style='font-size:16px;'><b>Dear " . $name . ",</b></div>";
        $html .= "<div style='font-size:14px;text-align:left;margin-top : 10px'>"
                . 'This is to notify you  ' . $message . '.';

        $html .= '<br><br>Regards,<br>National Public Health Laboratories.'
                . ''
                . '<hr>';

        $html .= "<hr>
            <div style='font-size:14px;text-align:left;padding-top : 10px;padding-bottom : 10px'>
            
           DISCLAIMER : This is a system generated mail, please do not reply.
            All the information contained in this e-mail message is strictly
            confidential and may be legally privileged. Such information is intended
            solely for the use of the designated recipient. Any disclosure, copying or
            distribution of all or part of the information contained herein to or by
            third parties is prohibited and may be unlawful. If you have received this
            e-mail message in error please delete it immediately and notify NPHL through e-mail to  <mailto:info@nphl.co.ke>
            mailto:info@nphl.co.ke
            <hr>
           </div>
            ";
        $html .= "<div style='heigth:70px;width:100%;background-color:#33ccff;color:white;text-align:center;padding-top : 10px;padding-bottom : 10px'>"
                . "<p style='color:white'>NPHL. | KNH, Upperhill, Nairobi.<br>


                    Office:  |<br>

                    email:   info@nphl.co.ke |web:   <http://www.nphl.co.ke/ > <i style='color:white'>www.nphl.co.ke</i>

                    

                   </p>"
                . "<p style='margin-left : 10px;margin-bottom : 3px;'>Copyright Reserved @ " . date('Y') . "</p></div>";


//        $body['body'] = $html;
//        $body['subject'] = $message['subject'];
        return $html;
    }

    public function generateMessage($message, $type) {
        $msg = '';
        if ($type == 0) {//successfully enrollement of lab
            $msg = "that your request to participant in the round <b>" . $message['roundCode'] .
                    "</b> has been successfully approved<br>You will receive an official start date";
            $subj = 'Successfully Enrollement Of Lab';
        }
        if ($type == 1) {//Official Start of Round
            $msg = "that the round <b>" . $message['roundCode'] . "</b> has started official on <b>" . $message['date'] . "</b>";
            $subj = 'Official Start of Round ' . $message['roundCode'];
        }
        if ($type == 2) {//Issuance of samples
            $msg = "that you have been issue with sample " . $message['batchName'] . " for round 
            <b>" . $message['roundCode'] . "</b> and submit results by <b>" . $message['date'] . "</b>";
            $subj = 'Issuance of samples ' . $message['batchName'];
        }
        if ($type == 3) {//success sending of samples
            $msg = "that  " . $message['shipmentName'] . " shipment has been dispatched to you lab ,courier is <b>" . $message['courier'] . "</b> on
            <b>" . $message['date'] . "</b> <br> Kindly confirm on receiving";
            $subj = 'Shipment Dispatch ' . $message['shipmentName'];
        }
        if ($type == 4) {//officia end of round
            $msg = "that the round <b>" . $message['roundCode'] . "</b> has ended official on <b>" . $message['date'] . "</b> no more submissions are allowed";
            $subj = 'Official end of round ' . $message['roundCode'];
        }

        $mess['message'] = $msg;
        $mess['subject'] = $subj;
        return $mess;
    }

    public function testconfigAction() {
        $config = parse_ini_file(APPLICATION_PATH . DIRECTORY_SEPARATOR . "configs" . DIRECTORY_SEPARATOR . "application.ini", APPLICATION_ENV);

        print_r($config['production']['email.config.username']);
        exit;
    }

    public function sendemailAction($body='', $to = '', $send = '') {
        try {
            $config = parse_ini_file(APPLICATION_PATH . DIRECTORY_SEPARATOR . "configs" . DIRECTORY_SEPARATOR . "application.ini", APPLICATION_ENV);
          
            $configMail = array('ssl' => 'tls',
                'auth' => 'login',
                'username' => $config['production']['email.config.username'],
                'password' => $config['production']['email.config.password']);

            $transport = new Zend_Mail_Transport_Smtp($config['production']['email.host'], $configMail);


            $mail = new Zend_Mail();


            $message = isset($send) ? $body : $this->createEmailBody('Participant', $body['message']);
            $mail->setBodyHtml($message);
            $mail->setFrom('National Public Health Laboratories');
            if ($to != '') {
                $mail->addTo($to, '');
            } else {
                $mail->addTo($config['production']['email.config.username'], 'EQA NMRL');
            }
            $subject = isset($send) ? 'ROUND PUBLISHED RESULTS' : $body['subject'];
            $mail->setSubject($subject);
            if ($mail->send($transport)) {
//                echo 'Sent successfully';
            } else {
                echo 'unable to send email';
            }
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        exit();
    }

    public function savepaneltoshipmentAction() {
        try {
            $jsPostData = file_get_contents('php://input');

            $jsPostData = (array) (json_decode($jsPostData));
            $idArray = $jsPostData['panelId'];

            if (is_array($jsPostData)) {
                $response = array();
                foreach ($idArray as $value) {

                    $data['panelId'] = $value;
                    $data['shipmentId'] = $jsPostData['shipmentId'];
                    $response = $this->dbConnection->insertData('tbl_bac_panels_shipments', $data);
                }
                echo $this->returnJson($response);
            }
            exit();
        } catch (Exception $error) {
            echo $error->getMessage();
        }
    }

    public function saveEmailNotifications() {
        
    }

    public function sendEmailToEnrolledLabs($dtls) {
        try {
            $labDetails = $this->returnValueWhere($dtls['labId'], 'participant');
            $roundDetails = $this->returnValueWhere($dtls['roundId'], 'tbl_bac_rounds');

            $message['labName'] = $labDetails['first_name'];
            $message['roundCode'] = $roundDetails['roundCode'];
            $message['date'] = $roundDetails['startDate'];
            $emailMessage = $this->generateMessage($message, 0);

            $this->saveEmailNotifications($emailMessage, $labDetails['email']);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function getroundwherelabAction() {
        $whereRound['evaluated'] = 0;
        $whereLab = $this->returnUserLabDetails();
        $round = $this->dbConnection->selectFromTable('tbl_bac_rounds', $whereRound);
//        var_dump($whereLab);
        if ($round != false) {
            foreach ($round as $key => $value) {
                $where['labId'] = $whereLab['participant_id'];
                $where['roundId'] = $value->id;

                $readyLabs = $this->returnValueWhere($where, 'tbl_bac_ready_labs');
                $round[$key]->enrolled = sizeof($readyLabs) > 0 ? 1 : 0;
                $round[$key]->enrolledStatus = sizeof($readyLabs) > 0 ? 'Enrolled for the round' : 'Not Enrolled';
                $round[$key]->daysLeft = $this->converttodays($round[$key]->endDate);
                $round[$key]->participantId = $whereLab['participant_id'];
            }
            echo $this->returnJson(array('data' => $round, 'status' => 1));
        }

        exit;
    }

    public function saveenrollinglabAction() {
        $jsPostData = file_get_contents('php://input');

        $jsPostData = (array) (json_decode($jsPostData));

        $response = $this->dbConnection->insertData('tbl_bac_ready_labs', $jsPostData);
        echo $this->returnJson($response);
        exit;
    }

    public function savelabstoroundAction() {
        try {
            $jsPostData = file_get_contents('php://input');

            $jsPostData = (array) (json_decode($jsPostData));
            $idArray = $jsPostData['labId'];

            if (is_array($jsPostData)) {

                foreach ($idArray as $value) {

                    $data['labId'] = $value;

                    $data['roundId'] = $jsPostData['roundId'];
                    $response = $this->dbConnection->insertData('tbl_bac_rounds_labs', $data);
                    $this->sendEmailToEnrolledLabs($data);
                    $updateData['status'] = 2;
                    $this->dbConnection->updateTable('tbl_bac_ready_labs', $data, $updateData);

                    $this->savePanelForEachLab($data['roundId'], $data['labId']);
                }
                echo $this->returnJson(array('status' => 1));
            }
            exit();
        } catch (Exception $error) {
            echo $error->getMessage();
        }
    }

    public function savePanelForEachLab($round, $labId) {
        $where['roundId'] = $round;

        $dataDB = $this->dbConnection->selectFromTable('tbl_bac_shipments', $where);

        if ($dataDB != false) {
            foreach ($dataDB as $key => $value) {

                $whereShipmentId['shipmentId'] = $dataDB[$key]->id;
                $whereShipmentId['participantId'] = null;
                $panels = $this->dbConnection->selectFromTable('tbl_bac_panels_shipments', $whereShipmentId);

                try {
                    if ($panels != false) {

                        foreach ($panels as $key => $panelValue) {

                            $deleteNullPanel['shipmentId'] = $whereShipmentId['shipmentId'];
                            $deleteNullPanel['panelId'] = $panels[$key]->panelId;
                            $insert['panelId'] = $panels[$key]->panelId;

                            $insert['deliveryStatus'] = $dataDB[$key]->shipmentStatus;


                            $insert['shipmentId'] = $whereShipmentId['shipmentId'];
                            $insert['roundId'] = $round;
                            $insert['participantId'] = $labId;

                            $insert['createdBy'] = $this->dbConnection->getUserSession();


                            $response = $this->dbConnection->insertData('tbl_bac_panels_shipments', $insert);

                            $insertSample = $this->savesampleforeachpanel($insert, $insert['deliveryStatus']);
//                        if (!$insertSample) {
//                            exit;
//                        }
                            if (isset($deleteNullPanel)) {
                                $deleteNullPanel['panelId'] = null;
                                //$status = $this->dbConnection->deleteFromWhere('tbl_bac_panels_shipments', $deleteNullPanel);
                            }
                        }
                    }
                } catch (Exception $e) {
                    echo $e->getMessage();
                }
            }
        } else {
            exit;
        }
    }

    public function savesampleforeachpanel($panelDtls, $status) {

        try {


            if (is_array($panelDtls)) {
                $where['panelId'] = $panelDtls['panelId'];
                $where['shipmentId'] = $panelDtls['shipmentId'];
                $where['deliveryStatus <'] = 1;
                $where['participantId '] = null;


                $samplesWithPanels = $this->dbConnection->selectFromTable('tbl_bac_sample_to_panel', $where);
//                print_r($where);
//                exit;

                if ($samplesWithPanels != false) {

                    foreach ($samplesWithPanels as $key => $value) {

                        $insert['panelId'] = $panelDtls['panelId'];
                        $insert['sampleId'] = $samplesWithPanels[$key]->sampleId;
                        $insert['shipmentId'] = $panelDtls['shipmentId'];

                        $insert['deliveryStatus'] = $status;
                        $insert['participantId'] = $panelDtls['participantId'];
                        $insert['roundId'] = $panelDtls['roundId'];
                        $insert['totalAddedSamples'] = $samplesWithPanels[$key]->totalAddedSamples;

                        $insert['createdBy'] = $this->dbConnection->getUserSession();
                        $response = $this->dbConnection->insertData('tbl_bac_sample_to_panel', $insert);
                    }
//                    return true;
                }
//                return false;
            }
        } catch (Exception $exception) {
            echo("error occured " . $exception->getMessage());
        }
    }

    public function insertAction() {
        $jsPostData = file_get_contents('php://input');

        $jsPostData = (array) (json_decode($jsPostData));
        if (is_array($jsPostData)) {

            $dataDB['data'] = $this->dbConnection->insertData($jsPostData['tableName'], (array) $jsPostData['data']);
            $dataDB['status'] = 1;
        } else {
            $dataDB['status'] = 0;
        }
        echo $this->returnJson($dataDB);

        exit();
    }

    public function returnValueWhere($id, $tableName) {
        $returnArray = array();
        if (!is_array($id)) {
            if ($tableName == 'data_manager') {
                $whereId['dm_id'] = $id;
            } else if ($tableName == 'participant') {
                $whereId['participant_id'] = $id;
            } else if ($tableName == 'participant_manager_map') {
                $whereId['dm_id'] = $id;
            } else {
                $whereId['id'] = $id;
            }
        } else {
            $whereId = $id;
        }
        if (is_array($whereId)) {
            $dataDB = $this->dbConnection->selectFromTable($tableName, $whereId);
//            echo($dataDB);
//            exit;
            if ($dataDB != false) {
                try {

                    foreach ($dataDB as $key => $value) {
                        // array_push($returnArray,$value);
                        $returnArray = $value;
                    }
                } catch (Exception $e) {
                    return '';
                }
            } else {
                return false;
            }
        }
        return (array) $returnArray;
        exit();
    }

    public function testpdfAction() {

        exit();
    }

    public function returnWithRefColNames($tableName, $where) {
        try {

            $dataDB = $this->dbConnection->selectFromTable($tableName, $where);
//            echo(size($dataDB));
//            exit;
            if ($dataDB != false) {

                foreach ($dataDB as $key => $value) {
                    if ($tableName == 'tbl_bac_panels_shipments') {


                        $panel = $this->returnValueWhere($value->panelId, 'tbl_bac_panel_mst');
                        $shipment = $this->returnValueWhere($value->panelId, 'tbl_bac_shipments');

                        $dataDB[$key]->panelName = $panel['panelName'];
                        $dataDB[$key]->panelLabel = $panel['panelLabel'];
                        $dataDB[$key]->panelType = $panel['panelType'];
                        $dataDB[$key]->panelDatePrepared = $panel['panelDatePrepared'];
                        $dataDB[$key]->dateCreated = $panel['dateCreated'];
                        $dataDB[$key]->barcode = $panel['barcode'];
                        $dataDB[$key]->shipmentDeliveryStatus = $shipment['shipmentStatus'];
                        if (isset($where['participantId'])) {
                            $dataDB[$key]->totalSamplesAdded = $this->dbConnection->selectCount('tbl_bac_sample_to_panel', $where, 'panelId');
                        } else {
                            $dataDB[$key]->totalSamplesAdded = $this->dbConnection->selectCount('tbl_bac_sample_to_panel', $value->panelId, 'panelId');
                        }
                    } else if ($tableName == 'tbl_bac_sample_to_panel') {
                        $sample = $this->returnValueWhere($value->sampleId, 'tbl_bac_samples');

                        $dataDB[$key]->batchName = $sample['batchName'];
                        $dataDB[$key]->datePrepared = $sample['datePrepared'];
                        $dataDB[$key]->materialSource = $sample['materialSource'];
                        $dataDB[$key]->materialOrigin = $sample['materialOrigin'];
                        $dataDB[$key]->dateCreated = substr($dataDB[$key]->dateCreated, 0, 10);
                        $dataDB[$key]->datePrepared = substr($dataDB[$key]->datePrepared, 0, 10);
                    } else if ($tableName == 'tbl_bac_expected_results') {

                        $sample = $this->returnValueWhere($value->sampleId, 'tbl_bac_samples');
//print_r($sample);
//exit;

                        $dataDB[$key]->batchName = $sample['batchName'];
                        $dataDB[$key]->materialSource = $sample['materialSource'];
                        $dataDB[$key]->sampleDetails = $sample['sampleDetails'];
                        $dataDB[$key]->sampleInstructions = $sample['sampleInstructions'];
                    } else if ($tableName == 'tbl_bac_panel_mst') {

                        $dataDB[$key]->totalSamplesAdded = $this->selectCount('tbl_bac_sample_to_panel', $value->panelId, 'panelId');
                    } else if ($tableName == 'tbl_bac_ready_labs') {
                        $lab = $this->returnValueWhere($value->labId, 'participant');

                        $dataDB[$key]->first_name = $lab['first_name'];
                        $dataDB[$key]->region = $lab['region'];
                        $dataDB[$key]->institute = $lab['institute_name'];
//                        $dataDB[$key]->batchName = $sample['batchName'];
                    }
                }
            }
            return $dataDB;
        } catch
        (Exception $e) {
            $e->getMessage();
        }
    }

    public function getmicroagentsAction() {
        $postedData = $this->returnArrayFromInput();
//print_r($postedData);
//exit;
        $where['sampleId'] = $postedData['sampleId'];
        $microAgents = $this->dbConnection->selectFromTable('tbl_bac_expected_micro_bacterial_agents', $where);
//        var_dump($where);
//        exit;
        if ($microAgents != false) {
            echo $this->returnJson(array("status" => 1, 'data' => $microAgents));
        } else {
            echo $this->returnJson(array("status" => 0, 'message' => 'No Records Found'));
        }
        exit;
    }

    public function getusersessionsAction() {
        echo $this->returnJson(array('data' => $this->returnUserLabDetails(), 'status' => 1));
        exit;
    }

    public function getwheredeliveryAction() {
        try {
            $postedData = file_get_contents('php://input');
            $postedData = (array) (json_decode($postedData));

            $tableName = $postedData['tableName'];

            $where = $postedData['where'];
            $where = (array) ($where);

            $dataDB = $this->dbConnection->selectFromDStatusTable($tableName, $where);

            if ($dataDB != false) {
                $tableArry = array();
                if ($tableName == 'tbl_bac_panel_mst' || $tableName == 'tbl_bac_sample_to_panel' || $tableName == 'tbl_bac_panels_shipments' || $tableName == 'tbl_bac_samples_to_users' || $tableName == 'tbl_bac_rounds' || $tableName == 'tbl_bac_shipments'
                ) {
                    foreach ($dataDB as $key => $value) {

                        $dataDB[$key]->totalSamplesAdded = $this->dbConnection->selectCount('tbl_bac_sample_to_panel', $value->id, 'panelId');

                        if ($tableName == 'tbl_bac_sample_to_panel' || $tableName == 'tbl_bac_samples_to_users') {

                            $sample = $this->returnValueWhere($value->sampleId, 'tbl_bac_samples');
                            $round = $this->returnValueWhere($value->roundId, 'tbl_bac_rounds');
                            $dataDB[$key]->batchName = $sample['batchName'];
                            $dataDB[$key]->datePrepared = $sample['datePrepared'];
                            $dataDB[$key]->materialSource = $sample['materialSource'];
                            $dataDB[$key]->materialOrigin = $sample['materialOrigin'];
                            $dataDB[$key]->roundCode = $round['roundCode'];

                            $dataDB[$key]->dateCreated = substr($dataDB[$key]->dateCreated, 0, 10);
                            $dataDB[$key]->datePrepared = substr($dataDB[$key]->datePrepared, 0, 10);
                            $dataDB[$key]->feedBackWord = $value->feedBack == 1 ? 'taken' : 'untaken';
                            $whereId = $tableName == 'tbl_bac_sample_to_panel' ? $dataDB[$key]->id : $dataDB[$key]->panelToSampleId;
                            $sampleInfo = $this->returnSampleInfo($whereId);

                            $dataDB[$key]->daysLeftOnTen = $sampleInfo['endDaysLeft'] > 10 ? 0 : $sampleInfo['endDaysLeft'];
                            $dataDB[$key]->allowedOnTenDays = $sampleInfo['endDaysLeft'] > 10 ? 0 : 1;


                            if ($tableName == 'tbl_bac_samples_to_users') {

                                $issuedTo = $this->returnValueWhere($value->userId, 'data_manager');
//                            var_dump($issuedTo);
//                            exit;
                                $dataDB[$key]->issuedTo = $issuedTo['last_name'] . ' ' . $issuedTo['first_name'];
                            }
                        }
                        if ($tableName == 'tbl_bac_rounds') {
                            $dataDB[$key]->daysLeft = $this->converttodays($dataDB[$key]->endDate);
                            $dataDB[$key]->totalShipmentsAdded = $this->dbConnection->selectCount('tbl_bac_shipments', $value->id, 'roundId');
                            $whereReady['roundId'] = $value->id;
                            $whereReady['status'] = 2;
                            $dataDB[$key]->totalLabsAdded = $this->dbConnection->selectCount('tbl_bac_ready_labs', $whereReady, 'roundId');
                        }
                        if ($tableName == 'tbl_bac_panels_shipments') {


                            $panel = $this->returnValueWhere($value->panelId, 'tbl_bac_panel_mst');


                            $dataDB[$key]->panelName = $panel['panelName'];
                            $dataDB[$key]->panelLabel = $panel['panelLabel'];
                            $dataDB[$key]->panelType = $panel['panelType'];
                            $dataDB[$key]->panelDatePrepared = $panel['panelDatePrepared'];
                            $dataDB[$key]->dateCreated = $panel['dateCreated'];
                            $dataDB[$key]->barcode = $panel['barcode'];
                            $dataDB[$key]->totalSamplesAdded = $this->dbConnection->selectCount('tbl_bac_sample_to_panel', $value->panelId, 'panelId');
                        }

                        if ($tableName == 'tbl_bac_shipments') {
                            $where['participantId'] = null;
                            $whereSS['shipmentId'] = $value->id;
                            $dataDB[$key]->totalPanelsAdded = $this->dbConnection->selectCount('tbl_bac_panels_shipments', $whereSS, 'shipmentId');
                        }
                    }
                }
            }

            if (sizeof($dataDB) > 0) {
                $data['status'] = 1;
                $data['data'] = $dataDB;
                echo($this->returnJson($data));
            } else {
                echo($this->returnJson(json_encode(array('status' => 0))));
            }
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        exit();
    }

    public function updateroundstartAction() {
        try {
            $data['status'] = 0;
            $dataArray = $this->returnArrayFromInput();

            if (is_array($dataArray)) {
                $arr = (array) $dataArray['where'];
                $checkShipment['roundId'] = $arr['id'];
                $checkShipment['shipmentStatus'] = 0;

                $shipmentDispatch = $this->dbConnection->selectCount('tbl_bac_shipments', $checkShipment, 'roundId');

                if ($shipmentDispatch == 0) {
                    $data = $this->dbConnection->updateTable($dataArray['tableName'], (array) $dataArray['where'], (array) $dataArray['updateData']);
                    $arr = (array) $dataArray['where'];
                    $where['roundId'] = $arr['id'];
                    $data = $this->dbConnection->updateTable('tbl_bac_shipments', $where, (array) $dataArray['updateData']);

                    $data = $this->dbConnection->updateTable('tbl_bac_panels_shipments', $where, (array) $dataArray['updateData']);
                    $data = $this->dbConnection->updateTable('tbl_bac_sample_to_panel', $where, (array) $dataArray['updateData']);

                    if ($dataArray['tableName'] == 'tbl_bac_shipments') {
                        
                    }
                    $data['status'] = 1;
                } else {
                    $data['message'] = 'There is undispatched shipment,please dispatch then try again';
                }
            } else {
                $data['message'] = 'could not find your request';
            }
            echo $this->returnJson($data);
        } catch (Exception $exc) {
            $exc->getMessage();
        }
        exit();
    }

    public function converttodays($endDate, $startDate = null) {
        if (isset($startDate)) {
            $diff = strtotime($endDate) - strtotime($startDate);
        } else {
            $diff = strtotime($endDate) - time();
        }
        $diff = round($diff / (60 * 60 * 24), 1);
        return $diff > 0 ? $diff : 0;
        exit;
    }

    public function returnTotalSamples($array, $tableName) {
        if (count($array) > 0) {
            foreach ($array as $key => $value) {
                if ($tableName == 'tbl_bac_panel_mst') {
                    $array[$key]->totalSamplesAdded = $this->dbConnection->selectCount('tbl_bac_sample_to_panel', $value->id, 'panelId');
                }
                if ($tableName == 'tbl_bac_shipments') {
                    $where['participantId'] = null;
                    $where['shipmentId'] = $value->id;
                    $whereRound['id'] = $value->roundId;
                    $array[$key]->roundInfo = $this->returnValueWhere($whereRound, 'tbl_bac_rounds');
                    $whereCreatedBy['admin_id'] = $value->createdBy;
                    $created = $this->returnValueWhere($whereCreatedBy, 'system_admin');
                    $array[$key]->createdBy = $created['first_name'] . ' ' . $created['last_name'];
                    $array[$key]->totalPanelsAdded = $this->dbConnection->selectCount('tbl_bac_panels_shipments', $where, 'shipmentId');
                }
            }
        }
        return $array;
    }

    public function getsampleinstructionsAction() {
        $postedData = file_get_contents('php://input');
        $postedData = (array) (json_decode($postedData));

        $sampleInstructions = $this->returnValueWhere($postedData, 'tbl_bac_sample_instructions');

        if (sizeof($sampleInstructions) == 0) {
            $where['status'] = 9;

            $sampleInstructions = $this->returnValueWhere($where, 'tbl_bac_sample_instructions');
        }

        if (sizeof($sampleInstructions) > 0) {
            $sampleInstructions['currentId'] = $sampleInstructions['sampleId'];
            unset($sampleInstructions['batchName']);
            echo $this->returnJson(array('status' => 1, 'data' => $sampleInstructions));
        } else {
            echo $this->returnJson(array('status' => 0, 'message' => 'no records found'));
        }
//        return $sampleInstructions;
        exit;
    }

    public function returnSampleInstructions($postedData) {

        $sampleInstructions = $this->returnValueWhere($postedData, 'tbl_bac_sample_instructions');

        if (sizeof($sampleInstructions) == 0) {
            $where['status'] = 9;

            $sampleInstructions = $this->returnValueWhere($where, 'tbl_bac_sample_instructions');
        }
        return $sampleInstructions;
    }

    public function getdistinctshipmentsAction() {

        $postedData = file_get_contents('php://input');
        $postedData = (array) (json_decode($postedData));

        $where = (array) $postedData['where'];
//        print_r($where);
//          exit();

        if ($where['type'] == 0) {
            $whereShipment = $this->returnUserLabDetails();
            $whereParticipant['participantId'] = $whereShipment['participant_id'];
            $whereParticipant['deliveryStatus !'] = 0;
        }
        $tableName = 'tbl_bac_panels_shipments';

        $dataDB = $this->dbConnection->selectFromTable($tableName, $whereParticipant, true);


        if ($dataDB != false) {
            foreach ($dataDB as $key => $value) {
                if ($tableName == 'tbl_bac_panels_shipments') {

                    $whereS['shipmentId'] = $value->shipmentId;
                    $whereS['participantId'] = $whereShipment['participant_id'];

                    $shipment = $this->returnValueWhere($value->shipmentId, 'tbl_bac_shipments');

                    $round = $this->returnValueWhere($shipment['roundId'], 'tbl_bac_rounds');

                    $dataDB[$key]->shipmentName = $shipment['shipmentName'];
                    $dataDB[$key]->shipmetId = $value->shipmentId;
                    $dataDB[$key]->id = $value->shipmentId;
                    $dataDB[$key]->shipmentLabel = $shipment['shipmentLabel'];
                    $dataDB[$key]->shimentDsc = $shipment['shipmentDsc'];
                    $dataDB[$key]->dateDispatched = $shipment['dateDispatched'];
                    $dataDB[$key]->dateCreated = $shipment['dateCreated'];
                    $dataDB[$key]->roundId = $shipment['roundId'];
                    $dataDB[$key]->shipmentStatus = $shipment['shipmentStatus'];
                    $dataDB[$key]->datePrepared = $shipment['datePrepared'];
                    $dataDB[$key]->dispatchCourier = $shipment['dispatchCourier'];
                    $dataDB[$key]->roundName = $round['roundName'];
                    $dataDB[$key]->roundCode = $round['roundCode'];
                    $dataDB[$key]->startDate = $round['startDate'];
                    $dataDB[$key]->endDate = $round['endDate'];
                    $dataDB[$key]->daysLeft = $this->converttodays($dataDB[$key]->endDate);
                    $dataDB[$key]->totalPanelsAdded = $this->dbConnection->selectCount('tbl_bac_panels_shipments', $whereS, 'panelId');
                }
            }
        }
        if ($dataDB != false) {
            $data['status'] = 1;
            $data['data'] = $dataDB;

            echo($this->returnJson($data));
        } else {
            echo $this->returnJson(array('status' => 0, 'message' => 'No Records Found'));
        }

        exit;
    }

    public function getdistinctpanelsAction() {

        $postedData = file_get_contents('php://input');
        $postedData = (array) (json_decode($postedData));
        //
        $where = (array) $postedData['where'];
//        print_r($where);
//          exit();
        $tableName = 'tbl_bac_panels_shipments';
        $where['participantId'] = null;
        $dataDB = $this->dbConnection->selectFromTable($tableName, $where, true);

        if ($dataDB != false) {
            foreach ($dataDB as $key => $value) {
                if ($tableName == 'tbl_bac_panels_shipments') {


                    $panel = $this->returnValueWhere($value->panelId, 'tbl_bac_panel_mst');


                    $dataDB[$key]->panelName = $panel['panelName'];
                    $dataDB[$key]->panelLabel = $panel['panelLabel'];
                    $dataDB[$key]->panelType = $panel['panelType'];
                    $dataDB[$key]->panelDatePrepared = $panel['panelDatePrepared'];
                    $dataDB[$key]->dateCreated = $panel['dateCreated'];
                    $dataDB[$key]->barcode = $panel['barcode'];
                    $wherCnt['participantId'] = null;
                    $wherCnt['id'] = $value->panelId;
                    $dataDB[$key]->totalSamplesAdded = $this->dbConnection->selectCount('tbl_bac_sample_to_panel', $wherCnt, 'panelId');
                }
            }
        }
        if ($dataDB != false) {
            $data['status'] = 1;
            $data['data'] = $dataDB;

            echo($this->returnJson($data));
        } else {
            echo($this->returnJson(json_encode(array('status' => 0, 'message' => 'No Records Found'))));
        }

        exit;
    }

    public function returnLastRounds($where, $userId) {
        $whr['labId'] = $where['participant_id'];
        $rounds = $this->dbConnection->selectFromTable('tbl_bac_ready_labs', $whr);
//        var_dump($rounds);
//        exit;
        if ($rounds != false) {
            $i = 0;
            foreach ($rounds as $key => $value) {
                if ($i == 1) {
                    break;
                }
                $whereUserRound['userId'] = $userId;
                $whereUserRound['roundId'] = $value->roundId;
                $getUserFromIssuedSamples = $this->dbConnection->selectFromTable('tbl_bac_samples_to_users', $whereUserRound);
                if ($getUserFromIssuedSamples != false) {
                    return true;
                } else {
                    return false;
                }


                $i++;
            }
        } else {
            return false;
        }
    }

    public function getlabusersAction() {

        try {
            $labDetails = $this->returnUserLabDetails();
            $where['participant_id'] = $labDetails['participant_id'];

            if (isset($where['participant_id'])) {
                $labUsers = $this->dbConnection->selectFromTable('participant_manager_map', $where);
                if ($labUsers != false) {
                    foreach ($labUsers as $key => $value) {
                        $userDetails = $this->returnValueWhere($value->dm_id, 'data_manager');

                        $receivedLastRound = $this->returnLastRounds($where, $value->dm_id);

                        $labUsers[$key]->names = $userDetails['first_name'] . ' ' . $userDetails['last_name'];

                        $labUsers[$key]->receivedLastMessage = $receivedLastRound ? 'Received sample previous Round' : 'Didn\'t receive sample previous round';
                        $labUsers[$key]->receivedLastStatus = $receivedLastRound;
                    }
                    echo $this->returnJson(array("status" => 1, "data" => $labUsers));
                }
            }
        } catch (Exception $exception) {
            echo $exception->getMessage();
        }
        exit;
    }

    public function selectfromtableAction() {
        try {
            $postedData = file_get_contents('php://input');
            $postedData = (array) (json_decode($postedData));

            $tableName = $postedData['tableName'];
            if (isset($postedData['where'])) {
                $where = $postedData['where'];
                $where = (array) ($where);
            } else {
                $where = '';
            }


            $where = sizeof($where) > 0 ? $where : "";
//print_r($postedData);
//exit;

            if ($tableName == 'tbl_bac_panels_shipments') {
                $dataDB = $this->returnWithRefColNames($tableName, $where);
            } else if ($tableName == 'tbl_bac_sample_to_panel' || $tableName == 'tbl_bac_ready_labs' || $tableName == 'tbl_bac_expected_results') {
                $dataDB = $this->returnWithRefColNames($tableName, $where);
            } else {
                $dataDB = $this->dbConnection->selectFromTable($tableName, $where);
                $dataDB = $this->returnTotalSamples($dataDB, $tableName);
            }
            if ($dataDB != false) {
                $data['status'] = 1;
                $data['data'] = $dataDB;

                echo($this->returnJson($data));
            } else {
                echo($this->returnJson(json_encode(array('status' => 0, 'message' => 'No Records Found'))));
            }
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        exit();
    }

    public function returnArrayFromInput() {
        $postedData = file_get_contents('php://input');
        $postedData = (array) (json_decode($postedData));

        return $postedData;
    }

    public function customdeleteAction() {
        try {
            $postedData = file_get_contents('php://input');
            $postedData = (array) (json_decode($postedData));


            $where['id'] = $postedData['where'];
            $tableName = $postedData['tableName'];
            $status['status'] = 0;
            if (isset($tableName)) {
                $status = $this->dbConnection->deleteFromWhere($tableName, $where);
            }
            echo $this->returnJson($status);
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        exit();
    }

    public function returnSampleInfo($samplePanelId) {


        $sampleDateDelivered = $this->returnValueWhere($samplePanelId, 'tbl_bac_sample_to_panel');

        $endDate = date('Y-m-d');
        $sampleDateDelivered['endDaysLeft'] = $this->converttodays($endDate, $sampleDateDelivered['dateDelivered']);
        return $sampleDateDelivered;
    }

    public function getusersamplesissuedAction() {
        try {

            $where['userId'] = $this->dbConnection->getUserSession();

            if (count($where) > 0) {
                $dataDB = $this->dbConnection->selectFromTable('tbl_bac_samples_to_users', $where);
                if ($dataDB != false) {
                    foreach ($dataDB as $key => $value) {
                        $sample = $this->returnValueWhere($value->sampleId, 'tbl_bac_samples');
                        $dataDB[$key]->batchName = $sample['batchName'];
                        $dataDB[$key]->datePrepared = $sample['datePrepared'];
                        $dataDB[$key]->sampleInstructions = $sample['sampleInstructions'];
                        $dataDB[$key]->materialOrigin = $sample['materialOrigin'];

                        $dataDB[$key]->materialSource = $sample['materialSource'];
                        $dataDB[$key]->sampleDetails = $sample['sampleDetails'];
                        $dataDB[$key]->sampleInstructions = $sample['sampleInstructions'];

                        $dataDB[$key]->materialOrigin = $sample['materialOrigin'];
                        $dataDB[$key]->dateCreated = substr($dataDB[$key]->dateCreated, 0, 10);
                        $dataDB[$key]->datePrepared = substr($dataDB[$key]->datePrepared, 0, 10);

                        $round = $this->returnValueWhere($value->roundId, 'tbl_bac_rounds');

                        $dataDB[$key]->startDate = $round['startDate'];
                        $dataDB[$key]->endDate = $round['endDate'];
                        $dataDB[$key]->roundCode = $round['roundCode'];
                        $dataDB[$key]->roundStatus = $round['roundStatus'];
                        $sampleInfo = $this->returnSampleInfo($dataDB[$key]->panelToSampleId);
                        $dataDB[$key]->daysLeft = $this->converttodays($dataDB[$key]->endDate);
                        $dataDB[$key]->daysLeftOnTen = $sampleInfo['endDaysLeft'] > 10 ? 0 : $sampleInfo['endDaysLeft'];
                        $dataDB[$key]->allowedOnTenDays = $sampleInfo['endDaysLeft'] > 10 ? 0 : 1;
                        $dataDB[$key]->allowed = $dataDB[$key]->daysLeft > 0 ? 1 : 0;
                    }
                    $data['status'] = 1;
                    $data['data'] = $dataDB;

                    echo($this->returnJson($data));
                } else {
                    $data['status'] = 0;
                    $data['message'] = 'No data available';

                    echo($this->returnJson($data));
                }
            }
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        exit;
    }

    public function editusermicroagentsAction() {
        $postedData = file_get_contents('php://input');
        $postedData = (array) (json_decode($postedData));
        $insertData = (array) $postedData['resultsAba'];
//print_r($insertData);exit;
        if (count($insertData) > 0) {
            $resp['status'] = 0;
            if (isset($postedData['edit'])) {
                $deleteWhere['sampleId'] = $postedData['sampleId'];
                $status = $this->dbConnection->deleteFromWhere('tbl_bac_micro_bacterial_agents', $deleteWhere);
//                echo $this->returnJson($status);
//                exit;
            }
            for ($i = 0; $i < sizeof($insertData); $i++) {

                $newFinal = (array) $insertData[$i];

                $newFinalArray['antiMicroAgent'] = $newFinal['antiMicroAgent'];
                $newFinalArray['reportedToStatus'] = $newFinal['reportedToStatus'];
                $newFinalArray['diskContent'] = $newFinal['diskContent'];
                $newFinalArray['sampleId'] = $postedData['sampleId'];
                $newFinalArray['finalScore'] = $newFinal['finalScore'];

                if ($postedData['tableName'] == "tbl_bac_micro_bacterial_agents") {
                    $newFinalArray['userId'] = $postedData['userId'];
                    $newFinalArray['roundId'] = $postedData['roundId'];
                    $newFinalArray['participantId'] = $postedData['participantId'];

                    $newFinalArray['panelToSampleId'] = $postedData['panelToSampleId'];
                    $newFinalArray['level'] = 1;
                } else {
                    $newFinalArray['agentScore'] = $postedData['agentScore'];
                }
                $insertStatus = $this->dbConnection->insertData($postedData['tableName'], $newFinalArray);

                $resp['status'] = 1;
                if ($insertStatus['status'] != 1) {

                    $resp['status'] = 0;
                    $resp['message'] = $insertStatus['message'];
                } else {
                    if ($postedData['tableName'] == "tbl_bac_micro_bacterial_agents") {
                        $where['panelToSampleId'] = $newFinalArray['panelToSampleId'];
                        $where['participantId'] = $postedData['participantId'];

                        $update['published'] = 0;
//                        $update['markedStatus'] = 0;
                        $data = $this->dbConnection->updateTable('tbl_bac_sample_to_panel', $where, $update);
                        $data = $this->dbConnection->updateTable('tbl_bac_samples_to_users', $where, $update);
                    }
                }
            }
            echo $this->returnJson($resp);
        }


        exit;
    }

    public function saveusermicroagentsAction() {
        $postedData = file_get_contents('php://input');
        $postedData = (array) (json_decode($postedData));
        $insertData = (array) $postedData['resultsAba'];
//print_r($insertData);exit;
        if (count($insertData) > 0) {
            $resp['status'] = 0;
            if (isset($postedData['edit'])) {
                $deleteWhere['sampleId'] = $postedData['sampleId'];
                $status = $this->dbConnection->deleteFromWhere('tbl_bac_expected_micro_bacterial_agents', $deleteWhere);
//                echo $this->returnJson($status);
//                exit;
            }
            for ($i = 0; $i < sizeof($insertData); $i++) {

                $newFinal = (array) $insertData[$i];

                $newFinalArray['antiMicroAgent'] = $newFinal['antiMicroAgent'];
                $newFinalArray['reportedToStatus'] = $newFinal['reportedToStatus'];
                $newFinalArray['diskContent'] = $newFinal['diskContent'];
                $newFinalArray['sampleId'] = $postedData['sampleId'];
                $newFinalArray['finalScore'] = $newFinal['finalScore'];

                if ($postedData['tableName'] == "tbl_bac_micro_bacterial_agents") {
                    $newFinalArray['userId'] = $postedData['userId'];
                    $newFinalArray['roundId'] = $postedData['roundId'];
                    $newFinalArray['participantId'] = $postedData['participantId'];

                    $newFinalArray['panelToSampleId'] = $postedData['panelToSampleId'];
                    $newFinalArray['level'] = 1;
                } else {
                    $newFinalArray['agentScore'] = $postedData['agentScore'];
                }
                $insertStatus = $this->dbConnection->insertData($postedData['tableName'], $newFinalArray);

                $resp['status'] = 1;
                if ($insertStatus['status'] != 1) {

                    $resp['status'] = 0;
                    $resp['message'] = $insertStatus['message'];
                } else {
                    if ($postedData['tableName'] == "tbl_bac_micro_bacterial_agents") {
                        $where['panelToSampleId'] = $newFinalArray['panelToSampleId'];
                        $where['participantId'] = $postedData['participantId'];
                        $update['responseStatus'] = 1;

                        $data = $this->dbConnection->updateTable('tbl_bac_sample_to_panel', $where, $update);
                        $data = $this->dbConnection->updateTable('tbl_bac_samples_to_users', $where, $update);
                    }
                }
            }
            echo $this->returnJson($resp);
        }


        exit;
    }

    public function getsampleallusersAction() {
        try {
            $where = $this->returnArrayFromInput();

            if (count($where) > 0) {
                $dataDB = $this->dbConnection->selectFromTable('tbl_bac_samples_to_users', $where);
                if ($dataDB != false) {
                    foreach ($dataDB as $key => $value) {
                        $sample = $this->returnValueWhere($value->sampleId, 'tbl_bac_samples');
                        $dataDB[$key]->batchName = $sample['batchName'];
                        $dataDB[$key]->datePrepared = $sample['datePrepared'];
                        $dataDB[$key]->bloodPackNo = $sample['bloodPackNo'];
                        $dataDB[$key]->materialOrigin = $sample['materialOrigin'];
                        $dataDB[$key]->dateCreated = substr($dataDB[$key]->dateCreated, 0, 10);
                        $dataDB[$key]->datePrepared = substr($dataDB[$key]->datePrepared, 0, 10);

                        $round = $this->returnValueWhere($value->roundId, 'tbl_bac_rounds');

                        $dataDB[$key]->startDate = $round['startDate'];
                        $dataDB[$key]->endDate = $round['endDate'];
                        $dataDB[$key]->roundCode = $round['roundCode'];
                        $dataDB[$key]->roundStatus = $round['roundStatus'];
                        $dataDB[$key]->daysLeft = $this->converttodays($dataDB[$key]->endDate);
                        $dataDB[$key]->allowed = $dataDB[$key]->daysLeft > 0 ? 1 : 0;
                    }
                    $data['status'] = 1;
                    $data['data'] = $dataDB;

                    echo($this->returnJson($data));
                } else {
                    $data['status'] = 0;
                    $data['message'] = 'No data available';

                    echo($this->returnJson($data));
                }
            }
        } catch (Exception $e) {
            echo $e->getMessage();
        }
        exit;
    }

    public function getresultsonroundAction() {
        $where['roundId'] = 1;
        $where['markedStatus'] = 1;
        $getSampleResults = $this->dbConnection->selectFromTable('tbl_bac_response_results', $where);

        if ($getSampleResults !== false) {
            $holdingArray = array();
            $arrayResultsAndExpected = array();
            $arrayASTResults = array();
            $arrayASTExpectedResults = array();

            foreach ($getSampleResults as $key => $value) {
                $whereSampleID['sampleId'] = $getSampleResults[$key]->sampleId;
                $expectedResults = $this->returnValueWhere($whereSampleID, 'tbl_bac_expected_results');

                $sampleInfo = $this->returnValueWhere($getSampleResults[$key]->sampleId, 'tbl_bac_samples');

                $tempArray['grainStainReactionResult'] = $value->grainStainReaction;
                $tempArray['grainStainReactionScoreResult'] = $value->grainStainReactionScore;
                $tempArray['finalIdentificationResult'] = $value->finalIdentification;
                $tempArray['finalIdentificationScoreResult'] = $value->finalIdentificationScore;

                $tempArray['grade'] = $value->grade;
                $tempArray['finalScore'] = $value->finalScore;

                $tempArray['batchName'] = $sampleInfo['batchName'];
                $tempArray['grainStainReaction'] = $expectedResults['grainStainReaction'];
                $tempArray['grainStainReactionScore'] = $expectedResults['grainStainReactionScore'];
                $tempArray['finalIdentification'] = $expectedResults['finalIdentification'];
                $tempArray['finalIdentificationScore'] = $expectedResults['finalIdentificationScore'];

                $sampleASTs = $this->dbConnection->selectFromTable('tbl_bac_micro_bacterial_agents', $whereSampleID);

                $sampleASTsExptectedResults = $this->dbConnection->selectFromTable('tbl_bac_expected_micro_bacterial_agents', $whereSampleID);

                array_push($arrayResultsAndExpected, $tempArray);
                array_push($arrayASTResults, $sampleASTs);
                array_push($arrayASTExpectedResults, $sampleASTsExptectedResults);
            }
            echo json_encode(array('arrayASTExpectedResults' => $arrayASTExpectedResults, 'arrayASTResults' => $arrayASTResults, 'arrayResultsAndExpected' => $arrayResultsAndExpected));
        } else {
            
        }
        exit;
    }

    public function getroundperformanceperlabAction() {

        $jsPostData = file_get_contents('php://input');

        $jsPostData = (array) (json_decode($jsPostData));

        if (isset($jsPostData['checkLab'])) {
            if ($jsPostData['checkLab'] == 1) {
                $whereLab = $this->returnUserLabDetails();
                $wherePP['labId'] = $whereLab['participant_id'];
            }
        }

        $round = $this->dbConnection->selectFromTable('tbl_bac_rounds_labs');

        if ($round !== false) {
            foreach ($round as $key => $value) {
//                $where['labId'] = $whereLab['participant_id'];
                $where['roundId'] = $value->roundId;

                $roundInfo = $this->returnValueWhere($value->roundId, 'tbl_bac_rounds');

                $round[$key]->totalMarks = $this->dbConnection->selectCount('tbl_bac_response_results', $where, 'finalScore', true);

                $roundId = $where['roundId'];
                $round[$key]->totalSamples = $this->dbConnection->doQuery("select count(sampleID) as totalSamples from tbl_bac_response_results where roundId = $roundId  group by roundId", true);
                $round[$key]->averageScore = $roundInfo['evaluated'] == 0 ? 'N/A' : round($round[$key]->totalMarks / $round[$key]->totalSamples);
                $round[$key]->roundName = $roundInfo['roundName'];
                $round[$key]->roundCode = $roundInfo['roundCode'];
                $round[$key]->roundDateCreated = $roundInfo['dateCreated'];

                $grade = $this->getGradeRemark($round[$key]->averageScore);

                $round[$key]->averageGrade = $roundInfo['evaluated'] == 0 ? 'N/A' : $grade['grade'];
                $round[$key]->evaluated = $roundInfo['evaluated'] == 0 ? 'Un-Evaluated' : 'Evaluated';
            }
            echo $this->returnJson(array('data' => $round, 'status' => 1));
        }


        exit;
    }

    public function getGradeRemark($total) {

        $where = '';
        $range = $this->dbConnection->selectFromTable('tbl_bac_grades', $where);
        $returnArray['grade'] = 'Not Set';
        $returnArray['remarks'] = 'Not Available';

        if ($range != false) {
            foreach ($range as $key => $value) {
                if ($total >= $value->lowerMark && $total <= $value->upperMark) {
                    $returnArray['grade'] = $value->grade;
                    $returnArray['remarks'] = $value->remarks;
                    break;
                }
            }
        }
        return $returnArray;
    }

    public function updateShipmentRelatedTables($where, $update = null) {
//        var_dump($where);
//        var_dump($update);
//        exit;
        $updatetbl_bac_panel_mst = array();

        $updatetbl_bac_panels_shipments = array();

        $updatetbl_bac_sample_to_panel = array();
        $whereShipmentId['shipmentId'] = $where['id'];
        $whereShipmentIdMothertable['id'] = $where['id'];
        $shipmentData = $this->returnValueWhere($whereShipmentIdMothertable, 'tbl_bac_shipments');


        $shipmentStatus = $shipmentData['shipmentStatus'];
        $shipmentId = $shipmentData['id'];
        /*         * ***************************Update tbl_bac_panels_shipments****************************** */

        $updatetbl_bac_panels_shipments['deliveryStatus'] = $shipmentStatus;
        $updatetbl_bac_panels_shipments['dateDelivered'] = $shipmentData['dateReceived'];
        $updatetbl_bac_panels_shipments['quantity'] = 1;
        $updatetbl_bac_panels_shipments['receivedBy'] = $shipmentData['addressedTo'];
        $whereTBPS['shipmentId'] = $shipmentId;
//        $whereTBPS['deliveryStatus >'] = 0;
//        $whereTBPS['roundId >'] = 0;
        if ($shipmentData['roundId'] > 0) {
            $updatetbl_bac_panels_shipments['deliveryStatus'] = $shipmentStatus;
        }
        $this->dbConnection->updateTable('tbl_bac_panels_shipments', $whereTBPS, $updatetbl_bac_panels_shipments);
        /*         * ****************************************************************************************** */

        /*         * *******************************update tbl_bac_panel_mst*********************************************************** */

        $whereShipmentData = $this->dbConnection->selectFromTable('tbl_bac_panels_shipments', $whereShipmentId);

        if ($whereShipmentData != false) {
            foreach ($whereShipmentData as $key => $value) {
                $whereTBPM['id'] = $whereShipmentData[$key]->panelId;

                $updateTBPM['dateDelivered'] = $shipmentData['dateReceived'];
                $updateTBPM['shipmentNumber'] = 'S-0' . $shipmentId;
                $updateTBPM['panelStatus'] = $shipmentStatus;
                if ($whereShipmentData[$key]->roundId > 0) {
                    $updateTBPM['panelStatus'] = $shipmentData['shipmentStatus'];
                }
                $updateTBPMfeedback = $this->dbConnection->updateTable('tbl_bac_panel_mst', $whereTBPM, $updateTBPM);
                /*                 * *********************update tbl_bac_sample_to_panel************************** */

                $updateTBSP['dateDelivered'] = $shipmentData['dateReceived'];
                $updateTBSP['deliveryStatus'] = 0;

                if ($whereShipmentData[$key]->roundId > 0) {
                    $updateTBSP['deliveryStatus'] = $shipmentData['shipmentStatus'];
                }
                $updateTBSP['shipmentId'] = $shipmentId;

                $whereTBSP['panelId'] = $whereShipmentData[$key]->panelId;
//                $whereTBSP['participantId'] = null;
//                $whereTBSP['r$whereTBSP['participantId'] = null;oundId > '] = 0;
                $updateTBPMfeedback = $this->dbConnection->updateTable('tbl_bac_sample_to_panel', $whereTBSP, $updateTBSP);
//                print_r($updateTBPMfeedback);
//                exit;
                /*                 * ****************************************** */
            }
        }
        /*         * ************************************************************************************************************** */
//        exit;
        return true;
    }

    public function updatetablewhereAction() {
        try {
            $data['status'] = 0;
            $dataArray = $this->returnArrayFromInput();

//            print_r($dataArray);
//            exit;

            if (is_array($dataArray)) {
                $updateInfo = (array) $dataArray['updateData'];
                if ($dataArray['tableName'] == 'tbl_bac_shipments') {
                    if (isset($updateInfo['roundInfo'])) {
                        unset($updateInfo['roundInfo']);
                    }
                }
                if ($dataArray['tableName'] == 'tbl_bac_rounds') {
                    if (isset($updateInfo['totalLabsAdded'])) {
                        unset($updateInfo['totalLabsAdded']);
                    }
                }

                $data = $this->dbConnection->updateTable($dataArray['tableName'], (array) $dataArray['where'], $updateInfo);

                if ($dataArray['tableName'] == 'tbl_bac_shipments') {
                    if ($data['status'] == 1) {
                        $this->updateShipmentRelatedTables((array) $dataArray['where'], (array) $dataArray['updateData']);
                    }
                    $posted = (array) $dataArray['updateData'];
                    if ($posted['shipmentStatus'] == 2) {

                        $this->sendemailondispatchAction((array)$dataArray['where']);
                    }
                }
            } else {
                $data['message'] = ('could not find your request');
            }
            echo $this->returnJson($data);
        } catch (Exception $exc) {
            $exc->getMessage();
        }
        exit();
    }

    public function sendemailondispatchAction($shipmentWhere = null) {


        $shipmentInfo = $this->returnValueWhere($shipmentWhere['id'], 'tbl_bac_shipments');
        $round = $this->returnValueWhere($shipmentInfo['roundId'], 'tbl_bac_rounds');

        
        if (count($shipmentInfo)>0) {
//            print_r($shipmentInfo);
//exit;
            $roundId = $shipmentInfo['roundId'];
            $sql_query = "select email from tbl_bac_rounds_labs"
                    . " join participant on participant.participant_id=tbl_bac_rounds_labs.labId"
                    . " where roundId = $roundId ";


//            print_r($sql_query);
//            exit;
            $data = $this->dbConnection->doQuery($sql_query);
            $email = array();
            foreach ($data as $key => $value) {


                if (!in_array($value['email'], $email)) {
                    array_push($email, $value['email']);
                }
            }

            $shipmentInfo['date'] = $shipmentInfo['dateDispatched'];
            $shipmentInfo['courier'] = $shipmentInfo['dispatchCourier'];
            $message = $this->generateMessage($shipmentInfo, 3);
            $common = new Application_Service_Common();
            $message['message'] .= " of round <b>" . $round['roundName'] ."</b> ";
            $message['message'] = "This is to notify you <br> ".$message['message'];
            $common->sendMail($email, null, null, $message['subject'], $message['message'], null, "ePT Microbiology Admin");

          
        }
     return true;
    }

    public function saveshipmentstoroundAction() {
        $postedData = $this->returnArrayFromInput();
        if (is_array($postedData)) {
            $shipments = $postedData['shipmentIds'];
            for ($i = 0; $i < sizeof($shipments); $i++) {
                $where['id'] = $shipments[$i];
                $updateData['roundId'] = $postedData['roundCode'];
                $data = $this->dbConnection->updateTable('tbl_bac_shipments', $where, $updateData);
                $whereShipment['id'] = $where['id'];
                $this->updateShipmentRelatedTables($where);
                print_r($data);
            }
        }
        exit;
    }

    public function getPanelsFromShipment($where) {

        try {
            $tableName = 'tbl_bac_panels_shipments';
            $dataDB = $this->dbConnection->selectFromTable($tableName, $where);
            //  echo(sizeof($dataDB));
//            exit;
            if ($dataDB != false) {
                $userLabDtls = $this->returnUserLabDetails();
                foreach ($dataDB as $key => $value) {


                    $panel = $this->returnValueWhere($value->participantId, 'participant');
                    $panelDtls = $this->returnValueWhere($value->panelId, 'tbl_bac_panel_mst');

                    $dataDB[$key]->originLab = $userLabDtls['first_name'] . ' - ' . $userLabDtls['institute_name'];
                    $dataDB[$key]->panelName = $panelDtls['panelName'];
                    $dataDB[$key]->panelLabel = $panelDtls['panelLabel'];
                    $dataDB[$key]->labName = $panel['lab_name'];
                    $dataDB[$key]->instituteName = $panel['institute_name'];
                    $dataDB[$key]->city = $panel['city'];
                    $dataDB[$key]->region = $panel['region'];
                    $dataDB[$key]->firstName = $panel['first_name'];
                    $dataDB[$key]->mobile = $panel['mobile'];
                    $dataDB[$key]->phone = $panel['phone'];
                    $dataDB[$key]->totalSamplesAdded = $this->dbConnection->selectCount('tbl_bac_sample_to_panel', $value->panelId, 'panelId');
                }
            }
            return $dataDB;
        } catch
        (Exception $e) {
            $e->getMessage();
        }
    }

    public function returnUserLabDetails() {
        $loggedIn = $this->dbConnection->getUserSession();
        try {
            $userLab = $this->returnValueWhere($loggedIn, 'participant_manager_map');
            $userLabDetails = $this->returnValueWhere($userLab['participant_id'], 'participant');
            return $userLabDetails;
        } catch (Exception $e) {
            echo $e->getMessage();
        }
    }

    public function generatelabelsAction() {
        $where['shipmentId'] = $_GET['id'];
        $loggedIn = $this->returnUserLabDetails();

        if ($loggedIn > 0) {
            $count = $_GET['total'];
            $panels = $this->getPanelsFromShipment($where);

            if ($panels > 0) {
                // print_r($panels);
                $this->dbConnection->generatePdfFile($panels, $count);
            } else {
                echo 'No Panel Available records available';
            }
        } else {
            echo '<b>You not logged in</b>';
        }
        exit();
    }

}
