1) Download data from NCBI-SRA

ERX535560 adult      ERR577157 ad2   
ERX535563 adult      ERR577160 ad3 
ERX535561 egg       ERR577158	egg2 
ERX535360 egg       ERR576954    egg1 
ERX535363 juvenile    ERR576957    juv1 
ERX535362 juvenile     ERR576956    juv1 
ERX535371 metacercaria   ERR576965   met0hr_3 
ERX535370 metacerc.   ERR576964    met0hr_2 


prefetch ERR....
fastq-dump -I --split-3 ERR....

2) Quality control

fastqc --noextract ERR....fastq

3) Trimming

java -jar ./Trimmomatic-0.36/trimmomatic-0.36.jar PE -threads 8 ERR..._1.fastq ERR..._2.fastq -baseout ./trim/ERR..._filtered.fastq ILLUMINACLIP:TruSeq3-PE-2.fa:2:30:10:7 LEADING:3 TRAILING:3 MAXINFO:25:0.4 MINLEN:25

4) Quality control

fastqc --noextract ERR....fastq
