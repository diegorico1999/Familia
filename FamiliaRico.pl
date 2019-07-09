#primera y segunda generacion

padre_De('Libardo','Diego').
padre_De('Ana','Diego').

padre_De('Libardo','Laura').
padre_De('Ana','Laura').

padre_De('Libardo','Camilo').
padre_De('Ana','Camilo').

padre_De('Libardo','Juan').
padre_De('Ana','Juan').

padre_De('Alirio','Aldemar').
padre_De('Blanca','Aldemar').

padre_De('Carlos','Tatiana').
padre_De('Senaida','Tatiana').

#segunda y tercera generacion

padre_De('Rosana','Libardo').
padre_De('Rosana','Mariela').
padre_De('Rosana','Alirio').

padre_De('Marco','Libardo').
padre_De('Marco','Mariela').
padre_De('Marco','Alirio').

padre_De('Dolores','Ana').
padre_De('Dolores','Luis').
padre_De('Dolores','Ramon').

padre_De('Aristobulo','Ana').
padre_De('Aristobulo','Luis').
padre_De('Aristobulo','Ramon').

#tercera y cuarta generacion

padre_De('Celestina','Rosana').
padre_De('Abundio','Rosana').

padre_De('Agripina','Marco').
padre_De('Avelino','Marco').

padre_De('Efigenia','Dolores').
padre_De('Bonifacio','Dolores').

padre_De('Felisa','Aristobulo').
padre_De('Calisto','Aristobulo').


abuelo(X,Y):- padre_De(X,Z),padre_De(Z,Y).

hermano(X,Y):-padre_De(Z,X),padre_de(Z,Y).

tio(X,Y):- padre_De(Z,Y), hermano(Z.Y).

primo(X,Y):- padre_De(Z,X),padre_De(W,Y),hermano(Z,W).

casado(X,Y):- padre_De(X,Z),padre_De(Y,Z),X\=Y.

feliz(X,Y):- \+ is a.
