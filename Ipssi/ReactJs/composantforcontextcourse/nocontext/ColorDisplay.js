import React from 'react';

function ColorDisplay({ color }) {
  return (
    <div>
      <p>The selected color is: {color}</p>
      <div style={{ backgroundColor: color, width: '100px', height: '100px' }}></div>
    </div>
  );
}

export default ColorDisplay;
