import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spotify_ui/Models/current_track._model.dart';
import 'package:flutter_spotify_ui/data/data.dart';
import 'package:provider/provider.dart';

class TracksList extends StatelessWidget {
final List<Song> tracks;
  const TracksList({Key? key, required this.tracks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingTextStyle: Theme.of(context).textTheme.overline!.copyWith(fontSize: 12.0),
      dataRowHeight: 54.0,
      showCheckboxColumn: false,
      columns: const [
        DataColumn(label: Text('Title')),
        DataColumn(label: Text('Artist')),
        DataColumn(label: Text('Album')),
        DataColumn(label: Icon(Icons.access_time)),
      ],
      rows: tracks.map((e) {
        final selected = context.watch<CurrentTrackModel>().selected?.id == e.id;
        final textStyle = TextStyle(color: selected? Theme.of(context).accentColor: Theme.of(context).iconTheme.color );
        return DataRow(cells: [
          DataCell(Text(e.title, style: textStyle),),
          DataCell(Text(e.artist, style: textStyle),),
          DataCell(Text(e.album, style: textStyle),),
          DataCell(Text(e.duration, style: textStyle),),
        ],
          selected: selected,
          onSelectChanged:(_) => context.read<CurrentTrackModel>().selectTrack(e)
        );
      }).toList(),);
  }
}
