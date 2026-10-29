import InitECandidate.Proofs.FrontendStages.Crep.Translate61
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody77_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody77_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody77_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 256#64)) crepBody77_0 crepBody77_1

def crepBody77_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 9)

def crepBody77_4 : CrepProg (BitVec 64) :=
.seq crepBody77_3 crepBody77_1

def crepBody77_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 8)

def crepBody77_6 : CrepProg (BitVec 64) :=
.seq crepBody77_5 crepBody77_1

def crepBody77_7 : CrepProg (BitVec 64) :=
.seq crepBody77_4 crepBody77_6

def crepBody77_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 7)

def crepBody77_9 : CrepProg (BitVec 64) :=
.seq crepBody77_8 crepBody77_1

def crepBody77_10 : CrepProg (BitVec 64) :=
.seq crepBody77_7 crepBody77_9

def crepBody77_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.const 0#64)

def crepBody77_12 : CrepProg (BitVec 64) :=
.seq crepBody77_11 crepBody77_1

def crepBody77_13 : CrepProg (BitVec 64) :=
.seq crepBody77_10 crepBody77_12

def crepBody77_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1#64)) crepBody77_13 crepBody77_1

def crepBody77_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 8)

def crepBody77_16 : CrepProg (BitVec 64) :=
.seq crepBody77_15 crepBody77_1

def crepBody77_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 7)

def crepBody77_18 : CrepProg (BitVec 64) :=
.seq crepBody77_17 crepBody77_1

def crepBody77_19 : CrepProg (BitVec 64) :=
.seq crepBody77_16 crepBody77_18

def crepBody77_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.const 0#64)

def crepBody77_21 : CrepProg (BitVec 64) :=
.seq crepBody77_20 crepBody77_1

def crepBody77_22 : CrepProg (BitVec 64) :=
.seq crepBody77_19 crepBody77_21

def crepBody77_23 : CrepProg (BitVec 64) :=
.seq crepBody77_22 crepBody77_12

def crepBody77_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 2#64)) crepBody77_23 crepBody77_1

def crepBody77_25 : CrepProg (BitVec 64) :=
.seq crepBody77_14 crepBody77_24

def crepBody77_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 7)

def crepBody77_27 : CrepProg (BitVec 64) :=
.seq crepBody77_26 crepBody77_1

def crepBody77_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.const 0#64)

def crepBody77_29 : CrepProg (BitVec 64) :=
.seq crepBody77_28 crepBody77_1

def crepBody77_30 : CrepProg (BitVec 64) :=
.seq crepBody77_27 crepBody77_29

def crepBody77_31 : CrepProg (BitVec 64) :=
.seq crepBody77_30 crepBody77_21

def crepBody77_32 : CrepProg (BitVec 64) :=
.seq crepBody77_31 crepBody77_12

def crepBody77_33 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 3#64)) crepBody77_32 crepBody77_1

def crepBody77_34 : CrepProg (BitVec 64) :=
.seq crepBody77_25 crepBody77_33

def crepBody77_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 11)

def crepBody77_36 : CrepProg (BitVec 64) :=
.seq crepBody77_35 crepBody77_1

def crepBody77_37 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 6),
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9)
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 64#64, Flapjack.CrepExp.var 6])]) crepBody77_36

def crepBody77_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 11)

def crepBody77_39 : CrepProg (BitVec 64) :=
.seq crepBody77_38 crepBody77_1

def crepBody77_40 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 6),
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8)
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 64#64, Flapjack.CrepExp.var 6])]) crepBody77_39

def crepBody77_41 : CrepProg (BitVec 64) :=
.seq crepBody77_37 crepBody77_40

def crepBody77_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 11)

def crepBody77_43 : CrepProg (BitVec 64) :=
.seq crepBody77_42 crepBody77_1

def crepBody77_44 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 6),
    Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7)
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 64#64, Flapjack.CrepExp.var 6])]) crepBody77_43

def crepBody77_45 : CrepProg (BitVec 64) :=
.seq crepBody77_41 crepBody77_44

def crepBody77_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 11)

def crepBody77_47 : CrepProg (BitVec 64) :=
.seq crepBody77_46 crepBody77_1

def crepBody77_48 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 6)) crepBody77_47

def crepBody77_49 : CrepProg (BitVec 64) :=
.seq crepBody77_45 crepBody77_48

def crepBody77_50 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody77_49 crepBody77_1

def crepBody77_51 : CrepProg (BitVec 64) :=
.seq crepBody77_34 crepBody77_50

def crepBody77_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody77_53 : CrepProg (BitVec 64) :=
.seq crepBody77_51 crepBody77_52

def crepBody77_54 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 3) crepBody77_53

def crepBody77_55 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 2) crepBody77_54

def crepBody77_56 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 1) crepBody77_55

def crepBody77_57 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 0) crepBody77_56

def crepBody77_58 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 63#64]) crepBody77_57

def crepBody77_59 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 6#64)) crepBody77_58

def crepBody77_60 : CrepProg (BitVec 64) :=
.seq crepBody77_2 crepBody77_59

def data77 : CrepProg (BitVec 64) := crepBody77_60
def output77 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 104#8, 108#8], [0, 1, 2, 3, 4], crepProgToHOL data77)
end InitECandidate.Proofs.FrontendStages.Crep
