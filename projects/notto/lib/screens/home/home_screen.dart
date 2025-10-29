import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notto/core/components/progress_bar_widget.dart';
import 'package:notto/core/models/task_model.dart';
import 'package:notto/screens/task_detail/task_detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<TaskModel> _pages = List.generate(
    6,
    (i) => TaskModel(
      id: 'page_$i',
      title: 'Page ${i + 1}',
      icon: Icons.description,
      progress: (i + 1) / 7.0,
      modified: DateTime.now().subtract(Duration(days: i)),
      emoji: '📝',
    ),
  );

  final Random _random = Random();

  String _formatDate(DateTime dt) {
    final d = dt.toLocal();
    return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
  }

  void _addPage() {
    final i = _pages.length + 1;
    setState(() {
      _pages.insert(
        0,
        TaskModel(
          id: 'page_${DateTime.now().millisecondsSinceEpoch}',
          title: 'Page $i',
          icon: Icons.note,
          progress: _random.nextDouble(),
          emoji: !_random.nextBool()
              ? (['📄', '📝', '⭐', '📚', '🖼️'][_random.nextInt(5)])
              : null,
          modified: DateTime.now(),
        ),
      );
    });
  }

  void _deletePage(String id) {
    setState(() {
      _pages.removeWhere((p) => p.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text("notto.",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            tooltip: 'Search',
            onPressed: () {
              // TODO: implement search action
            },
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Settings',
            onPressed: () {
              // TODO: implement settings action
            },
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(12.0),
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          final item = _pages[index];
          return Dismissible(
            key: ValueKey(item.id),
            direction: DismissDirection.endToStart,
            confirmDismiss: (direction) async {
              final result = await showDialog<bool>(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text('Delete page'),
                  content:
                      Text('Are you sure you want to delete "${item.title}"?'),
                  actions: [
                    TextButton(
                        onPressed: () => Navigator.of(ctx).pop(false),
                        child: const Text('Cancel')),
                    TextButton(
                        onPressed: () => Navigator.of(ctx).pop(true),
                        child: const Text('Delete')),
                  ],
                ),
              );
              return result ?? false;
            },
            background: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12.0),
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20.0),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (_) {
              final removedItem = item;
              final removedIndex = index;
              _deletePage(removedItem.id);

              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Deleted "${removedItem.title}"'),
                  action: SnackBarAction(
                    label: 'UNDO',
                    onPressed: () {
                      setState(() {
                        final insertIndex = removedIndex <= _pages.length
                            ? removedIndex
                            : _pages.length;
                        _pages.insert(insertIndex, removedItem);
                      });
                    },
                  ),
                ),
              );
            },
            child: Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
              elevation: 2.0,
              child: InkWell(
                borderRadius: BorderRadius.circular(12.0),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => TaskDetailScreen(item: item),
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      if (item.emoji != null)
                        CircleAvatar(
                          radius: 28.0,
                          backgroundColor: Colors.transparent,
                          child: Text(item.emoji!,
                              style: const TextStyle(fontSize: 24)),
                        )
                      else
                        CircleAvatar(
                          radius: 28.0,
                          backgroundColor: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.1),
                          child: Icon(item.icon,
                              size: 28.0,
                              color: Theme.of(context).colorScheme.primary),
                        ),
                      const SizedBox(width: 12.0),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(item.title,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium
                                          ?.copyWith(
                                              fontWeight: FontWeight.bold)),
                                ),
                                const SizedBox(width: 8.0),
                                Text(_formatDate(item.modified),
                                    style:
                                        Theme.of(context).textTheme.bodySmall),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            ProgressBarWidget(
                              progress: item.progress,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addPage,
        tooltip: 'Add page',
        child: const Icon(Icons.add),
      ),
    );
  }
}
