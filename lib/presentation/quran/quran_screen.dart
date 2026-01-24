import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quran/bloc/quran/quran_bloc.dart';
import 'package:flutter_quran/extension/app_color_extension.dart';
import 'package:flutter_quran/injection/injector.dart';
import 'package:flutter_quran/presentation/quran/widgets/last_read_card.dart';
import 'package:flutter_quran/presentation/quran/widgets/quran_search_bar.dart';
import 'package:flutter_quran/presentation/quran/widgets/surah_list_tile.dart';
import 'package:flutter_quran/theme/theme.dart';

@RoutePage()
class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          inject<QuranBloc>()..add(const QuranEvent.fetchSurah()),
      child: Scaffold(
        backgroundColor: context.backgroundColor,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Header / Search
                        const QuranSearchBar(),
                        const SizedBox(height: 24),

                        // Last Read
                        Text(
                          "Last Read",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: context.blackWhiteColor,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const LastReadCard(),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  delegate: _SliverTabBarDelegate(
                    TabBar(
                      controller: _tabController,
                      labelColor: MyTheme.color.primary,
                      unselectedLabelColor: Colors.grey,
                      indicatorColor: MyTheme.color.primary,
                      indicatorWeight: 3,
                      labelStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                      tabs: const [
                        Tab(text: "Surah"),
                        Tab(text: "Juz"), // Placeholder
                        Tab(text: "Bookmarks"), // Placeholder
                        Tab(text: "Playlists"), // Placeholder
                      ],
                    ),
                  ),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                // 1. SURAH LIST
                BlocBuilder<QuranBloc, QuranState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox(),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      error: (message) => Center(child: Text(message)),
                      loaded: (surahs) => ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        itemCount: surahs.length,
                        separatorBuilder: (context, index) => Divider(
                            color: Colors.grey.withAlpha(50), height: 1),
                        itemBuilder: (context, index) {
                          // TODO: Implement Search Filtering if needed later
                          return SurahListTile(
                            surah: surahs[index],
                            onTap: () {
                              // Navigate to Detail
                            },
                          );
                        },
                      ),
                    );
                  },
                ),

                // 2. JUZ (Placeholder)
                const Center(child: Text("Juz Feature Coming Soon")),

                // 3. BOOKMARKS
                const Center(child: Text("Bookmarks Feature Coming Soon")),

                // 4. PLAYLISTS
                const Center(child: Text("Playlists Feature Coming Soon")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SliverTabBarDelegate extends SliverPersistentHeaderDelegate {
  final TabBar _tabBar;

  _SliverTabBarDelegate(this._tabBar);

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor, // Match background
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverTabBarDelegate oldDelegate) {
    return false;
  }
}
