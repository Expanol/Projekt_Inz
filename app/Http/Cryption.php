<?php


namespace App\Http;


final class Cryption
{
    // Store the cipher method
    // https://www.php.net/manual/en/function.openssl-get-cipher-methods.php
    private $ciphering = "AES-128-CTR";

    private $options;
    // Use OpenSSl Encryption method
    private $iv_length ;

    // Non-NULL Initialization Vector for encryption
    private  $encryption_iv;

    public function __construct()
    {
        $this->iv_length = openssl_cipher_iv_length($this->ciphering);
        $this->encryption_iv = '1234567891011121';
        $this->options = 0;
    }


    // Use openssl_encrypt() function to encrypt the data
    public function encryption(string $data, string $encryptionKey)
    {
        return openssl_encrypt($data, $this->ciphering, $encryptionKey, $this->options, $this->encryption_iv);
    }

    public function decryption(string $data, string $decryptionKey)
    {
        return openssl_decrypt($data, $this->ciphering, $decryptionKey, $this->options, $this->encryption_iv);
    }
}
