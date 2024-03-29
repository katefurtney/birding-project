-- -------------------------------------------------------------
-- TablePlus 5.3.6(496)
--
-- https://tableplus.com/
--
-- Database: postgres
-- Generation Time: 2023-06-24 14:15:28.5610
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Table Definition
CREATE TABLE "public"."birds" (
    "code" varchar NOT NULL,
    "order" varchar,
    "family" varchar,
    "species" varchar,
    PRIMARY KEY ("code")
);

-- Column Comment
COMMENT ON COLUMN "public"."birds"."code" IS 'breeding bird code';

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS sightings_id_seq;

-- Table Definition
CREATE TABLE "public"."sightings" (
    "id" int4 NOT NULL DEFAULT nextval('sightings_id_seq'::regclass),
    "birds_code" varchar NOT NULL,
    "day" int2,
    "month" int2,
    "year" int2,
    "location" varchar,
    "city" varchar,
    "state" varchar,
    "country" varchar NOT NULL,
    PRIMARY KEY ("id")
);

INSERT INTO "public"."birds" ("code", "order", "family", "species") VALUES
('ABDU', 'Anseriformes', 'Anatidae', 'American Black Duck'),
('AMCO', 'Gruiformes', 'Rallidae', 'American Coot'),
('AMCR', 'Passeriformes', 'Corvidae', 'American Crow'),
('AMGO', 'Passeriformes', 'Fringillidae', 'American Goldfinch'),
('AMRE', 'Passeriformes', 'Parulidae', 'American Redstart'),
('AMRO', 'Passeriformes', 'Turdidae', 'American Robin'),
('AMWI', 'Anseriformes', 'Anatidae', 'American Wigeon'),
('BAEA', 'Falconiformes', 'Accipitridae', 'Bald Eagle'),
('BANS', 'Passeriformes', 'Hirundinidae', 'Bank Swallow'),
('BAOR', 'Passeriformes', 'Icteridae', 'Baltimore Oriole'),
('BARS', 'Passeriformes', 'Hirundinidae', 'Barn Swallow'),
('BBCU', 'Cuculiformes', 'Cuculidae', 'Black-billed Cuckoo'),
('BBWA', 'Passeriformes', 'Parulidae', 'Bay-breasted Warbler'),
('BCCH', 'Passeriformes', 'Paridae', 'Black-capped Chickadee'),
('BDOW', 'Strigiformes', 'Strigidae', 'Barred Owl'),
('BEKI', 'Coraciiformes', 'Alcedinidae', 'Belted Kingfisher'),
('BGGN', 'Passeriformes', 'Sylviidae', 'Blue-gray Gnatcatcher'),
('BHCO', 'Passeriformes', 'Icteridae', 'Brown-headed Cowbird'),
('BLBW', 'Passeriformes', 'Parulidae', 'Blackburnian Warbler'),
('BLJA', 'Passeriformes', 'Corvidae', 'Blue Jay'),
('BRPE', 'Pelecaniformes', 'Pelecanidae', 'Brown Pelican'),
('BTNW', 'Passeriformes', 'Parulidae', 'Black-throated Green Warbler'),
('BTTH', 'Pelecaniformes', 'Ardeidae', 'Bare-throated Tiger Heron'),
('BUFF', 'Anseriformes', 'Anatidae', 'Bufflehead'),
('BWTE', 'Anseriformes', 'Anatidae', 'Blue-winged Teal'),
('CAEG', 'Ciconiiformes', 'Ardeidae', 'Cattle Egret'),
('CANG', 'Anseriformes', 'Anatidae', 'Canada Goose'),
('CATE', 'Charadriiformes', 'Laridae', 'Caspian Tern'),
('CAWA', 'Passeriformes', 'Parulidae', 'Canada Warbler'),
('CEDW', 'Passeriformes', 'Bombycillidae', 'Cedar Waxwing'),
('CHSP', 'Passeriformes', 'Emberizidae', 'Chipping Sparrow'),
('CHSW', 'Apodiformes', 'Apodidae', 'Chimney Swift'),
('CLSW', 'Passeriformes', 'Hirundinidae', 'Cliff Swallow'),
('CMTO', 'Piciformes', 'Ramphastidae', 'Chestnut-mandibled Toucan'),
('COGO', 'Anseriformes', 'Anatidae', 'Common Goldeneye'),
('COGR', 'Passeriformes', 'Icteridae', 'Common Grackle'),
('COHA', 'Falconiformes', 'Accipitridae', 'Cooper''s Hawk'),
('COLO', 'Gaviiformes', 'Gaviidae', 'Common Loon'),
('COME', 'Anseriformes', 'Anatidae', 'Common Merganser'),
('CORA', 'Passeriformes', 'Corvidae', 'Common Raven'),
('COYE', 'Passeriformes', 'Parulidae', 'Common Yellowthroat'),
('CSWA', 'Passeriformes', 'Parulidae', 'Chestnut-sided Warbler'),
('DCCO', 'Pelecaniformes', 'Phalacrocoracidae', 'Double-crested Cormorant'),
('DEJU', 'Passeriformes', 'Emberizidae', 'Dark-eyed Junco'),
('DOWO', 'Piciformes', 'Picidae', 'Downy Woodpecker'),
('EABL', 'Passeriformes', 'Turdidae', 'Eastern Bluebird'),
('EAKI', 'Passeriformes', 'Tyrannidae', 'Eastern Kingbird'),
('EAPH', 'Passeriformes', 'Tyrannidae', 'Eastern Phoebe'),
('EATO', 'Passeriformes', 'Emberizidae', 'Eastern Towhee'),
('EAWP', 'Passeriformes', 'Tyrannidae', 'Eastern Wood-Pewee'),
('EUST', 'Passeriformes', 'Sturnidae', 'European Starling'),
('FISP', 'Passeriformes', 'Emberizidae', 'Field Sparrow'),
('FRGU', 'Charadriiformes', 'Laridae', 'Franklin''s Gull'),
('GADW', 'Anseriformes', 'Anatidae', 'Gadwall'),
('GBHE', 'Ciconiiformes', 'Ardeidae', 'Great Blue Heron'),
('GCFL', 'Passeriformes', 'Tyrannidae', 'Great Crested Flycatcher'),
('GCKI', 'Passeriformes', 'Regulidae', 'Golden-crowned Kinglet'),
('GHOW', 'Strigiformes', 'Strigidae', 'Great Horned Owl'),
('GKIS', 'Passeriformes', 'Tyrannidae', 'Great Kiskadee'),
('GRCA', 'Passeriformes', 'Mimidae', 'Gray Catbird'),
('GREG', 'Ciconiiformes', 'Ardeidae', 'Great Egret'),
('GRHE', 'Ciconiiformes', 'Ardeidae', 'Green Heron'),
('GWTE', 'Anseriformes', 'Anatidae', 'Green-winged Teal'),
('HERG', 'Charadriiformes', 'Laridae', 'Herring Gull'),
('HETH', 'Passeriformes', 'Turdidae', 'Hermit Thrush'),
('HOFI', 'Passeriformes', 'Fringillidae', 'House Finch'),
('HOLA', 'Passeriformes', 'Alaudidae', 'Horned Lark'),
('HOME', 'Anseriformes', 'Anatidae', 'Hooded Merganser'),
('HOSP', 'Passeriformes', 'Passeridae', 'House Sparrow'),
('HOWR', 'Passeriformes', 'Troglodytidae', 'House Wren'),
('INBU', 'Passeriformes', 'Cardinalidae', 'Indigo Bunting'),
('KILL', 'Charadriiformes', 'Charadriidae', 'Killdeer'),
('LBDO', 'Charadriiformes', 'Scolopacidae', 'Long-billed Dowitcher'),
('LESC', 'Anseriformes', 'Anatidae', 'Lesser Scaup'),
('LEYE', 'Charadriiformes', 'Scolopacidae', 'Lesser Yellowlegs'),
('LISP', 'Passeriformes', 'Emberizidae', 'Lincoln''s Sparrow'),
('MAKE', 'Falconiformes', 'Falconidae', 'American Kestrel'),
('MALL', 'Anseriformes', 'Anatidae', 'Mallard'),
('MAWR', 'Passeriformes', 'Troglodytidae', 'Marsh Wren'),
('MERL', 'Falconiformes', 'Falconidae', 'Merlin'),
('MODO', 'Columbiformes', 'Columbidae', 'Mourning Dove'),
('MUSW', 'Anseriformes', 'Anatidae', 'Mute Swan'),
('NOCA', 'Passeriformes', 'Cardinalidae', 'Northern Cardinal'),
('NOFL', 'Piciformes', 'Picidae', 'Northern Flicker'),
('NOHA', 'Falconiformes', 'Accipitridae', 'Northern Harrier'),
('NOPA', 'Passeriformes', 'Parulidae', 'Northern Parula'),
('NRWS', 'Passeriformes', 'Hirundinidae', 'Northern Rough-winged Swallow'),
('NSHO', 'Anseriformes', 'Anatidae', 'Northern Shoveler'),
('OSPR', 'Falconiformes', 'Accipitridae', 'Osprey'),
('PAWA', 'Passeriformes', 'Parulidae', 'Palm Warbler'),
('PBGR', 'Podicipediformes', 'Podicipedidae', 'Pied-billed Grebe'),
('PISI', 'Passeriformes', 'Fringillidae', 'Pine Siskin'),
('PIWA', 'Passeriformes', 'Parulidae', 'Pine Warbler'),
('PIWO', 'Piciformes', 'Picidae', 'Pileated Woodpecker'),
('PUMA', 'Passeriformes', 'Hirundinidae', 'Purple Martin'),
('RBGR', 'Passeriformes', 'Cardinalidae', 'Rose-breasted Grosbeak'),
('RBGU', 'Charadriiformes', 'Laridae', 'Ring-billed Gull'),
('RBNU', 'Passeriformes', 'Sittidae', 'Red-breasted Nuthatch'),
('RBWO', 'Piciformes', 'Picidae', 'Red-bellied Woodpecker'),
('RCKI', 'Passeriformes', 'Regulidae', 'Ruby-crowned Kinglet'),
('REDH', 'Anseriformes', 'Anatidae', 'Redhead'),
('REVI', 'Passeriformes', 'Vireonidae', 'Red-eyed Vireo'),
('RNDU', 'Anseriformes', 'Anatidae', 'Ring-necked Duck'),
('ROPI', 'Columbiformes', 'Columbidae', 'Rock Pigeon'),
('RTHA', 'Falconiformes', 'Accipitridae', 'Red-tailed Hawk'),
('RTHU', 'Apodiformes', 'Trochilidae', 'Ruby-throated Hummingbird'),
('RUDU', 'Anseriformes', 'Anatidae', 'Ruddy Duck'),
('RUGR', 'Galliformes', 'Phasianidae', 'Ruffed Grouse'),
('RWBL', 'Passeriformes', 'Icteridae', 'Red-winged Blackbird'),
('SACR', 'Gruiformes', 'Gruidae', 'Sandhill Crane'),
('SCTA', 'Passeriformes', 'Cardinalidae', 'Scarlet Tanager'),
('SNBU', 'Passeriformes', 'Emberizidae', 'Snow Bunting'),
('SOSP', 'Passeriformes', 'Emberizidae', 'Song Sparrow'),
('SPSA', 'Charadriiformes', 'Scolopacidae', 'Spotted Sandpiper'),
('TRES', 'Passeriformes', 'Hirundinidae', 'Tree Swallow'),
('TRUS', 'Anseriformes', 'Anatidae', 'Trumpeter Swan'),
('TUSW', 'Anseriformes', 'Anatidae', 'Tundra Swan'),
('TUTI', 'Passeriformes', 'Paridae', 'Tufted Titmouse'),
('TUVU', 'Ciconiiformes', 'Cathartidae', 'Turkey Vulture'),
('WAVI', 'Passeriformes', 'Vireonidae', 'Warbling Vireo'),
('WBNU', 'Passeriformes', 'Sittidae', 'White-breasted Nuthatch'),
('WCSP', 'Passeriformes', 'Emberizidae', 'White-crowned Sparrow'),
('WITU', 'Galliformes', 'Phasianidae', 'Wild Turkey'),
('WIWR', 'Passeriformes', 'Troglodytidae', 'Winter Wren'),
('WODU', 'Anseriformes', 'Anatidae', 'Wood Duck'),
('WTSP', 'Passeriformes', 'Emberizidae', 'White-throated Sparrow'),
('YBCU', 'Cuculiformes', 'Cuculidae', 'Yellow-billed Cuckoo'),
('YRWA', 'Passeriformes', 'Parulidae', 'Yellow-rumped Warbler'),
('YWAR', 'Passeriformes', 'Parulidae', 'Yellow Warbler');

INSERT INTO "public"."sightings" ("id", "birds_code", "day", "month", "year", "location", "city", "state", "country") VALUES
(1, 'CANG', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(2, 'MUSW', NULL, NULL, NULL, '', 'Stratford', 'Ontario', 'Canada'),
(3, 'TRUS', 4, 10, 2021, 'Rouge Marsh', 'Scarborough', 'Ontario', 'Canada'),
(4, 'TUSW', 26, 3, 2022, '', 'Cambridge', 'Ontario', 'Canada'),
(5, 'WODU', NULL, NULL, 2020, '', 'London', 'Ontario', 'Canada'),
(6, 'ABDU', 15, 7, 2022, 'Kawagama Lake', 'Haliburton', 'Ontario', 'Canada'),
(7, 'MALL', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(8, 'BWTE', 6, 10, 2020, 'West Perth Wetlands', 'Mitchell', 'Ontario', 'Canada'),
(9, 'NSHO', 6, 10, 2020, 'West Perth Wetlands', 'Mitchell', 'Ontario', 'Canada'),
(10, 'GWTE', 6, 10, 2020, 'West Perth Wetlands', 'Mitchell', 'Ontario', 'Canada'),
(11, 'BUFF', 6, 11, 2021, 'Bay Lake', 'Emsdale', 'Ontario', 'Canada'),
(12, 'COGO', 6, 12, 2020, '', 'Cambridge', 'Ontario', 'Canada'),
(13, 'HOME', 8, 2, 2022, 'Harris Park', 'London', 'Ontario', 'Canada'),
(14, 'COME', 17, 10, 2020, 'Bruce Peninsula National Park', 'Bruce Peninsula', 'Ontario', 'Canada'),
(15, 'RUDU', 23, 4, 2022, 'Westminster Ponds', 'London', 'Ontario', 'Canada'),
(16, 'WITU', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(17, 'COLO', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(18, 'PBGR', 24, 4, 2022, 'Westminster Ponds', 'London', 'Ontario', 'Canada'),
(19, 'BRPE', 25, 1, 2020, '', 'Fort Myers', 'Florida', 'United States'),
(20, 'DCCO', 15, 9, 2020, 'Wood Drive', 'Kettle Point', 'Ontario', 'Canada'),
(21, 'GBHE', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(22, 'GREG', 17, 10, 2019, 'Frontline Christian Fellowship', 'LaSalle', 'Ontario', 'Canada'),
(23, 'CAEG', 22, 12, 2019, '', 'Quepos', 'Puntarenas', 'Costa Rica'),
(24, 'GRHE', 26, 12, 2019, 'Playa Quepos', 'Quepos', 'Puntarenas', 'Costa Rica'),
(25, 'TUVU', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(26, 'OSPR', 7, 8, 2020, 'Fanshawe Dam', 'London', 'Ontario', 'Canada'),
(27, 'BAEA', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(28, 'NOHA', NULL, NULL, 2019, '', '', 'Ontario', 'Canada'),
(29, 'COHA', NULL, NULL, 2019, '', '', 'Ontario', 'Canada'),
(30, 'RTHA', NULL, 8, 2020, '', '', 'Ontario', 'Canada'),
(31, 'MAKE', 30, 9, 2020, 'Frontline Christian Fellowship', 'LaSalle', 'Ontario', 'Canada'),
(32, 'MERL', NULL, NULL, 2020, '', '', 'Ontario', 'Canada'),
(33, 'SACR', 24, 9, 2020, '', 'Cambridge', 'Ontario', 'Canada'),
(34, 'KILL', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(35, 'SPSA', 15, 7, 2020, 'Canvas Way', 'London', 'Ontario', 'Canada'),
(36, 'LEYE', 6, 10, 2020, 'West Perth Wetlands', 'Mitchell', 'Ontario', 'Canada'),
(37, 'LBDO', 6, 10, 2020, 'West Perth Wetlands', 'Mitchell', 'Ontario', 'Canada'),
(38, 'FRGU', 14, 10, 2020, 'Belle River Marina', 'Belle River', 'Ontario', 'Canada'),
(39, 'RBGU', NULL, NULL, NULL, 'Ipperwash Beach', 'Ipperwash', 'Ontario', 'Canada'),
(40, 'HERG', NULL, NULL, NULL, 'Ipperwash Beach', 'Ipperwash', 'Ontario', 'Canada'),
(41, 'CATE', 9, 7, 2022, 'Ipperwash Beach', 'Ipperwash', 'Ontario', 'Canada'),
(42, 'ROPI', NULL, NULL, NULL, '', 'London', 'Ontario', 'Canada'),
(43, 'MODO', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(44, 'YBCU', 6, 6, 2021, 'Pinery Provincial Park', 'Grand Bend', 'Ontario', 'Canada'),
(45, 'BBCU', 22, 5, 2021, 'Ipperwash Dunes and Swales', 'Ipperwash', 'Ontario', 'Canada'),
(46, 'GHOW', 30, 9, 2020, 'Frontline Christian Fellowship', 'LaSalle', 'Ontario', 'Canada'),
(47, 'CHSW', 17, 10, 2019, 'Frontline Christian Fellowship', 'LaSalle', 'Ontario', 'Canada'),
(48, 'RTHU', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(49, 'BEKI', NULL, 9, 2020, '', 'London', 'Ontario', 'Canada'),
(50, 'RBWO', 24, 4, 2022, 'Westminster Ponds', 'London', 'Ontario', 'Canada'),
(51, 'DOWO', 13, 12, 2019, 'Mt Albion Rd', 'Hamilton', 'Ontario', 'Canada'),
(52, 'NOFL', 3, 5, 2020, 'Westminster Ponds', 'London', 'Ontario', 'Canada'),
(53, 'PIWO', 9, 9, 2020, '', 'Bruce Peninsula', 'Ontario', 'Canada'),
(54, 'EAWP', 15, 5, 2022, 'Mystery Falls', 'Sylvan', 'Ontario', 'Canada'),
(55, 'EAPH', 23, 9, 2020, '', '', 'Ontario', 'Canada'),
(56, 'GCFL', 9, 7, 2022, '', 'Grand Bend', 'Ontario', 'Canada'),
(57, 'GKIS', 26, 12, 2019, 'Playa Quepos', 'Quepos', 'Puntarenas', 'Costa Rica'),
(58, 'EAKI', 27, 7, 2020, '', 'London', 'Ontario', 'Canada'),
(59, 'WAVI', 13, 8, 2020, 'Constitution Park', 'London', 'Ontario', 'Canada'),
(60, 'REVI', 5, 7, 2022, 'Kawagama Lake', 'Haliburton', 'Ontario', 'Canada'),
(61, 'BLJA', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(62, 'AMCR', NULL, NULL, NULL, '', '', 'Ontario', 'Canada'),
(63, 'CORA', 10, 7, 2020, 'Kawagama Lake', 'Haliburton', 'Ontario', 'Canada'),
(64, 'PUMA', 6, 6, 2021, 'Ipperwash Beach', 'Ipperwash', 'Ontario', 'Canada'),
(65, 'TRES', 24, 7, 2020, 'Costco', 'London', 'Ontario', 'Canada'),
(66, 'NRWS', 10, 6, 2022, '', 'Lakeshore', 'Ontario', 'Canada'),
(67, 'BANS', 6, 6, 2021, '', 'Grand Bend', 'Ontario', 'Canada'),
(68, 'BARS', 3, 5, 2020, 'Westminster Ponds', 'London', 'Ontario', 'Canada'),
(69, 'BCCH', 15, 3, 2020, 'Bay Lake', 'Emsdale', 'Ontario', 'Canada'),
(70, 'TUTI', 6, 6, 2021, 'Pinery Provincial Park', 'Grand Bend', 'Ontario', 'Canada'),
(71, 'RBNU', 15, 3, 2020, 'Bay Lake', 'Emsdale', 'Ontario', 'Canada'),
(72, 'WBNU', 15, 3, 2020, 'Bay Lake', 'Emsdale', 'Ontario', 'Canada'),
(73, 'HOWR', 23, 5, 2020, '', 'Warwick', 'Ontario', 'Canada'),
(74, 'WIWR', 5, 3, 2022, 'Harris Park', 'London', 'Ontario', 'Canada'),
(75, 'MAWR', 30, 9, 2021, '', 'Barrie', 'Ontario', 'Canada'),
(76, 'GCKI', 14, 10, 2020, '', 'Belle River', 'Ontario', 'Canada'),
(77, 'RCKI', 17, 10, 2020, 'Bruce Peninsula National Park', 'Bruce Peninsula', 'Ontario', 'Canada'),
(78, 'EABL', 6, 6, 2021, 'Pinery Provincial Park', 'Grand Bend', 'Ontario', 'Canada'),
(79, 'HETH', 9, 10, 2021, 'Bruce Peninsula National Park', 'Bruce Peninsula', 'Ontario', 'Canada'),
(80, 'AMRO', NULL, NULL, NULL, '', 'Forest', 'Ontario', 'Canada'),
(81, 'GRCA', 11, 8, 2020, 'Hastings Park', 'London', 'Ontario', 'Canada'),
(82, 'EUST', 13, 12, 2019, '', 'Hamilton', 'Ontario', 'Canada'),
(83, 'CEDW', NULL, 8, 2020, '', 'London', 'Ontario', 'Canada'),
(84, 'NOPA', 3, 7, 2022, 'Kawagama Lake', 'Haliburton', 'Ontario', 'Canada'),
(85, 'YWAR', 30, 7, 2020, 'Windemere Road', 'London', 'Ontario', 'Canada'),
(86, 'YRWA', 17, 5, 2020, 'Kawagama Lake', 'Haliburton', 'Ontario', 'Canada'),
(87, 'BTNW', 15, 5, 2022, 'Mystery Falls', 'Sylvan', 'Ontario', 'Canada'),
(88, 'PAWA', 8, 5, 2022, 'Ipperwash Dunes and Swales', 'Ipperwash', 'Ontario', 'Canada'),
(89, 'PIWA', 29, 9, 2020, 'Frontline Christian Fellowship', 'LaSalle', 'Ontario', 'Canada'),
(90, 'AMRE', 9, 7, 2022, '', 'Grand Bend', 'Ontario', 'Canada'),
(91, 'COYE', 29, 9, 2020, 'Frontline Christian Fellowship', 'LaSalle', 'Ontario', 'Canada'),
(92, 'CAWA', 22, 5, 2021, 'Ipperwash Dunes and Swales', 'Ipperwash', 'Ontario', 'Canada'),
(93, 'EATO', 22, 5, 2021, 'Ipperwash Dunes and Swales', 'Ipperwash', 'Ontario', 'Canada'),
(94, 'CHSP', 30, 4, 2021, 'Pinery Provincial Park', 'Grand Bend', 'Ontario', 'Canada'),
(95, 'FISP', 9, 7, 2022, 'Pinery Provincial Park', 'Grand Bend', 'Ontario', 'Canada'),
(96, 'SOSP', NULL, NULL, 2020, '', '', 'Ontario', 'Canada'),
(97, 'LISP', 22, 9, 2020, '', '', 'Ontario', 'Canada'),
(98, 'WTSP', 30, 9, 2021, '', 'Barrie', 'Ontario', 'Canada'),
(99, 'WCSP', 17, 10, 2020, 'Bruce Peninsula National Park', 'Bruce Peninsula', 'Ontario', 'Canada'),
(100, 'DEJU', 7, 11, 2020, '', 'Camlachie', 'Ontario', 'Canada'),
(101, 'SCTA', 6, 6, 2021, 'Pinery Provincial Park', 'Grand Bend', 'Ontario', 'Canada'),
(102, 'NOCA', NULL, NULL, NULL, '', 'Forest', 'Ontario', 'Canada'),
(103, 'RBGR', 30, 7, 2020, '', 'Camlachie', 'Ontario', 'Canada'),
(104, 'INBU', 15, 5, 2022, 'Mystery Falls', 'Sylvan', 'Ontario', 'Canada'),
(105, 'RWBL', NULL, NULL, NULL, '', 'Forest', 'Ontario', 'Canada'),
(106, 'COGR', NULL, NULL, 2019, '', '', 'Ontario', 'Canada'),
(107, 'BHCO', NULL, NULL, 2019, '', '', 'Ontario', 'Canada'),
(108, 'BAOR', NULL, NULL, NULL, '', 'Forest', 'Ontario', 'Canada'),
(109, 'HOFI', 7, 11, 2020, '', 'Camlachie', 'Ontario', 'Canada'),
(110, 'PISI', 6, 11, 2021, 'Bay Lake', 'Emsdale', 'Ontario', 'Canada'),
(111, 'AMGO', 27, 4, 2020, 'Mitches Park', 'London', 'Ontario', 'Canada'),
(112, 'HOSP', NULL, NULL, 2019, '', 'London', 'Ontario', 'Canada'),
(113, 'BTTH', 27, 12, 2019, 'Damas Island', 'Quepos', 'Puntarenas', 'Costa Rica'),
(114, 'CMTO', 25, 12, 2019, '', 'Quepos', 'Puntarenas', 'Costa Rica'),
(115, 'BDOW', 18, 7, 2022, 'Tuckaway Rustic', 'Utterson', 'Ontario', 'Canada'),
(116, 'SNBU', 24, 12, 2022, 'Armiens Rd', 'Komoka', 'Ontario', 'Canada'),
(117, 'HOLA', 2, 4, 2023, NULL, 'Grand Bend', 'Ontario', 'Canada'),
(118, 'RNDU', 2, 4, 2023, 'Grand Bend Sewage Lagoons', 'Grand Bend', 'Ontario', 'Canada'),
(119, 'AMCO', 2, 4, 2023, 'Grand Bend Sewage Lagoons', 'Grand Bend', 'Ontario', 'Canada'),
(120, 'LESC', 2, 4, 2023, 'Grand Bend Sewage Lagoons', 'Grand Bend', 'Ontario', 'Canada'),
(121, 'REDH', 2, 4, 2023, 'Grand Bend Sewage Lagoons', 'Grand Bend', 'Ontario', 'Canada'),
(122, 'GADW', 2, 4, 2023, 'Grand Bend Sewage Lagoons', 'Grand Bend', 'Ontario', 'Canada'),
(123, 'AMWI', 2, 4, 2023, 'Grand Bend Sewage Lagoons', 'Grand Bend', 'Ontario', 'Canada'),
(124, 'CLSW', 6, 5, 2023, 'Harris Park', 'London', 'Ontario', 'Canada'),
(125, 'BLBW', 19, 5, 2023, 'Kawagama Lake', 'Haliburton', 'Ontario', 'Canada'),
(126, 'BBWA', 21, 5, 2023, 'Kawagama Lake', 'Haliburton', 'Ontario', 'Canada'),
(127, 'CSWA', 21, 5, 2023, 'Kawagama Lake', 'Haliburton', 'Ontario', 'Canada'),
(128, 'BGGN', 4, 6, 2023, 'Pinery Provincial Park', 'Grand Bend', 'Ontario', 'Canada'),
(129, 'RUGR', 22, 6, 2023, 'Rock Lake Rd', 'Algonquin Park', 'Ontario', 'Canada');

ALTER TABLE "public"."sightings" ADD FOREIGN KEY ("birds_code") REFERENCES "public"."birds"("code") ON DELETE CASCADE ON UPDATE CASCADE;
