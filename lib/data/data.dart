const yourLibrary = [
  'Made For You',
  'Recently Played',
  'Liked Songs',
  'Albums',
  'Artists',
  'Podcasts',
];

const playlists = [
  'Today\'s Top Hits',
  'Discover Weekly',
  'Release Radar',
  'Chill',
  'Background',
  'lofi hip hop music - beats to relax/study to',
  'Vibes Right Now',
  'Time Capsule',
  'On Repeat',
  'Summer Rewind',
  'Dank Doggo Tunes',
  'Sleepy Doge',
];

class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
  });
}

const _lofihiphopMusic = [
  Song(
    id: '0',
    title: 'Stay Gone',
    artist: 'Morizuq',
    album: 'Heart on Freeze',
    duration: '3:15',
  ),
  Song(
    id: '1',
    title: 'Overnight Depression',
    artist: 'Morizuq',
    album: 'Wish I never',
    duration: '2:18',
  ),
  Song(
    id: '2',
    title: 'The Undead',
    artist: 'Morizuq',
    album: 'Rapocalypse',
    duration: '2:39',
  ),
  Song(
    id: '3',
    title: 'Call You Soon',
    artist: 'Morizuq',
    album: 'Heart on Fleek',
    duration: '2:35',
  ),
  Song(
    id: '4',
    title: 'Blazing Snow',
    artist: 'Morizuq',
    album: 'Feelings',
    duration: '2:15',
  ),
  Song(
    id: '5',
    title: 'Hope',
    artist: 'Morizuq',
    album: 'Just Like Yesterday',
    duration: '1:57',
  ),
  Song(
    id: '6',
    title: 'Wake Me Up',
    artist: 'Morizuq',
    album: 'Eyes Closed',
    duration: '2:00',
  ),
  Song(
    id: '7',
    title: 'Trapped In Fog',
    artist: 'Morizuq',
    album: 'Blame It All On Love',
    duration: '2:34',
  ),
  Song(
    id: '8',
    title: 'Drip Drip',
    artist: 'Morizuq',
    album: 'Rave',
    duration: '1:43',
  ),
  Song(
    id: '9',
    title: 'Fought Demons',
    artist: 'Morizuq',
    album: 'Rapocalypse',
    duration: '2:41',
  ),
  Song(
    id: '10',
    title: 'Forget Bout The Chute',
    artist: 'Morizuq',
    album: 'One Leap Of Faith',
    duration: '2:12',
  ),
  Song(
    id: '11',
    title: 'Out The Darkness',
    artist: 'Morizuq',
    album: 'Rapocalypse',
    duration: '2:31',
  ),
];

class Playlist {
  final String id;
  final String name;
  final String imageURL;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Song> songs;

  const Playlist({
    required this.id,
    required this.name,
    required this.imageURL,
    required this.description,
    required this.creator,
    required this.duration,
    required this.followers,
    required this.songs,
  });
}

const lofihiphopPlaylist = Playlist(
  id: '5-playlist',
  name: 'Rapocalypse',
  imageURL: 'assets/img.jpg',
  description:
      'A reality made out of words in my head - Morizuq',
  creator: 'Morizuq',
  duration: '28 min',
  followers: '6,000',
  songs: _lofihiphopMusic,
);
