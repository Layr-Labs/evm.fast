import InitECandidate.Proofs.FrontendStages.Crep.Translate377
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody393_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.const 0#64]

def crepBody393_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody393_2 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.const 2#64)) crepBody393_0 crepBody393_1

def crepBody393_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "heap_mark" []

def crepBody393_4 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]]

def crepBody393_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 11 (Flapjack.CrepExp.var 1)

def crepBody393_6 : CrepProg (BitVec 64) :=
.seq crepBody393_5 crepBody393_1

def crepBody393_7 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 11)) crepBody393_6 crepBody393_1

def crepBody393_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 12 (Flapjack.CrepExp.var 1)

def crepBody393_9 : CrepProg (BitVec 64) :=
.seq crepBody393_8 crepBody393_1

def crepBody393_10 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.lower (Flapjack.CrepExp.var 1) (Flapjack.CrepExp.var 12)) crepBody393_9 crepBody393_1

def crepBody393_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18], none)) "bal_sort_gt"
  [Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 3]

def crepBody393_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 8,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 2]],
    Flapjack.CrepExp.var 16, Flapjack.CrepExp.var 2]

def crepBody393_13 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody393_12

def crepBody393_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 19)

def crepBody393_15 : CrepProg (BitVec 64) :=
.seq crepBody393_14 crepBody393_1

def crepBody393_16 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64]) crepBody393_15

def crepBody393_17 : CrepProg (BitVec 64) :=
.seq crepBody393_13 crepBody393_16

def crepBody393_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([19], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 8,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 2]],
    Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 2]

def crepBody393_19 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody393_18

def crepBody393_20 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.var 19)

def crepBody393_21 : CrepProg (BitVec 64) :=
.seq crepBody393_20 crepBody393_1

def crepBody393_22 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 1#64]) crepBody393_21

def crepBody393_23 : CrepProg (BitVec 64) :=
.seq crepBody393_19 crepBody393_22

def crepBody393_24 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal (Flapjack.CrepExp.var 18) (Flapjack.CrepExp.const 0#64)) crepBody393_17 crepBody393_23

def crepBody393_25 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 15 (Flapjack.CrepExp.var 19)

def crepBody393_26 : CrepProg (BitVec 64) :=
.seq crepBody393_25 crepBody393_1

def crepBody393_27 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 1#64]) crepBody393_26

def crepBody393_28 : CrepProg (BitVec 64) :=
.seq crepBody393_24 crepBody393_27

def crepBody393_29 : CrepProg (BitVec 64) :=
.seq crepBody393_11 crepBody393_28

def crepBody393_30 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody393_29

def crepBody393_31 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 2]]) crepBody393_30

def crepBody393_32 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 2]]) crepBody393_31

def crepBody393_33 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.op Flapjack.BinOp.and
  [Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 11)),
    Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.const 0#64)
      (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 12))]) crepBody393_32

def crepBody393_34 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 8,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 2]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 7,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 13, Flapjack.CrepExp.var 2]],
    Flapjack.CrepExp.var 2]

def crepBody393_35 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody393_34

def crepBody393_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 13 (Flapjack.CrepExp.var 16)

def crepBody393_37 : CrepProg (BitVec 64) :=
.seq crepBody393_36 crepBody393_1

def crepBody393_38 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 13, Flapjack.CrepExp.const 1#64]) crepBody393_37

def crepBody393_39 : CrepProg (BitVec 64) :=
.seq crepBody393_35 crepBody393_38

def crepBody393_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 15 (Flapjack.CrepExp.var 16)

def crepBody393_41 : CrepProg (BitVec 64) :=
.seq crepBody393_40 crepBody393_1

def crepBody393_42 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 15, Flapjack.CrepExp.const 1#64]) crepBody393_41

def crepBody393_43 : CrepProg (BitVec 64) :=
.seq crepBody393_39 crepBody393_42

def crepBody393_44 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 13) (Flapjack.CrepExp.var 11)) crepBody393_43

def crepBody393_45 : CrepProg (BitVec 64) :=
.seq crepBody393_33 crepBody393_44

def crepBody393_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16], none)) "memcpy"
  [Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 8,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 2]],
    Flapjack.CrepExp.op Flapjack.BinOp.add
      [Flapjack.CrepExp.var 7,
        Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 14, Flapjack.CrepExp.var 2]],
    Flapjack.CrepExp.var 2]

def crepBody393_47 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody393_46

def crepBody393_48 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 14 (Flapjack.CrepExp.var 16)

def crepBody393_49 : CrepProg (BitVec 64) :=
.seq crepBody393_48 crepBody393_1

def crepBody393_50 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 14, Flapjack.CrepExp.const 1#64]) crepBody393_49

def crepBody393_51 : CrepProg (BitVec 64) :=
.seq crepBody393_47 crepBody393_50

def crepBody393_52 : CrepProg (BitVec 64) :=
.seq crepBody393_51 crepBody393_42

def crepBody393_53 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 14) (Flapjack.CrepExp.var 12)) crepBody393_52

def crepBody393_54 : CrepProg (BitVec 64) :=
.seq crepBody393_45 crepBody393_53

def crepBody393_55 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 10 (Flapjack.CrepExp.var 12)

def crepBody393_56 : CrepProg (BitVec 64) :=
.seq crepBody393_55 crepBody393_1

def crepBody393_57 : CrepProg (BitVec 64) :=
.seq crepBody393_54 crepBody393_56

def crepBody393_58 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.var 10) crepBody393_57

def crepBody393_59 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.var 11) crepBody393_58

def crepBody393_60 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.var 10) crepBody393_59

def crepBody393_61 : CrepProg (BitVec 64) :=
.seq crepBody393_10 crepBody393_60

def crepBody393_62 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 11, Flapjack.CrepExp.var 9]) crepBody393_61

def crepBody393_63 : CrepProg (BitVec 64) :=
.seq crepBody393_7 crepBody393_62

def crepBody393_64 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 10, Flapjack.CrepExp.var 9]) crepBody393_63

def crepBody393_65 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 1)) crepBody393_64

def crepBody393_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 7 (Flapjack.CrepExp.var 8)

def crepBody393_67 : CrepProg (BitVec 64) :=
.seq crepBody393_66 crepBody393_1

def crepBody393_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 8 (Flapjack.CrepExp.var 11)

def crepBody393_69 : CrepProg (BitVec 64) :=
.seq crepBody393_68 crepBody393_1

def crepBody393_70 : CrepProg (BitVec 64) :=
.seq crepBody393_67 crepBody393_69

def crepBody393_71 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 9 (Flapjack.CrepExp.var 12)

def crepBody393_72 : CrepProg (BitVec 64) :=
.seq crepBody393_71 crepBody393_1

def crepBody393_73 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 2#64]) crepBody393_72

def crepBody393_74 : CrepProg (BitVec 64) :=
.seq crepBody393_70 crepBody393_73

def crepBody393_75 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 7) crepBody393_74

def crepBody393_76 : CrepProg (BitVec 64) :=
.seq crepBody393_65 crepBody393_75

def crepBody393_77 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody393_76

def crepBody393_78 : CrepProg (BitVec 64) :=
.while (Flapjack.CrepExp.cmp Flapjack.Cmp.less (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 1)) crepBody393_77

def crepBody393_79 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "memcpy"
  [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 7,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2]]

def crepBody393_80 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody393_79

def crepBody393_81 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.notEqual (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 0)) crepBody393_80 crepBody393_1

def crepBody393_82 : CrepProg (BitVec 64) :=
.seq crepBody393_78 crepBody393_81

def crepBody393_83 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10], none)) "heap_release" [Flapjack.CrepExp.var 5]

def crepBody393_84 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody393_83

def crepBody393_85 : CrepProg (BitVec 64) :=
.seq crepBody393_82 crepBody393_84

def crepBody393_86 : CrepProg (BitVec 64) :=
.seq crepBody393_85 crepBody393_0

def crepBody393_87 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 1#64) crepBody393_86

def crepBody393_88 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 6) crepBody393_87

def crepBody393_89 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 0) crepBody393_88

def crepBody393_90 : CrepProg (BitVec 64) :=
.seq crepBody393_4 crepBody393_89

def crepBody393_91 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody393_90

def crepBody393_92 : CrepProg (BitVec 64) :=
.seq crepBody393_3 crepBody393_91

def crepBody393_93 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody393_92

def crepBody393_94 : CrepProg (BitVec 64) :=
.seq crepBody393_2 crepBody393_93

def data393 : CrepProg (BitVec 64) := crepBody393_94
def output393 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [115#8, 111#8, 114#8, 116#8, 95#8, 101#8, 108#8, 101#8, 109#8, 115#8], [0, 1, 2, 3, 4], crepProgToHOL data393)
end InitECandidate.Proofs.FrontendStages.Crep
