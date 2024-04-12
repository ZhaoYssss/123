<script setup>

</script>

<template>
  <div class="payment-qr-code">
    <h1>微信支付</h1>
    <img :src="qrCodeImage" alt="微信支付二维码" />
  </div>
</template>

<script>
export default {
  data() {
    return {
      qrCodeImage: 'your-weixin-qr-code.png' // 替换为你的微信支付二维码图片路径
    };
  }
};
</script>

<style>
.payment-qr-code {
  text-align: center;
  padding: 20px;
}

.payment-qr-code img {
  width: 200px; /* 或者你想要的尺寸 */
  height: auto;
}
</style>