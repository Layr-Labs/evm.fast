import InitECandidate.Proofs.FrontendStages.Crep.Translate150
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody166_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13, 14], none)) "u256_add_carry"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3,
    Flapjack.CrepExp.const 13822214165235122497#64, Flapjack.CrepExp.const 13451932020343611451#64,
    Flapjack.CrepExp.const 18446744073709551614#64, Flapjack.CrepExp.const 18446744073709551615#64]

def crepBody166_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody166_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody166_3 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.const 1#64)) crepBody166_1 crepBody166_2

def crepBody166_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 6 (Flapjack.CrepExp.var 10)

def crepBody166_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 11)

def crepBody166_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 12)

def crepBody166_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 13)

def crepBody166_8 : CrepProg (BitVec 64) :=
.seq crepBody166_7 crepBody166_2

def crepBody166_9 : CrepProg (BitVec 64) :=
.seq crepBody166_6 crepBody166_8

def crepBody166_10 : CrepProg (BitVec 64) :=
.seq crepBody166_5 crepBody166_9

def crepBody166_11 : CrepProg (BitVec 64) :=
.seq crepBody166_4 crepBody166_10

def crepBody166_12 : CrepProg (BitVec 64) :=
.seq crepBody166_3 crepBody166_11

def crepBody166_13 : CrepProg (BitVec 64) :=
.seq crepBody166_0 crepBody166_12

def crepBody166_14 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody166_13

def crepBody166_15 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody166_14

def crepBody166_16 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody166_15

def crepBody166_17 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody166_16

def crepBody166_18 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody166_17

def crepBody166_19 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.and
    [Flapjack.CrepExp.shift Flapjack.Shift.lsr (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.const 1#64),
      Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.const 1#64)) crepBody166_18 crepBody166_2

def crepBody166_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "u256_lt"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9,
    Flapjack.CrepExp.const 18446744069414583343#64, Flapjack.CrepExp.const 18446744073709551615#64,
    Flapjack.CrepExp.const 18446744073709551615#64, Flapjack.CrepExp.const 18446744073709551615#64]

def crepBody166_21 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.const 0#64)) crepBody166_1 crepBody166_2

def crepBody166_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "fp_sqr"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody166_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "fp_mul"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody166_24 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([11, 12, 13, 14], none)) "fp_add"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14,
    Flapjack.CrepExp.const 7#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody166_25 : CrepProg (BitVec 64) :=
.seq crepBody166_23 crepBody166_24

def crepBody166_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([15, 16, 17, 18], none)) "fp_sqrt"
  [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody166_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19, 20, 21, 22], none)) "fp_sqr"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody166_28 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([23], none)) "u256_eq"
  [Flapjack.CrepExp.var 19, Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22,
    Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14]

def crepBody166_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 23) (Flapjack.CrepExp.const 0#64)) crepBody166_1 crepBody166_2

def crepBody166_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([24, 25, 26, 27], none)) "fp_neg"
  [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18]

def crepBody166_31 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 1#64])
  (Flapjack.CrepExp.op Flapjack.BinOp.and [Flapjack.CrepExp.var 4, Flapjack.CrepExp.const 1#64])) crepBody166_30 crepBody166_2

def crepBody166_32 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([28], none)) "ec_set_affine"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8,
    Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26,
    Flapjack.CrepExp.var 27]

def crepBody166_33 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody166_32

def crepBody166_34 : CrepProg (BitVec 64) :=
.seq crepBody166_31 crepBody166_33

def crepBody166_35 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 1#64]

def crepBody166_36 : CrepProg (BitVec 64) :=
.seq crepBody166_34 crepBody166_35

def crepBody166_37 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.var 18) crepBody166_36

def crepBody166_38 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 17) crepBody166_37

def crepBody166_39 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 16) crepBody166_38

def crepBody166_40 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 15) crepBody166_39

def crepBody166_41 : CrepProg (BitVec 64) :=
.seq crepBody166_29 crepBody166_40

def crepBody166_42 : CrepProg (BitVec 64) :=
.seq crepBody166_28 crepBody166_41

def crepBody166_43 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody166_42

def crepBody166_44 : CrepProg (BitVec 64) :=
.seq crepBody166_27 crepBody166_43

def crepBody166_45 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody166_44

def crepBody166_46 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody166_45

def crepBody166_47 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody166_46

def crepBody166_48 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody166_47

def crepBody166_49 : CrepProg (BitVec 64) :=
.seq crepBody166_26 crepBody166_48

def crepBody166_50 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody166_49

def crepBody166_51 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody166_50

def crepBody166_52 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody166_51

def crepBody166_53 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody166_52

def crepBody166_54 : CrepProg (BitVec 64) :=
.seq crepBody166_25 crepBody166_53

def crepBody166_55 : CrepProg (BitVec 64) :=
.seq crepBody166_22 crepBody166_54

def crepBody166_56 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody166_55

def crepBody166_57 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody166_56

def crepBody166_58 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody166_57

def crepBody166_59 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody166_58

def crepBody166_60 : CrepProg (BitVec 64) :=
.seq crepBody166_21 crepBody166_59

def crepBody166_61 : CrepProg (BitVec 64) :=
.seq crepBody166_20 crepBody166_60

def crepBody166_62 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody166_61

def crepBody166_63 : CrepProg (BitVec 64) :=
.seq crepBody166_19 crepBody166_62

def crepBody166_64 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 3) crepBody166_63

def crepBody166_65 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 2) crepBody166_64

def crepBody166_66 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 1) crepBody166_65

def crepBody166_67 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 0) crepBody166_66

def data166 : CrepProg (BitVec 64) := crepBody166_67
def output166 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [115#8, 101#8, 99#8, 112#8, 50#8, 53#8, 54#8, 107#8, 49#8, 95#8, 100#8, 101#8, 99#8, 111#8, 109#8, 112#8, 114#8,
    101#8, 115#8, 115#8, 95#8, 114#8], [0, 1, 2, 3, 4, 5], crepProgToHOL data166)
end InitECandidate.Proofs.FrontendStages.Crep
