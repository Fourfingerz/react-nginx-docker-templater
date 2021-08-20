import logo from './logo.svg';
import './App.css';
import hunt from './Hunttrash.jpg'; // HUNT TRASH MEME

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />
        <p>
          {/* Edit <code>src/App.js</code> and save to reload. */}
          YO PAT, MY CONDOLENCES THAT YOU CANNOT COWBOY. I'LL TIP MY HAT AT YOU.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Winfield + Springfield + Duo = WE SPOOKY
          <img src={hunt} alt="this is hunt image" />
        </a>
      </header>
    </div>
  );
}

export default App;
