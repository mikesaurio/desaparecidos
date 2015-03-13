module MissingsHelper
  
def states_helper
  [
['Aguascalientes', 'Aguascalientes'],
['Baja California', 'Baja California'],
['Baja California Sur', 'Baja California Sur'],
['Campeche', 'Campeche'],
['Coahuila', 'Coahuila'],
['Colima ', 'Colima '],
['Chiapas', 'Chiapas'],
['Chihuahua', 'Chihuahua'],
['Distrito Federal', 'Distrito Federal'],
['Durango', 'Durango'],
['Guanajuato', 'Guanajuato'],
['Guerrero', 'Guerrero'],
['Hidalgo', 'Hidalgo'],
['Jalisco', 'Jalisco'],
['México', 'México'],
['Michoacán', 'Michoacán'],
['Morelos', 'Morelos'],
['Nayarit', 'Nayarit'],
['Nuevo León', 'Nuevo León'],
['Oaxaca', 'Oaxaca'],
['Puebla', 'Puebla'],
['Querétaro', 'Querétaro'],
['Quintana Roo', 'Querétaro'],
['San Luis Potosí', 'Querétaro'],
['Sinaloa', 'Querétaro'],
['Sonora', 'Querétaro'],
['Tabasco', 'Querétaro'],
['Tamaulipas', 'Querétaro'],
['Tlaxcala', 'Querétaro'],
['Veracruz', 'Querétaro'],
['Yucatán', 'Querétaro'],
['Zacatecas', 'Querétaro']
  ]
end
  def estatus_helper
    [
      ['Reconocido', '1'],
      ['No reconocido', '0'],
    ]
end
def status(var)
  if var== '1'
    'Reconocido'
  else
    'No Reconocido'
  end
end

end
