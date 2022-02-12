function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Static Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'staticNotes');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.4');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Static Note' then
        playSound('hitStatic1')
		triggerEvent('Missed Static Note', 'amongUs', 'amongUs')
	end
end

function onEvent(name,a,b)
    if name == 'Missed Static Note' then
        objectPlayAnimation('missStatic', 'missed', true)
    end
end