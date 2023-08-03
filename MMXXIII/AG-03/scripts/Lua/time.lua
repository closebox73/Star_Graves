words = {"O N E", "T W O", "T H R E E", "F O U R", "F I V E", "S I X", "S E V E N", "E I G H T", "N I N E"}
levels = {"THOUSAND ", "MILLION ", "BILLION ", "TRILLION ", "QUADRILLION ", "QUINTILLION ", "SEXTILLION ", "SEPTILLION ", "OCTILLION ", [0] = ""}
iwords = {"T E N ", "T W E N T Y ", "T H I R T Y ", "F O R T Y ", "F I F T Y ", "S I X T Y ", "S E V E N T Y ", "E I G H T Y ", "N I N E T Y "}
twords = {"E L E V E N", "T W E L V E", "T H I R T E E N", "F O U R T E E N", "F I F T E E N", "S I X T E E N", "S E V E N T E E N", "E I G H T E E N", "N I N E T E E N"}

function digits(n)
  local i, ret = -1
  return function()
    i, ret = i + 1, n % 10
    if n > 0 then
      n = math.floor(n / 10)
      return i, ret
    end
  end
end

level = false
function getname(pos, dig)
  level = level or pos % 3 == 0
  if(dig == 0) then return "" end
  local name = (pos % 3 == 1 and iwords[dig] or words[dig]) .. (pos % 3 == 2 and "HUNDRED " or "")
  if(level) then name, level = name .. levels[math.floor(pos / 3)], false end
  return name
end

function numberToWord(number)
    if(number == 0) then return "O ' C l o c k" end
    vword = ""
    for i, v in digits(number) do
      vword = getname(i, v) .. vword
    end

    for i, v in ipairs(words) do
      vword = vword:gsub("TY " .. v, "TY-" .. v)
      vword = vword:gsub("T E N " .. v, twords[i])
    end
    return vword
end

function conky_Hour()
    return numberToWord(os.date("%I") + 0)
end

function conky_Minute()
    return numberToWord(os.date("%M") + 0)
end

function conky_Date()
    return numberToWord(os.date("%d") + 0)
end
