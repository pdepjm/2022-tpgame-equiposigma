import wollok.game.*

object left {
	method siguientePosicion(actPos){
		if ( (game.getObjectsIn(actPos.left(1))).size() == 0)
		(
			return actPos.left(1)	
		)
		return actPos	
	}  
}

object right {
	method siguientePosicion(actPos){
		if ( (game.getObjectsIn(actPos.right(1))).size() == 0)
		{
			if((game.getObjectsIn((actPos.right(1)).down(1))).size() == 0){
				return (actPos.right(1)).down(1)
			}
			return actPos.right(1)
		}
		return actPos	
	} 
}

object up {
	method siguientePosicion(actPos){
		if ( (game.getObjectsIn(actPos.up(1))).size() == 0)
		(
			return actPos.up(1)	
		)
		return actPos	
	}
}

object down {
	method siguientePosicion(actPos){
		if ( (game.getObjectsIn(actPos.down(1))).size() == 0)
		(
			return actPos.down(1)	
		)
		return actPos	
	} 
}