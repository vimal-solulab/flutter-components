import 'package:flutter/material.dart';

import 'theme/app_colors.dart';
import 'theme/components/text.dart';

class CommonTextScreen extends StatelessWidget {
  const CommonTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Text Styles'),
        backgroundColor: AppColors.purpleL,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildSection('Headline 1', [
            headline1_grey('Headline 1 Grey'),
            headline1_bran('Headline 1 Bran'),
            headline1_leah('Headline 1 Leah'),
            headline1_lucian('Headline 1 Lucian'),
          ]),
          const SizedBox(height: 20),
          _buildSection('Headline 2', [
            headline2_grey('Headline 2 Grey'),
            headline2_leah('Headline 2 Leah'),
            headline2_jacob('Headline 2 Jacob'),
            headline2_remus('Headline 2 Remus'),
            headline2_lucian('Headline 2 Lucian'),
            headline2_issykBlue('Headline 2 IssykBlue'),
            headline2_grey50('Headline 2 Grey50'),
            Container(
              color: Colors.grey,
              child: headline2_yellow50('Headline 2 Yellow50'),
            ), // visible on dark
            headline2_green50('Headline 2 Green50'),
            headline2_red50('Headline 2 Red50'),
          ]),
          const SizedBox(height: 20),
          _buildSection('Body', [
            body_bran('Body Bran'),
            body_grey('Body Grey'),
            body_leah('Body Leah'),
            body_jacob('Body Jacob'),
            body_remus('Body Remus'),
            body_lucian('Body Lucian'),
          ]),
          const SizedBox(height: 20),
          _buildSection('Subhead 1', [
            subhead1_grey('Subhead 1 Grey'),
            subhead1_leah('Subhead 1 Leah'),
            subhead1_jacob('Subhead 1 Jacob'),
            subhead1_lucian('Subhead 1 Lucian'),
          ]),
          const SizedBox(height: 20),
          _buildSection('Subhead 2', [
            subhead2_grey('Subhead 2 Grey'),
            subhead2_leah('Subhead 2 Leah'),
            subhead2_jacob('Subhead 2 Jacob'),
            subhead2_lucian('Subhead 2 Lucian'),
          ]),
          const SizedBox(height: 20),
          _buildSection('Title 3', [
            title3_leah('Title 3 Leah'),
            title3_jacob('Title 3 Jacob'),
          ]),
          const SizedBox(height: 20),
          _buildSection('Caption SB', [captionSB_grey('Caption SB Grey')]),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headline1_leah(title),
        const Divider(),
        ...children.map(
          (child) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: child,
          ),
        ),
      ],
    );
  }
}
