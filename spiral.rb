    #ruby 2.3.1 

    n = gets.to_i
    b = gets.to_i

    ini = 0
    fim = (n / 2)

    x = 0


    while (ini <= fim)

        meio = (ini + fim) / 2
        if ((4 * meio * (n - meio)) < b) then

                x = meio
                ini = meio + 1;

        else 
                fim = meio - 1
        end
    end

    resto_feijoes = b - 4 * x * (n - x)
    casca = x + 1
    lim = n + (casca - 1) * (-2)
    cordX = casca
    cordY = casca



        if(resto_feijoes >= lim) then

             resto_feijoes =  resto_feijoes - lim
             cordY = cordY + (lim - 1)

        else

            resto = resto_feijoes % lim
             cordY = cordY + (resto - 1)
            resto_feijoes  = resto_feijoes - resto
        end

        if(resto_feijoes > 0) then


                if(resto_feijoes >= lim - 1) then
                    resto_feijoes = resto_feijoes - (lim - 1)
                    cordX = cordX + (lim - 1)

                else 

                    resto = resto_feijoes % (lim - 1)
                    cordX = cordX + resto
                    resto_feijoes = resto_feijoes - resto
                end


            if(resto_feijoes > 0) then
                if(resto_feijoes >= (lim - 1)) then

                    resto_feijoes = resto_feijoes - (lim - 1)
                    cordY = cordY - (lim - 1)

                else
                    resto = resto_feijoes % (lim - 1)
                    cordY = cordY - resto
                    resto_feijoes = resto_feijoes - resto
                end

                    if(resto_feijoes > 0) 
                        cordX = cordX - resto_feijoes
                    end
            end

         end


    print cordX," ", cordY         

