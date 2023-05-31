## Ansible 
### Ansible là gì?
- Ansible là một công cụ tự động và phân bổ (automation & orchestration) phổ biến, giúp cho chúng ta đơn giản việc tự động hóa việc triển khai ứng dụng. Nó có thể cấu hình hệ thống, deploy phần mềm
- Ansible có thể tự động hóa việc cài đặt, cập nhật nhiều hệ thống hay triển khai một ứng dụng từ xa
- Ansible là công cụ cho phép mình thao tác hàng loạt trên nhiều máy client
### Install 
```
sudo apt install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get install -y ansible
ansible --version
```
### Mô hình hoạt động
![](https://hackmd.io/_uploads/rJKaK5EIh.png)
- Ansible kết nối với các máy con bằng SSH
- Inventory là tệp lưu địa chỉ cacsmasy con trên. Chia thành các nhóm A-B để quản lý: Nhóm web server và nhóm database server
- Playbook là file chứa các task của Ansible được ghi dưới định dạng YAML. Máy ansible sẽ đọc các task trong Playbook và đẩy các lệnh thực thi tương ứng bằng Python xuống các máy con
### Thuật ngữ cơ bản
- Controller Machine: Máy cài Ansible, chịu trách nhiệm quản lý, điều khiển và gửi task tới các máy con cần quản lý
- Inventory: là file chứa thông tin các server cần quản lý. File này thường nằm tại đường dẫn /etc/ansible/hosts
- Playbook: là file chứa các task của Ansible được ghi dưới định dạng YAML. Máy controller sẽ đọc các task trong Playbook và đẩy các lệnh thực thi tương ứng bằng Python xuống các máy con
- Task: một block ghi tác vụ cần thực hiện trong playbook và các thông số liên quan. Ví dụ một playbook có thể chứa 2 task là yum update và yum install
- Module
- Role
- Play
- Facts
- Handlers
### Thực nghiệm
- 1 ubuntu server 20.04 cài ansible và một ubuntu 22.04 làm máy con
![](https://hackmd.io/_uploads/HyCPR54U2.png)
#### Cách Ansible kết nối với Client
```
ssh key-gen
ssh-copy-id root@172.16.77.128
```
#### Thêm inventory
