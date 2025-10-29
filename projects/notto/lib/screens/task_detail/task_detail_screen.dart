import 'package:flutter/material.dart';
import 'package:notto/core/components/progress_bar_widget.dart';
import 'package:notto/core/models/task_model.dart';

class TaskDetailScreen extends StatelessWidget {
  final TaskModel item;

  const TaskDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(item.title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                if (item.emoji != null)
                  Text(item.emoji!, style: const TextStyle(fontSize: 48))
                else
                  Icon(item.icon, size: 48.0),
                const SizedBox(width: 12.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(item.title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4.0),
                    Text('Modified: ${item.modified.toLocal()}'),
                  ],
                )
              ],
            ),
            const SizedBox(height: 24.0),
            Text('Progress', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 8.0),
            ProgressBarWidget(progress: item.progress),
            const SizedBox(height: 24.0),
            const Text('Details go here...'),
          ],
        ),
      ),
    );
  }
}
