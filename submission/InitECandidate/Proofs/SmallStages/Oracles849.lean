import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source849
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles849
def optimizedBody849_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody849_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody849_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody849_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 0)]

def optimizedBody849_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody849_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody849_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody849_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_5 optimizedBody849_6

def optimizedBody849_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 2)) (some 844) ([]) (some (2, optimizedBody849_7, 849, 3))

def optimizedBody849_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody849_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody849_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody849_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_10 optimizedBody849_11

def optimizedBody849_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_9 optimizedBody849_12

def optimizedBody849_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_13

def optimizedBody849_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_8 optimizedBody849_14

def optimizedBody849_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_3 optimizedBody849_15

def optimizedBody849_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_16

def optimizedBody849_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (44, 0)]

def optimizedBody849_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody849_17 optimizedBody849_18

def optimizedBody849_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody849_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody849_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 44)]

def optimizedBody849_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 4)) (some 843) ([]) (some (2, optimizedBody849_7, 849, 5))

def optimizedBody849_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_23 optimizedBody849_14

def optimizedBody849_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_24

def optimizedBody849_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_25

def optimizedBody849_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (44, 44)]

def optimizedBody849_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_26 optimizedBody849_27

def optimizedBody849_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 3#64)

def optimizedBody849_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 6)) (some 845) ([]) (some (2, optimizedBody849_7, 849, 7))

def optimizedBody849_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_30 optimizedBody849_14

def optimizedBody849_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_31

def optimizedBody849_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_32

def optimizedBody849_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_33 optimizedBody849_27

def optimizedBody849_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody849_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 8)) (some 842) ([]) (some (2, optimizedBody849_7, 849, 9))

def optimizedBody849_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_36 optimizedBody849_14

def optimizedBody849_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_37

def optimizedBody849_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_38

def optimizedBody849_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_39 optimizedBody849_27

def optimizedBody849_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 6#64)

def optimizedBody849_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 10)) (some 710) ([]) (some (2, optimizedBody849_7, 849, 11))

def optimizedBody849_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_42 optimizedBody849_14

def optimizedBody849_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_43

def optimizedBody849_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_44

def optimizedBody849_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_45 optimizedBody849_27

def optimizedBody849_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 7#64)

def optimizedBody849_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 12)) (some 711) ([]) (some (2, optimizedBody849_7, 849, 13))

def optimizedBody849_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_48 optimizedBody849_14

def optimizedBody849_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_49

def optimizedBody849_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_50

def optimizedBody849_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_51 optimizedBody849_27

def optimizedBody849_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 8#64)

def optimizedBody849_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 14)) (some 712) ([]) (some (2, optimizedBody849_7, 849, 15))

def optimizedBody849_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_54 optimizedBody849_14

def optimizedBody849_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_55

def optimizedBody849_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_56

def optimizedBody849_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_57 optimizedBody849_27

def optimizedBody849_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 5#64)

def optimizedBody849_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 16)) (some 848) ([]) (some (2, optimizedBody849_7, 849, 17))

def optimizedBody849_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_60 optimizedBody849_14

def optimizedBody849_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_61

def optimizedBody849_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_62

def optimizedBody849_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_63 optimizedBody849_27

def optimizedBody849_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 9#64)

def optimizedBody849_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 18)) (some 846) ([]) (some (2, optimizedBody849_7, 849, 19))

def optimizedBody849_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_66 optimizedBody849_14

def optimizedBody849_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_67

def optimizedBody849_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_68

def optimizedBody849_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_69 optimizedBody849_27

def optimizedBody849_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody849_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 20)) (some 840) ([]) (some (2, optimizedBody849_7, 849, 21))

def optimizedBody849_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_72 optimizedBody849_14

def optimizedBody849_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_73

def optimizedBody849_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_74

def optimizedBody849_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_75 optimizedBody849_27

def optimizedBody849_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 11#64)

def optimizedBody849_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 22)) (some 833) ([]) (some (2, optimizedBody849_7, 849, 23))

def optimizedBody849_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_78 optimizedBody849_14

def optimizedBody849_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_79

def optimizedBody849_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_80

def optimizedBody849_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_81 optimizedBody849_27

def optimizedBody849_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 12#64)

def optimizedBody849_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 24)) (some 834) ([]) (some (2, optimizedBody849_7, 849, 25))

def optimizedBody849_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_84 optimizedBody849_14

def optimizedBody849_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_85

def optimizedBody849_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_86

def optimizedBody849_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_87 optimizedBody849_27

def optimizedBody849_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 13#64)

def optimizedBody849_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 26)) (some 835) ([]) (some (2, optimizedBody849_7, 849, 27))

def optimizedBody849_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_90 optimizedBody849_14

def optimizedBody849_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_91

def optimizedBody849_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_92

def optimizedBody849_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_93 optimizedBody849_27

def optimizedBody849_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 14#64)

def optimizedBody849_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 28)) (some 836) ([]) (some (2, optimizedBody849_7, 849, 29))

def optimizedBody849_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_96 optimizedBody849_14

def optimizedBody849_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_97

def optimizedBody849_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_98

def optimizedBody849_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_99 optimizedBody849_27

def optimizedBody849_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 15#64)

def optimizedBody849_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 30)) (some 837) ([]) (some (2, optimizedBody849_7, 849, 31))

def optimizedBody849_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_102 optimizedBody849_14

def optimizedBody849_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_103

def optimizedBody849_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_104

def optimizedBody849_106 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_105 optimizedBody849_27

def optimizedBody849_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 16#64)

def optimizedBody849_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 32)) (some 838) ([]) (some (2, optimizedBody849_7, 849, 33))

def optimizedBody849_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_108 optimizedBody849_14

def optimizedBody849_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_109

def optimizedBody849_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_110

def optimizedBody849_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_111 optimizedBody849_27

def optimizedBody849_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def optimizedBody849_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_4, 849, 34)) (some 839) ([]) (some (2, optimizedBody849_7, 849, 35))

def optimizedBody849_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_114 optimizedBody849_14

def optimizedBody849_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_22 optimizedBody849_115

def optimizedBody849_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_116

def optimizedBody849_118 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_117 optimizedBody849_27

def optimizedBody849_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 18#64)

def optimizedBody849_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody849_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody849_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody849_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_122 optimizedBody849_6

def optimizedBody849_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody849_121, 849, 36)) (some 657) ([]) (some (2, optimizedBody849_123, 849, 37))

def optimizedBody849_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_124 optimizedBody849_14

def optimizedBody849_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_120 optimizedBody849_125

def optimizedBody849_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_126

def optimizedBody849_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody849_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody849_127 optimizedBody849_128

def optimizedBody849_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 99#64)

def optimizedBody849_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody849_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody849_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody849_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody849_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_134 optimizedBody849_6

def optimizedBody849_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_133 optimizedBody849_135

def optimizedBody849_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_132 optimizedBody849_136

def optimizedBody849_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_131 optimizedBody849_137

def optimizedBody849_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_130 optimizedBody849_138

def optimizedBody849_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_139

def optimizedBody849_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_140

def optimizedBody849_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_129 optimizedBody849_141

def optimizedBody849_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_119 optimizedBody849_142

def optimizedBody849_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_143

def optimizedBody849_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_144

def optimizedBody849_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_145

def optimizedBody849_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_118 optimizedBody849_146

def optimizedBody849_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_113 optimizedBody849_147

def optimizedBody849_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_148

def optimizedBody849_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_149

def optimizedBody849_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_150

def optimizedBody849_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_112 optimizedBody849_151

def optimizedBody849_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_107 optimizedBody849_152

def optimizedBody849_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_153

def optimizedBody849_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_154

def optimizedBody849_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_155

def optimizedBody849_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_106 optimizedBody849_156

def optimizedBody849_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_101 optimizedBody849_157

def optimizedBody849_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_158

def optimizedBody849_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_159

def optimizedBody849_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_160

def optimizedBody849_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_100 optimizedBody849_161

def optimizedBody849_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_95 optimizedBody849_162

def optimizedBody849_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_163

def optimizedBody849_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_164

def optimizedBody849_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_165

def optimizedBody849_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_94 optimizedBody849_166

def optimizedBody849_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_89 optimizedBody849_167

def optimizedBody849_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_168

def optimizedBody849_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_169

def optimizedBody849_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_170

def optimizedBody849_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_88 optimizedBody849_171

def optimizedBody849_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_83 optimizedBody849_172

def optimizedBody849_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_173

def optimizedBody849_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_174

def optimizedBody849_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_175

def optimizedBody849_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_82 optimizedBody849_176

def optimizedBody849_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_77 optimizedBody849_177

def optimizedBody849_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_178

def optimizedBody849_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_179

def optimizedBody849_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_180

def optimizedBody849_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_76 optimizedBody849_181

def optimizedBody849_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_71 optimizedBody849_182

def optimizedBody849_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_183

def optimizedBody849_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_184

def optimizedBody849_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_185

def optimizedBody849_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_70 optimizedBody849_186

def optimizedBody849_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_65 optimizedBody849_187

def optimizedBody849_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_188

def optimizedBody849_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_189

def optimizedBody849_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_190

def optimizedBody849_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_64 optimizedBody849_191

def optimizedBody849_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_59 optimizedBody849_192

def optimizedBody849_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_193

def optimizedBody849_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_194

def optimizedBody849_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_195

def optimizedBody849_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_58 optimizedBody849_196

def optimizedBody849_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_53 optimizedBody849_197

def optimizedBody849_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_198

def optimizedBody849_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_199

def optimizedBody849_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_200

def optimizedBody849_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_52 optimizedBody849_201

def optimizedBody849_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_47 optimizedBody849_202

def optimizedBody849_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_203

def optimizedBody849_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_204

def optimizedBody849_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_205

def optimizedBody849_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_46 optimizedBody849_206

def optimizedBody849_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_41 optimizedBody849_207

def optimizedBody849_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_208

def optimizedBody849_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_209

def optimizedBody849_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_210

def optimizedBody849_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_40 optimizedBody849_211

def optimizedBody849_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_35 optimizedBody849_212

def optimizedBody849_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_213

def optimizedBody849_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_214

def optimizedBody849_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_215

def optimizedBody849_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_34 optimizedBody849_216

def optimizedBody849_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_29 optimizedBody849_217

def optimizedBody849_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_218

def optimizedBody849_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_219

def optimizedBody849_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_220

def optimizedBody849_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_28 optimizedBody849_221

def optimizedBody849_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_21 optimizedBody849_222

def optimizedBody849_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_20 optimizedBody849_223

def optimizedBody849_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_224

def optimizedBody849_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_2 optimizedBody849_225

def optimizedBody849_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_19 optimizedBody849_226

def optimizedBody849_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_1 optimizedBody849_227

def optimizedBody849_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody849_0 optimizedBody849_228

def oracle849 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  2 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))))
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                  2 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))))
              0
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 1 (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))))
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 2 Flapjack.Spt.ln) 1
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))))
          0
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                  0 (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))))
            2
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln))
                0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 0)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) (Flapjack.Spt.ls 0))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 22)))
                0
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 1)) 0 Flapjack.Spt.ln)
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln))))
            1
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln) 22
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 0 Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) (Flapjack.Spt.ls 22))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) 0
                  (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                22
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 22)))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))))
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) Flapjack.Spt.ln)
                  2 (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln)))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) (Flapjack.Spt.ls 2)) 2
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) Flapjack.Spt.ln))
                2
                (Flapjack.Spt.bn (Flapjack.Spt.ls 2)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)))
                1 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) Flapjack.Spt.ln) (Flapjack.Spt.ls 2)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
                23
                (Flapjack.Spt.bn (Flapjack.Spt.ls 23)
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) (Flapjack.Spt.ls 23))
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))
                  (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln))
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln))))
def optimized849 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(849, 2, optimizedBody849_229)
end InitECandidate.Proofs.SmallStages.Oracles849
