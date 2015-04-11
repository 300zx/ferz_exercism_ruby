class Complement

  DNA = "GCUA"
  RNA = "CGAT"

  def self.of_dna(rna)  
    raise ArgumentError, "U (uracil) is not part of RNA" if rna == 'U' 
    rna.tr(RNA, DNA)
  end

  def self.of_rna(dna)
    raise ArgumentError, "T (thymine) is not part of DNA" if dna == "T"
    dna.tr(DNA, RNA)
  end
end

