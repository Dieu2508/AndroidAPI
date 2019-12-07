-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2019 at 10:21 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sameskincare`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `maadmin` int(10) NOT NULL,
  `adminname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`maadmin`, `adminname`, `password`, `hoten`, `diachi`, `email`, `sodienthoai`) VALUES
(1, 'kimthoa', '123', 'Nguyễn Thị Kim Thoa', 'Quảng Bình\r\n', 'kimthoanguyen@gmail.com', '0935076223'),
(2, 'DieuLe', '123', 'Ngọc Diệu Lê', 'Quảng Nam', 'lndieu2508@gmail.com', '0344231750'),
(3, 'pHung', '123', 'Phan Hùng', 'Huế', 'phanhung@gmail.com', '0935064555');

-- --------------------------------------------------------

--
-- Table structure for table `anh`
--

CREATE TABLE `anh` (
  `maanh` int(10) NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `masp` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `anh`
--

INSERT INTO `anh` (`maanh`, `link`, `masp`) VALUES
(1, 'kckd_Catrice', 1),
(2, 'kckd_Catrice1', 1),
(3, 'kckd_Catrice2', 1),
(4, 'kckd_lagirl', 2),
(5, 'kckd_lagirl1', 2),
(6, 'kckd_thesaem', 3),
(7, 'kckd_thesaem1', 3),
(8, 'kckd_thesaem2', 3),
(9, 'kemnen_bb', 4),
(10, 'kemnen_bb1', 4),
(11, 'kemnen_bb2', 4),
(12, 'kemnen_innisfree', 5),
(13, 'kemnen_innisfree1', 5),
(14, 'son_3ce', 6),
(15, 'son_3ce1', 6),
(16, 'son_blackrouge', 7),
(17, 'son_blackrouge1', 7),
(18, 'kemat_thefaceshop', 8),
(19, 'kemat_thefaceshop1', 8),
(20, 'kemat_vacosi', 9),
(21, 'kemat_vacosi1', 9),
(22, 'mahong_aritaum', 10),
(23, 'mahong_aritaum1', 10),
(24, 'mahong_bourjois', 11),
(25, 'mahong_bourjois1', 11),
(26, 'duongam_clinique', 12),
(27, 'duongam_clinique1', 12),
(28, 'duongam_huxley', 13),
(29, 'duongam_huxley1', 13),
(30, 'duongam_huxley2', 13),
(31, 'duongmat_laneige', 16),
(32, 'duongmat_kiehls', 17),
(33, 'duongmat_kiehls1', 17),
(34, 'taytrang_muji', 18),
(35, 'taytrang_muji1', 18),
(36, 'taytrang_garnier', 19),
(37, 'taytrang_garnier2', 19),
(38, 'matna_naruko', 23),
(39, 'matna_naruko1', 23),
(40, 'matna_senka', 24),
(41, 'matna_senka1', 24);

-- --------------------------------------------------------

--
-- Table structure for table `chitietgiohang`
--

CREATE TABLE `chitietgiohang` (
  `mactgh` int(10) NOT NULL,
  `masp` int(10) NOT NULL,
  `soluong` int(10) NOT NULL,
  `magh` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietgiohang`
--

INSERT INTO `chitietgiohang` (`mactgh`, `masp`, `soluong`, `magh`) VALUES
(1, 1, 2, 1),
(2, 5, 1, 1),
(3, 8, 3, 2),
(4, 15, 2, 2),
(5, 9, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `magh` int(10) NOT NULL,
  `mauser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`magh`, `mauser`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `maloai` int(10) NOT NULL,
  `tenloai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `anh` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`, `anh`) VALUES
(1, 'Kem che khuyết điểm', 'chekhuyetdiem'),
(2, 'Kem nền', 'kemnen'),
(3, 'Son môi', 'son'),
(4, 'Kẻ mắt', 'kemat'),
(5, 'Phấn má hồng', 'mahong'),
(6, 'Kem dưỡng ẩm', 'duongam'),
(7, 'Mặt nạ', 'matna'),
(8, 'Kem dưỡng vùng mắt', 'duongmat'),
(9, 'Tẩy trang', 'taytrang');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` int(10) NOT NULL,
  `tensp` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thuonghieu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `dungtich` int(10) NOT NULL,
  `mota` longtext COLLATE utf8_unicode_ci NOT NULL,
  `dongia` int(10) NOT NULL,
  `soluongcosan` int(10) NOT NULL,
  `phivanchuyen` int(10) NOT NULL,
  `maloai` int(10) NOT NULL,
  `mashop` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`masp`, `tensp`, `thuonghieu`, `dungtich`, `mota`, `dongia`, `soluongcosan`, `phivanchuyen`, `maloai`, `mashop`) VALUES
(1, 'Kem Che Khuyết Điểm Catrice Liquid Camouflage High Coverage Concealer', 'Catrice(Đức)', 20, 'Mô tả sản phẩm :\r\n- Che khuyết điểm là một bước không thể thiếu trong quá trình trang điểm để có thể có một khuôn mặt hoàn hảo hơn, để khuôn mặt rạng rỡ hơn.\r\nCatrice là một hãng mỹ phẩm đến từ Đức với những sản phẩm trang điểm có chất lượng cao và giá thành cực kì hợp lí nên được nhiều người ưa chuộng và được các chuyên gia trang điểm tin dùng.\r\n- Kem Che Khuyết Điểm Catrice Liquid Camouflage High Coverage Concealer đang gây sốt trong thời gian gần đây bởi độ che phủ tốt mà sản phẩm mang lại. Với công nghệ tiên tiến, sản phẩm có khả năng che phủ bền lâu trên da nhiều giờ liền và không bị thấm nước.\r\n- Sản phẩm có độ che phủ tốt, có thể che phủ các vết thâm, vết mụn sưng tấy, những vùng da không đều màu nhưng vẫn mỏng nhẹ trên da.\r\n- Sản phẩm có thành phần cực kì an toàn nên không gây kích ứng cho da và phù hợp với mọi loại da.\r\n- Với kết cấu chất kem lỏng và mịn nên khi lên da cực kì mướt và dễ dàng tiệp vào da mà không sợ bị loang lỗ không đều màu hay có cảm giác nặng mặt, bít tắc lỗ chân lông.\r\n- Sản phẩm dễ dàng tán đều trên da và cho hiệu ứng mịn màng trên da mà không gây cộm hay bong tróc.\r\nTone màu :\r\nSản phẩm có 2 màu cho bạn lựa chọn màu phù hợp với làn da của mình ;\r\n 010 : Porcellaim : Tone sáng.\r\n 020 : Light Beige : Tone tự nhiên.', 110000, 10, 10000, 1, 1),
(2, 'Che khuyết điểm L.A Girl Pro Conceal HD High Definition Concealer', 'LA Girls', 30, 'L.A Girl Pro Conceal HD High Definition Concealer thích hợp cho mọi loại da và mọi màu da. Khi dùng thử em này bạn sẽ thấy bất ngờ vì hiệu quả mang lại, các quầng thâm và các vết sẹo lập tức biến mất, thay vào đó là 1 làn da tự nhiên không tì vết và rạng rỡ.\r\n\r\nMai phục, che lấp được các khuyết điểm của làn da\r\nLàm đều tông màu da\r\nChe lấp quầng thâm mắt\r\nLàm các nếp nhăn trông ít lộ liễu hơn\r\nCung cấp các mức độ che phủ phù hợp nhu cầu\r\nCó các màu cho bạn lựa chọn :\r\n\r\nMàu kem : Che khuyết điểm thông thường.\r\n\r\nMàu đỏ : Che các vết thâm như quầng thâm mắt.\r\n\r\nMàu xanh lá : Che các vết đỏ như mụn sưng, khóe mũi', 75000, 10, 10000, 1, 3),
(3, 'Kem Che Khuyết Điểm The Saem Cover Perfection Tip Concealer.', 'The Saem', 10, '- Cây che khuyết điểm này có thiết kế nhỏ xinh khoảng 10cm, vỏ bằng nhựa nắp đen chắc chắn nhưng cầm trên tay lại rất nhẹ. Mặt trước có in tên sản phẩm và chỉ số chống nắng SPF28/PA++, mặt sau in các thông tin khác bằng tiếng Hàn và tông màu.\r\n- Có 3 tông màu phổ biến là No1, No1.5 và No2. Đầu cọ vát chéo nhẹ giúp việc tán sản phẩm được dễ dàng hơn.\r\nCÔNG DỤNG\r\n\r\n- Che khuyết điểm với khả năng che phủ cao giúp che hiệu quả các đốm tàn nhang, sẹo do mụn hay các đầu mụn bị ửng đỏ trên da.\r\n- Chất kem có kết cấu dạng mạng lưới giúp giữ lớp che phủ bền lâu suốt 16 tiếng đồng hồ.\r\n- Không gây ra tình trạng da bị mốc, khả năng kiểm soát bã nhờn cao .\r\n- Khả năng chống nắng và tia tử ngoại lên đến SPF28/PA++.\r\n- Che phủ hiệu quả các vết thâm dưới mắt giúp mắt sáng hơn.\r\n- Khi khô để lại cảm giác khô ráo trên bề mặt, không có cảm giác dính dính khó chịu đâu.', 95000, 100, 10000, 1, 3),
(4, 'Kem Nền BB Etude House Precious Mineral Beautifying Block Cream', 'Etude House.', 50, '\r\n- Kem Nền Etude House Precious Mineral Beautifying Block Cream Mate có công thức dưỡng ẩm và cải tiến hơn so với phiên bản cũ, tương tự như dòng Moist màu hồng thì dòng Matte này thì hợp với những bạn có làn da dầu, hỗn hợp thiên dầu.\r\n- Sản phẩm có khả năng bám trên da tốt giúp cân bằng lượng dầu thừa trên da giúp da luôn khô thoáng.\r\n- Bên cạnh đó còn tăng cường khả năng dưỡng ẩm tự nhiên của da giúp da không bị khô căng làm nứt nền.\r\n- Sản phẩm còn có độ che phủ khá tốt giúp che phủ hầu hết các khuyết điểm trên da, lớp kem tiệp vào da mà không hề bị dày.', 195000, 100, 10000, 2, 5),
(5, 'Kem Nền Aritaum Full Cover BB Cream SPF50/PA+++', 'Innisfree', 25, '- Kem nền Aritaum Full Cover BB Cream SPF50/PA+++ là một trong những sản phẩm được yêu thích nhất của hãng với khả năng che phủ hoàn hảo cùng tác dụng làm sáng da nâng tone da, cải thiện nếp nhăn và chống tia tử ngoại cho da.\r\n- Sản phẩm này có khả năng che phủ cực đỉnh, có thể che phủ các khuyết điểm trên gương mặt như mụn, vết thâm hay lỗ chân lông to …\r\n- Khả năng kiềm dầu ổn giúp da luôn thoáng mịn, chỉ cần thêm một ít phấn phủ là không lo bị đổ dầu suốt cả ngày dài.\r\n- Khả năng bám lâu dài trên da, duy trì tone màu bền trên da mà không lo bị trôi hay xuống tone suốt cả ngày dài.\r\n- Sản phẩm còn có thành phần dưỡng sáng da, chống nhăn vừa có thể trang điểm mà còn có thể dưỡng da.\r\n- Chất kem mềm mịn, hơi sệt, dễ tán và mướt trên da, không sợ bị nặng mặt hay bí da.', 200000, 10, 10000, 2, 2),
(6, 'Son 3ce Mood Recipe 2017 Lipstick', '3CE', 0, 'Khi son Velvet Tint vẫn chưa hạ nhiệt tại thì trường Việt Nam thì hãng lại tiếp tục tung ra nhiều sản phẩm mới với các thiết kế cực kì đẹp và thu hút ánh nhìn ngay từ cái nhìn đầu tiên.\r\nVới Bộ sưu tập mới này chất son đã được cải tiến hơn.\r\nĐộ bám màu bền, không khô môi, mịn môi.\r\nMàu son lên chuẩn ngay từ lần quẹt đầu tiên.\r\nChất son lì matte bám màu 5-6 tiếng, mùi thơm dễ chịu.\r\nSản phẩm có 5 màu cho bạn dễ dàng lựa chọn :\r\n218 – Mirrorlike : Hồng Nude.\r\n219 – Brilliant : Cam nude.\r\n220 – Hit Me Up : Cam cháy.', 295000, 100, 20000, 3, 1),
(7, 'Son Black Rouge Air Fit Velvet Tint Version 2: Mood Filter', 'Black Rouge', 0, '- Tiếp nối thành công cực kì đình đám từ bộ sưu tập đầu tiên Air Fit Velvet Tint, hãng Black Rouge lại tiếp tục cho ra mắt Black Rouge Air Fit Velvet Tint Season 2 với chủ đề : Mood Filter.\r\n- Về thiết kế của Season 2 lần này thì vẫn là thiết kế đặc trưng của hãng, thân son được thiết kế hình trụ vuông nhưng nắp son nay đã được thay thành màu tím huyền ảo, thân son bằng nhựa bóng mờ để có thể nhìn thấy màu son bên trong, và logo được in chạy dọc trên thân son.\r\n- Về chất son của season 2 thì vẫn như phiên bản trước, chất son mềm, mướt, mịn khi lên môi, màu lên chuẩn ngay từ lần quẹt đầu tiên.\r\n- Độ bền màu cao, không gây cảm giác khó chịu nứt nẻ cho môi không làm lộ vân môi nhưng vẫn đủ độ lì mà không làm bóng môi.\r\n- Khác với bảng màu của season 1 thì season 2 được ra mắt với 5 màu sắc hầu hết là những tone màu MLBB – những màu sắc phù hợp cho mùa xuân hè sắp đến.\r\nBảng màu :\r\nMàu A08 – Warm Shaddock : Cam coral nhẹ nhàng.\r\nMàu A09 – Sweet Cinnamon : đỏ hồng nâu cá tính.\r\nMàu A10 – Red Berry : đỏ berry trẻ trung.\r\nMàu A11 – Tanned Camellia : hồng thêm một chút nâu cháy.\r\nMàu A12 – Dashed Brown : nâu cam gạch trầm.', 140000, 100, 20000, 3, 5),
(8, 'Bút Dạ Kẻ Mắt Ink Graffi Brush Pen Liner.', 'The face shop', 0, '- Bút dạ kẻ mắt Ink Graffi Brush Pen Liner là bút kẻ mắt dạ không lem không trôi của thương hiệu The Faceshop Hàn Quốc giúp bạn tạo được những đường nét trên đôi mắt, khiến đôi mắt bạn trở nên sắc nét hơn, sắc sảo và gợi cảm.\r\n\r\n- Bút dạ kẻ mắt Ink Graffi Brush Pen Liner với đầu cọ siêu mảnh 0.05mm, cho bạn kẻ những đường nét đẹp, thu hút mọi ánh nhìn vào đôi mắt của bạn. Đầu bút lông cực mềm và sắc nét.\r\n\r\n- Kẻ viền mí mắt dạng bút nước Ink Graffi Brush Pen Liner sẽ cho ra những đường nét thanh mảnh, tinh tế, và dễ dàng sử dụng cho những cô bạn mới bắt đầu sử dụng.\r\n\r\nInk Graffi Brush Pen Liner có hai màu sắc:\r\n\r\n01: Ink Black.\r\n02: Ink Brown.', 140000, 100, 10000, 4, 1),
(9, 'Bút Kẻ Mắt Vacosi 24h Waterproof Pen', 'Vacosi', 0, '- Bút Kẻ Mắt Vacosi 24h Waterproof Pen với đầu bút siêu mảnh sẽ giúp bạn dễ dàng kẻ những đường kẻ mắt sắc sảo, tăng thêm phần cuốn hút cho đôi mắt của bạn.\r\n- Với thiết kế dạng bút thon dài, cầm cực kì nặng tay và chắc tay với tone màu đen điểm chút vào làm chủ đạo càng tăng thêm sự sang trọng.\r\n- Với công thức có thể giữ màu cực lâu, không lem không trôi suốt cả ngày dài mà không cần dặm lại.\r\n- Đầu bút dạ, mềm mại và có độ dài vừa phải giúp dễ dàng thao tác và không làm đau cho mí mắt.\r\n- Sản phẩm tuy cực kì lâu trôi nhưng lại dễ dàng tẩy trang với các sản phẩm tẩy trang chuyên dụng nên bạn không cần lo lắng quá bám mà không thể tẩy nhé.\r\n- Sản phẩm cũng cực kì lành tính nên bạn có thể an tâm sử dụng mà không sợ bị kích ứng.', 140000, 100, 20000, 4, 3),
(10, 'Má Hồng Sugarball Velvet Cheek Color', 'Aritaum', 25, '- Aritaum là hãng mỹ phẩm đến từ Hàn Quốc đượ biết đến với những sản phẩm đầy màu sắc, chất lượng tốt và có giá thành hợp lí nên rất được ưa chuộng.\r\n- Phấn má hồng dạng nén Aritaum Sugarball Velvet Cheek Color là dòng phấn má được ra mắt đầu năm 2017 của Aritaum với 5 tông màu xinh xắn thời thượng giúp bạn gái dễ dàng lựa chọn màu phù hợp và kết hợp với các phong cách trang điểm.\r\n- Với kết cấu chất phấn mịn nhẹ, tạo màu sắc tự nhiên lên da cực kì dễ dàng và mịn màng mà không gây vón cục.\r\n- Chất phấn mịn và lên màu chuẩn giúp má bạn ửng hồng đầy sức sống và xinh xắn.\r\n- Đặc biệt với công thức Sebum Control giúp kiểm soát lượng dầu tiết ra trên da giúp da luôn thoáng mịn cả ngày dài.\r\n- Bên cạnh đó, sản phẩm còn có thể dùng làm phấn mắt nữa nên cũng cực kì tiện lợi.\r\nThiết kế hộp phấn nhỏ xinh tròn với những màu sắc xinh xắn có kèm theo cọ và gương giúp bạn dễ dàng mang theo và dặm lại mỗi khi cần trang điểm.\r\n- Cọ đi kèm tròn nhỏ xíu nhìn cũng cực kì xinh xắn với đầu lông được búi chặt và tỉa tròn giúp dễ dàng tán phấn lên má.\r\n Có 2 màu cho bạn lựa chọn :\r\n#3 Peach Fresh : Hồng cam.\r\n#4 Pink In Coral : Hồng nhạt.', 135000, 10, 20000, 5, 2),
(11, 'Má Hồng Bourjois Paris Depuis 1863', 'Bourjois', 25, '- Bourjois là một thương hiệu mỹ phẩm đến từ Pháp được biết đến với dòng son kem đình đám cực kì nổi tiếng thì má hồng của hãng cũng nổi tiếng không kém cạnh. Phấn má hồng Bourjois Paris Depuis 1863 là sản phẩm má hồng trứ danh của Bourjois, sản phẩm huyền thoại mang công thức độc quyền Bourjois ra đời từ năm 1863 và vẫn được yêu thích cho đến ngày nay.\r\n- Phấn má Bourjois nổi tiếng với kết cấu mịn màng và thành phần được tăng cường thêm độ nhũ, phấn má hồng Bourjois sẽ mang đến cho bạn đôi má ưng ửng hồng tức thời và cực kỳ tự nhiên và tươi trẻ hơn.\r\n- Độ bám màu tốt, chất phấn mịn màng lên màu chuẩn xác ngay từ lần quẹt đầu. Chất phấn mịn mướt lên da không bị vón cục hay nặng mặt mà cực kì tự nhiên.\r\n- Thiết kế vỏ hộp nhỏ gọn tròn trịa xinh xắn với nhiều tone màu khác nhau, hộp đi kèm gương và cọ nhỏ xinh tiện dụng. Dễ dàng mang đi trong túi xách và tiện dụng để dặm lại nếu muốn. Mùi hương hoa hồng thoang thoảng khi mở hộp. Hộp còn có nam châm nên không lo rơi rớt phấn mà còn cực kì chắc chắn nhé.\r\n- Bảng màu sắc đa dạng, tươi mới, từ trẻ trung và thanh lịch đến trang nhã tha hồ cho bạn lựa chọn màu sắc phù hợp với phong cách trang điểm của bản thân.\r\nNhà Minh về 2 màu cho bạn lựa chọn :\r\n33 – Golden Lilac : Hồng trầm.\r\n54 – Rose Frisson : Hồng baby.', 140000, 10, 20000, 5, 1),
(12, 'Gel Dưỡng Ẩm Dành Cho Da Dầu Clinique Dramatically Different Moisturizing Gel 125ml', 'Clinique', 125, '- Về nhãn hiệu, Clinique được thành lập bởi một bác sĩ da liễu từ năm 1968. Sản phẩm của thương hiệu này luôn chú trọng về mức độ lành tính và dịu nhẹ đối với làn da. Trước khi được tung ra thị trường, mỗi sản phẩm phải trải qua giai đoạn kiểm tra hết sức nghiêm ngặt: trên 600 người trong 12 lần thử nghiệm. Chỉ khi không có một trường hợp kích ứng nào xảy ra, sản phẩm đó mới được đưa vào sản xuất và đưa đến tay người tiêu dùng. Có lẽ đây là điều làm khách hàng yên tâm và tin tưởng vào Clinique trong gần 50 năm nay.\r\n\r\nPackaging: Chai có vòi xịt rất vệ sinh và tiện lợi. Lớp vỏ nhựa trong mờ có thể dễ dàng kiểm soát được lượng sản phẩm còn lại. Tuy không lung linh, long lanh như mỹ phẩm Hàn Quốc, em ấy lại ghi điểm ở vẻ ngoài đơn giản và tinh tế.\r\nKết cấu kem: Không quá đặc nhưng cũng không quá lỏng. Lớp kem thấm nhanh trên da và không gây cảm giác nhờn rít.\r\n  DỤNG\r\n\r\n- Thẩm thấu nhanh trên da và không gây bết dính.\r\n- Giúp lớp makeup bám lên da dễ dàng và giảm các vẩy da bong tróc khi trang điểm.\r\n- Giảm tiết dầu cho da (và cũng vì thế mà lớp trang điểm lâu trôi và bền màu hơn).\r\n- Da trông khỏe hơn và mịn màng hơn.\r\n- Vỏ chai đơn giản, có vòi xịt .Không cần dùng tay cho vào hủ để lấy kem hay bóp ống tuýp vừa không điều chỉnh được lượng kem, vừa không đảm bảo vệ sinh.\r\n- Dịu nhẹ cho da, không có cảm giác nặng hay bí da.\r\nGel không dầu mỏng nhẹ được đặc chế để phục hồi độ ẩm, giúp khôi phục mức cân bằng độ ẩm tự nhiên của da.\r\n100% Không Pha Hương Liệu và được phát triển bởi Bác Sĩ Da Liễu.\r\n- Lành tính với da bị dị ứng.\r\nHƯỚNG DẪN SỬ DỤNG\r\nKhi thoa lên mặt điều làm kem thấm nhanh, rất mỏng nhẹ, cần 1,2 phút thôi là đã thoa đều được khắp mặt và cổ. Đợi một chút thì các bạn có thể dùng tiếp những sản phẩm sau đó như mask ngủ, xịt khoáng….\r\nCÁCH BẢO QUẢN\r\nBảo quản nơi khô ráo, thoáng mát, tránh ánh nắng trực tiếp, để xa tầm tay trẻ em.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 620000, 10, 20000, 6, 1),
(13, 'Bộ 3 Sản Phẩm Dưỡng Ẩm Phục Hồi Da Chuyên Sâu Huxley Hydration Duo Set', 'Huxley', 120, 'Nước hoa hồng Huxley Toner, Extract It\r\nNước Cân Bằng Huxley Toner Extract It là dòng toner bán chạy nhất của thương hiệu Huxley. Sản phẩm đặc biệt được giới thiệu với 90% thành phần từ thiên nhiên được chiết xuất từ dầu hạt xương rồng kết hợp với hoa hồng và hoa tử vi giúp cung cấp độ ẩm tức thì cho da, cân bằng độ PH trên da mang đến cho bạn một làn da tươi mới, mịn màng hơn sau khi sử dụng. Đây chính là bước đầu tiên để da hấp thụ tốt các bước dưỡng tiếp theo.\r\n\r\nSản phẩm có kết cấu lỏng nhẹ nên có thể sử dụng theo phương pháp lotion mask để tăng khả năng dưỡng ẩm sâu cho da.\r\nLàm mát và dịu da đang bị dị ứng, tấy đỏ, cung cấp và duy trì độ ẩm cho da.\r\nLàm mờ các vết thâm sạm, cho da sáng đều màu hơn, se khít lỗ chân lông.\r\nThúc đẩy quá trình tái tạo tế bào mới, ngăn chặn quá trình lão hóa da, hạn chế vết nhăn và chảy xệ da.\r\nSản phẩm không chứa cồn, Paraben và các chất độc hại nên rất an toàn cho da kể cả da nhạy cảm. \r\nPhục hồi những làn da xỉn màu, thiếu sức sống, duy trì làn da căng khỏe mỗi ngày.\r\nToner thẩm thấu nhanh, không gây cảm giác bí rít khó chịu khi sử dụng.\r\n 2. Tinh chất dưỡng ẩm Huxley Essence Grap Water 30ml.\r\n\r\nTinh chất Huxley Essence Grap Water là dạng tinh chất dưỡng ẩm phục hồi chuyên sâu bằng cách khóa chặt hơi nước để dưỡng ẩm lâu hơn, sản phẩm này cũng được chiết xuất từ tinh dầu hạt xương rồng, giúp cung cấp độ ẩm tức thì cho làn da, đặc tính dưỡng ẩm tuyệt vời do hàm lượng cao các chất giữ nước, tạo thêm lớp màn dưỡng ẩm, chống lại tình trạng da khô, nứt nẻ. Đồng thời, trong thành phần có bạc hà tạo cảm giác mát lạnh tức thì cho làn da, không chỉ đem lại vẻ đẹp tươi trẻ, căng mịn đầy sức sống, bạn còn thấy thư giãn khi sử dụng tinh chất này.\r\n\r\nTinh chất len lỏi đến tận các kẽ hở giữa các tế bào, làm mát và dịu làn da dị ứng, giúp da phục hồi độ tươi sáng và mềm mại vốn có của nó.\r\nHoạt động theo cơ chế giữ chặt hơi nước nên duy trì được độ ẩm lâu dài cho da. Da đủ nước sẽ trở nên đàn hồi, căng mọng\r\nTăng cường khả năng miễn dịch cho da, ngăn chặn quá trình lão hóa da do các tác nhân gây hại từ môi trường.\r\nThành phần bạc hà tạo cảm giác the mát khi sử dụng.\r\n3. Kem dưỡng dạng gel Huxley Cream Fresh and More 50ml\r\n\r\nHuxley Cream ; Fresh and More là kem dưỡng ẩm dạng gel không quá đặc như kem cũng không quá lỏng như lotion nên dễ dàng thẩm thấu vào da, mang lại cho làn da mềm mại, ẩm mượt suốt cả ngày dù ở trong môi trường khô hanh, tiếp xúc với điều hòa nhiều… bằng cách bao phủ da bằng một lớp màng bảo vệ da.\r\n\r\nChứa chất Aquacateen làm dịu làn da kích ứng, đặc tính giữ nước tuyệt vời , giữ cho da luôn căng mịn, đàn hồi, cải thiện tông da đều màu trắng sáng hơn.\r\nKết cấu dạng gel nên thấm nhanh, không gây bí da, phù hợp với làn da thiếu nước, da dầu, hỗn hợp dầu.\r\nCân bằng lượng dầu trên da, hạn chế tiết dầu nhiều.\r\nTăng độ đàn hồi, săn chắc cho da, hỗ trợ làm mờ các vết thâm sạm, vùng da tối màu.\r\n HƯỚNG DẪN SỬ DỤNG\r\n\r\nBước 1: Rửa sạch bằng sữa rửa mặt. Thấm khô da bằng khăn mềm.\r\n\r\nBước 2: Đổ nước cân bằng da Extract It ra lòng bàn tay, vỗ nhẹ lên mặt cho dưỡng chất thẩm thấu vào da. Có thể sử dụng làm lotion mask.\r\n\r\nBước 3: Nhỏ vài giọt tinh chất Huxley Essence Grap Water ra bàn tay, làm nóng sau đó áp nhẹ lên mặt và cổ, vỗ nhẹ cho tinh chất thẩm thấu vào da.\r\n\r\nBước 4: Sử dụng kem dưỡng Huxley Cream Fresh and More để khóa ẩm cho da.\r\n\r\nSử dụng hằng ngày vào buổi sáng và tối trước khi đi ngủ.', 1150000, 10, 20000, 6, 2),
(16, 'Kem Dưỡng Mắt Laneige Water Bank Eye Gel EX 3ml', 'Laneige', 3, 'Dưỡng mắt là một bước cực kì quan trọng nếu bạn càng ngày có tuổi hơn, bởi vùng da quanh mắt cực kì nhạy cảm nếu không được dưỡng ẩm đầy đủ hay được chăm sóc kĩ càng sẽ dễ bị lão hóa hơn hết. Kem Dưỡng Mắt Laneige Water Bank Eye Gel EX 3ml là một kem dưỡng giúp cung cấp độ ẩm và các khoáng chất cho vùng da dưới mắt cps thể giúp điều trị nếp nhăn nhẹ cũng như thâm và bọng mắt.\r\nVới Hydro Ion Mineral Water sẽ tăng cường thẩm thấu vào 20 lớp của da làm dịu da khô và điều chỉnh da bị tổn thương.\r\nThành phần từ Palm tree fruit extract – chiết xuất cây Cọ sẽ tạo thành một lớp màng giúp dưỡng ẩm da mịn màng hơn, tạo một lớp màng bảo vệ da khỏi tình trạng mất độ ẩm.\r\nBuberry extract – chiết xuất từ quả Việt Quất giúp cung cấp chất dinh dưỡng và tăng cường sức khỏe cho vùng da quanh mắt và còn ngăn ngừa lão hóa vùng da quanh mắt.\r\nKết cấu dạng gel mỏng nhẹ dễ thấm vào da mà không gây bí.\r\nCách sử dụng :\r\nSau khi sử dụng xong các bước dưỡng da.\r\nLấy một lượng vừa đủ, chia đều kem ra hai ngón tay rồi xoa theo hình tròn từ dưới vòng lên, từ trong ra ngoài.\r\nMassage cho thẩm thấu hoàn toàn.', 30000, 100, 20000, 8, 1),
(17, 'Kem Dưỡng Mắt Kiehl’s Midnight Recovery Eye Mini 3ml', 'Kiehl’s', 3, 'Kem dưỡng mắt Kiehls Midnight Recovery Eye Cream không những loại bỏ quầng thâm, bọng mắt, cải thiện vùng da mắt bị nếp nhăn mà còn làm trẻ hóa, nâng cơ vùng da nhạy cảm này.\r\nTuýp nhựa vỏ màu xanh tím huyền bí, vì là dạng tuýp nên bạn có thể dễ dàng bóp lượng kem vừa phải khi dùng, tránh được lãng phí và đây cũng là điểm ưu việt hơn các loại kem dạng hũ, nhỏ gọn mang đi du lịch rất thuận tiện.\r\nChất kem của Kiehls Midnight Recovery Eye Cream mềm mịn, dễ thẩm thấu, khô thoáng nhanh, không gây bí lỗ chân lông, đây là một dòng kem đặc trị cho những đôi mắt bị thâm quầng nặng hoặc nhăn nheo chảy xệ nên sẽ rất hiệu quả cho cả các bạn mới bị thâm và nhăn.\r\nDa mắt bạn sẽ sáng dần lên, vết thâm, vết chân chim sẽ mất dần sau khoảng 4 tuần sử dụng, bạn sẽ thấy hài lòng về sản phẩm.\r\n \r\n THÀNH PHẦN\r\n\r\nKem dưỡng mắt Kiehls Midnight Recovery Eye Cream với thành phần chiết xuất thực vật tự nhiên và dầu dưỡng Essential Oils nên rất lành tính và an toàn cho mắt để sử dụng hàng ngày, sản phẩm không chứa paraben và dầu khoáng nên mắt nhạy cảm cũng có thể dùng được.\r\nDầu hoa oải hương: Làm giảm sưng tấy, mẩn đỏ, hiệu quả trong việc làm sáng da\r\nDầu hoa anh thảo: Giúp chữa lành da tổn thương với thành phần giàu Omega 6 và Fatty Acid có thêm tác dụng giảm thâm chống viêm\r\nDầu Squalene: Bảo vệ da khỏi tác động môi trường, duy trì độ ẩm và chống lão hóa cho mắt. Hoạt chất Squalane được phát triển tự nhiên da nhưng với tuổi thọ con người càng cao, chất này càng ít hơn và gây ra sự phát triển của nếp nhăn. Vì vậy mà các dòng kem dưỡng da hay có thêm các dưỡng chất này.\r\n  \r\nHƯỚNG DẪN SỬ DỤNG\r\n\r\nBước 1: Dùng ngón đeo nhẫn chấm kem dưỡng lên trên bầu mắt. Nên dùng ngón đeo nhẫn vì lực ở ngón đeo nhẫn là yếu nhất trong số 5 đầu ngón tay, như vậy mới không làm tổn thương đến mắt đồng thời làm kem dưỡng thâm nhập sâu hơn vào da.\r\nBước 2: Dùng đầu ngón đeo nhẫn tản đều kem. Bạn nên tản kem theo hướng từ đầu mắt đến cuối mắt, có thể miết nhẹ.\r\nBước 3: Khi đến điểm đuôi mắt, bạn massage hướng lên phía trên, đây là thủ thuật hết sức đơn giản và hiệu quả để ngăn ngừa nếp nhăn cho mắt.\r\nBước 4:Sau đó dùng ngón đeo nhẫn chấm kem mắt lên bầu mắt dưới.\r\nBước 5: Sau đó cũng tản kem từ đầu mắt đến đuôi mắt theo hướng lên trên.\r\nBước 6:Nếu vị trí này đã xuất hiện nếp nhăn, hãy thoa kem theo hướng ngược với nếp nhăn, có thể từ đuôi mắt ngược về phía đầu mắt.', 135000, 100, 20000, 8, 4),
(18, 'Dầu tẩy trang Muji Cleansing Oil 200ML', 'Muji( Nhật Bản)', 200, '– Chất dầu cho người dùng cảm giác vô cùng thích thú : không quá lỏng và cũng không quá đặc, màu vàng nhạt. Mùi thơm thoang thoảng nhẹ mang đến cảm giác thư giãn dễ chịu cho người dùng. Khi rửa sạch không bị nhờn hay khô rích nên cho cảm giác rất thoải mái.\r\n– Khả năng tẩy trang của dầu được đánh giá rất cao dầu có thể tẩy sạch hết những phấn trang điểm mà không cần dụng lượng quá nhiều hay mát xa quá lâu. Bạn nào makeup đậm cũng có thể tin tưởng dùng được.\r\n– Tẩy sạch rất tốt các thể loại makeup thông thường như kem nền, phấn mắt, phấn má,… có thể tẩy trang được cho cả mắt và môi, đánh bay các loại kẻ mắt, son và mascara.\r\n– Dù làm sạch da một cách mạnh mẽ nhưng tẩy trang Muji có thể dễ dàng rửa sạch lại với nước mà không gây nhờn dính, không nặng nề trên da một chút nào. cho bạn một làn da không vương bụi, mềm mịn và mát nhẹ hơn rất rất nhiều chính là những gì mà tẩy trang Muji oil cleansing sẽ mang đến cho bạn.', 255000, 100, 30000, 9, 1),
(19, 'Nước Tẩy Trang Da Nhạy Cảm, Da Thường, Da Khô Bioderma Crealine 500ML (Màu Hồng).', 'Bioderma(Pháp)', 500, '– Sự lựa chọn hoàn hảo cho da nhạy cảm hoặc da khô. Công dụng của sản phẩm không chỉ gói gọn ở khía cạnh tẩy trang đơn giản mà còn tẩy trang được cả mascara, vùng mắt. Sản phẩm được đánh giá cao trên trang makeupalley tới 4.3* và 81% sẽ mua lại.\r\n\r\n– Sản phẩm nằm trong 20 sản phẩm được ưa chuộng và bán chạy nhất khiến người Mỹ ghen tị do tạp chí ELLE bình chọn.\r\n\r\n– Thích hợp cho những bạn có làn da nhạy cảm, hoặc da khô.\r\n\r\n CÔNG DỤNG\r\nCông thức vô cùng dịu nhẹ không chứa xà phòng, không chứa chất tẩy rửa, không hương liệu, tẩy trang Bioderma có thể dùng để tẩy trang cả vùng da mắt nhạy cảm, môi mà da vẫn sạch, không nhờn dính cũng không khô căng ráp giống như một vài các sản phẩm tẩy trang khác.\r\nNước tẩy trang Bioderma sử dụng công thức Micellar – đây là một bước tiến mới trong các sản phẩm tẩy trang. Đó là sự kết hợp của dầu và nước với tác dụng làm da sạch sâu (nhờ dầu) nhưng vẫn dịu nhẹ (nhờ nước). Với công thức có chứa Micellar, tẩy trang Bioderma có khả năng lấy đi toàn bộ lớp trang điểm, bụi bẩn, dầu thừa nhờ 1 miếng bông mà không cần rửa lại bằng nước sạch.\r\nSau một thời gian sử dụng, hầu hết tất cả đều nhận xét: Tẩy trang Bioderma có khả năng loại bỏ hoàn hảo các lớp trang điểm và bụi bẩn trên da mà không làm da nhờn hay khô căng. Mát và nhẹ là cảm giác đầu tiên khi sử dụng nước tẩy trang này. Tất cả các mỹ phẩm trên da đều bám vào miếng bông tẩy trang và cuốn đi mà không cần phải dùng một lực mạnh. Riêng với vùng mắt, chủ yếu là các loại mỹ phẩm lâu trôi bạn cũng chỉ cần 2 lần để loại bỏ chúng mà thôi.\r\nƯu điểm nổi bật của nước tẩy trang Bioderma là được nhà sản xuất chỉ dẫn không cần rửa lại với nước, chỉ cần lau sạch mỹ phẩm với bông tẩy trang là được. Vì thế sản phẩm rất tiện lợi cho những cô nàng “lười” hoặc bận rộn. Sản phẩm cũng dịu nhẹ nên không gây khô da khi dùng nhiều lần.', 400000, 100, 30000, 9, 1),
(23, 'Mặt Nạ Tràm Trà Naruko Tea Tree Shine Control & Blemish Clear Mask – Bản Đài.', 'Naruko', 26, 'CÔNG DỤNG\r\n\r\nTrong dòng mặt nạ này có chứa tinh chất tràm trà và salicylid acid có khả năng kháng viêm, giảm vết ửng đỏ, sưng mụn, cải thiện tình trạng mụn. Ngoài ra, giống như các loại mặt nạ giấy khác, mặt nạ này cũng có 1 số hoạt chất dưỡng ẩm nhẹ nhàng để cấp nước, làm dịu, kiểm soát dầu nhờn trên da.\r\nTinh chất trong mặt nạ có thoảng mùi tràm trà tự nhiên. Tuy lượng tinh chất nhiều nhưng khá lỏng, khả năng thẩm thấu cao, giúp dưỡng ẩm cho da hiệu quả.\r\nMiếng mặt nạ giấy màu đen có thành phần chứa than tre tự nhiên giúp tăng khả năng thải độc, hút bã nhờn trên da. Chất mask cũng vì thế mà có hơi dày 1 chút xíu, nhưng mask vẫn ôm khít vào gương mặt.\r\nSau khi đắp mask, bạn có thể thấy các vết mụn sưng tấy, mẩn đỏ được giảm bớt. Làn da vì được cấp nước nên cũng căng mịn, lỗ chân lông thu nhỏ lại, tình trạng đổ dầu trên da cũng được cải thiện.\r\nHƯỚNG DẪN SỬ DỤNG\r\n\r\nSau khi rửa mặt sạch bằng sữa rửa mặt và cân bằng độ ẩm cho da với nước hoa hồng\r\n\r\nĐắp mặt nạ và trải đều lên toàn bộ khuôn mặt, cẩn thận không để tinh chất mặt mà dính vào mắt và miệng\r\n\r\nChờ khoảng 10~20 phút, tháo mặt nạ ra sau đó nhẹ nhàng thoa tinh chất còn sót lại trên mặt nạ để dưỡng chất được hấp thụ vào sâu bên trong da\r\n\r\nKhông cần rửa lại với nước.\r\n\r\nPhần dưỡng chất còn lại bạn có thể dùng massage cho phần cổ để da trông đều màu hơn.', 25000, 200, 25000, 7, 2),
(24, 'Mặt Nạ Dưỡng Da Senka Perfect Aqua White Mask – SmoothingWhite', 'Senka', 25, 'Mặt nạ làm từ sợi vải không dệt, mềm mại, đàn hồi và ôm sát khuôn mặt giúp dưỡng chất được hấp thụ tốt vào trong da.\r\n\r\n  CÔNG DỤNG\r\n\r\nTinh chất lô hội nguyên chất làm dịu các vết mụn sưng đỏ, giúp hỗ trợ điều trị những mụn viêm sưng hiệu quả.\r\nPhục hồi những tổn thương trên da do mụn gây ra hay do bức xạ từ ánh nắng mặt trời.\r\nChiết xuất từ phức hợp tinh chất tơ tằm thiên nhiên cùng với gấp đôi lượng Hyaluronic acid giúp da luôn ẩm mịn và mềm mượt cung cấp và phục hồi độ ẩm cho , nuôi dưỡng làn da ngậm nước, căng mọng  trong nhiều giờ liền.\r\nGiúp dưỡng trắng da, làm mờ và hạn chế hình thành các vết thâm sạm, nám và tàn nhang trên da.\r\nỨc chế sự hình thành của hắc sắc tố Melanin gây sạm khiến da không đều màu, làn da sẽ luôn trắng hồng, rạng rỡ.\r\nSản phẩm hoàn toàn không chứa cồn, không hương liệu, không chất tạo màu nên vô cùng lành tính và an toàn cho làn da của bạn.\r\n  HƯỚNG DẪN SỬ DỤNG\r\n\r\nSau khi rửa mặt sạch bằng sữa rửa mặt và cân bằng độ ẩm cho da với nước hoa hồng\r\n\r\nĐắp mặt nạ và trải đều lên toàn bộ khuôn mặt, cẩn thận không để tinh chất mặt mà dính vào mắt và miệng.\r\nChờ khoảng 10~20 phút, tháo mặt nạ ra sau đó nhẹ nhàng thoa tinh chất còn sót lại trên mặt nạ để dưỡng chất được hấp thụ vào sâu bên trong da\r\n\r\nKhông cần rửa lại với nước.\r\n\r\nPhần dưỡng chất còn lại bạn có thể dùng massage cho phần cổ để da trông đều màu hơn.', 28000, 100, 25000, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

CREATE TABLE `shop` (
  `mashop` int(10) NOT NULL,
  `tenshop` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`mashop`, `tenshop`, `diachi`, `sodienthoai`) VALUES
(1, 'Minh Comestic', '384 Phan Chu Trinh, An Cựu, thành phố Huế', ' 0932527868'),
(2, 'Mili Comestic', '22 Trần Trúc Nhẫn, Vĩnh Ninh, thành phố Huế', '0935064555'),
(3, 'Son môi Huế', '15 Phùng Hưng, Thuận Thành, thành phố Huế', '0934848487'),
(4, 'Cỏ House Cosmetic', '137 Bà Triệu, Xuân Phú, thành phố Huế', '0854666655'),
(5, 'Mắm Skincare & Cosmetics', '388 Phan Chu Trinh, An Cựu, Thành phố Huế', '0988586045');

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `maslide` int(10) NOT NULL,
  `imageslide` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`maslide`, `imageslide`) VALUES
(1, 'banner1'),
(2, 'banner2'),
(3, 'banner3'),
(4, 'banner4');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `mauser` int(10) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sodienthoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`mauser`, `username`, `password`, `hoten`, `gioitinh`, `diachi`, `sodienthoai`, `email`) VALUES
(1, 'phanhung', '123', 'Phan Hùng', 'nam', 'Huế', '0364859754', 'phanhung.12a1.pdl@gmail.com'),
(2, 'ngocdieu', '123', 'Lê Thị Ngọc Diệu', 'nữ', 'Quảng Nam', '09031542846', 'diudiu@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`maadmin`);

--
-- Indexes for table `anh`
--
ALTER TABLE `anh`
  ADD PRIMARY KEY (`maanh`);

--
-- Indexes for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  ADD PRIMARY KEY (`mactgh`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`magh`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maloai`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`masp`);

--
-- Indexes for table `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`mashop`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`maslide`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`mauser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `maadmin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `anh`
--
ALTER TABLE `anh`
  MODIFY `maanh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `chitietgiohang`
--
ALTER TABLE `chitietgiohang`
  MODIFY `mactgh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `magh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `maloai` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `masp` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `shop`
--
ALTER TABLE `shop`
  MODIFY `mashop` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `maslide` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `mauser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
