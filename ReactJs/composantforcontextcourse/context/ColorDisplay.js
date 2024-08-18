import React, { useContext } from 'react';
import ColorContext from './ColorContext';

function ColorDisplay() {
  const { color } = useContext(ColorContext);

  return (
    <div>
      <p>The selected color is: {color}</p>
      <div style={{ backgroundColor: color, width: '100px', height: '100px' }}></div>
    </div>
  );
}

export default ColorDisplay;
