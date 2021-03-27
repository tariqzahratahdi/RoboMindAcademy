source answers.sh

echo Email:
read email
email=$(sed 's/@/%40/g' <<< $email)
echo Password:
read password
#echo $email
#echo $password
cookie=`
curl -i -s -k -X $'POST' \
    -H $'Host: www.robomindacademy.com' -H $'User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101 Firefox/78.0' -H $'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H $'Accept-Language: en-US,en;q=0.5' -H $'Accept-Encoding: gzip, deflate' -H $'Content-Type: application/x-www-form-urlencoded' -H $'Content-Length: 52' -H $'Origin: https://www.robomindacademy.com' -H $'DNT: 1' -H $'Connection: close' -H $'Referer: https://www.robomindacademy.com/login/auth' -H $'Upgrade-Insecure-Requests: 1' \
    --data-binary $'username='$email'&password='$password'' \
    $'https://www.robomindacademy.com/login/authenticate' | cut -d";" -f1 | sed -n 6p | sed 's/Set-Cookie: //g'`
#echo """$cookie"""

link_template="https://www.robomindacademy.com/course/robomind/"
answer_template="challenge/runscript?challengeId=&script="
curl="curl -s -b $cookie"
status="jq -r .success"

#Basic_1
echo Basic 1

#getting_started
echo Getting Started
$curl $link_template"Basis_1/Getting%20started/0/" >> output
$curl $link_template"Basis_1/Getting%20started/1/" >> output
$curl $link_template"Basis_1/Getting%20started/1/"$answer_template$getting_started2 | $status | sed 's/^/Getting Started With RoboMind: /g'
$curl $link_template"Basis_1/Getting%20started/2/" >> output
$curl $link_template"Basis_1/Getting%20started/2/"$answer_template$getting_started3 | $status | sed 's/^/Move The Beacon: /g'
$curl $link_template"Basis_1/Getting%20started/3/" >> output
$curl $link_template"Basis_1/Getting%20started/3/"$answer_template$getting_started4 | $status | sed 's/^/Pick Up The Beacon In The Upper-Right Corner: /g'
$curl $link_template"Basis_1/Getting%20started/4/" >> output
$curl $link_template"Basis_1/Getting%20started/4/"$answer_template$getting_started5 | $status | sed 's/^/Draw A Square: /g'
$curl $link_template"Basis_1/Getting%20started/5/" >> output
$curl $link_template"Basis_1/Getting%20started/5/"$answer_template$getting_started6 | $status | sed 's/^/Paint The Letter A: /g'
$curl $link_template"Basis_1/Getting%20started/6/" >> output
$curl $link_template"Basis_1/Getting%20started/6/"$answer_template$getting_started7 | $status | sed 's/^/Paint The Letter M: /g'
$curl $link_template"Basis_1/Getting%20started/7/" >> output
$curl $link_template"Basis_1/Getting%20started/7/"$answer_template$getting_started8 | $status | sed 's/^/Create A Robot Dance: /g'
#clear

#guarding_and_slalom
echo Guarding And Slalom
$curl $link_template"Basis_1/Guarding%20and%20slalom/0/" >> output
$curl $link_template"Basis_1/Guarding%20and%20slalom/1/" >> output
$curl $link_template"Basis_1/Guarding%20and%20slalom/1/"$answer_template$guarding_and_slalom2 | $status | sed 's/^/Draw A Square: /g'
$curl $link_template"Basis_1/Guarding%20and%20slalom/2/" >> output
$curl $link_template"Basis_1/Guarding%20and%20slalom/2/"$answer_template$guarding_and_slalom3 | $status | sed 's/^/Draw A Square But Smarter: /g'
$curl $link_template"Basis_1/Guarding%20and%20slalom/3/" >> output
$curl $link_template"Basis_1/Guarding%20and%20slalom/3/"$answer_template$guarding_and_slalom4 | $status | sed 's/^/Robo As Security Guard: /g'
$curl $link_template"Basis_1/Guarding%20and%20slalom/4/" >> output
$curl $link_template"Basis_1/Guarding%20and%20slalom/4/"$answer_template$guarding_and_slalom5 | $status | sed 's/^/Robo As Security Guard 2: /g'
$curl $link_template"Basis_1/Guarding%20and%20slalom/5/" >> output
$curl $link_template"Basis_1/Guarding%20and%20slalom/5/"$answer_template$guarding_and_slalom6 | $status | sed 's/^/Lets Slalom: /g'
$curl $link_template"Basis_1/Guarding%20and%20slalom/6/" >> output
$curl $link_template"Basis_1/Guarding%20and%20slalom/6/"$answer_template$guarding_and_slalom7 | $status | sed 's/^/Lets Slalom Under The Palmtrees: /g'
$curl $link_template"Basis_1/Guarding%20and%20slalom/7/" >> output
$curl $link_template"Basis_1/Guarding%20and%20slalom/7/"$answer_template$guarding_and_slalom8 | $status | sed 's/^/Lets Slalom Under The Crates: /g'
#clear

#painting_floors
echo Painting Floors
$curl $link_template"Basis_1/Painting%20floors/0/" >> output
$curl $link_template"Basis_1/Painting%20floors/1/" >> output
$curl $link_template"Basis_1/Painting%20floors/1/"$answer_template$painting_floors2 | $status | sed 's/^/What Will Robo Do: /g'
$curl $link_template"Basis_1/Painting%20floors/2/" >> output
$curl $link_template"Basis_1/Painting%20floors/2/"$answer_template$painting_floors3 | $status | sed 's/^/Draw A Small Flight Of Stairs: /g'
$curl $link_template"Basis_1/Painting%20floors/3/" >> output
$curl $link_template"Basis_1/Painting%20floors/3/"$answer_template$painting_floors4 | $status | sed 's/^/Draw A Larger Flight Of Stairs: /g'
$curl $link_template"Basis_1/Painting%20floors/4/" >> output
$curl $link_template"Basis_1/Painting%20floors/4/"$answer_template$painting_floors5 | $status | sed 's/^/Robo Is Going To Paint The Floor: /g'
$curl $link_template"Basis_1/Painting%20floors/5/" >> output
$curl $link_template"Basis_1/Painting%20floors/5/"$answer_template$painting_floors6 | $status | sed 's/^/Painting Another Design: /g'
$curl $link_template"Basis_1/Painting%20floors/6/" >> output
$curl $link_template"Basis_1/Painting%20floors/6/"$answer_template$painting_floors7 | $status | sed 's/^/A Small Checkered Floor: /g'
$curl $link_template"Basis_1/Painting%20floors/7/" >> output
$curl $link_template"Basis_1/Painting%20floors/7/"$answer_template$painting_floors8 | $status | sed 's/^/A Very Large Checkered floor: /g'
#clear

#factories
echo Factories
$curl $link_template"Basis_1/Factories/0/" >> output
$curl $link_template"Basis_1/Factories/1/" >> output
$curl $link_template"Basis_1/Factories/1/"$answer_template$factories2 | $status | sed 's/^/Robo Bakes Five Pancakes: /g'
$curl $link_template"Basis_1/Factories/2/" >> output
$curl $link_template"Basis_1/Factories/2/"$answer_template$factories3 | $status | sed 's/^/Robo Bakes Ten Pancakes: /g'
$curl $link_template"Basis_1/Factories/3/" >> output
$curl $link_template"Basis_1/Factories/3/"$answer_template$factories4 | $status | sed 's/^/Working On The Conveyor Belt: /g'
$curl $link_template"Basis_1/Factories/4/" >> output
$curl $link_template"Basis_1/Factories/4/"$answer_template$factories5 | $status | sed 's/^/Even More Conveyor Belt Work: /g'
$curl $link_template"Basis_1/Factories/5/" >> output
$curl $link_template"Basis_1/Factories/5/"$answer_template$factories6 | $status | sed 's/^/Exchange The Beacons On The Belt 1: /g'
$curl $link_template"Basis_1/Factories/6/" >> output
$curl $link_template"Basis_1/Factories/6/"$answer_template$factories7 | $status | sed 's/^/Exchange The Beacons On The Belt 2: /g'
#clear

#navigating
echo Navigating
$curl $link_template"Basis_1/Navigating/0/" >> output
$curl $link_template"Basis_1/Navigating/1/" >> output
$curl $link_template"Basis_1/Navigating/1/"$answer_template$navigating2 | $status | sed 's/^/Robo Is Looking For A Safe Spot: /g'
$curl $link_template"Basis_1/Navigating/2/" >> output
$curl $link_template"Basis_1/Navigating/2/"$answer_template$navigating3 | $status | sed 's/^/Robo Is Looking For Another Safe Spot: /g'
$curl $link_template"Basis_1/Navigating/3/" >> output
$curl $link_template"Basis_1/Navigating/3/"$answer_template$navigating4 | $status | sed 's/^/Robo Is Looking For The Beacon: /g'
$curl $link_template"Basis_1/Navigating/4/" >> output
$curl $link_template"Basis_1/Navigating/4/"$answer_template$navigating5 | $status | sed 's/^/Robo Is Looking For The Beacon Again: /g'
$curl $link_template"Basis_1/Navigating/5/" >> output
$curl $link_template"Basis_1/Navigating/5/"$answer_template$navigating6 | $status | sed 's/^/Another Path: /g'
$curl $link_template"Basis_1/Navigating/6/" >> output
$curl $link_template"Basis_1/Navigating/6/"$answer_template$navigating7 | $status | sed 's/^/Dig Yourself Through The Beacons: /g'
$curl $link_template"Basis_1/Navigating/7/" >> output
$curl $link_template"Basis_1/Navigating/7/"$answer_template$navigating8 | $status | sed 's/^/Dig Yourself Through The Beacons 2: /g'
#clear

#tracking_and_tracing
echo Tracking And Tracing
$curl $link_template"Basis_1/Tracking%20and%20tracing/0/" >> output
$curl $link_template"Basis_1/Tracking%20and%20tracing/1/" >> output
$curl $link_template"Basis_1/Tracking%20and%20tracing/1/"$answer_template$tracking_and_tracing2 | $status | sed 's/^/Robo Is Going To Track And Trace: /g'
$curl $link_template"Basis_1/Tracking%20and%20tracing/2/" >> output
$curl $link_template"Basis_1/Tracking%20and%20tracing/2/"$answer_template$tracking_and_tracing3 | $status | sed 's/^/Robo Is Going To Track And Trace 2: /g'
$curl $link_template"Basis_1/Tracking%20and%20tracing/3/" >> output
$curl $link_template"Basis_1/Tracking%20and%20tracing/3/"$answer_template$tracking_and_tracing4 | $status | sed 's/^/Robo Is Going To Track And Trace 3: /g'
$curl $link_template"Basis_1/Tracking%20and%20tracing/4/" >> output
$curl $link_template"Basis_1/Tracking%20and%20tracing/4/"$answer_template$tracking_and_tracing5 | $status | sed 's/^/Robo Is Going To Track And Trace 4: /g'
$curl $link_template"Basis_1/Tracking%20and%20tracing/5/" >> output
$curl $link_template"Basis_1/Tracking%20and%20tracing/5/"$answer_template$tracking_and_tracing6 | $status | sed 's/^/Robo Is Going To Track And Trace 5: /g'
#clear

#line_following
echo Line Following
$curl $link_template"Basis_1/Line%20following/0/" >> output
$curl $link_template"Basis_1/Line%20following/1/" >> output
$curl $link_template"Basis_1/Line%20following/1/"$answer_template$line_following2 | $status | sed 's/^/Robo Follows A Short Line: /g'
$curl $link_template"Basis_1/Line%20following/2/" >> output
$curl $link_template"Basis_1/Line%20following/2/"$answer_template$line_following3 | $status | sed 's/^/Robo Follows A Longer Line: /g'
$curl $link_template"Basis_1/Line%20following/3/" >> output
$curl $link_template"Basis_1/Line%20following/3/"$answer_template$line_following4 | $status | sed 's/^/Robo Follows A Very Long Line: /g'
$curl $link_template"Basis_1/Line%20following/4/" >> output
$curl $link_template"Basis_1/Line%20following/4/"$answer_template$line_following5 | $status | sed 's/^/Get The Beacon Back: /g'
$curl $link_template"Basis_1/Line%20following/5/" >> output
$curl $link_template"Basis_1/Line%20following/5/"$answer_template$line_following6 | $status | sed 's/^/Get The Beacon Back 2: /g'
#clear

#basic_2
echo Basic 2

#more_tracking_and_tracing
echo More Tracking And Tracking
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/0/" >> output
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/1/" >> output
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/1/"$answer_template$more_tracking_and_tracing2 | $status | sed 's/^/Lets Warm Up Paint A Square: /g'
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/2/" >> output
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/2/"$answer_template$more_tracking_and_tracing3 | $status | sed 's/^/Go To The Wall And Stop: /g'
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/3/" >> output
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/3/"$answer_template$more_tracking_and_tracing4 | $status | sed 's/^/Follow The White Trail: /g'
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/4/" >> output
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/4/"$answer_template$more_tracking_and_tracing5 | $status | sed 's/^/Follow The White Trail Further: /g'
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/5/" >> output
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/5/"$answer_template$more_tracking_and_tracing6 | $status | sed 's/^/Follow A Pepper And Salt Trail: /g'
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/6/" >> output
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/6/"$answer_template$more_tracking_and_tracing7 | $status | sed 's/^/Follow Another Pepper And Salt Trail: /g'
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/7/" >> output
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/7/"$answer_template$more_tracking_and_tracing8 | $status | sed 's/^/Follow A Secret Trail: /g'
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/8/" >> output
$curl $link_template"Basis_2/Tracking%20and%20tracing%202/8/"$answer_template$more_tracking_and_tracing9 | $status | sed 's/^/Follow Another Secret Trail: /g'
#clear

#searching_in_mazes
echo Searching In Mazes
$curl $link_template"Basis_2/Mazes/0/" >> output
$curl $link_template"Basis_2/Mazes/1/" >> output
$curl $link_template"Basis_2/Mazes/1/"$answer_template$searching_in_mazes2 | $status | sed 's/^/Finding Beacons In A Maze: /g'
$curl $link_template"Basis_2/Mazes/2/" >> output
$curl $link_template"Basis_2/Mazes/2/"$answer_template$searching_in_mazes3 | $status | sed 's/^/Finding Beacons In A Maze: Turn Right: /g'
$curl $link_template"Basis_2/Mazes/3/" >> output
$curl $link_template"Basis_2/Mazes/3/"$answer_template$searching_in_mazes4 | $status | sed 's/^/Finding Beacons In A Maze: Turn Left: /g'
$curl $link_template"Basis_2/Mazes/4/" >> output
$curl $link_template"Basis_2/Mazes/4/"$answer_template$searching_in_mazes5 | $status | sed 's/^/Finding Beacons In A Small Maze: /g'
$curl $link_template"Basis_2/Mazes/5/" >> output
$curl $link_template"Basis_2/Mazes/5/"$answer_template$searching_in_mazes6 | $status | sed 's/^/Finding Beacons In A Big Maze: /g'
$curl $link_template"Basis_2/Mazes/6/" >> output
$curl $link_template"Basis_2/Mazes/6/"$answer_template$searching_in_mazes7 | $status | sed 's/^/A Maze With Obstacles: /g'
#clear

#a_secret_language
echo A Secret Language
$curl $link_template"Basis_2/Secret%20language/0/" >> output
$curl $link_template"Basis_2/Secret%20language/1/" >> output
$curl $link_template"Basis_2/Secret%20language/1/"$answer_template$a_secret_language2 | $status | sed 's/^/Try Out A Procedure: /g'
$curl $link_template"Basis_2/Secret%20language/2/" >> output
$curl $link_template"Basis_2/Secret%20language/3/" >> output
$curl $link_template"Basis_2/Secret%20language/3/"$answer_template$a_secret_language4 | $status | sed 's/^/Robos Secret Letter A: /g'
$curl $link_template"Basis_2/Secret%20language/4/" >> output
$curl $link_template"Basis_2/Secret%20language/4/"$answer_template$a_secret_language5 | $status | sed 's/^/Robos Secret Letter A 2: /g'
$curl $link_template"Basis_2/Secret%20language/5/" >> output
$curl $link_template"Basis_2/Secret%20language/5/"$answer_template$a_secret_language6 | $status | sed 's/^/Robos Secret Letter P: /g'
$curl $link_template"Basis_2/Secret%20language/6/" >> output
$curl $link_template"Basis_2/Secret%20language/6/"$answer_template$a_secret_language7 | $status | sed 's/^/Robos Secret Letter L: /g'
$curl $link_template"Basis_2/Secret%20language/7/" >> output
$curl $link_template"Basis_2/Secret%20language/7/"$answer_template$a_secret_language8 | $status | sed 's/^/Write PAPA In Robos Secret Language: /g'
$curl $link_template"Basis_2/Secret%20language/8/" >> output
$curl $link_template"Basis_2/Secret%20language/8/"$answer_template$a_secret_language9 | $status | sed 's/^/Write It Yourself With Robos Secret Language: /g'
$curl $link_template"Basis_2/Secret%20language/9/" >> output
$curl $link_template"Basis_2/Secret%20language/9/"$answer_template$a_secret_language10 | $status | sed 's/^/Other Words With A L And P: /g'
$curl $link_template"Basis_2/Secret%20language/10/" >> output
$curl $link_template"Basis_2/Secret%20language/10/"$answer_template$a_secret_language11 | $status | sed 's/^/Create Extra Letters: /g'
#clear

#drawing_potraits
echo Drawing Potraits
$curl $link_template"Basis_2/Drawing%20portraits/0/" >> output
$curl $link_template"Basis_2/Drawing%20portraits/1/" >> output
$curl $link_template"Basis_2/Drawing%20portraits/1/"$answer_template$drawing_potraits2 | $status | sed 's/^/Example Of A Sequence Procedures: /g'
$curl $link_template"Basis_2/Drawing%20portraits/2/" >> output
$curl $link_template"Basis_2/Drawing%20portraits/3/" >> output
$curl $link_template"Basis_2/Drawing%20portraits/3/"$answer_template$drawing_potraits4 | $status | sed 's/^/Procedure Squares: /g'
$curl $link_template"Basis_2/Drawing%20portraits/4/" >> output
$curl $link_template"Basis_2/Drawing%20portraits/4/"$answer_template$drawing_potraits5 | $status | sed 's/^/Draw Two Squares: /g'
$curl $link_template"Basis_2/Drawing%20portraits/5/" >> output
$curl $link_template"Basis_2/Drawing%20portraits/5/"$answer_template$drawing_potraits6 | $status | sed 's/^/Draw A Robot Portrait: /g'
$curl $link_template"Basis_2/Drawing%20portraits/6/" >> output
$curl $link_template"Basis_2/Drawing%20portraits/6/"$answer_template$drawing_potraits7 | $status | sed 's/^/Add The Finishing Touches: /g'
$curl $link_template"Basis_2/Drawing%20portraits/7/" >> output
$curl $link_template"Basis_2/Drawing%20portraits/7/"$answer_template$drawing_potraits8 | $status | sed 's/^/Create Procedure Head: /g'
$curl $link_template"Basis_2/Drawing%20portraits/8/" >> output
$curl $link_template"Basis_2/Drawing%20portraits/8/"$answer_template$drawing_potraits9 | $status | sed 's/^/Draw A Whole Robot Family: /g'
#clear

#reading_barcodes
echo Reading Barcodes
$curl $link_template"Basis_2/Reading%20barcodes/0/" >> output
$curl $link_template"Basis_2/Reading%20barcodes/1/" >> output
$curl $link_template"Basis_2/Reading%20barcodes/1/"$answer_template$reading_barcodes2 | $status | sed 's/^/Robo Cleans Up His Shop: /g'
$curl $link_template"Basis_2/Reading%20barcodes/2/" >> output
$curl $link_template"Basis_2/Reading%20barcodes/2/"$answer_template$reading_barcodes3 | $status | sed 's/^/Robos Cleanup Program: /g'
$curl $link_template"Basis_2/Reading%20barcodes/3/" >> output
$curl $link_template"Basis_2/Reading%20barcodes/3/"$answer_template$reading_barcodes4 | $status | sed 's/^/Put Back The Palm Oil: /g'
$curl $link_template"Basis_2/Reading%20barcodes/4/" >> output
$curl $link_template"Basis_2/Reading%20barcodes/4/"$answer_template$reading_barcodes5 | $status | sed 's/^/Put Back The Water: /g'
$curl $link_template"Basis_2/Reading%20barcodes/5/" >> output
$curl $link_template"Basis_2/Reading%20barcodes/5/"$answer_template$reading_barcodes6 | $status | sed 's/^/Put Back The Crates: /g'
$curl $link_template"Basis_2/Reading%20barcodes/6/" >> output
$curl $link_template"Basis_2/Reading%20barcodes/6/"$answer_template$reading_barcodes7 | $status | sed 's/^/Put Back The Vegetables: /g'
$curl $link_template"Basis_2/Reading%20barcodes/7/" >> output
$curl $link_template"Basis_2/Reading%20barcodes/7/"$answer_template$reading_barcodes8 | $status | sed 's/^/Put Everything Back: /g'
$curl $link_template"Basis_2/Reading%20barcodes/8/" >> output
$curl $link_template"Basis_2/Reading%20barcodes/8/"$answer_template$reading_barcodes9 | $status | sed 's/^/Put It Back Differently: /g'
#clear

#vacuum_cleaning
echo Vacuum Cleaning
$curl $link_template"Basis_2/Vacuum%20cleaning/0/" >> output
$curl $link_template"Basis_2/Vacuum%20cleaning/1/" >> output
$curl $link_template"Basis_2/Vacuum%20cleaning/1/"$answer_template$vacuum_cleaning2 | $status | sed 's/^/Try Out Flipcoin: /g'
$curl $link_template"Basis_2/Vacuum%20cleaning/2/" >> output
$curl $link_template"Basis_2/Vacuum%20cleaning/3/" >> output
$curl $link_template"Basis_2/Vacuum%20cleaning/3/"$answer_template$vacuum_cleaning4 | $status | sed 's/^/Create A Kind Of Dice: /g'
$curl $link_template"Basis_2/Vacuum%20cleaning/4/" >> output
$curl $link_template"Basis_2/Vacuum%20cleaning/4/"$answer_template$vacuum_cleaning5 | $status | sed 's/^/A Somewhat Stranger Dice: /g'
$curl $link_template"Basis_2/Vacuum%20cleaning/5/" >> output
$curl $link_template"Basis_2/Vacuum%20cleaning/5/"$answer_template$vacuum_cleaning6 | $status | sed 's/^/About The Dice: /g'
$curl $link_template"Basis_2/Vacuum%20cleaning/6/" >> output
$curl $link_template"Basis_2/Vacuum%20cleaning/6/"$answer_template$vacuum_cleaning7 | $status | sed 's/^/Robo Finds A Beacon All By Himself: /g'
$curl $link_template"Basis_2/Vacuum%20cleaning/7/" >> output
$curl $link_template"Basis_2/Vacuum%20cleaning/7/"$answer_template$vacuum_cleaning8 | $status | sed 's/^/Robo Searches For Another Beacon: /g'
$curl $link_template"Basis_2/Vacuum%20cleaning/8/" >> output
$curl $link_template"Basis_2/Vacuum%20cleaning/8/"$answer_template$vacuum_cleaning9 | $status | sed 's/^/Automatic Vacuum Cleaning: /g'
$curl $link_template"Basis_2/Vacuum%20cleaning/9/" >> output
$curl $link_template"Basis_2/Vacuum%20cleaning/9/"$answer_template$vacuum_cleaning10 | $status | sed 's/^/No More Collisions: /g'
#clear

#repairing_roads
echo Repairing Roads
$curl $link_template"Basis_2/Repairing%20roads/0/" >> output
$curl $link_template"Basis_2/Repairing%20roads/1/" >> output
$curl $link_template"Basis_2/Repairing%20roads/1/"$answer_template$repairing_roads2 | $status | sed 's/^/Robo Finds A Beacon All By Himself: /g'
$curl $link_template"Basis_2/Repairing%20roads/2/" >> output
$curl $link_template"Basis_2/Repairing%20roads/2/"$answer_template$repairing_roads3 | $status | sed 's/^/Find A Pothole To Fill With The Beacon: /g'
$curl $link_template"Basis_2/Repairing%20roads/3/" >> output
$curl $link_template"Basis_2/Repairing%20roads/3/"$answer_template$repairing_roads4 | $status | sed 's/^/Find Another Pothole To Fill: /g'
$curl $link_template"Basis_2/Repairing%20roads/4/" >> output
$curl $link_template"Basis_2/Repairing%20roads/4/"$answer_template$repairing_roads5 | $status | sed 's/^/Mark Several Potholes: /g'
$curl $link_template"Basis_2/Repairing%20roads/5/" >> output
$curl $link_template"Basis_2/Repairing%20roads/5/"$answer_template$repairing_roads6 | $status | sed 's/^/Improve The Procedure findBeacon: /g'
$curl $link_template"Basis_2/Repairing%20roads/6/" >> output
$curl $link_template"Basis_2/Repairing%20roads/6/"$answer_template$repairing_roads7 | $status | sed 's/^/Improve The Procedure findPothole: /g'
$curl $link_template"Basis_2/Repairing%20roads/7/" >> output
$curl $link_template"Basis_2/Repairing%20roads/7/"$answer_template$repairing_roads8 | $status | sed 's/^/Repair A Whole Square: /g'
#clear

#python_course
echo Python Course

echo Getting Started
$curl $link_template"RoboPython/1%20-%20Getting%20started/0/" >> output
$curl $link_template"RoboPython/1%20-%20Getting%20started/0/"$answer_template$py_getting_started1 | $status | sed 's/^/Teaching Robo To Talk Python: /g'
$curl $link_template"RoboPython/1%20-%20Getting%20started/1/" >> output
$curl $link_template"RoboPython/1%20-%20Getting%20started/1/"$answer_template$py_getting_started2 | $status | sed 's/^/Robomind Python Development Environment: /g'
$curl $link_template"RoboPython/1%20-%20Getting%20started/2/" >> output
$curl $link_template"RoboPython/1%20-%20Getting%20started/2/"$answer_template$py_getting_started3 | $status | sed 's/^/Robos Commands: /g'
$curl $link_template"RoboPython/1%20-%20Getting%20started/3/" >> output
$curl $link_template"RoboPython/1%20-%20Getting%20started/3/"$answer_template$py_getting_started4 | $status | sed 's/^/Where Are The: /g'
$curl $link_template"RoboPython/1%20-%20Getting%20started/4/" >> output
$curl $link_template"RoboPython/1%20-%20Getting%20started/4/"$answer_template$py_getting_started5 | $status | sed 's/^/Going Forward: /g'
#clear

echo The Basics
$curl $link_template"RoboPython/2%20-%20Basics/0/" >> output
$curl $link_template"RoboPython/2%20-%20Basics/0/"$answer_template$py_the_basics1 | $status | sed 's/^/Move The Beacon: /g'
$curl $link_template"RoboPython/2%20-%20Basics/1/" >> output
$curl $link_template"RoboPython/2%20-%20Basics/1/"$answer_template$py_the_basics2 | $status | sed 's/^/If Statement: /g'
$curl $link_template"RoboPython/2%20-%20Basics/2/" >> output
$curl $link_template"RoboPython/2%20-%20Basics/2/"$answer_template$py_the_basics3 | $status | sed 's/^/While Loop: /g'
$curl $link_template"RoboPython/2%20-%20Basics/3/" >> output
$curl $link_template"RoboPython/2%20-%20Basics/3/"$answer_template$py_the_basics4 | $status | sed 's/^/For Loop: /g'
$curl $link_template"RoboPython/2%20-%20Basics/4/" >> output
$curl $link_template"RoboPython/2%20-%20Basics/4/"$answer_template$py_the_basics5 | $status | sed 's/^/Paint The Stair: /g'
$curl $link_template"RoboPython/2%20-%20Basics/5/" >> output
$curl $link_template"RoboPython/2%20-%20Basics/5/"$answer_template$py_the_basics6 | $status | sed 's/^/While Loop: /g'
$curl $link_template"RoboPython/2%20-%20Basics/6/" >> output
$curl $link_template"RoboPython/2%20-%20Basics/6/"$answer_template$py_the_basics7 | $status | sed 's/^/Break The Loop: /g'
$curl $link_template"RoboPython/2%20-%20Basics/7/" >> output
$curl $link_template"RoboPython/2%20-%20Basics/7/"$answer_template$py_the_basics8 | $status | sed 's/^/Continue: /g'
#clear

echo Functions
$curl $link_template"RoboPython/3%20-%20Functions/0/" >> output
$curl $link_template"RoboPython/3%20-%20Functions/0/"$answer_template$py_functions1 | $status | sed 's/^/Functions: /g'
$curl $link_template"RoboPython/3%20-%20Functions/1/" >> output
$curl $link_template"RoboPython/3%20-%20Functions/1/"$answer_template$py_functions2 | $status | sed 's/^/Drawing An A: /g'
$curl $link_template"RoboPython/3%20-%20Functions/2/" >> output
$curl $link_template"RoboPython/3%20-%20Functions/2/"$answer_template$py_functions3 | $status | sed 's/^/A Letter Library: /g'
$curl $link_template"RoboPython/3%20-%20Functions/3/" >> output
$curl $link_template"RoboPython/3%20-%20Functions/3/"$answer_template$py_functions4 | $status | sed 's/^/Paint The Letter C With A Function: /g'
$curl $link_template"RoboPython/3%20-%20Functions/4/" >> output
$curl $link_template"RoboPython/3%20-%20Functions/4/"$answer_template$py_functions5 | $status | sed 's/^/Functions And Arguments: /g'
$curl $link_template"RoboPython/3%20-%20Functions/5/" >> output
$curl $link_template"RoboPython/3%20-%20Functions/5/"$answer_template$py_functions6 | $status | sed 's/^/Functions Named Variables And Defaults: /g'
#clear

echo Variables
$curl $link_template"RoboPython/4%20-%20Data/0/" >> output
$curl $link_template"RoboPython/4%20-%20Data/0/"$answer_template$py_variables1 | $status | sed 's/^/Variable: /g'
$curl $link_template"RoboPython/4%20-%20Data/1/" >> output
$curl $link_template"RoboPython/4%20-%20Data/1/"$answer_template$py_variables2 | $status | sed 's/^/List: /g'
$curl $link_template"RoboPython/4%20-%20Data/2/" >> output
$curl $link_template"RoboPython/4%20-%20Data/2/"$answer_template$py_variables3 | $status | sed 's/^/List 2: /g'
$curl $link_template"RoboPython/4%20-%20Data/3/" >> output
$curl $link_template"RoboPython/4%20-%20Data/3/"$answer_template$py_variables4 | $status | sed 's/^/Dictionaries: /g'
#clear

echo Community Challenges

echo One Star Challenges
$curl $link_template"Community/One%20Star%20Challenges/0/" >> output
$curl $link_template"Community/One%20Star%20Challenges/0/"$answer_template$one_star_challenges1 | $status | sed 's/^/Turn To Pick Up The Beacon 1: /g'
$curl $link_template"Community/One%20Star%20Challenges/1/" >> output
$curl $link_template"Community/One%20Star%20Challenges/1/"$answer_template$one_star_challenges2 | $status | sed 's/^/Turn To Pick Up The Beacon 2: /g'
$curl $link_template"Community/One%20Star%20Challenges/2/" >> output
$curl $link_template"Community/One%20Star%20Challenges/2/"$answer_template$one_star_challenges3 | $status | sed 's/^/Pickup The Beacon: /g'
$curl $link_template"Community/One%20Star%20Challenges/3/" >> output
$curl $link_template"Community/One%20Star%20Challenges/3/"$answer_template$one_star_challenges4 | $status | sed 's/^/Move The Beacon: /g'
$curl $link_template"Community/One%20Star%20Challenges/4/" >> output
$curl $link_template"Community/One%20Star%20Challenges/4/"$answer_template$one_star_challenges5 | $status | sed 's/^/Draw A Square: /g'
$curl $link_template"Community/One%20Star%20Challenges/5/" >> output
$curl $link_template"Community/One%20Star%20Challenges/5/"$answer_template$one_star_challenges6 | $status | sed 's/^/Lets Robo Clean The Corridor: /g'
$curl $link_template"Community/One%20Star%20Challenges/6/" >> output
$curl $link_template"Community/One%20Star%20Challenges/6/"$answer_template$one_star_challenges7 | $status | sed 's/^/Robo Has More Corridors To Clean: /g'
$curl $link_template"Community/One%20Star%20Challenges/7/" >> output
$curl $link_template"Community/One%20Star%20Challenges/7/"$answer_template$one_star_challenges8 | $status | sed 's/^/Write Your Class Name: /g'
#clear

echo Two Star Challenges
$curl $link_template"Community/Two%20Star%20Challenges/0/" >> output
$curl $link_template"Community/Two%20Star%20Challenges/0/"$answer_template$two_star_challenges1 | $status | sed 's/^/Draw A Square Using Repeat: /g'
$curl $link_template"Community/Two%20Star%20Challenges/1/" >> output
$curl $link_template"Community/Two%20Star%20Challenges/1/"$answer_template$two_star_challenges2 | $status | sed 's/^/Go To The Wall And Stop: /g'
$curl $link_template"Community/Two%20Star%20Challenges/2/" >> output
$curl $link_template"Community/Two%20Star%20Challenges/2/"$answer_template$two_star_challenges3 | $status | sed 's/^/Could You Repeat That Please: /g'
$curl $link_template"Community/Two%20Star%20Challenges/3/" >> output
$curl $link_template"Community/Two%20Star%20Challenges/3/"$answer_template$two_star_challenges4 | $status | sed 's/^/Robo Is Looking For A Safe Spot: /g'
$curl $link_template"Community/Two%20Star%20Challenges/4/" >> output
$curl $link_template"Community/Two%20Star%20Challenges/4/"$answer_template$two_star_challenges5 | $status | sed 's/^/Track The White Dots: /g'
$curl $link_template"Community/Two%20Star%20Challenges/5/" >> output
$curl $link_template"Community/Two%20Star%20Challenges/5/"$answer_template$two_star_challenges6 | $status | sed 's/^/Working On The Convenyor-Belt: /g'
$curl $link_template"Community/Two%20Star%20Challenges/6/" >> output
$curl $link_template"Community/Two%20Star%20Challenges/6/"$answer_template$two_star_challenges7 | $status | sed 's/^/Robo Is Going To Paint The Floor: /g'
$curl $link_template"Community/Two%20Star%20Challenges/7/" >> output
$curl $link_template"Community/Two%20Star%20Challenges/7/"$answer_template$two_star_challenges8 | $status | sed 's/^/Get As Much As You Can: /g'
#clear

echo Three Star Challenges
$curl $link_template"Community/Three%20Star%20Challenges/0/" >> output
$curl $link_template"Community/Three%20Star%20Challenges/0/"$answer_template$three_star_challenges1 | $status | sed 's/^/Draw A Square Using Repeat: /g'
$curl $link_template"Community/Three%20Star%20Challenges/1/" >> output
$curl $link_template"Community/Three%20Star%20Challenges/1/"$answer_template$three_star_challenges2 | $status | sed 's/^/Go To The Wall And Stop: /g'
$curl $link_template"Community/Three%20Star%20Challenges/2/" >> output
$curl $link_template"Community/Three%20Star%20Challenges/2/"$answer_template$three_star_challenges3 | $status | sed 's/^/Could You Repeat That Please: /g'
$curl $link_template"Community/Three%20Star%20Challenges/3/" >> output
$curl $link_template"Community/Three%20Star%20Challenges/3/"$answer_template$three_star_challenges4 | $status | sed 's/^/Robo Is Looking For A Safe Spot: /g'
$curl $link_template"Community/Three%20Star%20Challenges/4/" >> output
$curl $link_template"Community/Three%20Star%20Challenges/4/"$answer_template$three_star_challenges5 | $status | sed 's/^/Track The White Dots: /g'
#clear

echo Four Star Challenges
$curl $link_template"Community/Four%20Star%20Challenges/0/" >> output
$curl $link_template"Community/Four%20Star%20Challenges/0/"$answer_template$four_star_challenges1 | $status | sed 's/^/Draw A Square Using Repeat: /g'
$curl $link_template"Community/Four%20Star%20Challenges/1/" >> output
$curl $link_template"Community/Four%20Star%20Challenges/1/"$answer_template$four_star_challenges2 | $status | sed 's/^/Go To The Wall And Stop: /g'
$curl $link_template"Community/Four%20Star%20Challenges/2/" >> output
$curl $link_template"Community/Four%20Star%20Challenges/2/"$answer_template$four_star_challenges3 | $status | sed 's/^/Could You Repeat That Please: /g'
#clear

echo Advanced 1 Course
$curl $link_template"Secondary/Line%20following/0/" >> output
$curl $link_template"Secondary/Line%20following/1/" >> output
$curl $link_template"Secondary/Line%20following/1/"$answer_template$adv_line_following2 | $status | sed 's/^/Robo Finds A Beacon All By Himself: /g'
$curl $link_template"Secondary/Line%20following/2/" >> output
$curl $link_template"Secondary/Line%20following/2/"$answer_template$adv_line_following3 | $status | sed 's/^/Find A Pothole To Fill With The Beacon: /g'
$curl $link_template"Secondary/Line%20following/3/" >> output
$curl $link_template"Secondary/Line%20following/3/"$answer_template$adv_line_following4 | $status | sed 's/^/Find Another Pothole To Fill: /g'
$curl $link_template"Secondary/Line%20following/4/" >> output
$curl $link_template"Secondary/Line%20following/4/"$answer_template$adv_line_following5 | $status | sed 's/^/Mark Several Potholes: /g'
$curl $link_template"Secondary/Line%20following/5/" >> output
$curl $link_template"Secondary/Line%20following/5/"$answer_template$adv_line_following6 | $status | sed 's/^/Improve The Procedure findBeacon: /g'
$curl $link_template"Secondary/Line%20following/6/" >> output
$curl $link_template"Secondary/Line%20following/6/"$answer_template$adv_line_following7 | $status | sed 's/^/Improve The Procedure findPothole: /g'
$curl $link_template"Secondary/Line%20following/7/" >> output
$curl $link_template"Secondary/Line%20following/7/"$answer_template$adv_line_following8 | $status | sed 's/^/Repair A Whole Square: /g'
$curl $link_template"Secondary/Line%20following/8/" >> output
$curl $link_template"Secondary/Line%20following/8/"$answer_template$adv_line_following9 | $status | sed 's/^/Improve The Procedure findBeacon: /g'
$curl $link_template"Secondary/Line%20following/9/" >> output
$curl $link_template"Secondary/Line%20following/9/"$answer_template$adv_line_following10 | $status | sed 's/^/Improve The Procedure findPothole: /g'
$curl $link_template"Secondary/Line%20following/10/" >> output
$curl $link_template"Secondary/Line%20following/10/"$answer_template$adv_line_following11 | $status | sed 's/^/Repair A Whole Square: /g'
#clear
