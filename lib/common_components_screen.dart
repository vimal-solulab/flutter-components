import 'package:flutter/material.dart';

import 'theme/app_colors.dart';
import 'theme/components/buttons.dart';
import 'theme/components/cards.dart';
import 'theme/components/cells.dart';
import 'theme/components/dialogs.dart';
import 'theme/components/forms.dart';
import 'theme/components/spacer.dart';
import 'theme/components/text.dart';

class CommonComponentsScreen extends StatelessWidget {
  const CommonComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Common Components'),
        backgroundColor: AppColors.purpleL,
      ),
      backgroundColor: AppColors.white,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildSectionTitle('Buttons'),
          const VSpacer(16),
          ButtonPrimaryDefault(title: 'Primary Default', onClick: () {}),
          const VSpacer(12),
          ButtonPrimaryRed(title: 'Primary Red', onClick: () {}),
          const VSpacer(12),
          ButtonPrimaryYellow(title: 'Primary Yellow', onClick: () {}),
          const VSpacer(12),
          ButtonSecondaryDefault(title: 'Secondary Default', onClick: () {}),
          const VSpacer(12),
          Row(
            children: [
              const Text('Icon Button: '),
              HsIconButton(
                onClick: () {},
                icon: Icons.favorite,
                tint: AppColors.redD,
              ),
              HsIconButton(onClick: () {}, icon: Icons.settings),
              HsIconButton(onClick: () {}, icon: Icons.delete, enabled: false),
            ],
          ),

          const VSpacer(24),
          _buildSectionTitle('Forms'),
          const VSpacer(16),
          HsInputSearch(hint: 'Search something...', onChanged: (val) {}),
          const VSpacer(12),
          HsInputSearch(
            hint: 'Disabled Search',
            onChanged: (val) {},
            enabled: false,
            initialValue: 'Cannot edit this',
          ),

          const VSpacer(24),
          _buildSectionTitle('Cards'),
          const VSpacer(16),
          CardsSwapInfo(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [body_leah('Card Content Left'), body_jacob('Right')],
              ),
            ),
          ),

          const VSpacer(24),
          _buildSectionTitle('Cells'),
          const VSpacer(16),
          CellSingleLineLawrence(
            onTap: () {},
            child: body_leah('Single Line Lawrence Cell'),
          ),
          const VSpacer(12),
          CellUniversalLawrenceSection(
            children: [
              CellSingleLineLawrence(child: body_leah('Section Item 1')),
              CellSingleLineLawrence(child: body_leah('Section Item 2')),
              CellSingleLineLawrence(child: body_leah('Section Item 3')),
            ],
          ),
          const VSpacer(12),
          CellNews(
            source: 'News Source',
            title: 'Important Announcement',
            body:
                'This is the body of the news item. It can span multiple lines to show the user some details about the event.',
            date: 'Oct 23, 2025',
            onClick: () {},
          ),

          const VSpacer(24),
          _buildSectionTitle('Dialogs'),
          const VSpacer(16),
          ButtonPrimaryDefault(
            title: 'Show Selector Dialog',
            onClick: () {
              showSelectorDialog<String>(
                context,
                title: 'Select an Option',
                items: [
                  SelectorItem(title: 'Option 1', selected: true, item: '1'),
                  SelectorItem(
                    title: 'Option 2',
                    selected: false,
                    item: '2',
                    subtitle: 'With subtitle',
                  ),
                  SelectorItem(title: 'Option 3', selected: false, item: '3'),
                ],
                onSelectItem: (val) {
                  // Dialog handles closing itself in implementation but purely for demo
                  print('Selected $val');
                },
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headline1_leah(title),
        const Divider(color: AppColors.steel20),
      ],
    );
  }
}
