import React, { useEffect } from 'react';
import { Link } from 'react-router-dom';
import './HomePage.css';

const HomePage = () => {
    useEffect(() => {
        const link = document.createElement('link');
        link.href = 'https://fonts.googleapis.com/css2?family=Mitr:wght@200;300;400;500;600;700&display=swap';
        link.rel = 'stylesheet';
        document.head.appendChild(link);
    }, []);

    return (
        <div className="container">
            <section className="content">
                <div className="text">
                    <h1>
                        <div>มหาวิทยาลัยนเรศวร</div>
                        <div><span className="naresuan-university">Naresuan University</span></div>
                    </h1>
                    <p>
                        สหกิจศึกษา การจัดทำฐานข้อมูลเชิงพื้นที่และพัฒนาเว็บเเผนที่ออนไลน์มหาวิทยาลัยนเรศวร โปรเจคการพัฒนาและจัดทำฐานข้อมูลสนับสนุนมหาวิทยาลัยนเรศวรใช้เทคโนโลยีทางด้าน GIS เข้ามาช่วยโดยใช้ QField ในการเก็บข้อมูลและใช้โปรแกรม QGIS เป็นตัวจัดการฐานข้อมูล
                    </p>
                    <div className="social-icons">
                        <p style={{ fontSize: '18px' }}>ติดต่อเรา</p>
                        <p style={{ fontSize: '14px' }}>เบอร์ติดต่อ : 055-968-707</p>
                        <p style={{ fontSize: '14px' }}>อีเมล์ : gistnu@gmail.com</p>
                        <p style={{ fontSize: '14px' }}>ตำแหน่งที่ตั้ง : อาคารสำนักงานชั่วคราว CE617 ชั้น 6 อาคารภาควิชาวิศวกรรมโยธา คณะวิศวกรรมศาสตร์ มหาวิทยาลัยนเรศวร ตำบลท่าโพธิ์ อำเภอเมืองพิษณุโลก จังหวัดพิษณุโลก 65000 (ชั่วคราว)</p>
                        <a href="https://www.mapportal.nu.ac.th/gistnu_portal/home" target="_blank" rel="noreferrer">
                            <img src="/assets/WWW.png" alt="Website Icon" width="50" />
                        </a>
                        <a href="https://www.facebook.com/Gistlnnu" target="_blank" rel="noreferrer">
                            <img src="/assets/Facebook.png" alt="Facebook Icon" width="50" />
                        </a>
                        <a href="https://www.youtube.com/channel/UC_cfy-FMq-erNX7kR9Q2WUA" target="_blank" rel="noreferrer">
                            <img src="/assets/youtube.png" alt="YouTube Icon" width="60" />
                        </a>
                    </div>
                </div>
                <div className="profile-image">
                    <a href="/map">
                        <img src="/assets/home5.png" alt="Profile Image" />
                    </a>
                </div>
            </section>
        </div>
    );
};

export default HomePage;
