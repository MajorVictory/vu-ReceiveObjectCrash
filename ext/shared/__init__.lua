
Events:Subscribe('ModUtils:GetClasses', function(classInfo)
	print('Received ModUtils Class: '..classInfo.className)
	_G[classInfo.className] = classInfo.classData:__init()
end)

print('Requesting Classes...')
Events:Dispatch('ModUtils:SendClass')