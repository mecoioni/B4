// Copyright (c) 2017, Patrick. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import 'src/components/nav/nav_component.dart';
import 'src/components/presentation/presentation_component.dart';
import 'src/models/language.dart';

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [CORE_DIRECTIVES, FoSelectComponent, materialDirectives, NavComponent, PresentationComponent],
  providers: const [materialProviders, PhraseService],
  pipes: const [PhrasePipe]
)
class AppComponent
{
  AppComponent()
  {
    PhraseService.language = "en";
    PhraseService.data = phrases;

    selectedLanguage = languages.first;
    languageOptions = new StringSelectionOptions(languages);
  }

  final Map<String, Map<String, String>> phrases =
  {
    "en":
    {
      "advantages" : "Advantages",
      "before" : "before",
      "contact-1-email" : "nigel.iyer@hibis.com",
      "contact-1-name" : "Nigel Iyer",
      "contact-1-phone" : "+4790654410",
      "contact-2-email" : "veronica.morino@hibis.com",
      "contact-2-name" : "Veronica Morino",
      "contact-2-phone" : "+4791823219",
      "contact-us" : "Contact Us",
      "copyright" : "Hibis. All rights reserved. Design by SoiaDg.",
      "download-the" : "Download The",
      "find-fraud" : "Find fraud",
      "home" : "Home",
      "info-sheet" : "Information Sheet",
      "it-finds-you" : "it finds you",
      "recipe" : "Recipe",
      "slide1-subtitle" : "A fast and efficient solution (based on algorithms and expert supervision) to identify and remove unwanted costs and risks.",
      "slide1-title" : "Take charge over fraud & corruption",
      "slide2-bullet1" : "Identify suppliers and customers that take advantage of you",
      "slide2-bullet2" : "Find false reporting or where figures have been fixed",
      "slide2-bullet3" : "Detect kickbacks and bribery",
      "slide2-bullet4" : "Pinpoint middlemen, agents, consultants, and even employees who are getting more than they deserve",
      "slide2-bullet5" : "Focus on deals with front companies and dirty money",
      "slide2-title" : "Why B4?",
      "slide3-title" : "The B4 Recipe",
      "slide4-paragraph1-1" : "Target",
      "slide4-paragraph1-2" : "the most critical money flows",
      "slide4-paragraph1-3" : "- in and out, to and from payers and recipients.",
      "slide4-paragraph2" : "Build the B4 data model.",
      "slide4-subtitle" : "1. SET-UP",
      "slide4-title" : "The B4 Recipe",
      "slide5-paragraph1-1" : "Run",
      "slide5-paragraph1-2" : "the custom",
      "slide5-paragraph1-3" : "suite of algorithms",
      "slide5-paragraph1-4" : "against the B4 data model to find the red flags and commercial relationships with the highest fraud factor.",
      "slide5-subtitle" : "2. EXECUTE",
      "slide5-title" : "The B4 Recipe",
      "slide6-paragraph1-1" : "Scrutinize the red flags",
      "slide6-paragraph1-2" : "by using an efficient research methodology to find the central facts. Asses and evaluate the seriousness of each example.",
      "slide6-subtitle" : "3. CLARIFY",
      "slide6-title" : "The B4 Recipe",
      "slide7-paragraph1-1" : "Condense the findings",
      "slide7-paragraph1-2" : "into a manageable dossier of the most important instances of fraud and corruption.",
      "slide7-paragraph2-1" : "Identify limitation",
      "slide7-paragraph2-2" : "and loopholes in existing fraud prevention routines, internal controls.",
      "slide7-subtitle" : "4. CONDENSE",
      "slide7-title" : "The B4 Recipe",
      "slide8-paragraph1-1" : "Pragmatically",
      "slide8-paragraph1-2" : "resolve cases of",
      "slide8-paragraph1-3" : "fraud and corruption, make cost-effective recoveries and rectify root causes. Enhance reputation, internal controls and culture.",
      "slide8-subtitle" : "5. RESOLVE",
      "slide8-title" : "The B4 Recipe",
      "slide9-subtitle1" : "FINANCIAL",
      "slide9-subtitle1-bullet1" : "- Significant cost savings",
      "slide9-subtitle1-bullet2" : "- Reduce the risk of being defrauded, maximize efficiency and avoid waste",
      "slide9-subtitle2" : "REPUTATIONAL",
      "slide9-subtitle2-bullet1" : "- Enhance brand and avoid media scandals",
      "slide9-subtitle2-bullet2" : "- Send a clear message that you are vigilant against fraud and corruption",
      "slide9-subtitle3" : "CULTURAL",
      "slide9-subtitle3-bullet1" : "- Develop a robust integrity culture",
      "slide9-subtitle3-bullet2" : "- Acquire and spread valuable skills to keep fraud and corruption at bay",
      "slide9-title" : "The advantages of finding fraud early with B4",
      "footer-button1-label1-1" : "The",
      "footer-button1-label1-2" : "red",
      "footer-button1-label1-3" : "flag Game",
      "footer-button2-label1" : "How far can you bend the rules?",
      "footer-button3-label1" : "Contact us",
      "why-b4" : "Why B4?",
    }
  };

  void setLanguage(Language language)
  {
    PhraseService.language = language.id;
    selectedLanguage = language;
    reloading = true;

    new Timer(const Duration(milliseconds: 10), () => reloading = false);
  }

  bool reloading = false;
  int year = new DateTime.now().year;
  int step = 0;
  StringSelectionOptions<Language> languageOptions;
  final List<Language> languages = [new Language("English (english)", "en"), new Language("Norwegian (norsk)", "no"), new Language("Italian (italiano)", "it")];
  Language selectedLanguage;

}
