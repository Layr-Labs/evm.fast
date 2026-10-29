import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody837_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (0, 0)]

def optimizedBody837_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody837_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody837_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 0)]

def optimizedBody837_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 46)]

def optimizedBody837_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 46)]

def optimizedBody837_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody837_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_5 optimizedBody837_6

def optimizedBody837_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 2)) (some 832) ([]) (some (2, optimizedBody837_7, 837, 3))

def optimizedBody837_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody837_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody837_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody837_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_10 optimizedBody837_11

def optimizedBody837_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_9 optimizedBody837_12

def optimizedBody837_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_13

def optimizedBody837_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_8 optimizedBody837_14

def optimizedBody837_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_3 optimizedBody837_15

def optimizedBody837_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_16

def optimizedBody837_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (44, 0)]

def optimizedBody837_19 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody837_17 optimizedBody837_18

def optimizedBody837_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody837_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 2#64)

def optimizedBody837_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(46, 44)]

def optimizedBody837_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 4)) (some 831) ([]) (some (2, optimizedBody837_7, 837, 5))

def optimizedBody837_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_23 optimizedBody837_14

def optimizedBody837_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_24

def optimizedBody837_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_25

def optimizedBody837_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (44, 44)]

def optimizedBody837_28 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_26 optimizedBody837_27

def optimizedBody837_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 3#64)

def optimizedBody837_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 6)) (some 833) ([]) (some (2, optimizedBody837_7, 837, 7))

def optimizedBody837_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_30 optimizedBody837_14

def optimizedBody837_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_31

def optimizedBody837_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_32

def optimizedBody837_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_33 optimizedBody837_27

def optimizedBody837_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 4#64)

def optimizedBody837_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 8)) (some 830) ([]) (some (2, optimizedBody837_7, 837, 9))

def optimizedBody837_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_36 optimizedBody837_14

def optimizedBody837_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_37

def optimizedBody837_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_38

def optimizedBody837_40 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_39 optimizedBody837_27

def optimizedBody837_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 6#64)

def optimizedBody837_42 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 10)) (some 701) ([]) (some (2, optimizedBody837_7, 837, 11))

def optimizedBody837_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_42 optimizedBody837_14

def optimizedBody837_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_43

def optimizedBody837_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_44

def optimizedBody837_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_45 optimizedBody837_27

def optimizedBody837_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 7#64)

def optimizedBody837_48 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 12)) (some 702) ([]) (some (2, optimizedBody837_7, 837, 13))

def optimizedBody837_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_48 optimizedBody837_14

def optimizedBody837_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_49

def optimizedBody837_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_50

def optimizedBody837_52 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_51 optimizedBody837_27

def optimizedBody837_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 8#64)

def optimizedBody837_54 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 14)) (some 703) ([]) (some (2, optimizedBody837_7, 837, 15))

def optimizedBody837_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_54 optimizedBody837_14

def optimizedBody837_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_55

def optimizedBody837_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_56

def optimizedBody837_58 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_57 optimizedBody837_27

def optimizedBody837_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 5#64)

def optimizedBody837_60 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 16)) (some 836) ([]) (some (2, optimizedBody837_7, 837, 17))

def optimizedBody837_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_60 optimizedBody837_14

def optimizedBody837_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_61

def optimizedBody837_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_62

def optimizedBody837_64 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_63 optimizedBody837_27

def optimizedBody837_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 9#64)

def optimizedBody837_66 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 18)) (some 834) ([]) (some (2, optimizedBody837_7, 837, 19))

def optimizedBody837_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_66 optimizedBody837_14

def optimizedBody837_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_67

def optimizedBody837_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_68

def optimizedBody837_70 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_69 optimizedBody837_27

def optimizedBody837_71 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 10#64)

def optimizedBody837_72 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 20)) (some 828) ([]) (some (2, optimizedBody837_7, 837, 21))

def optimizedBody837_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_72 optimizedBody837_14

def optimizedBody837_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_73

def optimizedBody837_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_74

def optimizedBody837_76 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_75 optimizedBody837_27

def optimizedBody837_77 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 11#64)

def optimizedBody837_78 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 22)) (some 821) ([]) (some (2, optimizedBody837_7, 837, 23))

def optimizedBody837_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_78 optimizedBody837_14

def optimizedBody837_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_79

def optimizedBody837_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_80

def optimizedBody837_82 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_81 optimizedBody837_27

def optimizedBody837_83 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 12#64)

def optimizedBody837_84 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 24)) (some 822) ([]) (some (2, optimizedBody837_7, 837, 25))

def optimizedBody837_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_84 optimizedBody837_14

def optimizedBody837_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_85

def optimizedBody837_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_86

def optimizedBody837_88 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_87 optimizedBody837_27

def optimizedBody837_89 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 13#64)

def optimizedBody837_90 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 26)) (some 823) ([]) (some (2, optimizedBody837_7, 837, 27))

def optimizedBody837_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_90 optimizedBody837_14

def optimizedBody837_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_91

def optimizedBody837_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_92

def optimizedBody837_94 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_93 optimizedBody837_27

def optimizedBody837_95 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 14#64)

def optimizedBody837_96 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 28)) (some 824) ([]) (some (2, optimizedBody837_7, 837, 29))

def optimizedBody837_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_96 optimizedBody837_14

def optimizedBody837_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_97

def optimizedBody837_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_98

def optimizedBody837_100 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_99 optimizedBody837_27

def optimizedBody837_101 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 15#64)

def optimizedBody837_102 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 30)) (some 825) ([]) (some (2, optimizedBody837_7, 837, 31))

def optimizedBody837_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_102 optimizedBody837_14

def optimizedBody837_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_103

def optimizedBody837_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_104

def optimizedBody837_106 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_105 optimizedBody837_27

def optimizedBody837_107 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 16#64)

def optimizedBody837_108 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 32)) (some 826) ([]) (some (2, optimizedBody837_7, 837, 33))

def optimizedBody837_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_108 optimizedBody837_14

def optimizedBody837_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_109

def optimizedBody837_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_110

def optimizedBody837_112 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_111 optimizedBody837_27

def optimizedBody837_113 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 17#64)

def optimizedBody837_114 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_4, 837, 34)) (some 827) ([]) (some (2, optimizedBody837_7, 837, 35))

def optimizedBody837_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_114 optimizedBody837_14

def optimizedBody837_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_22 optimizedBody837_115

def optimizedBody837_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_116

def optimizedBody837_118 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_117 optimizedBody837_27

def optimizedBody837_119 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 18#64)

def optimizedBody837_120 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody837_121 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody837_122 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody837_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_122 optimizedBody837_6

def optimizedBody837_124 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody837_121, 837, 36)) (some 656) ([]) (some (2, optimizedBody837_123, 837, 37))

def optimizedBody837_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_124 optimizedBody837_14

def optimizedBody837_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_120 optimizedBody837_125

def optimizedBody837_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_126

def optimizedBody837_128 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody837_129 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 0) optimizedBody837_127 optimizedBody837_128

def optimizedBody837_130 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 99#64)

def optimizedBody837_131 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody837_132 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 0)

def optimizedBody837_133 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 4#64)

def optimizedBody837_134 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2)]

def optimizedBody837_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_134 optimizedBody837_6

def optimizedBody837_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_133 optimizedBody837_135

def optimizedBody837_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_132 optimizedBody837_136

def optimizedBody837_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_131 optimizedBody837_137

def optimizedBody837_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_130 optimizedBody837_138

def optimizedBody837_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_139

def optimizedBody837_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_140

def optimizedBody837_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_129 optimizedBody837_141

def optimizedBody837_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_119 optimizedBody837_142

def optimizedBody837_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_143

def optimizedBody837_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_144

def optimizedBody837_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_145

def optimizedBody837_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_118 optimizedBody837_146

def optimizedBody837_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_113 optimizedBody837_147

def optimizedBody837_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_148

def optimizedBody837_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_149

def optimizedBody837_151 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_150

def optimizedBody837_152 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_112 optimizedBody837_151

def optimizedBody837_153 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_107 optimizedBody837_152

def optimizedBody837_154 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_153

def optimizedBody837_155 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_154

def optimizedBody837_156 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_155

def optimizedBody837_157 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_106 optimizedBody837_156

def optimizedBody837_158 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_101 optimizedBody837_157

def optimizedBody837_159 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_158

def optimizedBody837_160 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_159

def optimizedBody837_161 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_160

def optimizedBody837_162 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_100 optimizedBody837_161

def optimizedBody837_163 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_95 optimizedBody837_162

def optimizedBody837_164 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_163

def optimizedBody837_165 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_164

def optimizedBody837_166 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_165

def optimizedBody837_167 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_94 optimizedBody837_166

def optimizedBody837_168 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_89 optimizedBody837_167

def optimizedBody837_169 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_168

def optimizedBody837_170 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_169

def optimizedBody837_171 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_170

def optimizedBody837_172 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_88 optimizedBody837_171

def optimizedBody837_173 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_83 optimizedBody837_172

def optimizedBody837_174 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_173

def optimizedBody837_175 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_174

def optimizedBody837_176 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_175

def optimizedBody837_177 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_82 optimizedBody837_176

def optimizedBody837_178 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_77 optimizedBody837_177

def optimizedBody837_179 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_178

def optimizedBody837_180 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_179

def optimizedBody837_181 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_180

def optimizedBody837_182 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_76 optimizedBody837_181

def optimizedBody837_183 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_71 optimizedBody837_182

def optimizedBody837_184 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_183

def optimizedBody837_185 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_184

def optimizedBody837_186 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_185

def optimizedBody837_187 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_70 optimizedBody837_186

def optimizedBody837_188 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_65 optimizedBody837_187

def optimizedBody837_189 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_188

def optimizedBody837_190 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_189

def optimizedBody837_191 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_190

def optimizedBody837_192 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_64 optimizedBody837_191

def optimizedBody837_193 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_59 optimizedBody837_192

def optimizedBody837_194 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_193

def optimizedBody837_195 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_194

def optimizedBody837_196 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_195

def optimizedBody837_197 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_58 optimizedBody837_196

def optimizedBody837_198 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_53 optimizedBody837_197

def optimizedBody837_199 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_198

def optimizedBody837_200 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_199

def optimizedBody837_201 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_200

def optimizedBody837_202 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_52 optimizedBody837_201

def optimizedBody837_203 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_47 optimizedBody837_202

def optimizedBody837_204 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_203

def optimizedBody837_205 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_204

def optimizedBody837_206 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_205

def optimizedBody837_207 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_46 optimizedBody837_206

def optimizedBody837_208 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_41 optimizedBody837_207

def optimizedBody837_209 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_208

def optimizedBody837_210 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_209

def optimizedBody837_211 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_210

def optimizedBody837_212 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_40 optimizedBody837_211

def optimizedBody837_213 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_35 optimizedBody837_212

def optimizedBody837_214 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_213

def optimizedBody837_215 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_214

def optimizedBody837_216 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_215

def optimizedBody837_217 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_34 optimizedBody837_216

def optimizedBody837_218 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_29 optimizedBody837_217

def optimizedBody837_219 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_218

def optimizedBody837_220 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_219

def optimizedBody837_221 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_220

def optimizedBody837_222 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_28 optimizedBody837_221

def optimizedBody837_223 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_21 optimizedBody837_222

def optimizedBody837_224 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_20 optimizedBody837_223

def optimizedBody837_225 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_224

def optimizedBody837_226 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_2 optimizedBody837_225

def optimizedBody837_227 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_19 optimizedBody837_226

def optimizedBody837_228 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_1 optimizedBody837_227

def optimizedBody837_229 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody837_0 optimizedBody837_228

def optimized837 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(837, 2, optimizedBody837_229)
end InitECandidate.Proofs.StackAnalysis
