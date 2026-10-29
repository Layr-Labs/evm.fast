import InitECandidate.Proofs.FrontendStages.Crep.Translate409
import InitECandidate.Proofs.FrontendStages.Crep.Context
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Pancake.PanLang
namespace InitECandidate.Proofs.FrontendStages.Crep
def crepBody425_0 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([1], none)) "scratch_mark" []

def crepBody425_1 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([2], none)) "frame_mem_mark" []

def crepBody425_2 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([3], none)) "scratch_alloc" [Flapjack.CrepExp.const 280#64]

def crepBody425_3 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "memzero" [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 280#64]

def crepBody425_4 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody425_3

def crepBody425_5 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([4], none)) "scratch_alloc"
  [Flapjack.CrepExp.crepOp Flapjack.CrepOp.mul [Flapjack.CrepExp.const 32#64, Flapjack.CrepExp.const 32#64]]

def crepBody425_6 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 5) (Flapjack.CrepExp.var 6)

def crepBody425_7 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.skip

def crepBody425_8 : CrepProg (BitVec 64) :=
.seq crepBody425_6 crepBody425_7

def crepBody425_9 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 1) crepBody425_8

def crepBody425_10 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 208#64]) crepBody425_9

def crepBody425_11 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.var 4) crepBody425_8

def crepBody425_12 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 8#64]) crepBody425_11

def crepBody425_13 : CrepProg (BitVec 64) :=
.seq crepBody425_10 crepBody425_12

def crepBody425_14 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 32#64) crepBody425_8

def crepBody425_15 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 232#64]) crepBody425_14

def crepBody425_16 : CrepProg (BitVec 64) :=
.seq crepBody425_13 crepBody425_15

def crepBody425_17 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([5], none)) "frame_mem_alloc" [Flapjack.CrepExp.const 1024#64]

def crepBody425_18 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 6) (Flapjack.CrepExp.var 7)

def crepBody425_19 : CrepProg (BitVec 64) :=
.seq crepBody425_18 crepBody425_7

def crepBody425_20 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 2) crepBody425_19

def crepBody425_21 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 224#64]) crepBody425_20

def crepBody425_22 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.var 5) crepBody425_19

def crepBody425_23 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 24#64]) crepBody425_22

def crepBody425_24 : CrepProg (BitVec 64) :=
.seq crepBody425_21 crepBody425_23

def crepBody425_25 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 1024#64) crepBody425_19

def crepBody425_26 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 40#64]) crepBody425_25

def crepBody425_27 : CrepProg (BitVec 64) :=
.seq crepBody425_24 crepBody425_26

def crepBody425_28 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64])) crepBody425_19

def crepBody425_29 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 48#64]) crepBody425_28

def crepBody425_30 : CrepProg (BitVec 64) :=
.seq crepBody425_27 crepBody425_29

def crepBody425_31 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 120#64])) crepBody425_19

def crepBody425_32 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 56#64]) crepBody425_31

def crepBody425_33 : CrepProg (BitVec 64) :=
.seq crepBody425_30 crepBody425_32

def crepBody425_34 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 40#64])) crepBody425_19

def crepBody425_35 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 64#64]) crepBody425_34

def crepBody425_36 : CrepProg (BitVec 64) :=
.seq crepBody425_33 crepBody425_35

def crepBody425_37 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 48#64])) crepBody425_19

def crepBody425_38 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 72#64]) crepBody425_37

def crepBody425_39 : CrepProg (BitVec 64) :=
.seq crepBody425_36 crepBody425_38

def crepBody425_40 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([6], none)) "compute_jumpdests"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 112#64]),
    Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 120#64])]

def crepBody425_41 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 7) (Flapjack.CrepExp.var 8)

def crepBody425_42 : CrepProg (BitVec 64) :=
.seq crepBody425_41 crepBody425_7

def crepBody425_43 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.var 6) crepBody425_42

def crepBody425_44 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 80#64]) crepBody425_43

def crepBody425_45 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([7], none)) "lst_new_scratch" [Flapjack.CrepExp.const 8#64, Flapjack.CrepExp.const 4#64]

def crepBody425_46 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 8) (Flapjack.CrepExp.var 9)

def crepBody425_47 : CrepProg (BitVec 64) :=
.seq crepBody425_46 crepBody425_7

def crepBody425_48 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 7) crepBody425_47

def crepBody425_49 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 88#64]) crepBody425_48

def crepBody425_50 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 1#64) crepBody425_47

def crepBody425_51 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 104#64]) crepBody425_50

def crepBody425_52 : CrepProg (BitVec 64) :=
.seq crepBody425_49 crepBody425_51

def crepBody425_53 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.var 0) crepBody425_47

def crepBody425_54 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 112#64]) crepBody425_53

def crepBody425_55 : CrepProg (BitVec 64) :=
.seq crepBody425_52 crepBody425_54

def crepBody425_56 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([8], none)) "htab_new_scratch" [Flapjack.CrepExp.const 20#64, Flapjack.CrepExp.const 4#64]

def crepBody425_57 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 9) (Flapjack.CrepExp.var 10)

def crepBody425_58 : CrepProg (BitVec 64) :=
.seq crepBody425_57 crepBody425_7

def crepBody425_59 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.var 8) crepBody425_58

def crepBody425_60 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 136#64]) crepBody425_59

def crepBody425_61 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 152#64])) crepBody425_58

def crepBody425_62 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 168#64]) crepBody425_61

def crepBody425_63 : CrepProg (BitVec 64) :=
.seq crepBody425_60 crepBody425_62

def crepBody425_64 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64])) crepBody425_58

def crepBody425_65 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 176#64]) crepBody425_64

def crepBody425_66 : CrepProg (BitVec 64) :=
.seq crepBody425_63 crepBody425_65

def crepBody425_67 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "htab_count"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 152#64])]

def crepBody425_68 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.store (Flapjack.CrepExp.var 10) (Flapjack.CrepExp.var 11)

def crepBody425_69 : CrepProg (BitVec 64) :=
.seq crepBody425_68 crepBody425_7

def crepBody425_70 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.var 9) crepBody425_69

def crepBody425_71 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 264#64]) crepBody425_70

def crepBody425_72 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.call (some ([9], none)) "htab_count"
  [Flapjack.CrepExp.load
      (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 0, Flapjack.CrepExp.const 160#64])]

def crepBody425_73 : CrepProg (BitVec 64) :=
.seq crepBody425_71 crepBody425_72

def crepBody425_74 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 272#64]) crepBody425_70

def crepBody425_75 : CrepProg (BitVec 64) :=
.seq crepBody425_73 crepBody425_74

def crepBody425_76 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.load (Flapjack.CrepExp.op Flapjack.BinOp.sub [Flapjack.CrepExp.topAddr, Flapjack.CrepExp.const 264#64])) crepBody425_69

def crepBody425_77 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 120#64]) crepBody425_76

def crepBody425_78 : CrepProg (BitVec 64) :=
.seq crepBody425_75 crepBody425_77

def crepBody425_79 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 144#64]) crepBody425_76

def crepBody425_80 : CrepProg (BitVec 64) :=
.seq crepBody425_78 crepBody425_79

def crepBody425_81 : CrepProg (BitVec 64) :=
.dec 11 (Flapjack.CrepExp.const 0#64) crepBody425_69

def crepBody425_82 : CrepProg (BitVec 64) :=
.dec 10 (Flapjack.CrepExp.op Flapjack.BinOp.add [Flapjack.CrepExp.var 3, Flapjack.CrepExp.const 216#64]) crepBody425_81

def crepBody425_83 : CrepProg (BitVec 64) :=
.seq crepBody425_80 crepBody425_82

def crepBody425_84 : CrepProg (BitVec 64) :=
Flapjack.CrepProg.return [Flapjack.CrepExp.var 3]

def crepBody425_85 : CrepProg (BitVec 64) :=
.seq crepBody425_83 crepBody425_84

def crepBody425_86 : CrepProg (BitVec 64) :=
.seq crepBody425_67 crepBody425_85

def crepBody425_87 : CrepProg (BitVec 64) :=
.dec 9 (Flapjack.CrepExp.const 0#64) crepBody425_86

def crepBody425_88 : CrepProg (BitVec 64) :=
.seq crepBody425_66 crepBody425_87

def crepBody425_89 : CrepProg (BitVec 64) :=
.seq crepBody425_56 crepBody425_88

def crepBody425_90 : CrepProg (BitVec 64) :=
.dec 8 (Flapjack.CrepExp.const 0#64) crepBody425_89

def crepBody425_91 : CrepProg (BitVec 64) :=
.seq crepBody425_55 crepBody425_90

def crepBody425_92 : CrepProg (BitVec 64) :=
.seq crepBody425_45 crepBody425_91

def crepBody425_93 : CrepProg (BitVec 64) :=
.dec 7 (Flapjack.CrepExp.const 0#64) crepBody425_92

def crepBody425_94 : CrepProg (BitVec 64) :=
.seq crepBody425_44 crepBody425_93

def crepBody425_95 : CrepProg (BitVec 64) :=
.seq crepBody425_40 crepBody425_94

def crepBody425_96 : CrepProg (BitVec 64) :=
.dec 6 (Flapjack.CrepExp.const 0#64) crepBody425_95

def crepBody425_97 : CrepProg (BitVec 64) :=
.seq crepBody425_39 crepBody425_96

def crepBody425_98 : CrepProg (BitVec 64) :=
.seq crepBody425_17 crepBody425_97

def crepBody425_99 : CrepProg (BitVec 64) :=
.dec 5 (Flapjack.CrepExp.const 0#64) crepBody425_98

def crepBody425_100 : CrepProg (BitVec 64) :=
.seq crepBody425_16 crepBody425_99

def crepBody425_101 : CrepProg (BitVec 64) :=
.seq crepBody425_5 crepBody425_100

def crepBody425_102 : CrepProg (BitVec 64) :=
.dec 4 (Flapjack.CrepExp.const 0#64) crepBody425_101

def crepBody425_103 : CrepProg (BitVec 64) :=
.seq crepBody425_4 crepBody425_102

def crepBody425_104 : CrepProg (BitVec 64) :=
.seq crepBody425_2 crepBody425_103

def crepBody425_105 : CrepProg (BitVec 64) :=
.dec 3 (Flapjack.CrepExp.const 0#64) crepBody425_104

def crepBody425_106 : CrepProg (BitVec 64) :=
.seq crepBody425_1 crepBody425_105

def crepBody425_107 : CrepProg (BitVec 64) :=
.dec 2 (Flapjack.CrepExp.const 0#64) crepBody425_106

def crepBody425_108 : CrepProg (BitVec 64) :=
.seq crepBody425_0 crepBody425_107

def crepBody425_109 : CrepProg (BitVec 64) :=
.dec 1 (Flapjack.CrepExp.const 0#64) crepBody425_108

def data425 : CrepProg (BitVec 64) := crepBody425_109
def output425 : MlS × List Nat × CrepProgHOL 64 :=
  (Flapjack.Basis.Pure.MlString.MlString.implode [102#8, 114#8, 97#8, 109#8, 101#8, 95#8, 110#8, 101#8, 119#8], [0], crepProgToHOL data425)
end InitECandidate.Proofs.FrontendStages.Crep
