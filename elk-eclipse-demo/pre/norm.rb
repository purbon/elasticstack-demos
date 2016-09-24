#!/usr/bin/env ruby

require 'csv'
require 'nokogiri'

class Norm

  def self.parse(src, trg)
    dest = File.open(trg, "w+")
    begin
      Dir.entries(src).each do |file|
        next if File.directory?(file)
        datas = parse!(File.join(src, file), trg)
        dest.write("#{datas.join("\n")}\n") if datas && !datas.empty?
        print "."
      end
    rescue
      puts "x"
    ensure
      dest.close
    end
  end


  private


  def self.parse!(src, trg, count=0)
    f = File.open(src)
    datas  = []
    begin
      doc = Nokogiri::XML(f) do |config|
        config.noblanks
      end
      doc.css('bug').each do |bug|
        puts bug.css("bug").count if bug.css("bug").count > 0
        begin
          if bug.xpath("@error").empty?
            data = bug.to_xml(:save_with => Nokogiri::XML::Node::SaveOptions::AS_XML |
                              Nokogiri::XML::Node::SaveOptions::NO_DECLARATION).tr("\n","")
            datas << data
          end
        rescue
          print "fx"
        end
      end
    rescue
      puts "caught exception"
    ensure
      f.close
    end
    datas
  end


end

  ## main function
  if __FILE__ == $0
    Norm.parse(ARGV[0], ARGV[1])
  end
