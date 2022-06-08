# Create the request
$HTTP_Request = [System.Net.WebRequest]::Create('http://www.google.com')

# Get the response
$HTTP_Response = $HTTP_Request.GetResponse()

# Get the HTTP as a interger
$HTTP_Status = [int]$HTTP_Response.StatusCode

If ($HTTP_Status -eq 200) {
    Write-Host "Site is OK!"
}
Else {
    Write-Host "The Site may be down, please check!"
}

# Clean up and close the request.
$HTTP_Response.Close()
