import InitECandidate.Proofs.FrontendStages.Crep.Translate147
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody163_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25], none)) "ec_set_infinity" [Flapjack.CrepExp.var 0]

def crepBody163_1 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody163_0

def crepBody163_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([25], none)) "u256_bit_length"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]

def crepBody163_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([26], none)) "u256_bit_length"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16]

def crepBody163_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([27], none)) "max" [Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26]

def crepBody163_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody163_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody163_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 27) (Flapjack.CrepExp.const 0#64)) crepBody163_5 crepBody163_6

def crepBody163_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([28], none)) "heap_mark" []

def crepBody163_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([29], none)) "alloc" [Flapjack.CrepExp.const 96#64]

def crepBody163_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30], none)) "ec_set_affine"
  [Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12]

def crepBody163_11 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody163_10

def crepBody163_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30], none)) "ec_add_affine"
  [Flapjack.CrepExp.var 29, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23,
    Flapjack.CrepExp.var 24]

def crepBody163_13 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody163_12

def crepBody163_14 : CrepProg (BitVec 64) :=
.seq crepBody163_11 crepBody163_13

def crepBody163_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([30], none)) "ec_is_infinity" [Flapjack.CrepExp.var 29]

def crepBody163_16 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([31], none)) "ec_to_affine" [Flapjack.CrepExp.var 29]

def crepBody163_17 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.const 0#64) crepBody163_16

def crepBody163_18 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 30) (Flapjack.CrepExp.const 0#64)) crepBody163_17 crepBody163_6

def crepBody163_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 27 (Flapjack.CrepExp.var 39)

def crepBody163_20 : CrepProg (BitVec 64) :=
.seq crepBody163_19 crepBody163_6

def crepBody163_21 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.var 27, Flapjack.CrepExp.const 1#64]) crepBody163_20

def crepBody163_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39], none)) "ec_double" [Flapjack.CrepExp.var 0]

def crepBody163_23 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody163_22

def crepBody163_24 : CrepProg (BitVec 64) :=
.seq crepBody163_21 crepBody163_23

def crepBody163_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39], none)) "u256_bit"
  [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4,
    Flapjack.CrepExp.var 27]

def crepBody163_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([40], none)) "u256_bit"
  [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 16,
    Flapjack.CrepExp.var 27]

def crepBody163_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([41], none)) "ec_add_affine"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 31, Flapjack.CrepExp.var 32, Flapjack.CrepExp.var 33,
    Flapjack.CrepExp.var 34, Flapjack.CrepExp.var 35, Flapjack.CrepExp.var 36, Flapjack.CrepExp.var 37,
    Flapjack.CrepExp.var 38]

def crepBody163_28 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody163_27

def crepBody163_29 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 30) (Flapjack.CrepExp.const 0#64)) crepBody163_28 crepBody163_6

def crepBody163_30 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([41], none)) "ec_add_affine"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12]

def crepBody163_31 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody163_30

def crepBody163_32 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 40) (Flapjack.CrepExp.const 1#64)) crepBody163_29 crepBody163_31

def crepBody163_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([41], none)) "ec_add_affine"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 18, Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.var 20, Flapjack.CrepExp.var 21, Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 23,
    Flapjack.CrepExp.var 24]

def crepBody163_34 : CrepProg (BitVec 64) :=
.dec 41 (Flapjack.CrepExp.const 0#64) crepBody163_33

def crepBody163_35 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 40) (Flapjack.CrepExp.const 1#64)) crepBody163_34 crepBody163_6

def crepBody163_36 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 39) (Flapjack.CrepExp.const 1#64)) crepBody163_32 crepBody163_35

def crepBody163_37 : CrepProg (BitVec 64) :=
.seq crepBody163_26 crepBody163_36

def crepBody163_38 : CrepProg (BitVec 64) :=
.dec 40 (Flapjack.CrepExp.const 0#64) crepBody163_37

def crepBody163_39 : CrepProg (BitVec 64) :=
.seq crepBody163_25 crepBody163_38

def crepBody163_40 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody163_39

def crepBody163_41 : CrepProg (BitVec 64) :=
.seq crepBody163_24 crepBody163_40

def crepBody163_42 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.const 0#64) (Flapjack.CrepExp.var 27)) crepBody163_41

def crepBody163_43 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([39], none)) "heap_release" [Flapjack.CrepExp.var 28]

def crepBody163_44 : CrepProg (BitVec 64) :=
.dec 39 (Flapjack.CrepExp.const 0#64) crepBody163_43

def crepBody163_45 : CrepProg (BitVec 64) :=
.seq crepBody163_42 crepBody163_44

def crepBody163_46 : CrepProg (BitVec 64) :=
.seq crepBody163_45 crepBody163_5

def crepBody163_47 : CrepProg (BitVec 64) :=
.dec 38 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 29, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 24#64])) crepBody163_46

def crepBody163_48 : CrepProg (BitVec 64) :=
.dec 37 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 29, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 16#64])) crepBody163_47

def crepBody163_49 : CrepProg (BitVec 64) :=
.dec 36 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 29, Flapjack.CrepExp.const 32#64],
      Flapjack.CrepExp.const 8#64])) crepBody163_48

def crepBody163_50 : CrepProg (BitVec 64) :=
.dec 35 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 29, Flapjack.CrepExp.const 32#64])) crepBody163_49

def crepBody163_51 : CrepProg (BitVec 64) :=
.dec 34 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 29, Flapjack.CrepExp.const 24#64])) crepBody163_50

def crepBody163_52 : CrepProg (BitVec 64) :=
.dec 33 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 29, Flapjack.CrepExp.const 16#64])) crepBody163_51

def crepBody163_53 : CrepProg (BitVec 64) :=
.dec 32 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 29, Flapjack.CrepExp.const 8#64])) crepBody163_52

def crepBody163_54 : CrepProg (BitVec 64) :=
.dec 31 (Flapjack.CrepExp.load (Flapjack.CrepExp.var 29)) crepBody163_53

def crepBody163_55 : CrepProg (BitVec 64) :=
.seq crepBody163_18 crepBody163_54

def crepBody163_56 : CrepProg (BitVec 64) :=
.seq crepBody163_15 crepBody163_55

def crepBody163_57 : CrepProg (BitVec 64) :=
.dec 30 (Flapjack.CrepExp.const 0#64) crepBody163_56

def crepBody163_58 : CrepProg (BitVec 64) :=
.seq crepBody163_14 crepBody163_57

def crepBody163_59 : CrepProg (BitVec 64) :=
.seq crepBody163_9 crepBody163_58

def crepBody163_60 : CrepProg (BitVec 64) :=
.dec 29 (Flapjack.CrepExp.const 0#64) crepBody163_59

def crepBody163_61 : CrepProg (BitVec 64) :=
.seq crepBody163_8 crepBody163_60

def crepBody163_62 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody163_61

def crepBody163_63 : CrepProg (BitVec 64) :=
.seq crepBody163_7 crepBody163_62

def crepBody163_64 : CrepProg (BitVec 64) :=
.seq crepBody163_4 crepBody163_63

def crepBody163_65 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody163_64

def crepBody163_66 : CrepProg (BitVec 64) :=
.seq crepBody163_3 crepBody163_65

def crepBody163_67 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.const 0#64) crepBody163_66

def crepBody163_68 : CrepProg (BitVec 64) :=
.seq crepBody163_2 crepBody163_67

def crepBody163_69 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.const 0#64) crepBody163_68

def crepBody163_70 : CrepProg (BitVec 64) :=
.seq crepBody163_1 crepBody163_69

def data163 : CrepProg (BitVec 64) := crepBody163_70
def output163 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [101#8, 99#8, 95#8, 109#8, 117#8, 108#8, 50#8], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24], crepProgToHOL data163)
end InitECandidate.Proofs.FrontendStages.Crep
