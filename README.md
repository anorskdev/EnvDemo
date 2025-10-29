This is a basic demo of using @Observable and @Environment to pass global information down through a View heirarchy.

One piece of data is a color theme.  The other is model data for a list of players.

The entry screen will look something like this after some players are added.

<img width="236" height="512" alt="MainScreen" src="https://github.com/user-attachments/assets/3a821b4b-9e68-4be7-af70-4e30b83e9a74" />

The following screen is used to modify colors.

<img width="236" height="512" alt="ChangeTheme" src="https://github.com/user-attachments/assets/4c125a95-7145-46e2-9726-f643a609e18b" />

The following screen is used to add new players.

<img width="236" height="512" alt="AddPlayers" src="https://github.com/user-attachments/assets/27669316-a396-4f58-ab16-bf2b8daa8cc6" />

The code is commented starting at the App level where the environment variables are created and injected. Comments are also available to assist understanding how to set up #Preview.

The idea is to show how data is passed through the environment and can be modified at various child views.
