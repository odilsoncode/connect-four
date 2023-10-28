class Board
    attr_reader :board
    def initialize(rows = 6, columns = 7)
        @rows = rows
        @columns = columns
        @board = Array.new(rows) { Array.new(columns, ' ') }
      end

      def display_board
        puts "  1   2   3   4   5   6   7"
        puts "+---+---+---+---+---+---+---+"
        @rows.times do |row|
            row_display = "|"
            @columns.times do |col|
                row_display += " #{@board[row][col]} |"
            end
            puts row_display
        puts "+---+---+---+---+---+---+---+"
        end
      end

      def drop_token(column, player)
        row = @rows - 1
        while row >= 0
          if @board[row][column - 1] == ' '
            @board[row][column - 1] = player.token
            return true
          end
          row -= 1
        end
        false
      end
end
