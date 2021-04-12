require 'colorize'

class ConsoleInterface
  FIGURES = Dir["#{__dir__}/../data/figures/*.txt"].sort.map { |file_name| File.read(file_name) }

  def initialize(game)
    @game = game
  end

  def print_out
    puts <<~SCREEN
      Слово: #{word_to_show.colorize(color: :blue)}
      #{figure.colorize(color: :light_yellow)}
      Ошибки (#{@game.errors_made}): #{errors_to_show.colorize(color: :red)}
      #{'У вас осталось ошибок:'.colorize(color: :green)} #{@game.errors_allowed}

    SCREEN

    if @game.won?
      puts 'Поздравляем, вы выиграли!'.colorize(color: :magenta)
    elsif @game.lost?
      puts "Вы проиграли, загаданное слово: #{@game.word.colorize(color: :blue)}"
    end
  end

  def figure
    FIGURES[@game.errors_made]
  end

  def word_to_show
    result =
      @game.letters_to_guess.map do |letter|
        if letter.nil?
          '__'
        else
          letter
        end
      end

    result.join(' ')
  end

  def errors_to_show
    @game.errors.join(', ')
  end

  def get_input
    print 'Введите следующую букву: '
    gets[0].upcase
  end
end
