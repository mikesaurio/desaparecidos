module MissingsHelper
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
