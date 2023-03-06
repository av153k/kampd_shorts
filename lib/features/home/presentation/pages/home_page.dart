import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kampd_shorts/features/home/home.dart';
import 'package:video_player/video_player.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.black),
                ),
              );
            } else if (state.error != null) {
              return Center(
                child: Text(
                  state.error.toString(),
                ),
              );
            } else {
              return PageView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Expanded(
                        child: VideoPlayer(
                          state.controllers[state.videos[index]]!,
                        ),
                      ),
                    ],
                  );
                },
                itemCount: state.videos.length,
                scrollDirection: Axis.vertical,
                onPageChanged: (index) {
                  BlocProvider.of<HomeBloc>(context)
                      .add(HomeEvent.scroll(index));
                },
              );
            }
          },
        ),
      ),
    );
  }
}
