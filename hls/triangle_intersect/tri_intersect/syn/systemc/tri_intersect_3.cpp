#include "tri_intersect.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void tri_intersect::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ins_TDATA\" :  \"" << ins_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ins_TVALID\" :  \"" << ins_TVALID.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"ins_TREADY\" :  \"" << ins_TREADY.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ins_TKEEP\" :  \"" << ins_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ins_TSTRB\" :  \"" << ins_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ins_TUSER\" :  \"" << ins_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ins_TLAST\" :  \"" << ins_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ins_TID\" :  \"" << ins_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ins_TDEST\" :  \"" << ins_TDEST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outs_TDATA\" :  \"" << outs_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outs_TVALID\" :  \"" << outs_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"outs_TREADY\" :  \"" << outs_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outs_TKEEP\" :  \"" << outs_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outs_TSTRB\" :  \"" << outs_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outs_TUSER\" :  \"" << outs_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outs_TLAST\" :  \"" << outs_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outs_TID\" :  \"" << outs_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"outs_TDEST\" :  \"" << outs_TDEST.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

