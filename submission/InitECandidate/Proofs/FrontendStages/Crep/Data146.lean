import InitECandidate.Proofs.FrontendStages.Crep.Translate130
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody146_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "u256_is_zero"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3]

def crepBody146_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody146_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody146_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.const 1#64)) crepBody146_1 crepBody146_2

def crepBody146_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20]

def crepBody146_5 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 1#64)) crepBody146_4 crepBody146_2

def crepBody146_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12])
  (Flapjack.CrepExp.const 0#64)) crepBody146_5 crepBody146_2

def crepBody146_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24]

def crepBody146_8 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 1#64)) crepBody146_7 crepBody146_2

def crepBody146_9 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16])
  (Flapjack.CrepExp.const 0#64)) crepBody146_8 crepBody146_2

def crepBody146_10 : CrepProg (BitVec 64) :=
.seq crepBody146_6 crepBody146_9

def crepBody146_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 25)

def crepBody146_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 26)

def crepBody146_13 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 27)

def crepBody146_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 28)

def crepBody146_15 : CrepProg (BitVec 64) :=
.seq crepBody146_14 crepBody146_2

def crepBody146_16 : CrepProg (BitVec 64) :=
.seq crepBody146_13 crepBody146_15

def crepBody146_17 : CrepProg (BitVec 64) :=
.seq crepBody146_12 crepBody146_16

def crepBody146_18 : CrepProg (BitVec 64) :=
.seq crepBody146_11 crepBody146_17

def crepBody146_19 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 1#64)) crepBody146_18

def crepBody146_20 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 1#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 12) (Flapjack.CrepExp.const 63#64)]) crepBody146_19

def crepBody146_21 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 1#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 11) (Flapjack.CrepExp.const 63#64)]) crepBody146_20

def crepBody146_22 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.const 1#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 63#64)]) crepBody146_21

def crepBody146_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17, 18, 19, 20], none)) "mod_half"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody146_24 : CrepProg (BitVec 64) :=
.seq crepBody146_22 crepBody146_23

def crepBody146_25 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)) crepBody146_24

def crepBody146_26 : CrepProg (BitVec 64) :=
.seq crepBody146_10 crepBody146_25

def crepBody146_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 25)

def crepBody146_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.var 26)

def crepBody146_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 15 (Flapjack.CrepExp.var 27)

def crepBody146_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 16 (Flapjack.CrepExp.var 28)

def crepBody146_31 : CrepProg (BitVec 64) :=
.seq crepBody146_30 crepBody146_2

def crepBody146_32 : CrepProg (BitVec 64) :=
.seq crepBody146_29 crepBody146_31

def crepBody146_33 : CrepProg (BitVec 64) :=
.seq crepBody146_28 crepBody146_32

def crepBody146_34 : CrepProg (BitVec 64) :=
.seq crepBody146_27 crepBody146_33

def crepBody146_35 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 1#64)) crepBody146_34

def crepBody146_36 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 1#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 16) (Flapjack.CrepExp.const 63#64)]) crepBody146_35

def crepBody146_37 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 1#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 15) (Flapjack.CrepExp.const 63#64)]) crepBody146_36

def crepBody146_38 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.or
  [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.const 1#64),
    Flapjack.CrepExp.shift Flapjack.Shift.lsl (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 63#64)]) crepBody146_37

def crepBody146_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21, 22, 23, 24], none)) "mod_half"
  [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody146_40 : CrepProg (BitVec 64) :=
.seq crepBody146_38 crepBody146_39

def crepBody146_41 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 0#64)) crepBody146_40

def crepBody146_42 : CrepProg (BitVec 64) :=
.seq crepBody146_26 crepBody146_41

def crepBody146_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25], none)) "u256_lt"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody146_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9, 10, 11, 12], none)) "u256_sub"
  [Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12,
    Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody146_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([17, 18, 19, 20], none)) "mod_sub"
  [Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody146_46 : CrepProg (BitVec 64) :=
.seq crepBody146_44 crepBody146_45

def crepBody146_47 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([13, 14, 15, 16], none)) "u256_sub"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12]

def crepBody146_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([21, 22, 23, 24], none)) "mod_sub"
  [Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 24,
    Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20,
    Flapjack.CrepExp.var 4, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7]

def crepBody146_49 : CrepProg (BitVec 64) :=
.seq crepBody146_47 crepBody146_48

def crepBody146_50 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 25) (Flapjack.CrepExp.const 0#64)) crepBody146_46 crepBody146_49

def crepBody146_51 : CrepProg (BitVec 64) :=
.seq crepBody146_43 crepBody146_50

def crepBody146_52 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody146_51

def crepBody146_53 : CrepProg (BitVec 64) :=
.seq crepBody146_42 crepBody146_52

def crepBody146_54 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.const 1#64) crepBody146_53

def crepBody146_55 : CrepProg (BitVec 64) :=
.seq crepBody146_54 crepBody146_1

def crepBody146_56 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.const 0#64) crepBody146_55

def crepBody146_57 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody146_56

def crepBody146_58 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody146_57

def crepBody146_59 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody146_58

def crepBody146_60 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody146_59

def crepBody146_61 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody146_60

def crepBody146_62 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody146_61

def crepBody146_63 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 1#64) crepBody146_62

def crepBody146_64 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.var 7) crepBody146_63

def crepBody146_65 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 6) crepBody146_64

def crepBody146_66 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 5) crepBody146_65

def crepBody146_67 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 4) crepBody146_66

def crepBody146_68 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.var 3) crepBody146_67

def crepBody146_69 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 2) crepBody146_68

def crepBody146_70 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 1) crepBody146_69

def crepBody146_71 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 0) crepBody146_70

def crepBody146_72 : CrepProg (BitVec 64) :=
.seq crepBody146_3 crepBody146_71

def crepBody146_73 : CrepProg (BitVec 64) :=
.seq crepBody146_0 crepBody146_72

def crepBody146_74 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody146_73

def data146 : CrepProg (BitVec 64) := crepBody146_74
def output146 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [109#8, 111#8, 100#8, 105#8, 110#8, 118#8, 95#8, 98#8, 105#8, 110#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data146)
end InitECandidate.Proofs.FrontendStages.Crep
