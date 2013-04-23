class PersonaPdf < Prawn::Document

  def initialize(persona, view)
    super()
    @persona = persona
    @view = view
    logo
    deliver_details
    persona_details
  end


  def logo
    logopath =  "#{Rails.root}/app/assets/images/close.png"
    image logopath, :width => 150, :height => 70
    move_down 10
    draw_text "persona ", :at => [220, 675], size: 22
  end


  def deliver_details
    move_down 60
    text "persona Id:
   #{@persona.id} ", :size => 13
    move_down 20
    text "Nombre:
   #{@persona.nombre} ", :size => 13
  end


  def persona_details    
    move_down 60
    id = @persona.id
    nombre = @persona.nombre
    identificacion = @persona.identificacion
    email = @persona.email
    fch_ncto = @persona.fch_ncto
    telefono = @persona.telefono
    municipio = @persona.municipio
    table ([["Id",  "#{id} "] ,
    ["Nombre", "#{nombre} "],
    ["Identificacion", "#{identificacion} "],
    ["Email", "#{email} "],
    ["Fch_ncto", "#{fch_ncto}"],
    ["Telefono", "#{telefono}"],
    ["Municipio", "#{municipio}"],
    
    ]),


    :width => 500 do
      columns(1).align = :center
      self.header = true
      self.column_widths = {0 => 200, 3 => 100}
      columns(2).font_style = :bold
    end
  end
end
