import 'package:flutter/material.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 80,
                      backgroundImage:
                          AssetImage('assets/images/profile_picture.jpeg'),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'About Me',
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Hi, I\'m Alejandro!',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'With over 14 years in software development and DevOps, I\'ve built my career by solving complex problems with a mix of deep research, proactive thinking, and the occasional aha moment. At companies like CloudBees and Liquibase, I\'ve honed my expertise in cloud infrastructure, automation, and continuous delivery, including leading the deployment of secure, scalable, multitenant serverless architectures.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Certified in Kubernetes, AWS, and Terraform, I know the badges are nice, but the real value lies in understanding the fundamentals—how things work, why they work, and how to make them work better. The tools, languages, or cloud providers? Those are just details. Mastering core concepts and best practices is what drives real innovation.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Passionate about continuous learning and collaboration, I thrive on turning challenges into practical, high-performing solutions. And while I take my work seriously, I always try to leave room for a bit of humor—because the best solutions come when the team (and the architect) enjoys the process.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 12),
                    const Text(
                      'Outside of work, I\'m an avid runner and traveler, always seeking the next adventure to recharge both body and mind. I\'m also deeply passionate about animals, finding inspiration in their resilience and unconditional love—traits I try to channel in both my personal and professional life.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 16),
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
