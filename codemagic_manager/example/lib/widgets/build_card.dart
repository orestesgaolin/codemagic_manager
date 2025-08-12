import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BuildCard extends StatelessWidget {
  final Build buildData;
  final Application? application;
  final VoidCallback? onTap;

  const BuildCard({
    super.key,
    required this.buildData,
    this.application,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat('MMM dd, yyyy HH:mm');
    
    Color statusColor = Colors.grey;
    var statusIcon = Icons.help;
    
    switch (buildData.status) {
      case BuildStatus.finished:
        statusColor = Colors.green;
        statusIcon = Icons.check_circle;
        break;
      case BuildStatus.failed:
      case BuildStatus.timeout:
        statusColor = Colors.red;
        statusIcon = Icons.error;
        break;
      case BuildStatus.canceled:
        statusColor = Colors.orange;
        statusIcon = Icons.cancel;
        break;
      case BuildStatus.building:
      case BuildStatus.preparing:
      case BuildStatus.queued:
      case BuildStatus.fetching:
        statusColor = Colors.blue;
        statusIcon = Icons.refresh;
        break;
    }

    return Card(
      child: ListTile(
        leading: Icon(
          statusIcon,
          color: statusColor,
          size: 32,
        ),
        title: Text(
          application?.appName ?? 'Build ${buildData.index}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Status: ${buildData.status.name}'),
            Text('Branch: ${buildData.branch}'),
            if (buildData.startedAt != null)
              Text('Started: ${dateFormat.format(buildData.startedAt!)}'),
            if (buildData.finishedAt != null)
              Text('Finished: ${dateFormat.format(buildData.finishedAt!)}'),
            if (buildData.artefacts.isNotEmpty)
              Text('Artifacts: ${buildData.artefacts.length}'),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}