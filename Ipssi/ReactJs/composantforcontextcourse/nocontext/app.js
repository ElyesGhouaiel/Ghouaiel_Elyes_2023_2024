import React, { useState } from 'react';
import ColorPicker from './ColorPicker';
import ColorDisplay from './ColorDisplay';

function App() {
  const [color, setColor] = useState('');

  const handleColorChange = (newColor) => {
    setColor(newColor);
  };

  return (
    <div>
      <ColorPicker onColorChange={handleColorChange} />
      <ColorDisplay color={color} />
    </div>
  );
}

export default App;
