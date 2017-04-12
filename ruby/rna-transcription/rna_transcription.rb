class Complement

  def self.of_dna(rna)
    return '' if rna.gsub(/[^GCTA]/, '*') != rna
    rna.split('').reduce('') do |transcription, strand|
      transcription << complements[strand]
      transcription
    end
  end

  private

    def self.complements
      {
        'G' => 'C',
        'C' => 'G',
        'T' => 'A',
        'A' => 'U'
      }
    end
end

module BookKeeping
  VERSION = 4 # Where the version number matches the one in the test.
end
