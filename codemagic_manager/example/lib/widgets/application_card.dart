import 'package:flutter/material.dart';
import 'package:codemagic_manager/codemagic_manager.dart';

class ApplicationCard extends StatelessWidget {
  final Application application;
  final VoidCallback? onTap;

  const ApplicationCard({
    super.key,
    required this.application,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: application.iconUrl?.isNotEmpty == true
            ? ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  application.iconUrl!,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                  errorBuilder: (_, __, ___) => const Icon(Icons.apps),
                ),
              )
            : const Icon(Icons.apps, size: 40),
        title: Text(application.appName ?? 'Unknown App'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('ID: ${application.id}'),
            if (application.repository != null)
              Text('Repo: ${application.repository?.htmlUrl ?? 'N/A'}'),
          ],
        ),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: onTap,
      ),
    );
  }
}