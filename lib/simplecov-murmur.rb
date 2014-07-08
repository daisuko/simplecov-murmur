require "pathname"
require "colorize"

class SimpleCov::Formatter::MurMurFormatter
  def self.mode=(val)
    @@mode = val
  end

  def self.mode
    @@mode ||= :short
  end

  def short?
    self.class.mode == :short
  end

  def format(result)
    root    = Pathname.new(SimpleCov.root || Dir.pwd)
    report  = if result.groups.empty?
      message_per_group "All Files", result.files, root
    else
      result.groups.map do |name, files|
        message_per_group name, files, root
      end.join("\n")
    end
    report << "\n"

    puts report

    report
  end

  def message_per_group(name, files, root)
    message = files.sort {|a, b| a.covered_percent <=> b.covered_percent}
                   .map  {|file| message_per_file file, root}.compact.join("\n")

    [name.colorize(:blue) + ":", message].join("\n")
  end

  def message_per_file(file, root)
    percent   = file.covered_percent
    file_name = Pathname.new(file.filename).relative_path_from(root).to_s

    short? && percent == 100 ? nil : "  [#{colorize(percent)}] #{file_name}"
  end

  def colorize(val)
    ("%6.2f%" % val.round(2)).colorize(case val.to_i
      when  0..79 then :red
      when 80..89 then :yellow
      else :green
    end)
  end
end

