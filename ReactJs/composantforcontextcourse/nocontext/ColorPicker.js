import React from 'react';

function ColorPicker({ onColorChange }) {
  const handleInputChange = (e) => {
    onColorChange(e.target.value);
  };

  return (
    <div>
      <input type="text" placeholder="Enter a color" onChange={handleInputChange} />
    </div>
  );
}

export default ColorPicker;
