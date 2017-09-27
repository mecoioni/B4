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
      "contact-1-phone" : "+47 906 54 410",
      "contact-2-email" : "veronica.morino@hibis.com",
      "contact-2-name" : "Veronica Morino",
      "contact-2-phone" : "+47 918 23 219",
      "contact-us" : "Contact Us",
      "copyright" : "Hibis. All rights reserved. Design by SoiaDg.",
      "download-the" : "Download The",
      "find-fraud" : "Find fraud",
      "home" : "Home",
      "info-sheet" : "Information Sheet",
      "it-finds-you" : "it finds you",
      "recipe" : "The Recipe",
      "slide1-subtitle" : "A fast and efficient solution (based on algorithms and expert supervision) to identify and remove unwanted costs and risks.",
      "slide1-title" : "Take charge over fraud & corruption",
      "slide2-bullet1" : "Identify suppliers and customers that take advantage of you",
      "slide2-bullet2" : "Focus on false reporting or where figures have been fixed",
      "slide2-bullet3" : "Detect kickbacks and bribery",
      "slide2-bullet4" : "Pinpoint middlemen, agents, consultants, and even employees who are getting more than they deserve",
      "slide2-bullet5" : "Find deals with front companies and dirty money",
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
    },
    "it":
    {
      "advantages" : "Vantaggi",
      "before" : "before",
      "contact-1-email" : "nigel.iyer@hibis.com",
      "contact-1-name" : "Nigel Iyer",
      "contact-1-phone" : "+47 906 54 410",
      "contact-2-email" : "veronica.morino@hibis.com",
      "contact-2-name" : "Veronica Morino",
      "contact-2-phone" : "+47 918 23 219",
      "contact-us" : "Contatti",
      "copyright" : "Hibis. All rights reserved. Design by SoiaDg.",
      "download-the" : "Scarica l'",
      "find-fraud" : "Find fraud",
      "home" : "Home",
      "info-sheet" : "Information Sheet",
      "it-finds-you" : "it finds you",
      "recipe" : "La Ricetta",
      "slide1-subtitle" : "Una soluzione rapida ed efficace, basata su algoritmi monitorati da esperti del settore, per identificarle, eliminando costi e rischi indesiderati.",
      "slide1-title" : "Tieni sotto controllo frode e corruzione",
      "slide2-bullet1" : "Scopre i fornitori e i clienti che si stanno approfittando di te",
      "slide2-bullet2" : "Si focalizza su documentazione artefatta e frodi contabili",
      "slide2-bullet3" : "Individua tangenti e corruzione",
      "slide2-bullet4" : "Trova nel dettaglio intermediari, agenti, consulenti, o addirittura dipendenti che stanno ricevendo più di quanto spetti loro",
      "slide2-bullet5" : "Identifica fondi neri e accordi con prestanome e società di facciata",
      "slide2-title" : "Perché B4?",
      "slide3-title" : "B4 - La ricetta",
      "slide4-paragraph1-1" : "Concentrarsi sui",
      "slide4-paragraph1-2" : "flussi finanziari critici per il funzionamento di un'azienda",
      "slide4-paragraph1-3" : "- in entrata e in uscita, da e per clienti e fornitori",
      "slide4-paragraph2" : "Costruire il modello analitico B4.",
      "slide4-subtitle" : "1. SET-UP",
      "slide4-title" : "B4 - La ricetta",
      "slide5-paragraph1-1" : "Far girare gli algoritmi",
      "slide5-paragraph1-2" : "della suite B4",
      "slide5-paragraph1-3" : "sui dati del modello, per identificare",
      "slide5-paragraph1-4" : "i segnali di allarme e le relazioni con il più alto potenziale di frode.",
      "slide5-subtitle" : "2. EXECUTE",
      "slide5-title" : "B4 - La ricetta",
      "slide6-paragraph1-1" : "Esaminare in dettaglio gli indicatori di rischio",
      "slide6-paragraph1-2" : "attraverso un efficace metodo di ricerca, così da valutare la gravità di ogni caso e riconoscere gli esempi più seri.",
      "slide6-subtitle" : "3. CLARIFY",
      "slide6-title" : "B4 - La ricetta",
      "slide7-paragraph1-1" : "Condensare i risultati",
      "slide7-paragraph1-2" : "in un semplice dossier facilmente gestibile che raccoglie gli esempi più importanti di potenziali frodi.",
      "slide7-paragraph2-1" : "Identificare limiti",
      "slide7-paragraph2-2" : "e lacune nei sistemi di prevenzione in vigore, nei controlli interni, nei processi manageriali e nelle comunicazioni interne.",
      "slide7-subtitle" : "4. CONDENSE",
      "slide7-title" : "B4 - La ricetta",
      "slide8-paragraph1-1" : "Risolvere in modo pragmatico",
      "slide8-paragraph1-2" : "i casi di frode riscontrati,",
      "slide8-paragraph1-3" : "recuperare le risorse perdute in maniera efficace e identificare ed eliminare le cause all'origine. Potenziare reputazione, controlli interni e cultura aziendale.",
      "slide8-subtitle" : "5. RESOLVE",
      "slide8-title" : "B4 - La ricetta",
      "slide9-subtitle1" : "FINANZIARI",
      "slide9-subtitle1-bullet1" : "- Tagliando notevolmente i costi",
      "slide9-subtitle1-bullet2" : "- Riducendo il rischio di frode, con più efficienza e meno sprechi",
      "slide9-subtitle2" : "REPUTAZIONALI",
      "slide9-subtitle2-bullet1" : "- Riaffermando l'immagine ed evitando scandali mediatici",
      "slide9-subtitle2-bullet2" : "- Mandando un chiaro messaggio sulla tua posizione contro la frode e la corruzione",
      "slide9-subtitle3" : "CULTURALI",
      "slide9-subtitle3-bullet1" : "- Sviluppando un forte senso di integrità etica",
      "slide9-subtitle3-bullet2" : "- Acquisendo e diffondendo il know-how necessario a tenere a bada frode e corruzione",
      "slide9-title" : "I vantaggi nel giocare d'anticipo con B4",
      "footer-button1-label1-1" : "The",
      "footer-button1-label1-2" : "red",
      "footer-button1-label1-3" : "flag Game",
      "footer-button2-label1" : "How far can you bend the rules?",
      "footer-button3-label1" : "Contattaci",
      "why-b4" : "Perché B4?",
    },
    "no":
    {
      "advantages" : "Fordeler",
      "before" : "before",
      "contact-1-email" : "nigel.iyer@hibis.com",
      "contact-1-name" : "Nigel Iyer",
      "contact-1-phone" : "+47 906 54 410",
      "contact-2-email" : "veronica.morino@hibis.com",
      "contact-2-name" : "Veronica Morino",
      "contact-2-phone" : "+47 918 23 219",
      "contact-us" : "Kontakt Oss",
      "copyright" : "Hibis. All rights reserved. Design by SoiaDg.",
      "download-the" : "Last ned",
      "find-fraud" : "Find fraud",
      "home" : "Home",
      "info-sheet" : "Information Sheet",
      "it-finds-you" : "it finds you",
      "recipe" : "B4 Oppskrift",
      "slide1-subtitle" : "En rask og effektiv løsning (basert på algoritmer og eksperttilsyn) for å identifisere og fjerne uønskede kostnader og risiko",
      "slide1-title" : "Kom deg i forkant av misligheter og korrupsjon",
      "slide2-bullet1" : "Identifiserer leverandører og kunder som utnytter seg av deg",
      "slide2-bullet2" : "Fokuserer på falsk rapportering og hvor det er jukset med tallene",
      "slide2-bullet3" : "Oppdager kickbacks og bestikkelser",
      "slide2-bullet4" : "Kartlegger koblingen mellom agenter, mellommenn, konsulenter og til og med ansatte som får mer enn de fortjener",
      "slide2-bullet5" : "Finner 'dirty money' og avtaler med frontselskaper",
      "slide2-title" : "Hvorfor B4?",
      "slide3-title" : "B4 Oppskrift",
      "slide4-paragraph1-1" : "Identifiser",
      "slide4-paragraph1-2" : "de mest kritiske pengestrømmene",
      "slide4-paragraph1-3" : "- inn og ut, til og fra betalere og mottakere.",
      "slide4-paragraph2" : "Bygg opp B4-datamodellen.",
      "slide4-subtitle" : "1. SET-UP",
      "slide4-title" : "B4 Oppskrift",
      "slide5-paragraph1-1" : "Kjør",
      "slide5-paragraph1-2" : "kundetilpassede algoritmer",
      "slide5-paragraph1-3" : "opp mot B4-datamodellen",
      "slide5-paragraph1-4" : "for å finne røde flagg og kommersielle forhold med de høyeste mislighetsfaktorene.",
      "slide5-subtitle" : "2. EXECUTE",
      "slide5-title" : "B4 Oppskrift",
      "slide6-paragraph1-1" : "Analyser de røde flaggene",
      "slide6-paragraph1-2" : "ved å bruke en effektiv forskningsmetode for å finne de sentrale faktaene. Vurder og evaluer alvoret i hvert eksempel.",
      "slide6-subtitle" : "3. CLARIFY",
      "slide6-title" : "B4 Oppskrift",
      "slide7-paragraph1-1" : "Kondenser funnene",
      "slide7-paragraph1-2" : "til en håndterlig mengde av de viktigste tilfellene av misligheter og korrupsjon.",
      "slide7-paragraph2-1" : "Identifiser svakheter",
      "slide7-paragraph2-2" : "og smutthull i eksisterende forebyggingsrutiner, interne kontroller, ledelses- og kommunikasjonsprosesser.",
      "slide7-subtitle" : "4. CONDENSE",
      "slide7-title" : "B4 Oppskrift",
      "slide8-paragraph1-1" : "Pragmatisk",
      "slide8-paragraph1-2" : "løs tilfeller av mislighet og korrupsjon,",
      "slide8-paragraph1-3" : "gjør kostnadseffektive gjenvinninger og rette opp i grunnårsaker. Forbedre omdømme, interne kontroller og kultur.",
      "slide8-subtitle" : "5. RESOLVE",
      "slide8-title" : "B4 Oppskrift",
      "slide9-subtitle1" : "FINANSIELT",
      "slide9-subtitle1-bullet1" : "- Spar kostnader betydelig",
      "slide9-subtitle1-bullet2" : "- Reduser risikoen for å oppleve misligheter, maksimerer effektiviteten og unngå sløseri",
      "slide9-subtitle2" : "OMDØMMET",
      "slide9-subtitle2-bullet1" : "- Forbedre merkevaren og ungå medieskandaler",
      "slide9-subtitle2-bullet2" : "- Send en klar beskjed om at du arbeider aktivt mot misligheter og korrupsjon",
      "slide9-subtitle3" : "KULTURELT",
      "slide9-subtitle3-bullet1" : "- Utvikle en robust integritetskultur",
      "slide9-subtitle3-bullet2" : "- Tilegn og spred verdifulle ferdigheter for å holde mislighet og korrupsjon i sjakk",
      "slide9-title" : "Fordelene med å finne mislighet tidlig med B4",
      "footer-button1-label1-1" : "The",
      "footer-button1-label1-2" : "red",
      "footer-button1-label1-3" : "flag Game",
      "footer-button2-label1" : "How far can you bend the rules?",
      "footer-button3-label1" : "Kontakt oss",
      "why-b4" : "Hvorfor B4?",
    },
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
