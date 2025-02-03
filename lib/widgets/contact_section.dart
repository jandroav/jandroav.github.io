import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart'; // Add this import
import '../../models/contact_info.dart';

class ContactSection extends StatelessWidget {
  final ContactInfo contactInfo = ContactInfo(
    githubUrl: 'https://github.com/jandroav',
    email: 'contact@jandroav.net',
  );

  ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800), // Constrain max width
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 16.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Contact',
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const FaIcon(FontAwesomeIcons.envelope),
                        const SizedBox(width: 8),
                        InkWell(
                          onTap: () => launchUrl(Uri.parse('mailto:${contactInfo.email}')),
                          child: Text(
                            'Email: ${contactInfo.email}',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const FaIcon(FontAwesomeIcons.github),
                        const SizedBox(width: 8),
                        InkWell(
                          onTap: () => launchUrl(Uri.parse(contactInfo.githubUrl)),
                          child: Text(
                            'GitHub: ${contactInfo.githubUrl}',
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
