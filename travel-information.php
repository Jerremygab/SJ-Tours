<?php

include 'components/connect.php';

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>San Juan Travel Information</title>
   
   <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <header id="header">
        <?php include 'components/header.php'; ?>
    </header>
    
    <section class="travel_info" id="travel_info">
        <div class="travel_container">
            <div class="title_">
                Travel Information
            </div>
            <div class="travel_content">
                <p>
                    San Juan is a coastal municipality in the province of Batangas.
                    The municipality has a land area of 273.40 square kilometers or 105.56 
                    square miles which constitutes 8.78% of Batangas's total area. Its population 
                    as determined by the 2020 Census was 114,068. This represented 3.92% of the 
                    total population of Batangas province, or 0.70% of the overall population of 
                    the CALABARZON region. Based on these figures, the population density is computed 
                    at 417 inhabitants per square kilometer or 1,081 inhabitants per square mile.
                </p>
                <div class="title_">Summary Data</div>
                <table>
                    <tr>
                        <th>Type</th>
                        <th>Island Group</th>
                        <th>Region</th>
                        <th>Province</th>
                        <th>Barangay Count</th>
                        <th>Postal Code</th>
                        <th>Coastal/Landlocked</th>
                        <th>Marine Waterbodies</th>
                        
                    </tr>
                    <tr>
                        <td>Municipality</td>
                        <td>Luzon</td>
                        <td>CALABARZON REGION 4-A</td>
                        <td>Batangas</td>
                        <td>42</td>
                        <td>4226</td>
                        <td>Coastal</td>
                        <td>Sibuyan Sea</td>
                        
                    </tr>
                </table>
                <table>
                    <tr>
                        <th>Philippine Major Island</th>
                        <th>Area(2013)</th>
                        <th>Population(2020)</th>
                        <th>Density(2020)</th>
                        <th>Coordinates</th>
                        <th>Estimated Elevation above sea level</th>
                    </tr>
                    <tr>
                        <td>Luzon</td>
                        <td>273.40km² (105.56 sq mi)</td>
                        <td>114,068</td>
                        <td>417 / km² (1,081 / sq mi)</td>
                        <td>13° 49' North, 121° 24' East (13.8246, 121.3962)</td>
                        <td>19.0 meters (62.2 feet)</td>
                    </tr>
                </table>
                <div class="title_"> Best Time To Visit </div>
                <p>
                    San Juan, Batangas is open all year round but the best time to visit is during summer. 
                    This is from March to May. Due to its proximity to Manila, expect crowded beach even during off season.
                    Best to avoid long weekends and holidays.
                </p>
                <div class="title_">Manila To San Juan</div>
                <p>
                    To get to Laiya Beach by car, go to EDSA (Southbound). Exit to SLEX then to CALABARZON/STAR Expressway. 
                    Then exit to Lipa City. Take the Tiaong Lipa Road. Follow the P. Torres Street and turn Right to Garcia – 
                    Rosario-San Juan-Candelaria Road. Turn right to Laiya Road. Drive straight until you reach the town of Laiya. 
                    Total Travel time is 3-4 hours.
                </p>
                <div class="title_">Budget And Itinerary</div>
                <div class="travel_grid">
                    <div></div>
                    <div>
                        <ul>    
                            <br>
                            <li>Ecological Fee – Php20.00 </li>
                            <br>
                            <p>Toll Fees:</p>
                            <li>SLEX From Alabang to Calamba – Php91.00</li>
                            <li>SLEX to STAR Tollway – Php25.00</li>
                            <li>STAR Tollway to Lipa – Php50.00 </li>
                            <br>
                            <p>Fares/Fees/Rates:</p>
                            <li>EDSA, Cubao to San Juan bus fare: (Alps the Bus only): PhP188.00 </li>
                            <li> Cubao to Lipa bus fare: PhP132.00</li>
                            <li>Buendia to Lipa bus fare: PhP124.00</li>
                            <li>Bus fare from Cubao to Lipa City: Php132.00</li>
                            <li>Lipa to San Juan van fare: PhP70.00</li>
                            <li>Lipa to San Juan jeepney fare: PhP45.00</li>
                            <li>San Juan to Laiya jeepney fare: PhP35.00</li>
                            <li>San Juan to Laiya tricycle fare: PhP60.00</li>
                            <br>
                            <p>NOTE:</p>
                            <li><i> Rates indicated above may change.</i></li>
                            <li><i>the return trip Laiya to San Juan town proper last trip is around 12nn, confirm this when you're there.</i></li>

                        </ul>
                    </div>
                </div>

                <div class="title_">Things To Consider</div>
                <div class="travel_grid">
                    <div></div>
                    <div>
                        <ul>
                            <li>Skyway is your friend especially on weekends.</li>
                            <li>Book in advance.</li>
                            <li>For easy navigation to your destination, use Waze or Google Maps.</li>
                            <li>There are plenty of resorts in the area. Expect the place gets crowded during long weekends and summer.</li>
                            <li>Secure your GoPro when doing water activities. Best to use a floaty, floating stick or bobber with your GoPro.</li>
                            <li> Do not leave trash behind.</li>
                        </ul>
                    </div>
                </div>
                <div class="title_">Emergency Numbers</div>
                <br>
                <div class="travel_img">
                    <img src="img/emergency.jpg" alt="">
                </div>
            </div>
        </div>
    </section>
    <?php include 'components/footer.php'; ?>

    <script src="js/script.js"></script>
</body>
</html>