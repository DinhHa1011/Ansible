- Ansibles là một tool IT automation
- Nó có thể config hệ thống, triển khai phần mềm, và sắp xếp các tasks nâng cao hơn như triển khai liên tục hoặc cập nhật liên tục không ngừng hoạt động
- Mục tiêu chính của ansibale là đơn giản và dễ sử dụng. Nó cũng tập trung mạnh vào tính bảo mật và độ tin cậy, có tối thiểu các bộ phận chuyển động, sử dụng OpenSSH để vận chuyển (với transports khác và chế độ pull như lựa chọn thay thế), và một ngôn ngữ được thiết kế dựa trên khả năng nghe được của con người - ngay cả những người không quen thuộc với chương trình
- Chúng tôi tin rằng sự đơn giản phù hợp với toàn bộ quy mô môi trường, vì vậy chúng tôi thiết kế cho tất cả các kiểu người dùng bận rộn: nhà phát triển, quản trị viên hệ thống, kỹ sư phát hành, người quản lý và mọi người ở giữa
- Ansible phù hợp để quản lý tất cả các môi trường, từ các thiết lập nhỏ với một số ít phiên bản đến môi trường doanh nghiệp với hàng nghìn phiên bản
- Bạn có thể tìm hiểu nhiều thêm tại https://www.redhat.com/en/summit/ansiblefest?extIdCarryOver=true&sc_cid=701f2000001OH7YAAW, sự kiện thường niên dành cho tất cả những người đóng góp, người dùng và khách hàng ansible do Red Hat tổ chức
- Ansiblefest là nơi dể kết nối với những người khác, học các kỹ năng mới và tìm một người bạn mới để tự động hóa cùng
- Ansible quản lý máy theo cách không có tác nhân, không bao giờ có câu hỏi làm thế nào để nâng cấp daemon từ xa hoặc vấn đề không để quản lý hệ thống do daemon bị gỡ cài đặt. Đồng thời, khả năng bảo mật cũng giảm đi đang kể vì ansible sử dụng openssh - công cụ kết nối mã nguồn để đăng nhập từ xa bằng giao thức ssh (secure shell)
- Tài liệu này đề cập đến phiên bản ansible được ghi chú ở góc trên bên phải của page. Chúng tôi duy trì nhiều phiên bản của ansible và tài liệu ansible, vì vậy hãy chắc chắn rằng bạn đang sử dụng phiên bản tài liệu bao gồm phiên bản ansible mà bạn đang sử dụng. Đối với các tính năng gần đây, chúng tôi lưu ý phiên bản ansible nơi tính năng này được thêm vào
- Ansible phát hành một bản phát hành chính mới khoảng 2 lần một năm. Ứng dụng cốt lõi phát triển hơi thận trọng, coi trọng sự đơn giản trong thiết kế và thiết lập ngôn ngữ, những người đóng góp phát triển và thay đổi các module và plugin được lưu trữ trong các bộ sưu tập kể từ phiên bản 2.10 nhanh hơn nhiều
### Getting started with Ansible
- Ansible tự động hóa việc quản lý từ xa và kiểm soát trạng thái mong muốn của chúng
- Một môi trường Ansible đơn giản có 3 thành phần chính:
  - Control node
  - Managed node
  - Inventory 
#### Control node
- Một system trên Ansible được tải
- run dòng lệnh Ansible như `ansible` hoặc `ansible-inventory`
#### Managed node
- Một hệ thống remote, hoặc host điều khiển ansible đó
#### Inventory
- Một danh sách managed node được tổ chức một cách logic
- Bạn tạo một inventory trên control node để mô tả triển máy chủ triển khai thành Ansible
![](https://hackmd.io/_uploads/HJJEMx0Sn.png)
