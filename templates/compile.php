<?php
// JDoodle API Credentials
$clientId = "";     // Replace with your JDoodle client ID
$clientSecret = ""; // Replace with your JDoodle client secret

// Get the posted data from the JavaScript fetch request
$input = json_decode(file_get_contents('php://input'), true);
$code = $input['code'];
$language = $input['language'];

// JDoodle API URL
$url = "https://api.jdoodle.com/v1/execute";

// Create the payload for JDoodle API
$postData = array(
    'clientId' => $clientId,
    'clientSecret' => $clientSecret,
    'script' => $code,
    'language' => $language,
    'versionIndex' => '0',
    'stdin' => ''
);

// Initialize cURL session
$ch = curl_init($url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($postData));
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json'));

// Execute the cURL session and fetch the result
$response = curl_exec($ch);
if ($response === false) {
    $response = json_encode(array("output" => "Error in API request"));
}
curl_close($ch);

// Return the output
header('Content-Type: application/json');
echo $response;
?>

