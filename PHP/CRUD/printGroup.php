<?php
    // database connection
    include('../Config/config.php');
    include_once('../../LIBS/FPDF/fpdf.php');

    class PDF extends FPDF{
        // Page header
        function Header(){
            // Logo
            $this->Cell(50, 5, '', 0, 0);
            $this->Image('../../IMG/logo.png', 35, 5, 25);
            $this->SetFont('Arial','B',15);
            $this->Cell(140, 10, 'CENTRAL COLLEGES OF THE PHILIPPINES', 0, 1,);
            $this->Cell(70, 5, '', 0, 0);
            $this->Cell(120, 10, 'STUDENT INFORMATION', 0, 1,);
            $this->Ln(10);
        }

        // Page footer
        function Footer(){
            // Position at 1.5 cm from bottom
            $this->SetY(-15);

            $this->SetFont('Arial','',12);
            $this->Cell(0, 10, 'Page '.$this->PageNo(), 0, 0, 'C');
        }
    }


    $pdf = new PDF();

    $query = mysqli_query($conn, "SELECT * FROM `student-information`");

    function empt($input){
        if(empty($input)){
            $input = 'N/A';
            return $input;
        }else{
            return $input;
        }
    }

    while($data=mysqli_fetch_array($query)){
        $timestamp = strtotime($data['studentBirthdate']);
        $new_date = date("m-d-Y", $timestamp);
        $value = iconv('UTF-8', 'CP1250//TRANSLIT', $data['studentRemark']);

        $pdf->AddPage();

        $pdf->SetFont('Arial', 'B', 15);
        $pdf->Cell(190, 7, 'PERSONAL INFORMATION', 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(40, 7, 'STUDENT NUMBER', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(60, 7, ': '.$data['studentNumber'], 0 ,0);
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(20, 7, 'COURSE', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(70, 7, ': '.$data['studentCourse'], 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(15, 7, 'NAME', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(175, 7, ': '.$data['studentSurname'] . ', ' . $data['studentFirstName'] . ' ' . $data['studentMiddleInitial'] . '.', 0 ,1);        

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(25, 7, 'BIRTHDATE', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(75, 7, ': '.$new_date, 0 ,0);
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(20, 7, 'GENDER', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(70, 7, ': '.$data['studentGender'], 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(50, 7, 'CURRENT ADDRESS', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->MultiCell(140, 7, ': #'.$data['studentHouseNumber'] . ' ' . $data['studentStreet'] . ' ' . $data['studentSubdivision'] . ', ' . $data['studentBarangay'] . ' ' . $data['studentTown'] . ', ' . $data['studentDistrict'], 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(50, 7, 'PROVINCIAL ADDRESS', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->MultiCell(140, 7, ': #'.$data['studentProvincialHouseNumber'] . ' ' . $data['studentProvincialStreet'] . ' ' . $data['studentProvincialSubdivision'] . ', ' . $data['studentProvincialBarangay'] . ' ' . $data['studentProvincialTown'] . ', ' . $data['studentProvincialDistrict'], 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(50, 7, 'CONTACT NUMBER', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(50, 7, ': '.$data['studentContactNumber'], 0 ,0);
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(20, 7, 'EMAIL', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(70, 7, ': '.$data['studentEmail'], 0 ,1);

        
        $pdf->SetFont('Arial', '', 15);
        $pdf->Cell(190, 7, '------------------------------------------------------------------------------------------------------------', 0 ,1);
        $pdf->Ln(3);



        $pdf->SetFont('Arial', 'B', 15);
        $pdf->Cell(190, 7, 'GUARDIAN INFORMATION', 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(15, 7, 'NAME', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(175, 7, ': '.$data['guardianName'], 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(45, 7, 'CONTACT NUMBER', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(60, 7, ': '.$data['guardianContactNumber'], 0 , 1);


        $pdf->SetFont('Arial', '', 15);
        $pdf->Cell(190, 7, '------------------------------------------------------------------------------------------------------------', 0 ,1);
        $pdf->Ln(3);


        $pdf->SetFont('Arial', 'B', 15);
        $pdf->Cell(190, 7, 'EMPLOYMENT INFORMATION', 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(40, 7, 'COMPANY NAME', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(150, 7, ': '.empt($data['studentCompanyName']), 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(50, 7, 'COMPANY ADDRESS', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(140, 7, ': '.empt($data['studentCompanyAddress']), 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(55, 7, 'COMPANY CONTACT NO.', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(45, 7, ': '.empt($data['studentCompanyContactNumber']), 0 ,0);
        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(20, 7, 'POSITION', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(50, 7, ': '.empt($data['studentCompanyPosition']), 0 ,1);


        $pdf->SetFont('Arial', '', 15);
        $pdf->Cell(190, 7, '------------------------------------------------------------------------------------------------------------', 0 ,1);
        $pdf->Ln(3);



        $pdf->SetFont('Arial', 'B', 15);
        $pdf->Cell(190, 7, 'ADDITIONAL INFORMATION', 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(55, 7, 'HIGHSCHOOL ADDRESS', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(135, 7, ': '.empt($data['studentHighSchoolAddress']), 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(55, 7, 'SPONSOR', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->Cell(135, 7, ': '.empt($data['studentSponsor']), 0 ,1);

        $pdf->SetFont('Arial', 'B', 12);
        $pdf->Cell(55, 7, 'COLLEGE REMARK', 0 ,0);
        $pdf->SetFont('Arial', '', 12);
        $pdf->MultiCell(135, 7, ': '.empt($value), 0 ,1);
    }

    $pdf->Output('D', 'StudentInformation_Full_List.pdf');
    exit;
?>