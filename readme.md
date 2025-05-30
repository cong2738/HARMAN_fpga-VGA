# fpga_VGA

![vga_port](vga_port.png)<br/>

## study

### Analog display VGA
**VGA는 아날로그 비디오 입출력 표준 인터페이스이며 LGB를 전압값으로 송/수신한다.**
- desplay time: 화면을 출력해 나가는 시간
- retrace time: 화면(한줄을) 표기하고 화면에 아무것도 안나오는 비는 시간(공간) => sync + porch
- porch: display전의 여유 시간(공간)(출력이 안됨)
- H-SYNC: (좌우)한줄 시작, 완료를 알리는 신호
- V-SYNC: 수직 완료, 시작 신호(화면 한 프레임 완료를 알리는것)<br/>

![VGA_Braun](image.png)<br/>
![alt text](image-3.png)<br/>
![alt text](image-1.png)<br/>
![alt text](image-2.png)<br/>
![alt text](image-4.png)<br/>


### VGA At Digital Display
- VGA가 연결된 디지털모니터는 위의 과정을 버퍼에 넣어뒀다가 한프레임을 한번에 리프레시

### 덤
basys3 보드의 색상 채현률은 RGB 4비트씩 4096가지 색상을 표현 가능하다. 명암(색심도) 기능은 없다.<br/>
- basys3의 DA(Digital to Analog cricuit)<br/>
![basys3 vga](image-6.png)<br/>



## develop
### vga<br/>
![alt text](image-2.png)<br/>
![alt text](image-4.png)<br/>
![VGA_industry_standard_timing](image-5.png)<br/>
_  _  _

#### 2025-05-28 VGA_RGB_Switch
- circuit block design<br/>
![VGA_industry_standard_timing](20250528.drawio.png)<br/>
- pixelCounter timing <br/>
![VGA_industry_standard_timing](20250528_wavedrom.png)<br/>
- circuit<br/>
![alt text](image-7.png)<br/>

#### 2025-05-29 VGA_ROM
- rom size: QVGA(320*240)
    - VGA is too big for basys3 board 컸다.
- circuit block design<br/>
![VGA_industry_standard_timing](20250529_VGA_memory.drawio.png)<br/>
- - - 
### CAM(OV7670)
![OV7670 block diagram](20250530_OV7670.drawio.png)<br/>
![OV7670 sccb timing diagram](image-8.png)<br/>
![OV7670 Horizontal daigram](image-9.png)<br/>
![OV7670 Vertical daigram](image-10.png)<br/>
![OV7670 RGB 565 Output Timing Daigram](image-11.png)<br/>
#### 2025-05-29 VGA_CAM
- block diagram<br/>
![OV7670 block diagram](20250530_OV7670.drawio.png)<br/>
![OV7670_buffer block diagram](OV7670_buffer_FSM_Diagram.png)<br/>

