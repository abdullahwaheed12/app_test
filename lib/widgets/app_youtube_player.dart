import 'package:App_Test/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoPlayWidget extends StatefulWidget {
  const YoutubeVideoPlayWidget({
    super.key,
    required this.initialVideoId,
  });
  final String initialVideoId;

  @override
  State<YoutubeVideoPlayWidget> createState() => _YoutubeVideoPlayWidgetState();
}

class _YoutubeVideoPlayWidgetState extends State<YoutubeVideoPlayWidget> {
  late YoutubePlayerController videoPlayerController;
  @override
  initState() {
    super.initState();

    videoPlayerController = YoutubePlayerController(
        initialVideoId: widget.initialVideoId,
        flags: const YoutubePlayerFlags(
          hideControls: false,
          disableDragSeek: true,
          controlsVisibleAtStart: false,
          enableCaption: false,
          showLiveFullscreenButton: false,
          isLive: false,
          useHybridComposition: false,
          autoPlay: false,
          mute: false,
        ));
    videoPlayerController.addListener(() {
      if (videoPlayerController.value.playerState == PlayerState.ended) {
        NavigationService.pop();
      }
    });
  }

  @override
  void dispose() {
    videoPlayerController.pause();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    videoPlayerController.fitWidth(MediaQuery.of(context).size);
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: YoutubePlayerBuilder(
          player: YoutubePlayer(
            aspectRatio: 0.8,
            controller: videoPlayerController,
          ),
          builder: (context, player) {
            return player;
          }),
    );
  }
}
