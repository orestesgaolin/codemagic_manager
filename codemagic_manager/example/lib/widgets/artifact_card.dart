import 'package:codemagic_manager/codemagic_manager.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ArtifactCard extends StatelessWidget {
  final Artefact artifact;
  final CodemagicClient client;

  const ArtifactCard({
    super.key,
    required this.artifact,
    required this.client,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: _getArtifactIcon(),
        title: Text(artifact.name ?? 'Unknown Artifact'),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (artifact.type != null) Text('Type: ${artifact.type}'),
            if (artifact.packageName != null) Text('Package: ${artifact.packageName}'),
            if (artifact.versionName != null) Text('Version: ${artifact.versionName}'),
            if (artifact.size != null) Text('Size: ${_formatFileSize(artifact.size!)}'),
          ],
        ),
        trailing: IconButton(
          icon: const Icon(Icons.download),
          onPressed: () => _downloadArtifact(context),
        ),
      ),
    );
  }

  Widget _getArtifactIcon() {
    switch (artifact.type?.toLowerCase()) {
      case 'apk':
        return const Icon(Icons.android, color: Colors.green, size: 32);
      case 'ipa':
      case 'app':
        return const Icon(Icons.phone_iphone, color: Colors.blue, size: 32);
      case 'aab':
        return const Icon(Icons.archive, color: Colors.orange, size: 32);
      default:
        return const Icon(Icons.insert_drive_file, size: 32);
    }
  }

  String _formatFileSize(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) {
      return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    }
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }

  Future<void> _downloadArtifact(BuildContext context) async {
    if (artifact.url == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('No download URL available')),
      );
      return;
    }

    try {
      // Show loading
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const AlertDialog(
          content: Row(
            children: [
              CircularProgressIndicator(),
              SizedBox(width: 16),
              Text('Generating download link...'),
            ],
          ),
        ),
      );

      // Generate public URL (expires in 1 hour)
      final expiresAt = DateTime.now().add(const Duration(hours: 1)).millisecondsSinceEpoch ~/ 1000;
      final publicUrlResponse = await client.getArtifactPublicUrl(artifact.url!, expiresAt);

      Navigator.of(context).pop(); // Close loading dialog

      if (publicUrlResponse.wasSuccessful && publicUrlResponse.data != null) {
        final publicUrl = publicUrlResponse.data!.url;
        if (await canLaunchUrl(Uri.parse(publicUrl))) {
          await launchUrl(Uri.parse(publicUrl), mode: LaunchMode.externalApplication);
        } else {
          throw Exception('Could not launch URL');
        }
      } else {
        throw Exception(publicUrlResponse.error ?? 'Failed to generate public URL');
      }
    } catch (e) {
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop(); // Close loading dialog if still open
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error downloading artifact: $e')),
      );
    }
  }
}
