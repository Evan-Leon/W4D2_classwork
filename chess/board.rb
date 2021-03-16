require_relative "./piece.rb"

class Board

    # def self.populate
    #     @grid.each_with_index do |row, idx|
    #         if idx.include?(0..1) || idx.include?(6..7)
    #             row.each_with_index { |space, idx2| space << Piece.new([idx, idx2]) }
    #         else
    #             row.map { |space| space << nil }
    #         end
    #     end
    # end


    def initialize
        @grid = Array.new(8) {Array.new(8, [])}
        # Board.populate
    end

    def populate
        @grid.each_with_index do |row, idx|
            if (0..1).include?(idx) || (6..7).include?(idx)
                row.each_with_index { |space, idx2| space << Piece.new([idx, idx2]) }
            else
                row.map { |space| space << nil }
            end
        end
    end




    #rows 0 & 1 have pieces
    #on rows 6 & 7(last row) pieces
    # row 2-5 nil

end


