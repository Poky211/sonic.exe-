function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Pixel Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PIXEL_NOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0475');
		end
	end
end