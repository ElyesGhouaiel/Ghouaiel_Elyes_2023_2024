import React from 'react';
import { ColorProvider } from './ColorContext';
import ColorPicker from './ColorPicker';
import ColorDisplay from './ColorDisplay';

function App() {
  return (
    <ColorProvider>
      <div>
        <ColorPicker />
        <ColorDisplay />
      </div>
    </ColorProvider>
  );
}

export default App;
