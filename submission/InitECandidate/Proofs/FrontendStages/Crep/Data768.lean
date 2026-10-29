import InitECandidate.Proofs.FrontendStages.Crep.Translate752
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody768_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "charge_gas" [Flapjack.CrepExp.const 3000#64]

def crepBody768_1 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody768_0

def crepBody768_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "alloc" [Flapjack.CrepExp.const 32#64]

def crepBody768_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 8#64]

def crepBody768_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "heap_mark" []

def crepBody768_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 128#64]

def crepBody768_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "buffer_read"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 88#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 1, Flapjack.CrepExp.const 96#64]),
    Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 128#64, Flapjack.CrepExp.var 5]

def crepBody768_7 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody768_6

def crepBody768_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6, 7, 8, 9], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 32#64],
    Flapjack.CrepExp.const 32#64]

def crepBody768_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11, 12, 13], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 64#64],
    Flapjack.CrepExp.const 32#64]

def crepBody768_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15, 16, 17], none)) "u256_from_be"
  [Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 5, Flapjack.CrepExp.const 96#64],
    Flapjack.CrepExp.const 32#64]

def crepBody768_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "u256_fits_word"
  [Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7, Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9]

def crepBody768_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody768_13 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody768_12

def crepBody768_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.var 20)

def crepBody768_15 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody768_16 : CrepProg (BitVec 64) :=
.seq crepBody768_14 crepBody768_15

def crepBody768_17 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.var 3) crepBody768_16

def crepBody768_18 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody768_17

def crepBody768_19 : CrepProg (BitVec 64) :=
.seq crepBody768_13 crepBody768_18

def crepBody768_20 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody768_16

def crepBody768_21 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody768_20

def crepBody768_22 : CrepProg (BitVec 64) :=
.seq crepBody768_19 crepBody768_21

def crepBody768_23 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody768_24 : CrepProg (BitVec 64) :=
.seq crepBody768_22 crepBody768_23

def crepBody768_25 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 0#64)) crepBody768_24 crepBody768_15

def crepBody768_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "secp256k1_ecrecover"
  [Flapjack.CrepExp.var 5, Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 11,
    Flapjack.CrepExp.var 12, Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 15,
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17,
    Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 12#64]]

def crepBody768_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "heap_release" [Flapjack.CrepExp.var 4]

def crepBody768_28 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody768_27

def crepBody768_29 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 20) (Flapjack.CrepExp.var 21)

def crepBody768_30 : CrepProg (BitVec 64) :=
.seq crepBody768_29 crepBody768_15

def crepBody768_31 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 3) crepBody768_30

def crepBody768_32 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody768_31

def crepBody768_33 : CrepProg (BitVec 64) :=
.seq crepBody768_28 crepBody768_32

def crepBody768_34 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody768_30

def crepBody768_35 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody768_34

def crepBody768_36 : CrepProg (BitVec 64) :=
.seq crepBody768_33 crepBody768_35

def crepBody768_37 : CrepProg (BitVec 64) :=
.seq crepBody768_36 crepBody768_23

def crepBody768_38 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 19) (Flapjack.CrepExp.const 0#64)) crepBody768_37 crepBody768_15

def crepBody768_39 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([20], none)) "memzero" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.const 12#64]

def crepBody768_40 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody768_39

def crepBody768_41 : CrepProg (BitVec 64) :=
.seq crepBody768_38 crepBody768_40

def crepBody768_42 : CrepProg (BitVec 64) :=
.seq crepBody768_41 crepBody768_28

def crepBody768_43 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.var 2) crepBody768_30

def crepBody768_44 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 120#64]) crepBody768_43

def crepBody768_45 : CrepProg (BitVec 64) :=
.seq crepBody768_42 crepBody768_44

def crepBody768_46 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 32#64) crepBody768_30

def crepBody768_47 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
    Flapjack.CrepExp.const 128#64]) crepBody768_46

def crepBody768_48 : CrepProg (BitVec 64) :=
.seq crepBody768_45 crepBody768_47

def crepBody768_49 : CrepProg (BitVec 64) :=
.seq crepBody768_48 crepBody768_23

def crepBody768_50 : CrepProg (BitVec 64) :=
.seq crepBody768_26 crepBody768_49

def crepBody768_51 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody768_50

def crepBody768_52 : CrepProg (BitVec 64) :=
.seq crepBody768_25 crepBody768_51

def crepBody768_53 : CrepProg (BitVec 64) :=
.seq crepBody768_11 crepBody768_52

def crepBody768_54 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody768_53

def crepBody768_55 : CrepProg (BitVec 64) :=
.seq crepBody768_10 crepBody768_54

def crepBody768_56 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody768_55

def crepBody768_57 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody768_56

def crepBody768_58 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody768_57

def crepBody768_59 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody768_58

def crepBody768_60 : CrepProg (BitVec 64) :=
.seq crepBody768_9 crepBody768_59

def crepBody768_61 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody768_60

def crepBody768_62 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody768_61

def crepBody768_63 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody768_62

def crepBody768_64 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody768_63

def crepBody768_65 : CrepProg (BitVec 64) :=
.seq crepBody768_8 crepBody768_64

def crepBody768_66 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody768_65

def crepBody768_67 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody768_66

def crepBody768_68 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody768_67

def crepBody768_69 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody768_68

def crepBody768_70 : CrepProg (BitVec 64) :=
.seq crepBody768_7 crepBody768_69

def crepBody768_71 : CrepProg (BitVec 64) :=
.seq crepBody768_5 crepBody768_70

def crepBody768_72 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody768_71

def crepBody768_73 : CrepProg (BitVec 64) :=
.seq crepBody768_4 crepBody768_72

def crepBody768_74 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody768_73

def crepBody768_75 : CrepProg (BitVec 64) :=
.seq crepBody768_3 crepBody768_74

def crepBody768_76 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody768_75

def crepBody768_77 : CrepProg (BitVec 64) :=
.seq crepBody768_2 crepBody768_76

def crepBody768_78 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody768_77

def crepBody768_79 : CrepProg (BitVec 64) :=
.seq crepBody768_1 crepBody768_78

def crepBody768_80 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.load
  (Flapjack.CrepExp.op Flapjack.BinOp.add
    [Flapjack.CrepExp.load
        (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 256#64]),
      Flapjack.CrepExp.const 112#64])) crepBody768_79

def data768 : CrepProg (BitVec 64) := crepBody768_80
def output768 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode
  [112#8, 114#8, 101#8, 95#8, 101#8, 99#8, 114#8, 101#8, 99#8, 111#8, 118#8, 101#8, 114#8], [], crepProgToHOL data768)
end InitECandidate.Proofs.FrontendStages.Crep
