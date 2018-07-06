#Binary Search tree (1195 URI)

#Estrutura de  uma árvore binária
class BinarySearchTree

  #Estrutura de um nó
  class Node

    #Atriutos públicos
    attr_reader :key, :left, :right

    #Inicializa a chave
    def initialize( key )
      @key = key
      @left = nil
      @right = nil
    end

    #Insere nova chave
    def insert( new_key )
      
      #Verifica a inserção
      if new_key < @key

        #Se nulo então o nó é criado, se não insere recursivamente
        @left.nil? ? @left = Node.new( new_key ) : @left.insert( new_key )

      elsif new_key > @key

        #Se nulo então o nó é criado, se não insere recursivamente
        @right.nil? ? @right = Node.new( new_key ) : @right.insert( new_key )
      end
    end
  
  end

  ###Acaba a classe Nó

    #Inicializa a árvore
    def initialize
    
      #Raíz nula
      @root = nil
    
    end

    #Insere chave na árvore
    def insert( key )
      
      #Se raíz é nula então cria raíz, se não insere
      if @root.nil?
        @root = Node.new( key )
      else
        @root.insert( key )
    end
  end

  #Percorre as ordens
   def in_order(node=@root, &block)
    return if node.nil?
    in_order(node.left, &block)
    yield node
    in_order(node.right, &block)
  end

   def pre_order(node=@root, &block)
    return if node.nil?
    yield node
    pre_order(node.left, &block)
    pre_order(node.right, &block)
  end

    def post_order(node=@root, &block)
    return if node.nil?
    post_order(node.left, &block)
    post_order(node.right, &block)
    yield node
  end

end

#Número de casos
cases = STDIN.gets.chomp.to_i;

#vetor de árvores
trees = [];

#Armazena as árvores de cada caso
for x in (0 ... cases)

  #Recebe o número de nós da árvore
  number_of_nodes = STDIN.gets.chomp.to_i;

  #Recebe um vetor de números em string
  values = STDIN.gets.split(" ");

  #Mapeia o vetor em outro vetor onde cada elemento "e" é convertido para inteiro
  values = values.each.map {|e| e.to_i};

  #Cria árvore relacionada ao caso com o primeiro valor
  trees[x] = BinarySearchTree.new;

  #Recebe e cria cada nó da árvore
  for i in (0 ... number_of_nodes)

    #Adiciona nó na árvore
   trees[x].insert(values[i]);

  end



end

for x in (0 ... cases)

  printf("Case #{x + 1}:\n");

  printf ("Pre.:")
  trees[x].pre_order do |node|
    printf (" #{node.key}");
  end

  printf("\n")

  printf ("In..:")
  trees[x].in_order do |node|
    printf (" #{node.key}");
  end

  printf("\n");

  printf ("Post:")
  trees[x].post_order do |node|
    printf (" #{node.key}");
  end

printf("\n\n");
end
