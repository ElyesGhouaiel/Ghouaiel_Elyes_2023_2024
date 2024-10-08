import "../style/TypePoke.css"

function TypePokemon(props) {
  console.log(props)
    let types = props.types
    return (
      <>
      {types.map(type => (
        <>
        <p className={type.type.name}>{type.type.name}</p>
      </>
      ))} 
      </>
    );
  }
  
  export default TypePokemon;