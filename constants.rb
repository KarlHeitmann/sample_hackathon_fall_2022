BEGIN_HTML = <<-HTML
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
HTML
    
END_HTML = <<-HTML
</body>
</html>
HTML

def generateCss(content)
  <<-HTML
  <style>
  h1 {
    background-color: crimson;
  }
  #{content}
  </style>
  HTML
end
