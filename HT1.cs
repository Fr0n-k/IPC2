  using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _IPC2_HT1_201504325
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Funcion1_Click(object sender, EventArgs e)
        {
            double ladoa = 0;
            double ladob = 0;
            double ladoc = 0;

            ladoa = Int32.Parse(Input1.Text);
            ladob = Int32.Parse(Input2.Text);

            ladoc = Math.Sqrt(Math.Pow(ladoa, 2) + Math.Pow(ladob, 2));

            Input3.Text = ladoc.ToString();
        }

        private void Funcion2_Click(object sender, EventArgs e)
        {
            string palabra = "";
            bool haya = false;
            bool haye = false;
            bool hayi = false;
            bool hayo = false;
            bool hayu = false;

            palabra = Input1.Text;

            for(int posicion=0; posicion < palabra.Length; posicion++)
            {
                if((palabra[posicion]=='a' || palabra[posicion] == 'á') && !haya)
                {
                    haya = true;
                }
                else if ((palabra[posicion] == 'e' || palabra[posicion] == 'é') && !haye)
                {
                    haye = true;
                }
                else if ((palabra[posicion] == 'i' || palabra[posicion] == 'í') && !hayi)
                {
                    hayi = true;
                }
                else if ((palabra[posicion] == 'o' || palabra[posicion] == 'ó') && !hayo)
                {
                    hayo = true;
                }
                else if ((palabra[posicion] == 'u' || palabra[posicion] == 'ú') && !hayu)
                {
                    hayu = true;
                }
            }

            if(haya && haye && hayi && hayo && hayu)
            {
                Input2.Text = "CUMPLE";
            } else
            {
                Input3.Text = "NO CUMPLE";

            }
        }

        private void Funcion3_Click(object sender, EventArgs e)
        {
            char[] nombre;
            char[] apellido;
            char[] carnet;
            string inapellido = "";
            string innombre = "";
            string incarnet = "";

            nombre = Input1.Text.ToCharArray();
            apellido = Input2.Text.ToCharArray();
            carnet = Input3.Text.ToCharArray();

            for(int posicion = 0; posicion < nombre.Length; posicion++)
            {
                innombre = innombre + nombre[nombre.Length - (posicion + 1)];
            }

            for (int posicion = 0; posicion < apellido.Length; posicion++)
            {
                inapellido = inapellido + apellido[apellido.Length - (posicion + 1)];
            }

            for (int posicion = 0; posicion < carnet.Length; posicion++)
            {
                incarnet = incarnet + carnet[carnet.Length - (posicion + 1)];
            }

            Input1.Text = innombre;
            Input2.Text = inapellido;
            Input3.Text = incarnet;
        }

        private void Funcion4_Click(object sender, EventArgs e)
        {
            int valora = 0;
            int valorb = 0;
            int resa = 0;
            int resb = 0;

            valora = Int32.Parse(Input1.Text);
            resa = Int32.Parse(Input2.Text);
            valorb = Int32.Parse(Input3.Text);

            resb = (resa * valorb) / valora;

            MessageBox.Show(Input1.Text + " es a " + Input2.Text + "como " + Input3.Text + " es a" + resb.ToString());
            MessageBox.Show("El resultado es " + resb.ToString());
        }
    }
}
