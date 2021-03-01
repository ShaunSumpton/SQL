SELECT
     [Address]
      
  FROM [Addresses]

  select distinct
Address,
space             = iif(charindex(char(32), Address) > 0, 1, 0),
horizontal_tab    = iif(charindex(char(9), Address) > 0, 1, 0),
vertical_tab      = iif(charindex(char(11), Address) > 0, 1, 0),
backspace         = iif(charindex(char(8), Address) > 0, 1, 0),
carriage_return   = iif(charindex(char(13), Address) > 0, 1, 0),
newline           = iif(charindex(char(10), Address) > 0, 1, 0),
formfeed          = iif(charindex(char(12), Address) > 0, 1, 0),
nonbreakingspace  = iif(charindex(char(255), Address) > 0, 1, 0)
from Addresses;
