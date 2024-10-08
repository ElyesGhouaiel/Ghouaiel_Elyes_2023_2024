import React, { useContext } from 'react';
import ColorContext from './ColorContext';

function ColorPicker() {
  const { setColor } = useContext(ColorContext);

  const handleInputChange = (e) => {
    setColor(e.target.value);
  };

  return (
    <div>
      <input type="text" placeholder="Enter a color" onChange={handleInputChange} />
    </div>
  );
}

export default ColorPicker;
