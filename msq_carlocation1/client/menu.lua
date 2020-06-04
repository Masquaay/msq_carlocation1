Citizen.CreateThread(function()
	local items = {"Blista", "Issi", "Asea"}
	local currentItemIndex = 1
	local selectedItemIndex = 1

	WarMenu.CreateMenu('locationmenu', 'Location de véhicule')
    WarMenu.SetSubTitle('locationmenu', "Vehicule disponibles :")
    WarMenu.SetTitleBackgroundColor('locationmenu', 255, 235, 0, 150)

	while true do
		if WarMenu.IsMenuOpened('locationmenu') then
            
            onmenu = true

			if WarMenu.ComboBox('Choisir un véhicule :', items, currentItemIndex, selectedItemIndex, function(currentIndex, selectedIndex)
					currentItemIndex = currentIndex
					selectedItemIndex = selectedIndex
                end) then
                    
                    if selectedItemIndex == 1 then
                        SpawnBmx()
                        WarMenu.CloseMenu()
                        onmenu = false
                    elseif selectedItemIndex == 2 then
                        SpawnCruiser()
                        WarMenu.CloseMenu()
                        onmenu = false
                    elseif selectedItemIndex == 3 then
                        SpawnFixter()
                        WarMenu.CloseMenu()
                        onmenu = false
                    end
                end

			WarMenu.Display()
		end

		Citizen.Wait(0)
	end
end)