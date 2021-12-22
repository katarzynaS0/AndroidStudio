-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Gru 2021, 19:58
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wet`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `animal`
--

CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `species` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `breed` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `archive` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `animal`
--

INSERT INTO `animal` (`id_animal`, `id_owner`, `name`, `species`, `breed`, `sex`, `date_of_birth`, `archive`) VALUES
(1, 6, 'Piesio', 'Pies', 'Mieszaniec', 'M', '2020-01-01', 0),
(2, 7, 'Kotek', 'Kot', 'Perski', 'M', '2021-07-13', 0),
(3, 6, 'Żółwik', 'Żółw', 'Lamparci', 'M', '2021-11-11', 0),
(9, 6, 'Myszka', 'Mysz', NULL, 'M', '1999-11-13', 1),
(12, 7, 'Grzegorz', 'Pająk', NULL, 'M', '2021-11-10', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employee`
--

CREATE TABLE `employee` (
  `id_employee` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `street` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `employee`
--

INSERT INTO `employee` (`id_employee`, `name`, `surname`, `phone`, `email`, `id_user`, `street`, `zip_code`, `city`) VALUES
(9, 'Eden', 'Hazard', '123451276', 'pracownik1@test.pl', 18, 'Testowa 1', '11-111', 'Lublin'),
(10, 'Manuel', 'Neuer', '346123034', 'pracownik2@test.pl', 19, 'Testowa 2', '11-112', 'Lublin'),
(11, 'Paulo', 'Dybala', '654234089', 'pracownik3@test.pl', 20, 'Testowa 3', '11-113', 'Lublin'),
(12, 'Marco', 'Reus', '654987123', 'pracownik4@test.pl', 21, 'Testowa 4', '11-114', 'Lublin'),
(13, 'Cristiano', 'Ronaldo', '765345046', 'pracownik5@test.pl', 22, 'Testowa 5', '11-115', 'Lublin');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `id_visit` int(11) NOT NULL,
  `id_prescription` int(11) DEFAULT NULL,
  `orders` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `history`
--

INSERT INTO `history` (`id_history`, `id_visit`, `id_prescription`, `orders`, `description`) VALUES
(1, 8, 1, 'Proszę podawać lek o nazwie ABC 3 razy dziennie do posiłku.', 'Pies został zbadany, brzuch miękki, pies przy uciskaniu ma odruchy wymiotne. Wykonane zostało dodatkowo USG jamy brzusznej.'),
(3, 33, 3, 'TĘSKNIĘ ZA TOBĄ', 'ŻÓŁWIKU DROGI SŁODKI'),
(4, 35, 4, '55Zalecenia  \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', '55Opis \"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"'),
(6, 36, 5, 'IPSUM', 'LOREM'),
(7, 38, 6, 'ABCDEFGHIJK...', 'Lorem ipsum...'),
(8, 39, 7, 'ABC', 'ABC');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `id_prescription` int(11) NOT NULL,
  `medicament` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dose` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `item`
--

INSERT INTO `item` (`id_item`, `id_prescription`, `medicament`, `dose`) VALUES
(1, 1, 'ABC', NULL),
(2, 1, 'CBA', '2mg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `owner`
--

CREATE TABLE `owner` (
  `id_owner` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `owner`
--

INSERT INTO `owner` (`id_owner`, `name`, `surname`, `phone`, `email`, `id_user`) VALUES
(6, 'Robert', 'Lewandowski', '604387105', 'klient1@test.pl', 23),
(7, 'Hugo', 'Lloris', '730649209', 'klient2@test.pl', 24),
(8, 'Test', 'Testowy', '567123908', 'test@test.pl', 25),
(9, 'Tester', 'Testowy', '123456712', 'klient3@test.pl', 26);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('emilka.17@op.pl', '$2y$10$CtM.2Q4HurAsMx8Fmceqw.u/blxvWXHo3.byNla3RVjo/r5mC3CBC', '2021-11-02 18:24:08'),
('klient2@test.pl', '$2y$10$8EMSS.bTT1TP8FuiK./an.71Fw5p4Nurzfp.tE5EoVXghyyD7DmC6', '2021-12-01 13:35:19'),
('klient1@test.pl', '$2y$10$T1DMzrfZoOuoCEsD7t86rOyWeRQxzzk91syyB1MoiahmfoX.KbodC', '2021-12-01 13:35:50'),
('test@test.pl', '$2y$10$IPWkZO0DherBuSDAZSm1R.2s3NUKEOJh8lNy8dn2RkXNWl.QelFeO', '2021-12-02 10:43:27');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prescription`
--

CREATE TABLE `prescription` (
  `id_prescription` int(11) NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_code` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `prescription`
--

INSERT INTO `prescription` (`id_prescription`, `code`, `access_code`) VALUES
(1, '1217232323', '1217'),
(3, 'ddsggsgs1343', '2456'),
(4, '5555555555', '5555'),
(5, '222222222222', '2222'),
(6, '09358294648292', '1234'),
(7, 'idhif9585', '4356');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `specialization`
--

CREATE TABLE `specialization` (
  `id_specialization` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `specialization`
--

INSERT INTO `specialization` (`id_specialization`, `name`) VALUES
(1, 'Kardiologia'),
(2, 'Psy'),
(3, 'Koty'),
(4, 'Ptaki'),
(5, 'Gady'),
(6, 'Gryzonie'),
(7, 'Dermatologia'),
(8, 'Pajęczaki');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `Id_type` int(11) NOT NULL DEFAULT 3,
  `Id_vet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `Id_type`, `Id_vet`) VALUES
(1, 'Admin', 'Admin@admin.pl', NULL, '$2y$10$/wpFWIiaTkb7lZOPxPVjj.xC5pSQ6o9RfzV/1OkwRd1NpA38imTcC', NULL, '2021-11-02 14:43:29', '2021-11-02 14:43:29', 1, NULL),
(18, 'Eden', 'pracownik1@test.pl', NULL, '$2y$10$5QFS/91YPPFzmlPWbY0iG.EdILufTqO6cFhnKDG2zP/Tn/N33tTK.', NULL, '2021-11-07 15:33:24', NULL, 2, 4),
(19, 'Manuel', 'pracownik2@test.pl', NULL, '$2y$10$mPUZt.HSrTCTin./wYAPsePI9rH9kgdzHVbGFLz5fCO4upQilnOzq', NULL, '2021-11-07 15:34:09', NULL, 2, 5),
(20, 'Paulo', 'pracownik3@test.pl', NULL, '$2y$10$x4Fut36B2igi31WX4NGDIODLcVg4UbUPJg4NLiTMbLn3OrVRgzT8G', NULL, '2021-11-07 15:34:48', NULL, 2, 6),
(21, 'Marco', 'pracownik4@test.pl', NULL, '$2y$10$K94yF28cz2ZIdihLrlqDiOCYxwM3Mv61jYJGhn76ytIPfBA.i/2F2', NULL, '2021-11-07 15:35:19', NULL, 2, 7),
(22, 'Cristiano', 'pracownik5@test.pl', NULL, '$2y$10$M7XU/SLhAgETQba6IvR6VOWmTk7MJfzJTkRMxT4LpcO5yWXmE.XTO', NULL, '2021-11-07 15:36:00', NULL, 2, NULL),
(23, 'Robert', 'klient1@test.pl', NULL, '$2y$10$mOZK3.FeZOcsxdFrcKcjKeJ9n5y8yb5Ov8HNDxZ5TpoMjFnTKNC8m', NULL, '2021-11-07 15:57:41', '2021-11-24 06:38:31', 3, NULL),
(24, 'Hugo', 'klient2@test.pl', NULL, '$2y$10$wADGExkq9geNBjKDJeRRqOEZRiQUt1UTEMYm4VHxqdijA17QBtzJa', 'H9DVrArVJVimsYpHV6ZI5klHqP0S2WnB2Mxeapfy54N3Shn0eEVOfvrJ0jKP', '2021-11-07 15:58:56', '2021-12-02 10:46:06', 3, NULL),
(25, 'test', 'test@test.pl', NULL, '$2y$10$F2W4iUbRUOogw5klaN/dseBa8pwtKxQnFctuWWxjIhZUMmLDJcbgu', NULL, '2021-11-08 15:22:47', '2021-11-08 15:22:47', 3, NULL),
(26, 'Tester', 'klient3@test.pl', NULL, '$2y$10$0yGoui4z4leFv4HBU2K6/udm82ez4OZK/hTxLLytJvb9gZp8JFiJC', NULL, '2021-11-09 11:30:40', '2021-11-09 11:30:40', 3, NULL),
(27, 'fsaasf', 'fbjdsfjbs@op.pl', NULL, '$2y$10$aiZ5ZpN3P1MYyGI8I2O0EuF6ozYomCf84oC9th96oz0WHdsLtu3Gi', NULL, '2021-11-10 13:03:16', NULL, 2, NULL),
(28, '3t4t', 'rgberber@op.pl', NULL, '$2y$10$1v8klvZvyZyApKnxjhauPeKCweKj7zLi2oUSD17GzOuOf4yhuHKa.', NULL, '2021-11-10 13:03:41', NULL, 2, 6),
(30, 'Test30', 'test30@test.pl', NULL, 'test1234', NULL, NULL, NULL, 3, 5),
(31, 'Jan', 'jan@test.pl', NULL, 'test1234', NULL, '2021-12-19 13:45:25', '2021-12-19 13:45:25', 3, NULL),
(32, 'uzytkownik', 't1@t.pl', NULL, 'test1234', NULL, '2021-12-19 15:30:38', '2021-12-19 15:30:38', 3, NULL),
(33, 'test', 'testowy@t.pl', NULL, '16d7a4fca7442dda3ad93c9a726597e4', NULL, '2021-12-19 15:31:40', '2021-12-19 15:31:40', 3, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_type`
--

CREATE TABLE `user_type` (
  `id_type` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `user_type`
--

INSERT INTO `user_type` (`id_type`, `name`) VALUES
(1, 'Admin'),
(3, 'Klient'),
(2, 'Pracownik');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vet`
--

CREATE TABLE `vet` (
  `id_vet` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `biography` varchar(350) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `vet`
--

INSERT INTO `vet` (`id_vet`, `name`, `surname`, `license`, `biography`, `archive`) VALUES
(4, 'Eden', 'Hazard', '123456', 'Belgijski piłkarz występujący na pozycji napastnika w hiszpańskim klubie Real Madryt oraz w reprezentacji Belgii, której jest kapitanem. Brązowy medalista Mistrzostw Świata w Rosji w 2018.', NULL),
(5, 'Manuel', 'Neuer', '654321', 'Niemiecki piłkarz występujący na pozycji bramkarza w niemieckim klubie Bayern Monachium oraz w reprezentacji Niemiec, której jest kapitanem. Złoty medalista Mistrzostw Świata 2014, brązowy medalista Mistrzostw Świata 2010 oraz złoty medalista Mistrzostw Europy U-21 2009.', NULL),
(6, 'Paulo', 'Dybala', '567890', 'Argentyński piłkarz pochodzenia polsko-włoskiego, występujący na pozycji napastnika we włoskim klubie Juventus F.C. oraz w reprezentacji Argentyny. Jego dziadek Bolesław był Polakiem, zamieszkiwał w Kraśniowie, po czym wyemigrował do Argentyny.', NULL),
(7, 'Marco', 'Reus', '567123', 'Niemiecki piłkarz występujący na pozycji napastnika lub pomocnika w niemieckim klubie Borussia Dortmund oraz w reprezentacji Niemiec.', NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vet_specialization`
--

CREATE TABLE `vet_specialization` (
  `id_vet_specialization` int(11) NOT NULL,
  `id_vet` int(11) NOT NULL,
  `id_specialization` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `vet_specialization`
--

INSERT INTO `vet_specialization` (`id_vet_specialization`, `id_vet`, `id_specialization`) VALUES
(1, 4, 2),
(2, 4, 3),
(3, 4, 1),
(4, 5, 5),
(5, 4, 6),
(6, 5, 6),
(7, 7, 6),
(8, 6, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `visit`
--

CREATE TABLE `visit` (
  `id_visit` int(11) NOT NULL,
  `id_vet` int(11) DEFAULT NULL,
  `id_owner` int(11) DEFAULT NULL,
  `id_type` int(11) NOT NULL,
  `id_animal` int(11) DEFAULT NULL,
  `reservation` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `time` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmation` tinyint(4) DEFAULT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `visit`
--

INSERT INTO `visit` (`id_visit`, `id_vet`, `id_owner`, `id_type`, `id_animal`, `reservation`, `date`, `time`, `price`, `confirmation`, `message`) VALUES
(8, 4, 6, 1, 1, 1, '2021-11-09', '10.30', NULL, 1, 'Piesia boli brzuch od tygodnia, nie chce jeść.'),
(9, 4, 6, 3, 1, 1, '2021-11-03', '13.30', NULL, 1, 'Zabieg sterylizacji piesia.'),
(10, 5, NULL, 2, NULL, NULL, '2021-11-18', '14.30', NULL, 1, NULL),
(11, 6, NULL, 3, NULL, NULL, '2021-11-03', '13.30', NULL, 1, NULL),
(12, 5, NULL, 2, NULL, NULL, '2021-11-17', '17.30', NULL, 1, NULL),
(13, 5, NULL, 1, NULL, NULL, '2021-11-19', '10.30', NULL, 1, NULL),
(14, 7, NULL, 2, NULL, NULL, '2021-11-24', '14.30', NULL, 1, NULL),
(15, 4, 6, 1, 3, 1, '2021-11-25', '14.30', NULL, 1, 'TEST11111'),
(16, 4, NULL, 3, NULL, NULL, '2021-11-08', '17.30', NULL, 1, NULL),
(17, 4, NULL, 2, NULL, NULL, '2021-11-08', '10.30', NULL, 1, NULL),
(18, 4, NULL, 1, NULL, NULL, '2021-11-10', '13.30', NULL, 1, NULL),
(19, 4, NULL, 2, NULL, NULL, '2021-11-10', '10.30', NULL, NULL, NULL),
(20, 4, NULL, 1, NULL, NULL, '2021-11-10', '10.00', NULL, NULL, NULL),
(21, 4, NULL, 1, NULL, NULL, '2021-11-10', '17.30', NULL, NULL, NULL),
(22, 4, NULL, 3, NULL, NULL, '2021-11-30', '10.00', NULL, NULL, NULL),
(23, 4, 6, 2, 1, 1, '2021-11-25', '12.00', NULL, 1, 'Test Test Test'),
(24, 5, NULL, 1, NULL, NULL, '2021-11-25', '12.00', NULL, NULL, NULL),
(25, 5, NULL, 2, NULL, NULL, '2021-11-25', '12.30', NULL, NULL, NULL),
(26, 4, NULL, 3, NULL, NULL, '2021-11-24', '17.30', NULL, NULL, NULL),
(27, 4, 6, 2, 3, 1, '2021-11-24', '18.00', NULL, NULL, 'Żółwik przestał jeść, chwieje się gdy chodzi.'),
(28, 6, NULL, 3, NULL, NULL, '2021-11-26', '10.30', NULL, NULL, NULL),
(29, 6, NULL, 2, NULL, NULL, '2021-11-26', '9.30', NULL, NULL, NULL),
(30, 6, 6, 1, 1, 1, '2021-11-26', '11.00', NULL, 1, 'TEST123'),
(31, 4, 6, 1, 1, 1, '2021-11-25', '15.00', NULL, 1, 'TEST123'),
(32, 4, 6, 1, 1, 1, '2021-11-26', '10.00', NULL, NULL, 'Piesek źle się czuje'),
(33, 4, 6, 2, 3, 1, '2021-11-30', '15.00', '670', 1, 'ŻÓŁWIK'),
(34, 5, NULL, 1, NULL, NULL, '2021-12-01', '10.00', NULL, 1, NULL),
(35, 4, 6, 1, 1, 1, '2021-12-01', '10.30', '50', 1, 'Piesio źle się czuje'),
(36, 4, 6, 1, 3, 1, '2021-12-01', '11.00', '10', 1, 'Żółwik źle się czuje'),
(37, 4, 7, 2, 2, 1, '2021-12-01', '13.00', NULL, 1, 'Kotek nie chce jeść'),
(38, 6, 7, 1, 2, 1, '2021-12-02', '10.00', '50', 1, 'Kotek źle się czuje. Dwa dni temu pogryzł kwiatka. Nie chce jeść, wymiotuje.'),
(39, 6, 6, 1, 1, 1, '2021-12-02', '10.30', '50', 1, 'Piesia boli łapka. Przestał na nią stawać i chwieje się przy chodzeniu.'),
(40, 6, NULL, 1, NULL, NULL, '2021-12-02', '11.00', NULL, NULL, NULL),
(41, 6, 7, 2, 12, 1, '2021-12-02', '12.30', NULL, 1, 'Grzegorz Pająk kapitan');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `visit_type`
--

CREATE TABLE `visit_type` (
  `id_visit_type` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `visit_type`
--

INSERT INTO `visit_type` (`id_visit_type`, `name`, `description`, `duration`) VALUES
(1, 'Wizyta kontrolna', 'Krótka wizyta kontrolna, np szczepienie, konsultacja, odrobaczanie', 1),
(2, 'Badanie', 'Dłuższa wizyta np. konsultacja z wykonaniem badania USG/RTG, testy na obecność wirusów/bakterii', 2),
(3, 'Zabieg', 'Długa wizyta - np. wykonanie zabiegu sterylizacji, kastracji, operacja', 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id_animal`),
  ADD UNIQUE KEY `id_zwierze_UNIQUE` (`id_animal`),
  ADD KEY `ownerFKanimal_idx` (`id_owner`);

--
-- Indeksy dla tabeli `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id_employee`),
  ADD UNIQUE KEY `Email_UNIQUE` (`email`),
  ADD UNIQUE KEY `Nr_tel_UNIQUE` (`phone`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`),
  ADD UNIQUE KEY `Id_historia_UNIQUE` (`id_history`),
  ADD KEY `Id_wizyta_idx` (`id_visit`),
  ADD KEY `Id_recepta_idx` (`id_prescription`);

--
-- Indeksy dla tabeli `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`),
  ADD UNIQUE KEY `Id_pozycja_UNIQUE` (`id_item`),
  ADD KEY `Id_recepta_idx` (`id_prescription`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id_owner`),
  ADD UNIQUE KEY `Nr_tel_UNIQUE` (`phone`),
  ADD UNIQUE KEY `Email_UNIQUE` (`email`),
  ADD KEY `Id_userFKowner_idx` (`id_user`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id_prescription`),
  ADD UNIQUE KEY `Id_recepta_UNIQUE` (`id_prescription`),
  ADD UNIQUE KEY `Kod_UNIQUE` (`code`);

--
-- Indeksy dla tabeli `specialization`
--
ALTER TABLE `specialization`
  ADD PRIMARY KEY (`id_specialization`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `FKusers_type_idx` (`Id_type`),
  ADD KEY `FKusers_wet_idx` (`Id_vet`);

--
-- Indeksy dla tabeli `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id_type`),
  ADD UNIQUE KEY `Nazwa typu konta_UNIQUE` (`name`);

--
-- Indeksy dla tabeli `vet`
--
ALTER TABLE `vet`
  ADD PRIMARY KEY (`id_vet`),
  ADD UNIQUE KEY `id_weterynarz_UNIQUE` (`id_vet`);

--
-- Indeksy dla tabeli `vet_specialization`
--
ALTER TABLE `vet_specialization`
  ADD PRIMARY KEY (`id_vet_specialization`),
  ADD KEY `Id_weterynarzFKwet_specjalizacja_idx` (`id_vet`),
  ADD KEY `Id_specjalizacjaFKwet_specjalizacja_idx` (`id_specialization`);

--
-- Indeksy dla tabeli `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`id_visit`),
  ADD UNIQUE KEY `id_wizyta_UNIQUE` (`id_visit`),
  ADD KEY `id_rodzaj_idx` (`id_type`),
  ADD KEY `id_zwierze_idx` (`id_animal`),
  ADD KEY `Id_weterynarzFKWizyta` (`id_vet`),
  ADD KEY `ownerFKvisit_idx` (`id_owner`);

--
-- Indeksy dla tabeli `visit_type`
--
ALTER TABLE `visit_type`
  ADD PRIMARY KEY (`id_visit_type`),
  ADD UNIQUE KEY `id_rodzaj_UNIQUE` (`id_visit_type`),
  ADD UNIQUE KEY `Nazwa_UNIQUE` (`name`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `animal`
--
ALTER TABLE `animal`
  MODIFY `id_animal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT dla tabeli `employee`
--
ALTER TABLE `employee`
  MODIFY `id_employee` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `owner`
--
ALTER TABLE `owner`
  MODIFY `id_owner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id_prescription` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `specialization`
--
ALTER TABLE `specialization`
  MODIFY `id_specialization` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT dla tabeli `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT dla tabeli `vet`
--
ALTER TABLE `vet`
  MODIFY `id_vet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `vet_specialization`
--
ALTER TABLE `vet_specialization`
  MODIFY `id_vet_specialization` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `visit`
--
ALTER TABLE `visit`
  MODIFY `id_visit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT dla tabeli `visit_type`
--
ALTER TABLE `visit_type`
  MODIFY `id_visit_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `ownerFKanimal` FOREIGN KEY (`id_owner`) REFERENCES `owner` (`id_owner`);

--
-- Ograniczenia dla tabeli `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `Id_prescriptionFKhistory` FOREIGN KEY (`id_prescription`) REFERENCES `prescription` (`id_prescription`),
  ADD CONSTRAINT `Id_visitFKhistory` FOREIGN KEY (`id_visit`) REFERENCES `visit` (`id_visit`);

--
-- Ograniczenia dla tabeli `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `Id_prescriptionFKitem` FOREIGN KEY (`id_prescription`) REFERENCES `prescription` (`id_prescription`);

--
-- Ograniczenia dla tabeli `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `Id_userFKowner` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Ograniczenia dla tabeli `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FKusers_type` FOREIGN KEY (`Id_type`) REFERENCES `user_type` (`id_type`),
  ADD CONSTRAINT `FKusers_wet` FOREIGN KEY (`Id_vet`) REFERENCES `vet` (`id_vet`);

--
-- Ograniczenia dla tabeli `vet_specialization`
--
ALTER TABLE `vet_specialization`
  ADD CONSTRAINT `Id_specjalizacjaFKwet_specjalizacja` FOREIGN KEY (`id_specialization`) REFERENCES `specialization` (`id_specialization`),
  ADD CONSTRAINT `Id_weterynarzFKwet_specjalizacja` FOREIGN KEY (`id_vet`) REFERENCES `vet` (`id_vet`);

--
-- Ograniczenia dla tabeli `visit`
--
ALTER TABLE `visit`
  ADD CONSTRAINT `Id_rodzajFKWizyta` FOREIGN KEY (`id_type`) REFERENCES `visit_type` (`id_visit_type`),
  ADD CONSTRAINT `Id_weterynarzFKWizyta` FOREIGN KEY (`id_vet`) REFERENCES `vet` (`id_vet`),
  ADD CONSTRAINT `Id_zwierzeFKWizyta` FOREIGN KEY (`id_animal`) REFERENCES `animal` (`id_animal`),
  ADD CONSTRAINT `ownerFKvisit` FOREIGN KEY (`id_owner`) REFERENCES `owner` (`id_owner`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
