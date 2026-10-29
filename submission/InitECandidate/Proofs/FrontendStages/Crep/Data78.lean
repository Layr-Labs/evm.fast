import InitECandidate.Proofs.FrontendStages.Crep.Translate62
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody78_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody78_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody78_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notLower (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 256#64)) crepBody78_0 crepBody78_1

def crepBody78_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 8)

def crepBody78_4 : CrepProg (BitVec 64) :=
.seq crepBody78_3 crepBody78_1

def crepBody78_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 9)

def crepBody78_6 : CrepProg (BitVec 64) :=
.seq crepBody78_5 crepBody78_1

def crepBody78_7 : CrepProg (BitVec 64) :=
.seq crepBody78_4 crepBody78_6

def crepBody78_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 10)

def crepBody78_9 : CrepProg (BitVec 64) :=
.seq crepBody78_8 crepBody78_1

def crepBody78_10 : CrepProg (BitVec 64) :=
.seq crepBody78_7 crepBody78_9

def crepBody78_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.const 0#64)

def crepBody78_12 : CrepProg (BitVec 64) :=
.seq crepBody78_11 crepBody78_1

def crepBody78_13 : CrepProg (BitVec 64) :=
.seq crepBody78_10 crepBody78_12

def crepBody78_14 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 1#64)) crepBody78_13 crepBody78_1

def crepBody78_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 9)

def crepBody78_16 : CrepProg (BitVec 64) :=
.seq crepBody78_15 crepBody78_1

def crepBody78_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 10)

def crepBody78_18 : CrepProg (BitVec 64) :=
.seq crepBody78_17 crepBody78_1

def crepBody78_19 : CrepProg (BitVec 64) :=
.seq crepBody78_16 crepBody78_18

def crepBody78_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.const 0#64)

def crepBody78_21 : CrepProg (BitVec 64) :=
.seq crepBody78_20 crepBody78_1

def crepBody78_22 : CrepProg (BitVec 64) :=
.seq crepBody78_19 crepBody78_21

def crepBody78_23 : CrepProg (BitVec 64) :=
.seq crepBody78_22 crepBody78_12

def crepBody78_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 2#64)) crepBody78_23 crepBody78_1

def crepBody78_25 : CrepProg (BitVec 64) :=
.seq crepBody78_14 crepBody78_24

def crepBody78_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 10)

def crepBody78_27 : CrepProg (BitVec 64) :=
.seq crepBody78_26 crepBody78_1

def crepBody78_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.const 0#64)

def crepBody78_29 : CrepProg (BitVec 64) :=
.seq crepBody78_28 crepBody78_1

def crepBody78_30 : CrepProg (BitVec 64) :=
.seq crepBody78_27 crepBody78_29

def crepBody78_31 : CrepProg (BitVec 64) :=
.seq crepBody78_30 crepBody78_21

def crepBody78_32 : CrepProg (BitVec 64) :=
.seq crepBody78_31 crepBody78_12

def crepBody78_33 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.const 3#64)) crepBody78_32 crepBody78_1

def crepBody78_34 : CrepProg (BitVec 64) :=
.seq crepBody78_25 crepBody78_33

def crepBody78_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 11)

def crepBody78_36 : CrepProg (BitVec 64) :=
.seq crepBody78_35 crepBody78_1

def crepBody78_37 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 6),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 8)
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 64#64, Flapjack.CrepExp.var 6])]) crepBody78_36

def crepBody78_38 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 11)

def crepBody78_39 : CrepProg (BitVec 64) :=
.seq crepBody78_38 crepBody78_1

def crepBody78_40 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 6),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 9)
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 64#64, Flapjack.CrepExp.var 6])]) crepBody78_39

def crepBody78_41 : CrepProg (BitVec 64) :=
.seq crepBody78_37 crepBody78_40

def crepBody78_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 11)

def crepBody78_43 : CrepProg (BitVec 64) :=
.seq crepBody78_42 crepBody78_1

def crepBody78_44 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 6),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 10)
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.const 64#64, Flapjack.CrepExp.var 6])]) crepBody78_43

def crepBody78_45 : CrepProg (BitVec 64) :=
.seq crepBody78_41 crepBody78_44

def crepBody78_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 11)

def crepBody78_47 : CrepProg (BitVec 64) :=
.seq crepBody78_46 crepBody78_1

def crepBody78_48 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 6)) crepBody78_47

def crepBody78_49 : CrepProg (BitVec 64) :=
.seq crepBody78_45 crepBody78_48

def crepBody78_50 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.const 0#64)) crepBody78_49 crepBody78_1

def crepBody78_51 : CrepProg (BitVec 64) :=
.seq crepBody78_34 crepBody78_50

def crepBody78_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10]

def crepBody78_53 : CrepProg (BitVec 64) :=
.seq crepBody78_51 crepBody78_52

def crepBody78_54 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 3) crepBody78_53

def crepBody78_55 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 2) crepBody78_54

def crepBody78_56 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 1) crepBody78_55

def crepBody78_57 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 0) crepBody78_56

def crepBody78_58 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 63#64]) crepBody78_57

def crepBody78_59 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 6#64)) crepBody78_58

def crepBody78_60 : CrepProg (BitVec 64) :=
.seq crepBody78_2 crepBody78_59

def data78 : CrepProg (BitVec 64) := crepBody78_60
def output78 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 115#8, 104#8, 114#8], [0, 1, 2, 3, 4], crepProgToHOL data78)
end InitECandidate.Proofs.FrontendStages.Crep
