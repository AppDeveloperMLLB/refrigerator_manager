import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'home_screen.dart';

const _pageKey = ValueKey('_pageKey');
const _scaffoldKey = ValueKey('_scaffoldKey');

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    // HomeScreen
    GoRoute(
      path: '/',
      pageBuilder: (context, state) => const MaterialPage<void>(
        key: _pageKey,
        child: HomeScreen(),
      ),
    ),

    // // PlaylistHomeScreen
    // GoRoute(
    //   path: '/playlists',
    //   pageBuilder: (context, state) => const MaterialPage<void>(
    //     key: _pageKey,
    //     child: RootLayout(
    //       key: _scaffoldKey,
    //       currentIndex: 1,
    //       child: PlaylistHomeScreen(),
    //     ),
    //   ),
    //   routes: [
    //     GoRoute(
    //       path: ':pid',
    //       pageBuilder: (context, state) => MaterialPage<void>(
    //         key: state.pageKey,
    //         child: RootLayout(
    //           key: _scaffoldKey,
    //           currentIndex: 1,
    //           child: PlaylistScreen(
    //             playlist: playlistsProvider.getPlaylist(state.params['pid']!)!,
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // ),
    //
    // // ArtistHomeScreen
    // GoRoute(
    //   path: '/artists',
    //   pageBuilder: (context, state) => const MaterialPage<void>(
    //     key: _pageKey,
    //     child: RootLayout(
    //       key: _scaffoldKey,
    //       currentIndex: 2,
    //       child: ArtistsScreen(),
    //     ),
    //   ),
    //   routes: [
    //     GoRoute(
    //       path: ':aid',
    //       pageBuilder: (context, state) => MaterialPage<void>(
    //         key: state.pageKey,
    //         child: RootLayout(
    //           key: _scaffoldKey,
    //           currentIndex: 2,
    //           child: ArtistScreen(
    //             artist: artistsProvider.getArtist(state.params['aid']!)!,
    //           ),
    //         ),
    //       ),
    //       // builder: (context, state) => ArtistScreen(
    //       //   id: state.params['aid']!,
    //       // ),
    //     ),
    //   ],
    // ),
    // for (final route in destinations.skip(3))
    //   GoRoute(
    //     path: route.route,
    //     pageBuilder: (context, state) => MaterialPage<void>(
    //       key: _pageKey,
    //       child: RootLayout(
    //         key: _scaffoldKey,
    //         currentIndex: destinations.indexOf(route),
    //         child: const SizedBox(),
    //       ),
    //     ),
    //   ),
  ],
);
