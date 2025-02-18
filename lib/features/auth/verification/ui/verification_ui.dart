import 'package:animation_wrappers/animations/faded_slide_animation.dart';
import 'package:flutter/material.dart';
import 'package:pokerking/Locale/locales.dart';
import 'package:pokerking/components/custom_button.dart';
import 'package:pokerking/components/entry_field.dart';
import 'package:pokerking/components/login_header.dart';

import 'verification_interactor.dart';

class VerificationUI extends StatefulWidget {
  final VerificationInteractor verificationInteractor;

  const VerificationUI(this.verificationInteractor, {Key? key})
      : super(key: key);

  @override
  VerificationUIState createState() => VerificationUIState();
}

class VerificationUIState extends State<VerificationUI> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      body: FadedSlideAnimation(
        fadeDuration: const Duration(milliseconds: 300),
        slideDuration: const Duration(milliseconds: 150),
        beginOffset: const Offset(0, 0.3),
        endOffset: const Offset(0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoginHeader(
              title: locale.verification,
              subtitle: locale.inLessThanAMinute,
            ),
            const SizedBox(
              height: 30,
            ),
            Flexible(
              child: ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                children: [
                  Text(
                    locale.weveSentSixDigitCode,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontSize: 15),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  EntryField(
                    title: locale.enterCode,
                    hintText: locale.enterSixDigitCode,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(
                onTap: () {
                  widget.verificationInteractor.verify();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
