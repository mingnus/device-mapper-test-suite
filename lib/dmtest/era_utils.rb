#----------------------------------------------------------------

module EraUtils
  include DiskUnits

  def blocks_changed_since(dev, era)
    output = ProcessControl.run("era_invalidate --written-since #{era} #{dev}")
    # normalize spaces around '=' for era_invalidate < 1.0
    output.gsub(/\s*=\s*/, '=')
  end
end

#----------------------------------------------------------------
