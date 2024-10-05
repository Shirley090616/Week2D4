# Méthode pour demander le nombre d'étages
def ask_floor
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    return gets.chomp.to_i
  end
  
  # Méthode pour afficher un étage donné
  def build_floor(total_floor, current_floor)
    print " " * (current_floor - total_floor)  # Affiche les espaces
    print "#" * (2 * total_floor - 1)           # Affiche les # (caractères)
    puts                                        # Passe à la ligne suivante
  end
  
  # Méthode pour construire la pyramide
  def build_pyramid(total_floor)
    puts "Voici la pyramide :"
    
    total_floor.times do |current_floor|
      build_floor(current_floor + 1, total_floor)  # Appelle la méthode pour chaque étage
    end
  end
  
  # Méthode principale qui lie tout ensemble
  def full_pyramid
    build_pyramid(ask_floor)  # Exécute les méthodes en cascade
  end
  
  # Appel de la méthode principale pour exécuter le programme
  full_pyramid
  