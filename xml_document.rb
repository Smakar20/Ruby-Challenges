#XmlDocument, that *builds* an XML file, which can contain arbitrary tags.
class XmlDocument
  def initialize(indent = false)
    @indent = indent
    @space = ""
  end

  def method_missing(method_name, attributes = {}, &blk)
    @xml = ""
    @method_name = method_name
    if method_name && attributes == {} && !block_given?
      @xml += "<#{method_name}/>"
    else
      @xml += "<#{method_name}"
      if attributes != {}
        attributes.each do |k, v|
          @xml += " #{k}=\"#{v}\""
        end
        @xml += "/>"
      elsif block_given?
        @xml += ">#{indent?}#{space?}#{blk.call}</#{method_name}>"
      end
      @xml += "#{indent?}#{space?}"
    end
  end

  def indent?
    "\n" if @indent
  end

  def space?
    if indent?
      if @xml[@xml.length-2..@xml.length-1] != "/>" && @xml.match("</.*>").nil?
        @space += "  "
      else
        @space = @space.chop.chop
      end
      @space
   end
  end
end

#------------test------------------
@xml = XmlDocument.new(true)

    xml_string = @xml.hello do
      @xml.goodbye do
        @xml.come_back do
          @xml.ok_fine(:be => "that_way")
        end
      end
    end
    
puts xml_string