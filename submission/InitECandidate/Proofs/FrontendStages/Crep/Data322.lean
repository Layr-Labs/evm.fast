import InitECandidate.Proofs.FrontendStages.Crep.Translate306
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody322_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "alloc" [Flapjack.CrepExp.const 40#64]

def crepBody322_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 4) (Flapjack.CrepExp.var 5)

def crepBody322_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody322_3 : CrepProg (BitVec 64) :=
.seq crepBody322_1 crepBody322_2

def crepBody322_4 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.var 3) crepBody322_3

def crepBody322_5 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 168#64]) crepBody322_4

def crepBody322_6 : CrepProg (BitVec 64) :=
.seq crepBody322_0 crepBody322_5

def crepBody322_7 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody322_6

def crepBody322_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 3) (Flapjack.CrepExp.var 4)

def crepBody322_9 : CrepProg (BitVec 64) :=
.seq crepBody322_8 crepBody322_2

def crepBody322_10 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 0) crepBody322_9

def crepBody322_11 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 168#64]),
    Flapjack.CrepExp.const 0#64]) crepBody322_10

def crepBody322_12 : CrepProg (BitVec 64) :=
.seq crepBody322_7 crepBody322_11

def crepBody322_13 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 1) crepBody322_9

def crepBody322_14 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 168#64]),
    Flapjack.CrepExp.const 8#64]) crepBody322_13

def crepBody322_15 : CrepProg (BitVec 64) :=
.seq crepBody322_12 crepBody322_14

def crepBody322_16 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.var 2) crepBody322_9

def crepBody322_17 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 168#64]),
    Flapjack.CrepExp.const 16#64]) crepBody322_16

def crepBody322_18 : CrepProg (BitVec 64) :=
.seq crepBody322_15 crepBody322_17

def crepBody322_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "decode_witness_to_mpt" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 1]

def crepBody322_20 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 168#64]),
    Flapjack.CrepExp.const 24#64]) crepBody322_4

def crepBody322_21 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htab_new" [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 64#64]

def crepBody322_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody322_23 : CrepProg (BitVec 64) :=
.seq crepBody322_22 crepBody322_2

def crepBody322_24 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody322_23

def crepBody322_25 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 168#64]),
    Flapjack.CrepExp.const 32#64]) crepBody322_24

def crepBody322_26 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 80#64]

def crepBody322_27 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody322_28 : CrepProg (BitVec 64) :=
.seq crepBody322_27 crepBody322_2

def crepBody322_29 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody322_28

def crepBody322_30 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]) crepBody322_29

def crepBody322_31 : CrepProg (BitVec 64) :=
.seq crepBody322_26 crepBody322_30

def crepBody322_32 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody322_31

def crepBody322_33 : CrepProg (BitVec 64) :=
.seq crepBody322_25 crepBody322_32

def crepBody322_34 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 168#64])) crepBody322_23

def crepBody322_35 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
    Flapjack.CrepExp.const 0#64]) crepBody322_34

def crepBody322_36 : CrepProg (BitVec 64) :=
.seq crepBody322_33 crepBody322_35

def crepBody322_37 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htab_new" [Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 256#64]

def crepBody322_38 : CrepProg (BitVec 64) :=
.seq crepBody322_36 crepBody322_37

def crepBody322_39 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
    Flapjack.CrepExp.const 8#64]) crepBody322_24

def crepBody322_40 : CrepProg (BitVec 64) :=
.seq crepBody322_38 crepBody322_39

def crepBody322_41 : CrepProg (BitVec 64) :=
.seq crepBody322_40 crepBody322_37

def crepBody322_42 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
    Flapjack.CrepExp.const 16#64]) crepBody322_24

def crepBody322_43 : CrepProg (BitVec 64) :=
.seq crepBody322_41 crepBody322_42

def crepBody322_44 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htab_new" [Flapjack.CrepExp.const 52#64, Flapjack.CrepExp.const 256#64]

def crepBody322_45 : CrepProg (BitVec 64) :=
.seq crepBody322_43 crepBody322_44

def crepBody322_46 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
    Flapjack.CrepExp.const 24#64]) crepBody322_24

def crepBody322_47 : CrepProg (BitVec 64) :=
.seq crepBody322_45 crepBody322_46

def crepBody322_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htab_new" [Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 64#64]

def crepBody322_49 : CrepProg (BitVec 64) :=
.seq crepBody322_47 crepBody322_48

def crepBody322_50 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
    Flapjack.CrepExp.const 32#64]) crepBody322_24

def crepBody322_51 : CrepProg (BitVec 64) :=
.seq crepBody322_49 crepBody322_50

def crepBody322_52 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "htab_new" [Flapjack.CrepExp.const 52#64, Flapjack.CrepExp.const 64#64]

def crepBody322_53 : CrepProg (BitVec 64) :=
.seq crepBody322_51 crepBody322_52

def crepBody322_54 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
    Flapjack.CrepExp.const 40#64]) crepBody322_24

def crepBody322_55 : CrepProg (BitVec 64) :=
.seq crepBody322_53 crepBody322_54

def crepBody322_56 : CrepProg (BitVec 64) :=
.seq crepBody322_55 crepBody322_21

def crepBody322_57 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
    Flapjack.CrepExp.const 48#64]) crepBody322_24

def crepBody322_58 : CrepProg (BitVec 64) :=
.seq crepBody322_56 crepBody322_57

def crepBody322_59 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody322_23

def crepBody322_60 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
    Flapjack.CrepExp.const 56#64]) crepBody322_59

def crepBody322_61 : CrepProg (BitVec 64) :=
.seq crepBody322_58 crepBody322_60

def crepBody322_62 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
    Flapjack.CrepExp.const 64#64]) crepBody322_59

def crepBody322_63 : CrepProg (BitVec 64) :=
.seq crepBody322_61 crepBody322_62

def crepBody322_64 : CrepProg (BitVec 64) :=
.seq crepBody322_63 crepBody322_37

def crepBody322_65 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 176#64]),
    Flapjack.CrepExp.const 72#64]) crepBody322_24

def crepBody322_66 : CrepProg (BitVec 64) :=
.seq crepBody322_64 crepBody322_65

def crepBody322_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc" [Flapjack.CrepExp.const 64#64]

def crepBody322_68 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 192#64]) crepBody322_29

def crepBody322_69 : CrepProg (BitVec 64) :=
.seq crepBody322_67 crepBody322_68

def crepBody322_70 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody322_69

def crepBody322_71 : CrepProg (BitVec 64) :=
.seq crepBody322_66 crepBody322_70

def crepBody322_72 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 524288#64) crepBody322_23

def crepBody322_73 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 208#64]) crepBody322_72

def crepBody322_74 : CrepProg (BitVec 64) :=
.seq crepBody322_71 crepBody322_73

def crepBody322_75 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul
      [Flapjack.CrepExp.load
          (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 208#64]),
        Flapjack.CrepExp.const 32#64]]

def crepBody322_76 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 200#64]) crepBody322_29

def crepBody322_77 : CrepProg (BitVec 64) :=
.seq crepBody322_75 crepBody322_76

def crepBody322_78 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody322_77

def crepBody322_79 : CrepProg (BitVec 64) :=
.seq crepBody322_74 crepBody322_78

def crepBody322_80 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 16#64]) crepBody322_59

def crepBody322_81 : CrepProg (BitVec 64) :=
.seq crepBody322_79 crepBody322_80

def crepBody322_82 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 184#64]) crepBody322_59

def crepBody322_83 : CrepProg (BitVec 64) :=
.seq crepBody322_81 crepBody322_82

def crepBody322_84 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody322_85 : CrepProg (BitVec 64) :=
.seq crepBody322_83 crepBody322_84

def crepBody322_86 : CrepProg (BitVec 64) :=
.seq crepBody322_21 crepBody322_85

def crepBody322_87 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody322_86

def crepBody322_88 : CrepProg (BitVec 64) :=
.seq crepBody322_20 crepBody322_87

def crepBody322_89 : CrepProg (BitVec 64) :=
.seq crepBody322_19 crepBody322_88

def crepBody322_90 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody322_89

def crepBody322_91 : CrepProg (BitVec 64) :=
.seq crepBody322_18 crepBody322_90

def data322 : CrepProg (BitVec 64) := crepBody322_91
def output322 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 116#8, 97#8, 116#8, 101#8, 95#8, 105#8, 110#8, 105#8, 116#8], [0, 1, 2], crepProgToHOL data322)
end InitECandidate.Proofs.FrontendStages.Crep
