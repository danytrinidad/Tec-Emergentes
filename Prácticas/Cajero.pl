%Base de echos
bien(tarjeta).
mal(tarjeta).
correcto(NIP).
incorrecto(NIP).
suficiente(balance).
insuficiente(balance).
no_excede(limite).
si_excede(limite).


%Reglas
pago_autorizado(x):-bien(x),correcto(x),suficiente(x),no_excedido(x).
pago_no_autorizado(x):-mal(x),incorrecto(x),insuficiente(x),si_excede(x).
