#include<stdio.h>
#include<iostream>
#include<windows.h>
#include<conio.h>
using namespace std;

//fungsi warna
void setcolor(unsigned short color)
{
HANDLE cc = GetStdHandle(STD_OUTPUT_HANDLE);

SetConsoleTextAttribute(cc,color);
}


main() {
awal :	

	system("cls"); //pengatur untuk menghapus layar
	
	//deklarasi
	int bil1, bil2, hasil, kode, c, max, operasi;
	
	//nama program
	setcolor(10);
	cout<<"================================================================================="<< endl;
	printf("=========               ");
	setcolor(9);
	printf("[KALKULATOR BCD DECODER 7 SEGMENT]");
	setcolor(10);
	printf("              =========\n");
	//opsi kalkulator
	cout<<"===============+============+============+==========+==========+================="<< endl;
	printf("=============  |  ");
	setcolor(9);
	printf("1:Tambah");
	setcolor(10);
	printf("  |  ");
	setcolor(9);
	printf("2:Kurang");
	setcolor(10);
	printf("  |  ");
	setcolor(9);
	printf("3:Kali");
	setcolor(10);
	printf("  |  ");
	setcolor(9);
	printf("4:Bagi");
	setcolor(10);
	printf("  |  ===============\n");
	cout<<"===============+============+============+==========+==========+=================\n"<< endl;
	setcolor(6);
	printf("                Pilihlah operasi yang anda inginkan (1-4) = "); scanf("%d", &operasi);
	
	//proses operasi, menampilkan pengoperasian, serta menampilkan hasilnya
	if(operasi >0 && operasi <=4) {
		switch (operasi) {
			case 1 :
				//inputan user
				setcolor(2);
				cout<<"=================================================================================\n"<< endl;
				setcolor(7);
	            printf("                       Masukkan Bilangan Pertama = "); scanf("%d", &bil1);
				printf("                       Masukkan Bilangan Kedua   = "); scanf("%d", &bil2);
				setcolor(2);
				cout<<"\n================================================================================="<< endl;
				//hasil operasi
				hasil = bil1+bil2; 
				if(hasil<=10000){
					setcolor(6);
					printf("                       Hasil Penjumlahan %d + %d = %d",bil1,bil2, hasil);
				}
				else{
					setcolor(6);
					printf("                       Hasil Pembagian %d + %d = Nilai(?)",bil1,bil2);
				}
				setcolor(2);
				cout<<"\n=================================================================================\n\n"<< endl;
				break;

			case 2 :
				//inputan user
				setcolor(2);
				cout<<"=================================================================================\n"<< endl;
				setcolor(7);
				printf("                       Masukkan Bilangan Pertama = "); scanf("%d", &bil1);
				printf("                       Masukkan Bilangan Kedua   = "); scanf("%d", &bil2);
				setcolor(2);
				cout<<"\n================================================================================="<< endl;
				//hasil operasi
				hasil = bil1-bil2;
				if(hasil<=10000){
					setcolor(6);
					printf("                       Hasil Pengurangan %d - %d = %d",bil1, bil2, hasil);	
				}
				else{
					setcolor(6);
					printf("                       Hasil Pembagian %d - %d = Nilai(?)",bil1,bil2);
				}
				setcolor(2);
				cout<<"\n=================================================================================\n"<< endl;
				break;

			case 3 :
				//inputan user
				setcolor(2);
				cout<<"=================================================================================\n"<< endl;
				setcolor(7);
				printf("                       Masukkan Bilangan Pertama = "); scanf("%d", &bil1);
				printf("                       Masukkan Bilangan Kedua   = "); scanf("%d", &bil2);
				setcolor(2);
				cout<<"\n================================================================================="<< endl;
				//hasil operasi
				hasil = bil1*bil2;
				if(hasil<=10000){
					setcolor(6);
					printf("                       Hasil Perkalian %d x %d = %d",bil1, bil2, hasil);	
				}
				else{
					setcolor(6);
					printf("                       Hasil Pembagian %d x %d = Nilai(?)",bil1,bil2);
				}
				setcolor(2);
				cout<<"\n=================================================================================\n"<< endl;
				break;

			case 4 :
				//inputan user
				setcolor(2);
				cout<<"=================================================================================\n"<< endl;
				setcolor(7);
				printf("                       Masukkan Bilangan Pertama = "); scanf("%d", &bil1);
				printf("                       Masukkan Bilangan Kedua   = "); scanf("%d", &bil2);
				setcolor(2);
				cout<<"\n================================================================================="<< endl;
				//hasil operasi
				hasil = bil1/bil2;
				if(hasil<=10000){
					setcolor(6);
				 	printf("                       Hasil Pembagian %d / %d = %d",bil1, bil2, hasil);	
				}
				else{
					setcolor(6);
					printf("                       Hasil Pembagian %d / %d = Nilai(?)",bil1,bil2);
				}
				setcolor(2);
				cout<<"\n=================================================================================\n"<< endl;
				break;
		}

		//case bil 1
		if(hasil<=10000){
			setcolor(7);
			printf("\n       Kode BCD Bilangan 1 = ");
			for(max=10000; max>0; max/=10) {
				kode=bil1/max;
				c=kode*max;
				bil1=bil1-c;
	
				switch (kode) {
					case 0:
						printf("[abcdef] ");
						break;
	
					case 1:
						printf("[bc]     ");
						break;
	
					case 2:
						printf("[abged]  ");
						break;
	
					case 3:
						printf("[abgcd]  ");
						break;
	
					case 4:
						printf("[fbgc]   ");
						break;
	
					case 5:
						printf("[afgcd]  ");
						break;
	
					case 6:
						printf("[fgcde]  ");
						break;
	
					case 7:
						printf("[abc]    ");
						break;
	
					case 8:
						printf("[abcdefg]");
						break;
	
					case 9:
						printf("[abcdfg] ");
						break;
	
					default :
						printf("[Error]");
						break;
				}
			}
		}
		else{
			setcolor(7);
			printf("\n       Kode BCD Bilangan 1 = Melampaui nilai batasan maksimum (10.000)");
		}


		//case bil 2
		if(hasil<=10000){
			setcolor(7);
			printf("\n       Kode BCD Bilangan 2 = ");
			for(max=10000; max>0; max/=10) {
				kode=bil2/max;
				c=kode*max;
				bil2=bil2-c;
	
				switch (kode) {
					case 0:
						printf("[abcdef] ");
						break;
	
					case 1:
						printf("[bc]     ");
						break;
	
					case 2:
						printf("[abged]  ");
						break;
	
					case 3:
						printf("[abgcd]  ");
						break;
	
					case 4:
						printf("[fbgc]   ");
						break;
	
					case 5:
						printf("[afgcd]  ");
						break;
	
					case 6:
						printf("[fgcde]  ");
						break;
	
					case 7:
						printf("[abc]    ");
						break;
	
					case 8:
						printf("[abcdefg]");
						break;
	
					case 9:
						printf("[abcdfg] ");
						break;
	
					default :
						printf("[Error]");
						break;
				}
			}
		}
		else{
			setcolor(7);
			printf("\n       Kode BCD Bilangan 2 = Melampaui nilai batasan maksimum (10.000)");
		}


		//case hasil
		if(hasil<=10000){
			setcolor(6);
			printf("\n       Hasil Komputasi BCD = ");
			for(max=10000; max>0; max/=10) {
				kode=hasil/max;
				c=kode*max;
				hasil=hasil-c;
	
				switch (kode) {
					case 0:
						printf("[abcdef] ");
						break;
	
					case 1:
						printf("[bc]     ");
						break;
	
					case 2:
						printf("[abged]  ");
						break;
	
					case 3:
						printf("[abgcd]  ");
						break;
	
					case 4:
						printf("[fbgc]   ");
						break;
	
					case 5:
						printf("[afgcd]  ");
						break;
	
					case 6:
						printf("[fgcde]  ");
						break;
	
					case 7:
						printf("[abc]    ");
						break;
	
					case 8:
						printf("[abcdefg]");
						break;
	
					case 9:
						printf("[abcdfg] ");
						break;
	
					default :
						printf("[Error]");
						break;
				}	
			}
		}
		else{
			setcolor(6);
			printf("\n       Hasil Komputasi BCD = Melampaui nilai batasan maksimum (10.000)");
		}
		
		setcolor(2);
		cout<<"\n=================================================================================\n"<< endl;
		//pemindah instruksi menuju label end
		goto end;
		
	} else {
		setcolor(2);
		cout<<"\n================================================================================="<< endl;
		setcolor(7);
		cout<<"           Terjadi kesalahan saat memilih menu, harap coba lagi...."<< endl;
    	setcolor(2);
		cout<<"=================================================================================\n"<< endl;
	}

end :
	setcolor(9);
	cout<<"                 - Silahkan [Enter] untuk mengulang program -"<< endl;
	getch();
	goto awal; //pemindah instruksi menuju label awal

}
