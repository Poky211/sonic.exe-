function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Phantom Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'PhantomNote');
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);
		end
	end
end

local healthDrain = 0;
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Phantom Note' then
		-- health loss | || || |_
		--setProperty('health', getProperty('health') - 0.6);
		healthDrain = healthDrain + 0.6;
	end
end

function onUpdate(elapsed)
	if healthDrain > 0 then
		healthDrain = healthDrain - 0.2 * elapsed;
		setProperty('health', getProperty('health') - 0.2 * elapsed);
		if healthDrain < 0 then
			healthDrain = 0;
		end
	end
end