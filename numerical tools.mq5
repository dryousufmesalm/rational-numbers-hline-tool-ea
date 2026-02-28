//+------------------------------------------------------------------+
//|                                            numerical tools.mq5 |
//|                                    Copyright 2025, Yousuf Mesalm. |
//|  www.yousufmesalm.com | WhatsApp +201006179048 | Upwork: https://www.upwork.com/freelancers/youssefmesalm |
//+------------------------------------------------------------------+
#property copyright "Copyright 2025, Yousuf Mesalm. www.yousufmesalm.com | WhatsApp +201006179048"
#property link      "https://www.yousufmesalm.com"
#property version   "1.00"
#include <ChartObjects/ChartObjectsLines.mqh>
//+------------------------------------------------------------------+
//|  www.yousufmesalm.com | WhatsApp +201006179048 | Upwork: https://www.upwork.com/freelancers/youssefmesalm |
//+------------------------------------------------------------------+
CChartObjectHLine Hline;
int OnInit()
  {
//---
   
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//|  www.yousufmesalm.com | WhatsApp +201006179048 | Upwork: https://www.upwork.com/freelancers/youssefmesalm |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//|  www.yousufmesalm.com | WhatsApp +201006179048 | Upwork: https://www.upwork.com/freelancers/youssefmesalm |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   
  }
//+------------------------------------------------------------------+
//+------------------------------------------------------------------+
void RationalNumbers(int num, int n, double& arr[])
  {
   ArrayResize(arr, n, n);
   for(int i = 1; i <= n; i++)
     {
      double result = ((double)num / (double) i) * 10000;
      arr[i - 1] = result;
      CreateHline(Hline, "Hline" + (string) i, result);
     }
  }
//+------------------------------------------------------------------+
bool CreateHline(CChartObjectHLine &line, string name, double price)
  {
   if(!line.Create(0, name, 0, price))
     {
      return false;
     }
   return true;
  }