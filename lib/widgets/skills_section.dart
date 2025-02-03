import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    final certs = [
      (
        'Kubernetes',
        'https://ti-user-certificates.s3.amazonaws.com/e0df7fbf-a057-42af-8a1f-590912be5460/90626f22-6b3d-4e5e-a6eb-867db87da24e-alejandro-alvarez-vazquez-07ef0494-0a77-4bd1-9460-8c34195a2b08-certificate.pdf',
        FontAwesomeIcons.docker
      ),
      (
        'Jenkins',
        'https://api.accredible.com/v1/auth/invite?code=84c8ee255700e4c352aa&credential_id=13014231&url=https%3A%2F%2Fcertificates.cloudbees.com%2Fxt35yn6x&ident=7ea3a9f11e2c62fca3568663a49f912f4573428d',
        FontAwesomeIcons.jenkins
      ),
      (
        'Terraform',
        'https://www.credly.com/badges/9b73e53a-b3b9-4602-b71f-b09d4a59be21/linked_in_profile',
        FontAwesomeIcons.globe
      ),
      (
        'AWS',
        'https://www.credly.com/badges/c1f7c6f8-4d8c-41dc-b5db-647d83eb8d02/linked_in_profile',
        FontAwesomeIcons.aws
      ),
    ];

    final ciCdSkills = [
      ('Docker', FontAwesomeIcons.docker),
      ('GitHub Actions', FontAwesomeIcons.github),
      ('Jenkins', FontAwesomeIcons.jenkins),
    ];

    final programmingLanguages = [
      ('Python', FontAwesomeIcons.python),
      ('JavaScript', FontAwesomeIcons.js),
      ('Flutter', FontAwesomeIcons.flutter),
    ];

    final cloudProviders = [
      ('AWS', FontAwesomeIcons.aws),
      ('Google Cloud', FontAwesomeIcons.google),
      ('Azure', FontAwesomeIcons.microsoft),
    ];

    final otherTechnologies = [
      ('Kubernetes', FontAwesomeIcons.cubes),
      ('Terraform', FontAwesomeIcons.globe),
    ];

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
                      'Certifications',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: certs
                          .map((certs) => ActionChip(
                                avatar: FaIcon(certs.$3),
                                label: Text(certs.$1),
                                onPressed: () => _launchURL(certs.$2),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 30), // Add padding here
                    Text(
                      'Skills',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'CI/CD',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 5),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: ciCdSkills
                          .map((skill) => Chip(
                                avatar: FaIcon(skill.$2),
                                label: Text(skill.$1),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Programming Languages',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 5),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: programmingLanguages
                          .map((skill) => Chip(
                                avatar: FaIcon(skill.$2),
                                label: Text(skill.$1),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Cloud Providers',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 5),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: cloudProviders
                          .map((skill) => Chip(
                                avatar: FaIcon(skill.$2),
                                label: Text(skill.$1),
                              ))
                          .toList(),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Other Technologies',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    const SizedBox(height: 5),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: otherTechnologies
                          .map((skill) => Chip(
                                avatar: FaIcon(skill.$2),
                                label: Text(skill.$1),
                              ))
                          .toList(),
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
