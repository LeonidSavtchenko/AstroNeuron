#include <stdio.h>
#include "hocdec.h"
extern int nrnmpi_myid;
extern int nrn_nobanner_;

extern void _CAl_reg(void);
extern void _IP3Time_reg(void);
extern void _Isin_reg(void);
extern void _Kir_reg(void);
extern void _cadifus_reg(void);
extern void _gapCaSt_reg(void);
extern void _kdrglia_reg(void);
extern void _reporter_reg(void);
extern void _reporterCa_reg(void);

void modl_reg(){
  if (!nrn_nobanner_) if (nrnmpi_myid < 1) {
    fprintf(stderr, "Additional mechanisms from files\n");

    fprintf(stderr," model/CAl.mod");
    fprintf(stderr," model/IP3Time.mod");
    fprintf(stderr," model/Isin.mod");
    fprintf(stderr," model/Kir.mod");
    fprintf(stderr," model/cadifus.mod");
    fprintf(stderr," model/gapCaSt.mod");
    fprintf(stderr," model/kdrglia.mod");
    fprintf(stderr," model/reporter.mod");
    fprintf(stderr," model/reporterCa.mod");
    fprintf(stderr, "\n");
  }
  _CAl_reg();
  _IP3Time_reg();
  _Isin_reg();
  _Kir_reg();
  _cadifus_reg();
  _gapCaSt_reg();
  _kdrglia_reg();
  _reporter_reg();
  _reporterCa_reg();
}
