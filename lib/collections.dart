class Collections {
  Collections._();
  static const String users = "users";
  static const String specialization = "specializations";
  static const String postProject = "postProject";
  static const String skills = "skills";
  static const String faculaty = "facultySpecializations";
  static const String needEmployeeRequest = "needEmployeeRequest";
  static const String review = "review";
  static const String archive = "archive";
  static const String chat = "chat";
  static const String message = "message";
  static const String financialAccount="financialAccount";
  static const String officer="officer";


}

const languageList = [
  "English",
  "Spanish",
  "German",
  "French",
  "Mandarin Chinese",
  "Arabic",
  "Russian",
  "Japanese",
  "Portuguese",
  "Italian",
  "Dutch",
  "Korean",
  "Hindi",
  "Bengali",
  "Turkish",
  "Swedish",
  "Polish",
  "Vietnamese",
  "Ukrainian",
  "Greek",
  "Czech",
  "Romanian",
  "Hebrew",
  "Thai",
  "Malay",
  "Tagalog (Filipino)",
  "Hungarian",
  "Finnish",
  "Danish",
  "Norwegian",
  "Icelandic",
  "Swahili",
  "Arabic",
  "Persian (Farsi)",
  "Punjabi",
  "Urdu",
  "Gujarati",
  "Tamil",
  "Telugu",
  "Kannada",
  "Malayalam",
  "Sinhala",
  "Nepali",
  "Tibetan",
  "Burmese",
  "Khmer",
  "Lao",
  "Mongolian",
  "Tibetan",
  "Pashto",
  "Dari",
  "Uzbek",
  "Tajik",
  "Kyrgyz",
  "Turkmen",
  "Kazakh",
  "Azerbaijani",
  "Georgian",
  "Armenian",
  "Estonian",
  "Latvian",
  "Lithuanian",
  "Belarusian",
  "Croatian",
  "Serbian",
  "Bosnian",
  "Slovenian",
  "Slovak",
  "Bulgarian",
  "Macedonian",
  "Albanian",
  "Welsh",
  "Scottish Gaelic",
  "Irish (Gaeilge)",
  "Manx  Gaelic",
  "Basque",
  "Catalan",
  "Galician",
  "Esperanto",
];
const interestsList = [
  "All Specializations",
  "Jewelry",
  "Video editing",
  "Graphic design",
  "Motion graphics",
  "Environmental graphic",
  "Photography",
];

Map<String, List<String>> supInterestsList = {
  "Jewelry": ["2D", "3D", "Traditional"],
  "Video editing": [
    "Promo",
    "ads",
    "advertsments",
    "advertsments",
    "Trailers",
    "Movies",
    "Documentary Films",
    "Social media ads",
    "VFX Videos",
    "color correction videos",
    "chomershal ads",
    "lyric clips",
    "Intro"
  ],
  "Graphic design": [
    "visual identity",
    "marketing and advertising",
    "Web and website design",
    "publishing",
    "packaging"
  ],
  "Motion graphics": ["design"],
  "Photography": [
    "Landscape",
    "Wildlife",
    "Portrait",
    "Product",
    "Fashion",
    "Food",
    "Sports",
    "Street",
    "Underwater",
    "Black and white",
    "Digital",
    "Astrophotography",
    "Event",
    "Drone"
  ]

  // "UI/UX Design",
  // "Photographing",
  // "Back-End",
  // "Wordpress",
  // "Jewelry",
  // "Motion Graphic",
  // "Graphic Design",
  // "Interior Design",
};
const exerienceLevel = [
  "Entry-Level",
  "Junior",
  "Mid-Level",
  "Senior",
  "Principal",
  "Lead",
  "Expert",
  "Novice",
  "Intermediate",
  "Seasoned",
  "Associate",
  "Specialist",
  "Managerial",
  "Director",
  "Executive",
  "Trainee",
  "Fresher",
  "Apprentice",
  "Skilled",
  "Proficient"
];

const jobType = [
  "Full-Time",
  'Part-Time',
  "Contract",
  "Temporary",
  "Freelance",
  "Internship",
  "Remote",
  "Permanent",
  "Seasonal",
  "Project-Based",
  "Commission-Based",
  "Volunteer",
  "Consulting",
  "Entry-Level",
  "Junior",
  "Mid-Level",
  "Senior",
  "Executive",
  "Nonprofit",
  "Government",
  "Private Sector",
  "Public Sector",
  "Self-Employed",
  "Hybrid",
  "Gig (Short-term, task-based work)",
  "Adjunct (Part-time teaching position in academia)",
  "Tenured (Academic position with job security)",
  "Tenure-Track (Academic position leading to tenure)",
  "Temporary-to-Hire (Temporary position with potential for permanent hire)",
  "On-Call (Work as needed, often irregular hours)"
];

List<String> designerAndFreelancerSkills = [
  "Graphic Design",
  "Web Design",
  "UI/UX Design",
  "Logo Design",
  "Branding",
  "Print Design",
  "Illustration",
  "Typography",
  "Layout Design",
  "Color Theory",
  "Photo Editing",
  "Motion Graphics",
  "3D Modeling",
  "Animation",
  "UI Prototyping",
  "UX Research",
  "Interaction Design",
  "Responsive Design",
  "Vector Artwork",
  "Storyboarding",
  "Packaging Design",
  "Product Design",
  "Fashion Design",
  "Interior Design",
  "Architectural Design",
  "Industrial Design",
  "Game Design",
  "Multimedia Design",
  "Visual Effects (VFX)",
  "Virtual Reality (VR) Design",
  "Augmented Reality (AR) Design",
  "Video Editing",
  "Sound Design",
  "CAD (Computer-Aided Design)",
  "Sketching",
  "Conceptualization",
  "Creativity",
  "Attention to Detail",
  "Adobe Creative Suite",
  "Sketch",
  "Figma",
  "Canva",
  "Prototyping Tools (e.g., InVision, Adobe XD)",
  "3D Software (e.g., Blender, Maya)",
  "HTML/CSS",
  "Responsive Frameworks (e.g., Bootstrap)",
  "Content Management Systems (e.g., WordPress)",
  "SEO Knowledge",
  "Digital Marketing Skills",
  "Social Media Design",
  "Illustration Software (e.g., Procreate, CorelDRAW)",
  "Print Production",
  "Presentation Skills",
  "Client Pitching",
  "Project Briefing",
  "Client Collaboration",
  "Client Feedback Management",
  "Problem Solving",
  "Time Management",
  "Self-Motivation",
  "Business and Finance Management",
  "Marketing and Personal Branding",
  "Portfolio Development",
  "Negotiation Skills",
  "Research and Market Analysis",
  "Quality Assurance",
  "Collaboration and Teamwork",
  "Networking",
  "Adaptability",
  "Continuous Learning and Skill Enhancement",
];

List<String> facultySpecializations = [
  'Arts and Humanities',
  'Social Sciences',
  'Natural Sciences',
  'Mathematics and Computer Science',
  'Engineering and Technology',
  'Health Sciences',
  'Business and Economics',
  'Education',
  'Law and Legal Studies',
  'Fine Arts',
  'Agriculture and Environmental Science',
  'Communication and Media Studies',
  'Psychology',
  'Political Science',
  'Physics',
  'Chemistry',
  'Mechanical Engineering',
  'Medicine',
  'Nursing',
  'Finance',
  'Information Technology',
  'Early Childhood Education',
  'Criminal Law',
  'Music',
  'Environmental Science',
  'Marketing',
  'Geology',
  'Computer Science',
  'Philosophy',
  'Statistics',
  'Civil Engineering',
  'Accounting',
  'Sociology',
  'Biology',
  'International Law',
  'Dentistry',
  'Theater',
  'Public Relations',
  'Horticulture',
  'Curriculum and Instruction',
  'Technology and Design',
  'Electrical Engineering',
  'Anthropology',
  'Economics',
  'International Business',
  'Environmental Policy',
  'Art History',
  'Linguistics',
  'History',
  'Geography',
  'Nutrition and Dietetics',
  'Architecture',
  'Biochemistry',
  'Industrial Engineering',
  'Counseling Psychology',
  'Pharmacy',
  'Sustainable Development',
  'Fashion Design',
  'Social Work',
];

List<String> educationLevels = [
  'High School Diploma',
  'Associate\'s Degree',
  'Bachelor\'s Degree',
  'Master\'s Degree',
  'Doctorate Degree',
];
