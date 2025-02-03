import 'package:flutter/material.dart';

class WorkExperienceSection extends StatelessWidget {
  const WorkExperienceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
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
                    Center(
                      child: Text(
                        'Work Experience',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    const SizedBox(height: 20),
                    _buildWorkExperienceItem(
                      'Senior DevOps Engineer',
                      'Liquibase',
                      'Jan 2024 - Present',
                      'Remote',
                      'Skills: Localstack, Go, Jenkins, Terraform, Linux, Docker, Groovy, Spacelift, Bash, GitHub Actions, AWS',
                      'assets/logos/liquibase.png',
                    ),
                    _buildWorkExperienceItem(
                      'DevOps Engineer',
                      'Liquibase',
                      'Dec 2022 - Jan 2024',
                      'Remote',
                      'Skills: Localstack, Go, Jenkins, GCP, OCI, Terraform, Packer, Docker, Spacelift, Azure, GitHub Actions, AWS',
                      'assets/logos/liquibase.png',
                    ),
                    _buildWorkExperienceItem(
                      'Senior Development Support Engineer',
                      'CloudBees',
                      'May 2021 - Aug 2022',
                      'Remote',
                      'Supporting teams to build software that matters. Troubleshooting Jenkins, CloudBees products, Kubernetes, and DevOps tools.',
                      'assets/logos/cloudbees.png',
                    ),
                    _buildWorkExperienceItem(
                      'DevOps Engineer',
                      'Ávoris',
                      'Sep 2016 - May 2021',
                      'Palma de Mallorca',
                      'CI/CD platform management, Jenkins, Kubernetes (OpenShift), GitOps (ArgoCD), and container security.',
                      'assets/logos/avoris.jpg',
                    ),
                    _buildWorkExperienceItem(
                      'Software Analyst',
                      'Idiso',
                      'Oct 2014 - Sep 2016',
                      'Palma de Mallorca',
                      'Skills: J2EE, SCRUM, Spring+Angular, TOMCAT, jQuery, JBoss, Oracle, MySQL, JUnit, MockitoMVC, Selenium, Java',
                      'assets/logos/idiso.png',
                    ),
                    _buildWorkExperienceItem(
                      'Senior Java Software Engineer',
                      'Brújula',
                      'Apr 2014 - Oct 2014',
                      'Palma de Mallorca',
                      'Skills: J2EE, Struts, Maven, Hibernate, Oracle, MyBatis, Web Services, JSON, Tomcat, JBoss, JUnit, BDD, Jenkins, Sonar',
                      'assets/logos/brujula.jpg',
                    ),
                    _buildWorkExperienceItem(
                      'Java Software Engineer',
                      'Capgemini',
                      'Nov 2012 - Apr 2014',
                      'La Felguera',
                      'Skills: J2EE, Oracle, JPA, JSF, Richfaces, Spring Core, Spring Batch, IBM (RSA, Websphere, WID)',
                      'assets/logos/capgemini.png',
                    ),
                    _buildWorkExperienceItem(
                      'Robotics Researcher & Developer',
                      'Universidad de Oviedo',
                      'Sep 2010 - Oct 2012',
                      'Mieres',
                      'Skills: C++, .NET, Android, IoT (JMEDS DPWS), REST, SOAP, Hibernate, EJB',
                      'assets/logos/uniovi.png',
                    ),
                    _buildWorkExperienceItem(
                      'RoR Software Engineer',
                      'Vorago Tecnología',
                      'Mar 2010 - Aug 2010',
                      'Oviedo',
                      'Skills: Ruby on Rails, CSS',
                      'assets/logos/vorago.png',
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

  Widget _buildWorkExperienceItem(
    String title,
    String company,
    String period,
    String location,
    String description,
    String logoPath,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(logoPath),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  '$company - $location',
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Text(
                  period,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
