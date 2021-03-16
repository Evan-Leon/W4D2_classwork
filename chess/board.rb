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
        
        @grid.each_with_index do |row, row_idx|
           row.each_with_index do |col, col_idx| 
                if (0..1).include?(row_idx) || (6..7).include?(row_idx)
                    row[row_idx, col_idx] << Piece.new([row_idx, col_idx]) 
                else
                 row.map { |space| space = nil }
                end
            end
        end
    end

    def [](pos)
        x, y = pos 
        @grid[x, y]
    end

    def []=(new_pos, value)
        
        @grid[new_pos] = value 
    end  

    # @grid.each do |row|
    #     row.each do |ele|

    #     end
    # end


    #rows 0 & 1 have pieces
    #on rows 6 & 7(last row) pieces
    # row 2-5 nil

end


