#!/bin/bash
# Developed By Chetan Khatri

function One()
{
  local n=$1
  if [ $n -eq "1" ] ; then
      words=`echo -n "$words One"`
  elif [ $n -eq "2" ] ; then
      words=`echo -n "$words Two"`
  elif [ $n -eq "3" ] ; then
      words=`echo -n "$words Three"`
  elif [ $n -eq "4" ] ; then
      words=`echo -n "$words Four"`
  elif [ $n -eq "5" ] ; then
      words=`echo -n "$words Five"`
  elif [ $n -eq "6" ] ; then
      words=`echo -n "$words Six"`
  elif [ $n -eq "7" ] ; then
      words=`echo -n "$words Seven"`
  elif [ $n -eq "8" ] ; then
      words=`echo -n "$words Eight"`
  elif [ $n -eq "9" ] ; then
      words=`echo -n "$words Nine"`
  elif [[ $GlobalLength -lt "2" && $n -eq "0" ]] ; then
      words="Zero"
  fi
}

function Two()
{
  local num=$1
  local n=`echo ${num:0:1}`
  local p=`echo ${num:1:1}`
  if [ $n -eq "0" ] ; then
      One $p
  elif [[ $n -eq "1" && $p -eq "0" ]] ; then
      words=`echo -n "$words Ten"`
  elif [[ $n -eq "1" && $p -eq "1" ]] ; then
      words=`echo -n "$words Eleven"`
  elif [[ $n -eq "1" && $p -eq "2" ]] ; then
      words=`echo -n "$words Twelve"`
  elif [[ $n -eq "1" && $p -eq "3" ]] ; then
      words=`echo -n "$words Thirteen"`
  elif [[ $n -eq "1" && $p -eq "4" ]] ; then
      words=`echo -n "$words Fourteen"`
  elif [[ $n -eq "1" && $p -eq "5" ]] ; then
      words=`echo -n "$words Fifteen"`
  elif [[ $n -eq "1" && $p -eq "6" ]] ; then
      words=`echo -n "$words Sixteen"`
  elif [[ $n -eq "1" && $p -eq "7" ]] ; then
      words=`echo -n "$words Seventeen"`
  elif [[ $n -eq "1" && $p -eq "8" ]] ; then
      words=`echo -n "$words Eighteen"`
  elif [[ $n -eq "1" && $p -eq "9" ]] ; then
      words=`echo -n "$words Nineteen"`
  elif [[ $n -eq "2" ]] ; then
      words=`echo -n "$words Twenty"`
      One $p
  elif [[ $n -eq "3" ]] ; then
      words=`echo -n "$words Thirty"`
      One $p
  elif [[ $n -eq "4" ]] ; then
      words=`echo -n "$words Forty"`
      One $p
  elif [[ $n -eq "5" ]] ; then
      words=`echo -n "$words Fifty"`
      One $p
  elif [[ $n -eq "6" ]] ; then
      words=`echo -n "$words Sixty"`
      One $p
  elif [[ $n -eq "7" ]] ; then
      words=`echo -n "$words Seventy"`
      One $p
  elif [[ $n -eq "8" ]] ; then
      words=`echo -n "$words Eighty"`
      One $p
  elif [[ $n -eq "9" ]] ; then
      words=`echo -n "$words Ninety"`
      One $p
  fi

}

function Three()
{
    local num=$1
    local n=`echo ${num:0:1}`
    local p=`echo ${num:1:2}`
    if [ $n -gt 0 ] ; then
      One $n
      words=`echo "$words Hundred"`

    fi
    Two $p
}

function Four()
{
    local num=$1
    local n=`echo ${num:0:1}`
    local p=`echo ${num:1:3}`
    if [ $n -gt 0 ] ; then
      One $n
      words=`echo "$words Thousand"`
 
    fi
    Three $p
}

function Five()
{
    local num=$1
    local n=`echo ${num:0:2}`
    local p=`echo ${num:2:3}`
    if [ $n -gt 0 ] ; then
      Two $n
      words=`echo "$words Thousand"`
  
    fi
    Three $p
}

function Six()
{
    local num=$1
    local n=`echo ${num:0:1}`
    local p=`echo ${num:1:5}`
    if [ $n -gt 0 ] ; then
      One $n
      words=`echo "$words Lac"`
   
    fi
    Five $p
}

function Seven()
{
    local num=$1
    local n=`echo ${num:0:2}`
    local p=`echo ${num:2:5}`
    if [ $n -gt 0 ] ; then
      Two $n
      words=`echo "$words Lac"`
    
    fi
    Five $p
}

function Eight()
{
    local num=$1
    local n=`echo ${num:0:1}`
    local p=`echo ${num:1:7}`
    if [ $n -gt 0 ] ; then
      One $n
      words=`echo "$words Crore"`
     
    fi
    Seven $p
}

function Nine()
{
    local num=$1
    local n=`echo ${num:0:2}`
    local p=`echo ${num:2:7}`
    if [ $n -gt 0 ] ; then
      Two $n
      words=`echo "$words Crore"`
  #    
    fi
    Seven $p
}

function Ten()
{
    local num=$1
    local n=`echo ${num:0:1}`
    local p=`echo ${num:1:9}`
    if [ $n -gt 0 ] ; then
      One $n
      words=`echo "$words Billion"`
   #   
    fi
    Nine $p
}

function Eleven()
{
    local num=$1
    local n=`echo ${num:0:2}`
    local p=`echo ${num:2:9}`
    if [ $n -gt 0 ] ; then
      Two $n
      words=`echo "$words Billion"`
    
    fi
    Nine $p
}

function Twelve()
{
    local num=$1
    local n=`echo ${num:0:3}`
    local p=`echo ${num:3:9}`
    if [ $n -gt 0 ] ; then
      Three $n
      words=`echo "$words Billion"`
     
    fi
    Nine $p
}

function Thirteen()
{
    local num=$1
    local n=`echo ${num:0:1}`
    local p=`echo ${num:1:12}`
    if [ $n -gt 0 ] ; then
      One $n
      words=`echo "$words Trillion"`
      #
    fi
    Twelve $p
}

function Fourteen()
{
    local num=$1
    local n=`echo ${num:0:2}`
    local p=`echo ${num:2:12}`
    if [ $n -gt 0 ] ; then
      Two $n
      words=`echo "$words Trillion"`
    
    fi
    Twelve $p
}

function Fifteen()
{
    local num=$1
    local n=`echo ${num:0:3}`
    local p=`echo ${num:3:12}`
    if [ $n -gt 0 ] ; then
      Three $n
      words=`echo "$words Trillion"`
     
    fi
    Twelve $p
}

function Convert()
{
    if [ $GlobalLength -eq "15" ] ; then
	Fifteen $number
    elif [ $GlobalLength -eq "14" ] ; then
	Fourteen $number
    elif [ $GlobalLength -eq "13" ] ; then
	Thirteen $number
    elif [ $GlobalLength -eq "12" ] ; then
	Twelve $number
    elif [ $GlobalLength -eq "11" ] ; then
	Eleven $number
    elif [ $GlobalLength -eq "10" ] ; then
	Ten $number
    elif [ $GlobalLength -eq "9" ] ; then
	Nine $number
    elif [ $GlobalLength -eq "8" ] ; then
	Eight $number
    elif [ $GlobalLength -eq "7" ] ; then
	Seven $number
    elif [ $GlobalLength -eq "6" ] ; then
	Six $number
    elif [ $GlobalLength -eq "5" ] ; then
	Five $number
    elif [ $GlobalLength -eq "4" ] ; then
	Four $number
    elif [ $GlobalLength -eq "3" ] ; then
	Three $number
    elif [ $GlobalLength -eq "2" ] ; then
	Two $number
    else
	One $number
    fi
    echo -e "\n\n Converted Result     :  $words\n\n--Developed By Chetan Khatri\n\n"
}
clear
echo -en " This Script is used for Conversation of Number to Words\n This Script Supports Converstion Till 15 Integer Digits i.e. till Trillion only.!!!!\n\n Enter Number to convert into words : "
read number

number=`echo $number | sed s/' '/''/g`

if [[ $? -gt 0 || -z $number ]] ; then
    echo -e "\n *****Error : Invalid Number \n"
    exit 1
fi

if ! [[ "$number" =~ ^[0-9]+$ ]] ; then
   exec >&2; echo -e "\n *****Error: Not a Integer Number \n"; exit 1
fi

number=`echo "$number * 1" | bc 2> /dev/null`

GlobalLength=`expr length $number`

[ $GlobalLength -gt 15 ] && echo -e "\n *****Error : Invalid Digit Length ( $number ~~> $GlobalLength Digits) \n" && exit 1

Convert
