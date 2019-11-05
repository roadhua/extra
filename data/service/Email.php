<?php
namespace data\service;

use think\Controller;
use phpmailer\Phpmailer;
use PHPMailer\Exception;
use Cookie;

class Email extends Controller
{
    public $ver;

    public function email($emailData)
    {
        $mail = new PhpMailer();
        $mail->isSMTP();// 使用SMTP服务
        $mail->CharSet = "utf8";// 编码格式为utf8，不设置编码的话，中文会出现乱码
        $mail->Host = "smtp.163.com";// 发送方的SMTP服务器地址
        $mail->SMTPAuth = true;// 是否使用身份验证
        $mail->Username = "15915845254@163.com";// 发送方的163邮箱用户名
        $mail->Password = "hnscdslxgty5";// 发送方的邮箱密码，注意用163邮箱这里填写的是“客户端授权密码”而不是邮箱的登录密码！
        $mail->SMTPSecure = "ssl";// 使用ssl协议方式
        $mail->Port = 994;// 163邮箱的ssl协议方式端口号是465/994
        $mail->From= "xxxx";
        $mail->Helo= "xxxx";
        $mail->setFrom("15915845254@163.com","牧码人");// 设置发件人信息，如邮件格式说明中的发件人，这里会显示为Mailer(xxxx@163.com），Mailer是当做名字显示
        $mail->addAddress($emailData, '用户');// 设置收件人信息，如邮件格式说明中的收件人，这里会显示为Liang(yyyy@163.com)
        $mail->IsHTML(true);
        $mail->Subject = '网站验证';// 邮件标题
        $this->ver = $this->ver();
        $this->cookieData($this->ver);
        $mail->Body = '您的网站注册验证码验证码为:'.$this->ver.'请查收,注意: 60秒有效';// 邮件正文
        if(!$mail->send()){// 发送邮件
            // echo "Message could not be sent.";
            // echo "Mailer Error: ".$mail->ErrorInfo;// 输出错误信息
            echo '0';
        }else{
            echo '1';
        }
    }

    public function ver(){
        $num = '';
        for($i=0;$i<4;$i++){
            $num .= mt_rand(0,9);
        }
        return $num;
    }

    public function cookieData($ver)
    {
        Cookie::set('regCode',$ver,60);
    }
}