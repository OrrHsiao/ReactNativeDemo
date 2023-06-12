# ReactNativeDemo

复现步骤 
 1. 打开demo , 运行iOS程序 .
 2. 点击"push"按钮,跳转到到RN页面 . 
 3.点击 " jump hello word ",跳转到Page1 组件页面.
 4.点击导航栏返回箭头"<" 关闭RN页面. 此时观察 XATestView 并未执行 dealloc 函数.

Repeat step
1. Open demo and run iOS programs.
2. Click the "push" button to jump to the RN page.
3. Click "jump hello word" to go to the Page1 component page.
4. Click on the navigation bar return arrow "<" Close the RN page. Observe that XATestView does not execute the dealloc function.
