param ($p1 , $p2)	
$branch = $p1
$message = $p2
$message_default="Debugging $($branch)"


if ($p1 -eq $null) { 
   echo "Invalid arguments.\nThe correct syntax is: ./upload-changes BRANCHNAME [COMMITMESSAGE]"; exit
}


if ($p2 -eq $null) { 
   $message=$message_default
}


echo  "Staging changes..."
git status
git add .

echo "Committing changes..."
git commit -m "$($message)"

echo "Pushing changes..."
git push origin $branch