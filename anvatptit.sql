-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 06, 2021 lúc 06:16 PM
-- Phiên bản máy phục vụ: 10.4.18-MariaDB
-- Phiên bản PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `anvatptit`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` bigint(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `cmnd` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `phone_number`, `cmnd`, `birthday`, `first_name`, `last_name`, `address`) VALUES
(4, 'nvbnvb13112000@gmail.com', '$2a$12$0bUJYfF1hgFSF6P9RuTvFOhAGGIIzLB03P8DgfUV2cQJa0rxBx9.i', '0327710091', '241852721', '2000-11-13', 'Nguyễn Văn', 'Bình', '42, Man Thiện, Hiệp Phú, Quận 9'),
(5, 'pdhl@gmail.com', '$2a$12$IpZW/Up7WEV92NYzaLASx.pxwtzFnTyEe89lRwHheTyDvO7rO968O', '0334711900', '2131314123', '2000-12-01', 'Phan Đình Hoàng', 'Long', '97, Man Thiện, Hiệp Phú, Quận 9');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `billdetail`
--

CREATE TABLE `billdetail` (
  `id_product` bigint(20) NOT NULL,
  `id_bills` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `billdetail`
--

INSERT INTO `billdetail` (`id_product`, `id_bills`, `quanty`, `total`) VALUES
(1, 11, 3, 690000),
(1, 18, 3, 300000),
(45, 11, 1, 130000),
(45, 19, 1, 130000),
(49, 11, 3, 210000),
(51, 15, 2, 500000),
(55, 15, 1, 200000),
(55, 19, 1, 200000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `note` text NOT NULL,
  `id_user` bigint(11) NOT NULL,
  `id_status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `created_at`, `note`, `id_user`, `id_status`) VALUES
(11, 'nvbnvb13112000@gmail.com', '0327710091', 'Nguyễn Văn Bình', '44, Man Thiện, Hiệp Phú, Quận 9', 1030000, 7, '2021-05-25 10:14:10', 'Không giao hàng vào giờ hành chính', 4, 2),
(15, 'nvbnvb13112000@gmail.com', '0327710091', 'Nguyễn Văn Bình', '44, Man Thiện, Hiệp Phú, Quận 9', 700000, 3, '2021-06-02 20:34:16', 'Không giao hàng vào giờ hành chính', 4, 2),
(18, 'nst@gmail.com', '123131312', 'Ngô Sĩ Tiến', '44, Man Thiện, Hiệp Phú, Quận 9', 300000, 3, '2021-06-06 17:59:40', 'giao nhanh nhé', 5, 1),
(19, 'pdhl@gmail.com', '0921465465', 'Phan Đình Hoàng Long', '97 Man Thiện, Hiệp Phú, Quận 9', 330000, 2, '2021-06-06 21:26:09', 'Không giao hàng vào thứ 4', 8, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `description`) VALUES
(3, 'Mứt', 'Mứt trái cây, mứt dẻo'),
(4, 'Đồ khô', 'Bán những đồ sấy, đồ chiên, khun khô, ...'),
(10, 'Nước giải khát', 'Nhập hàng từ bên ngoài về'),
(12, 'Bánh kẹo', 'Các loại bánh quy, bánh ngọt, bla bla'),
(13, 'Cơm', 'Cơm');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `id_product`, `img`) VALUES
(1, 1, 'mut-sen-hue.jpg'),
(2, 2, 'mut-kiwi.jpg'),
(3, 3, 'mut-dao-hong-phan.jpg'),
(4, 4, 'mut-gung.jpg'),
(37, 45, 'kho-bo-soi.jpg'),
(39, 47, 'kho-heo-chay-toi.jpg'),
(40, 48, 'muc-can-tam-vi.jpg'),
(41, 49, 'da-heo-chay-toi.jpg'),
(42, 50, 'da-heo-mam-hanh.jpg'),
(43, 51, 'muc-hap-nuoc-dua.jpg'),
(44, 55, 'chuoi-cao-say.jpg'),
(45, 57, 'mut_tao.jpg'),
(46, 58, 'keo-xop-marshmallow.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `url`) VALUES
(1, 'Trang chủ', NULL),
(2, 'Sản phẩm', NULL),
(3, 'So sánh', NULL),
(4, 'Giỏ hàng', NULL),
(5, 'Bài viết', NULL),
(6, 'Liên hệ', NULL),
(7, 'Bản đồ', NULL),
(8, 'Mua sỉ', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `sale` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `id_category`, `name`, `price`, `sale`, `title`, `highlight`, `new_product`, `details`, `created_at`) VALUES
(1, 3, 'Mứt sen Huế', 100000, 0, 'Oke oke oke', 1, 1, 'Like', '2021-06-02 20:24:49'),
(2, 3, 'Mứt kiwi', 230000, 0, 'Oke oke oke', 1, 1, 'Like', '2021-04-27 16:43:42'),
(3, 3, 'Mứt đào hồng phấn', 80000, 0, 'Ngon như người yêu bạn', 1, 1, 'Mau liền đi', '2021-04-25 19:52:57'),
(4, 3, 'Mứt gừng', 50000, 0, 'Cay ơi là cay', 1, 1, 'Mua ngay mua ngay', '2021-04-25 19:50:04'),
(45, 4, 'Khô bò sợi', 130000, 0, 'Cay lắm', 1, 1, 'Được làm từ thịt bò kobe', '2021-05-21 15:11:49'),
(47, 4, 'Khô heo cháy tỏi', 109000, 0, 'Cay lắm', 1, 1, 'Được làm từ thịt heo', '2021-05-23 20:01:01'),
(48, 4, 'Mực cán tẩm vị (hủ)', 70000, 0, 'Mua đi mọi người', 1, 1, 'Làm từ mực biển', '2021-05-23 20:06:59'),
(49, 4, 'Da heo cháy tỏi', 70000, 0, 'Da heo cháy + tỏi', 1, 1, 'Làm từ thịt heo Việt Nam', '2021-05-23 20:08:12'),
(50, 4, 'Da heo mắm hành ', 70000, 0, 'Đáng tiền lắm', 1, 1, 'Nguyên liệu: da heo + mắm + hành', '2021-05-23 20:09:26'),
(51, 4, 'Mực hấp nước dừa', 250000, 0, 'Sản phẩm bán rất chạy', 1, 1, 'Được làm từu mực, đem lên hấp với nước dừa, hấp trong 3 ngày', '2021-05-24 20:09:18'),
(55, 4, 'Chuối cao sấy', 200000, 0, 'Chuối nhà trồng', 1, 1, 'Ngon ', '2021-05-28 20:56:25'),
(57, 3, 'Mứt táo', 75000, 0, 'Nhà mình làm! Đảm bảo ngon sạch.', 1, 1, 'Mứt táo được làm từ những quả táo tươi ngon hái trên cây xuống.<br>\r\nĐục hột và nấu cùng đường và sấy khô. Rất an toàn và sạch sẽ!<br>\r\nThơm thơm dai dai dẻo dẻo ngọt ngọt vị đậm đà của táo cây ngày xưa!<br>\r\nHiện tại đang mùa mứt táo tái ra lò thơm ngon!<br>\r\nNsx: 02/2021<br>\r\nHsd: 6 tháng từ nsx', '2021-06-03 20:35:12'),
(58, 12, 'Kẹo xốp marshmallow', 134000, 0, 'Mềm mềm', 1, 1, 'Được sản xuất tại Mỹ (Tho)', '2021-06-06 23:03:10');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `img`, `caption`) VALUES
(1, 'slide1.jpg', 'Trái cây sấy'),
(2, 'slide2.jpg', 'Xoài sấy dẻo'),
(3, 'slide3.jpg', 'Hạt khô'),
(4, 'slide4.jpg', 'Mứt trái cây'),
(5, 'slide5.jpg', 'Khô gà xé cay'),
(6, 'slide6.jpg', 'Trái cây'),
(7, 'slide7.jpg', 'Mứt ngọt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `status`
--

CREATE TABLE `status` (
  `id` int(2) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `status`
--

INSERT INTO `status` (`id`, `name`) VALUES
(1, 'Chờ xác nhận'),
(2, 'Đã xác nhận'),
(3, 'Đơn hàng bị hủy'),
(4, 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(150) NOT NULL,
  `address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`) VALUES
(4, 'nvbnvb13112000@gmail.com', '$2a$12$9NoEuBebQkXAYQPuZt27jueRrn2Twyv20oCzx19eOS4iEcDyo.wMO', 'Nguyễn Văn Bình', '44, Man Thiện, Hiệp Phú, Quận 9'),
(5, 'nst@gmail.com', '$2a$12$7MmaPBVN/RO.AJRoTk18Ge/.jUWkUGWNQZ/8OfPL7GrS3tDuq7QSa', 'Ngô Sĩ Tiến', '44, Man Thiện, Hiệp Phú, Quận 9'),
(6, 'dtt@gmail.com', '$2a$12$Rw5yJstglxmSV1c7tMYgLuGn6zd9qIEvE2t.uPB2CNffAf2/PeDwC', 'Đỗ Thị Tâm', '97, Man Thiện, Hiệp Phú, Quận 9'),
(8, 'pdhl@gmail.com', '$2a$12$CH6h1BbyLSAgXkzTUmRD.OGv3qFnTcGSJalJvldwgv24eadbaEmp6', 'Phan Đình Hoàng Long', '97 Man Thiện, Hiệp Phú, Quận 9'),
(14, 'ptt@gmail.com', '$2a$12$w0gm52kaM/W3wsa.lTExBeld.torqibVDtyvTwfwq5eeFcITHRUgS', 'Phan Thị Trang', '34, Đường 104, Hiệp Phú, Quận 9');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `cmnd` (`cmnd`);

--
-- Chỉ mục cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id_product`,`id_bills`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bills` (`id_bills`),
  ADD KEY `id_product_2` (`id_product`,`id_bills`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_status` (`id_status`);

--
-- Chỉ mục cho bảng `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `status`
--
ALTER TABLE `status`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `bills_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `bills_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `status` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
