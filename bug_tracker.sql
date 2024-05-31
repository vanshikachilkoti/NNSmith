-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 02:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bug_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `steps_to_reproduce` text NOT NULL,
  `severity` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_reported` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bugs`
--

INSERT INTO `bugs` (`id`, `description`, `steps_to_reproduce`, `severity`, `status`, `date_reported`) VALUES
(52, 'School stock how PM interest once west.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'Medium', 'In Progress', '2024-05-29 17:48:43'),
(53, 'Sell daughter quite record yourself statement oil with care thousand item hair.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)\n2. Observe the output.', 'Low', 'Closed', '2024-05-29 17:48:43'),
(54, 'Face glass performance soldier four development art.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)\n2. Observe the output.', 'Low', 'Open', '2024-05-29 17:48:43'),
(55, 'Teacher spring low behind respond shake sea.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'Medium', 'Closed', '2024-05-29 17:48:43'),
(56, 'Seat effort look authority for major just while president example father.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'Medium', 'In Progress', '2024-05-29 17:48:43'),
(57, 'Keep attention money store similar character movie miss three opportunity big culture camera.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1.0, 2.0, 3.0])\ny = torch.sqrt(x)\nprint(y)\n2. Observe the output.', 'High', 'Open', '2024-05-29 17:48:43'),
(58, 'Eat knowledge great your range score thought.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'Low', 'Closed', '2024-05-29 17:48:43'),
(59, 'Candidate including nation catch child type responsibility second between land each like experience.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'High', 'Closed', '2024-05-29 17:48:43'),
(60, 'Alone think wall from half million anything arm marriage.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1.0, 2.0, 3.0])\ny = torch.sqrt(x)\nprint(y)\n2. Observe the output.', 'Medium', 'In Progress', '2024-05-29 17:48:43'),
(61, 'Claim increase lay nation area art.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1.0, 2.0, 3.0])\ny = torch.sqrt(x)\nprint(y)\n2. Observe the output.', 'Medium', 'In Progress', '2024-05-29 17:48:43'),
(62, 'Offer forget bad since customer sea offer skin.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1.0, 2.0, 3.0])\ny = torch.sqrt(x)\nprint(y)\n2. Observe the output.', 'Low', 'Closed', '2024-05-29 17:48:43'),
(63, 'Assume us company man heart very run performance factor message that your home.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'Medium', 'Open', '2024-05-29 17:48:43'),
(64, 'Could carry whether room key great place sea suddenly perform evidence rise crime.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'High', 'Open', '2024-05-29 17:48:43'),
(65, 'They carry audience visit Congress deal kitchen.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'High', 'Closed', '2024-05-29 17:48:43'),
(66, 'Program policy name ahead your development subject old full former rich case.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'Low', 'Open', '2024-05-29 17:48:43'),
(67, 'Instead risk ahead clearly machine staff water town who.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)\n2. Observe the output.', 'Low', 'Closed', '2024-05-29 17:48:43'),
(68, 'Type design any purpose network star.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)\n2. Observe the output.', 'Low', 'Closed', '2024-05-29 17:48:43'),
(69, 'A step until explain hot appear society line gas.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)\n2. Observe the output.', 'Medium', 'Closed', '2024-05-29 17:48:43'),
(70, 'Must probably idea there couple give hospital see result.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'High', 'Open', '2024-05-29 17:48:43'),
(71, 'Seem security result form fly relate former tend table image successful.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'Medium', 'In Progress', '2024-05-29 17:48:43'),
(72, 'Color realize kind special early tax individual about reach goal huge.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'Medium', 'In Progress', '2024-05-29 17:48:43'),
(73, 'Score federal family seek always candidate war.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'High', 'Closed', '2024-05-29 17:48:43'),
(74, 'Rise tree involve maintain manager answer push.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = x + 2\nprint(y)\n2. Observe the output.', 'High', 'Open', '2024-05-29 17:48:43'),
(75, 'Have popular tough sit family issue citizen sing decade nearly.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1.0, 2.0, 3.0])\ny = torch.sqrt(x)\nprint(y)\n2. Observe the output.', 'High', 'In Progress', '2024-05-29 17:48:43'),
(76, 'Since day hope participant involve report center under although.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'Low', 'In Progress', '2024-05-29 17:48:43'),
(77, 'Key build world interesting population expect start everyone sound order particular.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)\n2. Observe the output.', 'High', 'Closed', '2024-05-29 17:48:43'),
(78, 'Region when describe interesting language although end.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = x + 2\nprint(y)\n2. Observe the output.', 'Medium', 'In Progress', '2024-05-29 17:48:43'),
(79, 'Friend push goal challenge her Mr blue since.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = x + 2\nprint(y)\n2. Observe the output.', 'High', 'Closed', '2024-05-29 17:48:43'),
(80, 'Wait now pass close evening movement side surface laugh program blue quickly your.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'Low', 'Closed', '2024-05-29 17:48:43'),
(81, 'Pay need quite couple treat thing cup order.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'High', 'Closed', '2024-05-29 17:48:43'),
(82, 'Father knowledge present himself affect safe product will by stage describe almost talk.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'High', 'In Progress', '2024-05-29 17:48:43'),
(83, 'Treat maintain pattern though address challenge.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1.0, 2.0, 3.0])\ny = torch.sqrt(x)\nprint(y)\n2. Observe the output.', 'Medium', 'Closed', '2024-05-29 17:48:43'),
(84, 'Drop station strong brother well address forward tell environment hot my.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'High', 'Open', '2024-05-29 17:48:43'),
(85, 'Much occur rock large step chance ok create moment speak article describe.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'Low', 'Closed', '2024-05-29 17:48:43'),
(86, 'Scientist name final response writer itself plan million team woman attention.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = x + 2\nprint(y)\n2. Observe the output.', 'Low', 'Closed', '2024-05-29 17:48:43'),
(87, 'Sort than alone place oil source.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1.0, 2.0, 3.0])\ny = torch.sqrt(x)\nprint(y)\n2. Observe the output.', 'High', 'Closed', '2024-05-29 17:48:43'),
(88, 'Hold economy it hour service remember beautiful television.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1.0, 2.0, 3.0])\ny = torch.sqrt(x)\nprint(y)\n2. Observe the output.', 'Medium', 'Closed', '2024-05-29 17:48:43'),
(89, 'Performance lose from foreign animal reason.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'Low', 'In Progress', '2024-05-29 17:48:43'),
(90, 'Wear beautiful turn since say painting left no.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = x + 2\nprint(y)\n2. Observe the output.', 'High', 'Closed', '2024-05-29 17:48:43'),
(91, 'Commercial financial partner firm something around deal itself husband almost end.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'High', 'Closed', '2024-05-29 17:48:43'),
(92, 'Go appear card water bar shake born wish develop heavy probably almost similar.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)\n2. Observe the output.', 'Medium', 'Open', '2024-05-29 17:48:43'),
(93, 'End anything government body present own.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)\n2. Observe the output.', 'High', 'Closed', '2024-05-29 17:48:43'),
(94, 'Key strategy paper indeed soon control place early activity movement our write method.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([[1, 2], [3, 4]])\ny = torch.sum(x, dim=0)\nprint(y)\n2. Observe the output.', 'Medium', 'Closed', '2024-05-29 17:48:43'),
(95, 'Agreement piece reduce base cultural whole prevent leg.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = x + 2\nprint(y)\n2. Observe the output.', 'Medium', 'In Progress', '2024-05-29 17:48:43'),
(96, 'Speak think food make one change subject father build system.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'High', 'In Progress', '2024-05-29 17:48:43'),
(97, 'Hot age woman various trade within work education forward.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = x + 2\nprint(y)\n2. Observe the output.', 'Medium', 'Closed', '2024-05-29 17:48:43'),
(98, 'Art less involve enjoy industry court ground federal.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)\n2. Observe the output.', 'High', 'In Progress', '2024-05-29 17:48:44'),
(99, 'Table including week task perhaps partner morning common interview employee recently candidate way.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = torch.mean(x)\nprint(y)\n2. Observe the output.', 'Medium', 'Open', '2024-05-29 17:48:44'),
(100, 'Fire so value role throw field three role protect long deep.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 0, 3])\ny = torch.nonzero(x)\nprint(y)\n2. Observe the output.', 'Medium', 'Closed', '2024-05-29 17:48:44'),
(101, 'Natural friend now community help series resource matter power begin difficult listen join.', '1. Run the following PyTorch code:\nimport torch\nx = torch.tensor([1, 2, 3])\ny = x + 2\nprint(y)\n2. Observe the output.', 'Medium', 'Closed', '2024-05-29 17:48:44');

-- --------------------------------------------------------

--
-- Table structure for table `severity_levels`
--

CREATE TABLE `severity_levels` (
  `id` int(11) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `severity_levels`
--
ALTER TABLE `severity_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `severity_levels`
--
ALTER TABLE `severity_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
