<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swapna's AWS DevOps Institute</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #121212;
            color: #ddd;
            line-height: 1.6;
            overflow-x: hidden;
            position: relative;
        }

        /* Bubbles Animation */
        .bubbles {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            overflow: hidden;
        }

        .bubble {
            position: absolute;
            bottom: -100px;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            animation: rise 10s infinite ease-in-out;
            opacity: 0.5;
        }

        /* Different bubble sizes */
        .bubble:nth-child(2) { width: 20px; height: 20px; animation-duration: 8s; left: 20%; }
        .bubble:nth-child(3) { width: 60px; height: 60px; animation-duration: 12s; left: 40%; }
        .bubble:nth-child(4) { width: 80px; height: 80px; animation-duration: 9s; left: 60%; }
        .bubble:nth-child(5) { width: 100px; height: 100px; animation-duration: 11s; left: 80%; }

        @keyframes rise {
            0% {
                transform: translateY(0);
                opacity: 0;
            }
            50% {
                opacity: 0.7;
            }
            100% {
                transform: translateY(-1000px);
                opacity: 0;
            }
        }

        /* Navbar */
        nav {
            background-color: #1e1e1e;
            color: #fff;
            padding: 15px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: fixed;
            width: 100%;
            z-index: 1000;
            transition: background-color 0.5s;
        }

        nav .logo {
            font-size: 24px;
            font-weight: bold;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 20px;
        }

        nav ul li {
            display: inline;
        }

        nav ul li a {
            color: #fff;
            text-decoration: none;
            padding: 5px 10px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        nav ul li a:hover {
            background-color: #555;
        }

        /* Hero Section */
        .hero {
            background: url('https://source.unsplash.com/random/1600x900?cloud,technology') no-repeat center center/cover;
            height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: #fff;
            text-align: center;
            padding: 0 20px;
            position: relative;
            z-index: 1;
        }

        .hero h1 {
            font-size: 50px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
            animation: heroTextAnimation 5s infinite alternate ease-in-out;
        }

        .hero p {
            font-size: 20px;
            margin-bottom: 30px;
            animation: fadeIn 2s ease-in-out;
        }

        .hero button {
            padding: 15px 30px;
            font-size: 18px;
            border: none;
            background-color: #e94560;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
            animation: bounce 2s infinite;
        }

        .hero button:hover {
            background-color: #f25f78;
        }

        /* Keyframes */
        @keyframes heroTextAnimation {
            0% { transform: scale(1); }
            100% { transform: scale(1.05); }
        }

        @keyframes fadeIn {
            0% { opacity: 0; }
            100% { opacity: 1; }
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-10px); }
        }

        /* Other sections... */
        
        /* Course Section */
        .courses {
            padding: 100px 20px;
            background-color: #282828;
            color: #fff;
        }

        .courses h2 {
            text-align: center;
            font-size: 36px;
            margin-bottom: 50px;
        }

        .courses .course-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
        }

        .courses .course-item {
            background-color: #444;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
            opacity: 0;
            animation: slideIn 0.5s forwards;
        }

        .courses .course-item:nth-child(2) {
            animation-delay: 0.2s;
        }

        .courses .course-item:nth-child(3) {
            animation-delay: 0.4s;
        }

        .courses .course-item:hover {
            transform: translateY(-10px);
        }

        .courses .course-item h3 {
            font-size: 24px;
            margin-bottom: 15px;
        }

        .courses .course-item p {
            font-size: 16px;
            margin-bottom: 15px;
        }

        .courses .course-item button {
            padding: 10px 20px;
            font-size: 16px;
            border: none;
            background-color: #e94560;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .courses .course-item button:hover {
            background-color: #f25f78;
        }

        /* Slide-in animation */
        @keyframes slideIn {
            0% { transform: translateX(-100%); opacity: 0; }
            100% { transform: translateX(0); opacity: 1; }
        }

        /* Other sections... */
    </style>
</head>
<body>

    <div class="bubbles">
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
        <div class="bubble"></div>
    </div>

    <nav>
        <div class="logo">Welcome</div>
        <ul>
            <li><a href="#hero">Home</a></li>
            <li><a href="#courses">Courses</a></li>
            <li><a href="#testimonials">Testimonials</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </nav>

    <section id="hero" class="hero">
        <h1>Pavan's AWS DevOps Institute</h1>
        <p>Master AWS and DevOps skills with our expert-led courses and certifications.</p>
        <button id="getStartedBtn">Get Started</button>
    </section>

    <section id="courses" class="courses">
        <h2>Our Courses</h2>
        <div class="course-grid">
            <div class="course-item">
                <h3>AWS Certified Solutions Architect</h3>
                <p>Learn how to design, deploy, and operate secure and robust applications on AWS.</p>
                <button>Enroll Now</button>
            </div>
            <div class="course-item">
                <h3>DevOps Engineering on AWS</h3>
                <p>Master the skills needed to develop, deploy, and maintain applications on AWS.</p>
                <button>Enroll Now</button>
            </div>
            <div class="course-item">
                <h3>AWS Certified Developer</h3>
                <p>Gain deep knowledge of the core AWS services and learn how to create applications on the AWS platform.</p>
                <button>Enroll Now</button>
            </div>
            <div class="course-item">
                <h3>AWS Certified SysOps Administrator</h3>
                <p>Learn how to deploy, manage, and operate scalable, highly available, and fault-tolerant systems on AWS.</p>
                <button>Enroll Now</button>
            </div>
        </div>
    </section>

</body>
</html>
