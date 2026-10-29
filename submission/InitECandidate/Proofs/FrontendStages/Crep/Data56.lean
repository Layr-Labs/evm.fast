import InitECandidate.Proofs.FrontendStages.Crep.Translate40
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody56_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8, 9], none)) "mul64x64" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 4]

def crepBody56_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 8, Flapjack.CrepExp.var 9, Flapjack.CrepExp.const 0#64, Flapjack.CrepExp.const 0#64]

def crepBody56_2 : CrepProg (BitVec 64) :=
.seq crepBody56_0 crepBody56_1

def crepBody56_3 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody56_2

def crepBody56_4 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody56_3

def crepBody56_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody56_6 : CrepProg (BitVec 64) :=
.ite (Flapjack.CrepExp.cmp Flapjack.Cmp.equal
  (Flapjack.CrepExp.op Flapjack.BinOp.or
    [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 5,
      Flapjack.CrepExp.var 6, Flapjack.CrepExp.var 7])
  (Flapjack.CrepExp.const 0#64)) crepBody56_4 crepBody56_5

def crepBody56_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([10, 11], none)) "mul64x64" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 5]

def crepBody56_8 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([12, 13], none)) "mul64x64" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 4]

def crepBody56_9 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([14, 15], none)) "mul64x64" [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 6]

def crepBody56_10 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([16, 17], none)) "mul64x64" [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 5]

def crepBody56_11 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([18, 19], none)) "mul64x64" [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 4]

def crepBody56_12 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 22 (Flapjack.CrepExp.var 9)

def crepBody56_13 : CrepProg (BitVec 64) :=
.seq crepBody56_12 crepBody56_5

def crepBody56_14 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [20, 21] Flapjack.PrimOp.addCarry [25, 26, 27]

def crepBody56_15 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.const 0#64) crepBody56_14

def crepBody56_16 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 10) crepBody56_15

def crepBody56_17 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 22) crepBody56_16

def crepBody56_18 : CrepProg (BitVec 64) :=
.seq crepBody56_13 crepBody56_17

def crepBody56_19 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 22 (Flapjack.CrepExp.var 20)

def crepBody56_20 : CrepProg (BitVec 64) :=
.seq crepBody56_19 crepBody56_5

def crepBody56_21 : CrepProg (BitVec 64) :=
.seq crepBody56_18 crepBody56_20

def crepBody56_22 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 23 (Flapjack.CrepExp.var 25)

def crepBody56_23 : CrepProg (BitVec 64) :=
.seq crepBody56_22 crepBody56_5

def crepBody56_24 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 21]) crepBody56_23

def crepBody56_25 : CrepProg (BitVec 64) :=
.seq crepBody56_21 crepBody56_24

def crepBody56_26 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 12) crepBody56_15

def crepBody56_27 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 22) crepBody56_26

def crepBody56_28 : CrepProg (BitVec 64) :=
.seq crepBody56_25 crepBody56_27

def crepBody56_29 : CrepProg (BitVec 64) :=
.seq crepBody56_28 crepBody56_20

def crepBody56_30 : CrepProg (BitVec 64) :=
.seq crepBody56_29 crepBody56_24

def crepBody56_31 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 22 (Flapjack.CrepExp.var 23)

def crepBody56_32 : CrepProg (BitVec 64) :=
.seq crepBody56_31 crepBody56_5

def crepBody56_33 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 23 (Flapjack.CrepExp.const 0#64)

def crepBody56_34 : CrepProg (BitVec 64) :=
.seq crepBody56_33 crepBody56_5

def crepBody56_35 : CrepProg (BitVec 64) :=
.seq crepBody56_32 crepBody56_34

def crepBody56_36 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.primitive [20, 21] Flapjack.PrimOp.addCarry [26, 27, 28]

def crepBody56_37 : CrepProg (BitVec 64) :=
.dec 28 (Flapjack.CrepExp.const 0#64) crepBody56_36

def crepBody56_38 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.var 11) crepBody56_37

def crepBody56_39 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 22) crepBody56_38

def crepBody56_40 : CrepProg (BitVec 64) :=
.seq crepBody56_35 crepBody56_39

def crepBody56_41 : CrepProg (BitVec 64) :=
.seq crepBody56_40 crepBody56_20

def crepBody56_42 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.assign 23 (Flapjack.CrepExp.var 26)

def crepBody56_43 : CrepProg (BitVec 64) :=
.seq crepBody56_42 crepBody56_5

def crepBody56_44 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 23, Flapjack.CrepExp.var 21]) crepBody56_43

def crepBody56_45 : CrepProg (BitVec 64) :=
.seq crepBody56_41 crepBody56_44

def crepBody56_46 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.var 13) crepBody56_37

def crepBody56_47 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 22) crepBody56_46

def crepBody56_48 : CrepProg (BitVec 64) :=
.seq crepBody56_45 crepBody56_47

def crepBody56_49 : CrepProg (BitVec 64) :=
.seq crepBody56_48 crepBody56_20

def crepBody56_50 : CrepProg (BitVec 64) :=
.seq crepBody56_49 crepBody56_44

def crepBody56_51 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.var 14) crepBody56_37

def crepBody56_52 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 22) crepBody56_51

def crepBody56_53 : CrepProg (BitVec 64) :=
.seq crepBody56_50 crepBody56_52

def crepBody56_54 : CrepProg (BitVec 64) :=
.seq crepBody56_53 crepBody56_20

def crepBody56_55 : CrepProg (BitVec 64) :=
.seq crepBody56_54 crepBody56_44

def crepBody56_56 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.var 16) crepBody56_37

def crepBody56_57 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 22) crepBody56_56

def crepBody56_58 : CrepProg (BitVec 64) :=
.seq crepBody56_55 crepBody56_57

def crepBody56_59 : CrepProg (BitVec 64) :=
.seq crepBody56_58 crepBody56_20

def crepBody56_60 : CrepProg (BitVec 64) :=
.seq crepBody56_59 crepBody56_44

def crepBody56_61 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.var 18) crepBody56_37

def crepBody56_62 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 22) crepBody56_61

def crepBody56_63 : CrepProg (BitVec 64) :=
.seq crepBody56_60 crepBody56_62

def crepBody56_64 : CrepProg (BitVec 64) :=
.seq crepBody56_63 crepBody56_20

def crepBody56_65 : CrepProg (BitVec 64) :=
.seq crepBody56_64 crepBody56_44

def crepBody56_66 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return
  [Flapjack.CrepExp.var 24, Flapjack.CrepExp.var 25, Flapjack.CrepExp.var 26, Flapjack.CrepExp.var 27]

def crepBody56_67 : CrepProg (BitVec 64) :=
.dec 27 (Flapjack.CrepExp.op Flapjack.BinOp.add
  [Flapjack.CrepExp.var 22, Flapjack.CrepExp.var 15, Flapjack.CrepExp.var 17, Flapjack.CrepExp.var 19,
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 0, Flapjack.CrepExp.var 7],
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 1, Flapjack.CrepExp.var 6],
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 2, Flapjack.CrepExp.var 5],
    Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.var 3, Flapjack.CrepExp.var 4]]) crepBody56_66

def crepBody56_68 : CrepProg (BitVec 64) :=
.seq crepBody56_35 crepBody56_67

def crepBody56_69 : CrepProg (BitVec 64) :=
.dec 26 (Flapjack.CrepExp.var 22) crepBody56_68

def crepBody56_70 : CrepProg (BitVec 64) :=
.seq crepBody56_65 crepBody56_69

def crepBody56_71 : CrepProg (BitVec 64) :=
.dec 25 (Flapjack.CrepExp.var 22) crepBody56_70

def crepBody56_72 : CrepProg (BitVec 64) :=
.seq crepBody56_30 crepBody56_71

def crepBody56_73 : CrepProg (BitVec 64) :=
.dec 24 (Flapjack.CrepExp.var 8) crepBody56_72

def crepBody56_74 : CrepProg (BitVec 64) :=
.dec 23 (Flapjack.CrepExp.const 0#64) crepBody56_73

def crepBody56_75 : CrepProg (BitVec 64) :=
.dec 22 (Flapjack.CrepExp.const 0#64) crepBody56_74

def crepBody56_76 : CrepProg (BitVec 64) :=
.dec 21 (Flapjack.CrepExp.const 0#64) crepBody56_75

def crepBody56_77 : CrepProg (BitVec 64) :=
.dec 20 (Flapjack.CrepExp.const 0#64) crepBody56_76

def crepBody56_78 : CrepProg (BitVec 64) :=
.seq crepBody56_11 crepBody56_77

def crepBody56_79 : CrepProg (BitVec 64) :=
.dec 19 (Flapjack.CrepExp.const 0#64) crepBody56_78

def crepBody56_80 : CrepProg (BitVec 64) :=
.dec 18 (Flapjack.CrepExp.const 0#64) crepBody56_79

def crepBody56_81 : CrepProg (BitVec 64) :=
.seq crepBody56_10 crepBody56_80

def crepBody56_82 : CrepProg (BitVec 64) :=
.dec 17 (Flapjack.CrepExp.const 0#64) crepBody56_81

def crepBody56_83 : CrepProg (BitVec 64) :=
.dec 16 (Flapjack.CrepExp.const 0#64) crepBody56_82

def crepBody56_84 : CrepProg (BitVec 64) :=
.seq crepBody56_9 crepBody56_83

def crepBody56_85 : CrepProg (BitVec 64) :=
.dec 15 (Flapjack.CrepExp.const 0#64) crepBody56_84

def crepBody56_86 : CrepProg (BitVec 64) :=
.dec 14 (Flapjack.CrepExp.const 0#64) crepBody56_85

def crepBody56_87 : CrepProg (BitVec 64) :=
.seq crepBody56_8 crepBody56_86

def crepBody56_88 : CrepProg (BitVec 64) :=
.dec 13 (Flapjack.CrepExp.const 0#64) crepBody56_87

def crepBody56_89 : CrepProg (BitVec 64) :=
.dec 12 (Flapjack.CrepExp.const 0#64) crepBody56_88

def crepBody56_90 : CrepProg (BitVec 64) :=
.seq crepBody56_7 crepBody56_89

def crepBody56_91 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody56_90

def crepBody56_92 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.const 0#64) crepBody56_91

def crepBody56_93 : CrepProg (BitVec 64) :=
.seq crepBody56_0 crepBody56_92

def crepBody56_94 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody56_93

def crepBody56_95 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody56_94

def crepBody56_96 : CrepProg (BitVec 64) :=
.seq crepBody56_6 crepBody56_95

def data56 : CrepProg (BitVec 64) := crepBody56_96
def output56 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [117#8, 50#8, 53#8, 54#8, 95#8, 109#8, 117#8, 108#8], [0, 1, 2, 3, 4, 5, 6, 7], crepProgToHOL data56)
end InitECandidate.Proofs.FrontendStages.Crep
