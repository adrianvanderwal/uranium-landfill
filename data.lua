require('prototypes/uraniumLandfill')

if (settings.startup['woodenLandfill'].value) then
  require('prototypes/woodenLandfill')
end
if (settings.startup['coalLandfill'].value) then
  require('prototypes/coalLandfill')
end
