# Make directory and CD into it
function mcd -d "Make directory and move into it"
  mkdir -p $argv; and cd $argv
end
