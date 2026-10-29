import InitECandidate.Proofs.WordStages.Optimize799
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source815
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody815_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (50, 2)]

def optimizedBody815_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody815_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody815_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody815_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_2 optimizedBody815_3

def optimizedBody815_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_1, 815, 2)) (some 69) ([]) (some (2, optimizedBody815_4, 815, 3))

def optimizedBody815_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody815_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 48#64)

def optimizedBody815_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody815_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody815_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50)]

def optimizedBody815_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_10 optimizedBody815_3

def optimizedBody815_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_9, 815, 4)) (some 68) ([2]) (some (2, optimizedBody815_11, 815, 5))

def optimizedBody815_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 144#64)

def optimizedBody815_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0)]

def optimizedBody815_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (46, 46), (48, 48), (0, 50), (4, 52)]

def optimizedBody815_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (4, 52)]

def optimizedBody815_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_16 optimizedBody815_3

def optimizedBody815_18 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_15, 815, 6)) (some 68) ([2]) (some (2, optimizedBody815_17, 815, 7))

def optimizedBody815_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 6), (52, 4)]

def optimizedBody815_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (46, 46), (48, 48), (0, 50), (14, 52)]

def optimizedBody815_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (14, 52)]

def optimizedBody815_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_21 optimizedBody815_3

def optimizedBody815_23 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_20, 815, 8)) (some 727) ([2, 4]) (some (2, optimizedBody815_22, 815, 9))

def optimizedBody815_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody815_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody815_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 46), (50, 44)]

def optimizedBody815_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 50)]

def optimizedBody815_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 50)]

def optimizedBody815_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_28 optimizedBody815_3

def optimizedBody815_30 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_27, 815, 10)) (some 70) ([2]) (some (2, optimizedBody815_29, 815, 11))

def optimizedBody815_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody815_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody815_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 4 [2]

def optimizedBody815_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_32 optimizedBody815_33

def optimizedBody815_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_31 optimizedBody815_34

def optimizedBody815_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_35

def optimizedBody815_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_30 optimizedBody815_36

def optimizedBody815_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_26 optimizedBody815_37

def optimizedBody815_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_38

def optimizedBody815_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(46, 46), (48, 48), (0, 0), (14, 14), (44, 44)]

def optimizedBody815_41 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.WordRegImm.reg 2) optimizedBody815_39 optimizedBody815_40

def optimizedBody815_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody815_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody815_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 14 8#64))

def optimizedBody815_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody815_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 14 24#64))

def optimizedBody815_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 14 32#64))

def optimizedBody815_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 14 40#64))

def optimizedBody815_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody815_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody815_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (4, 48), (0, 50)]

def optimizedBody815_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_51 optimizedBody815_3

def optimizedBody815_53 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_50, 815, 12)) (some 799) ([2, 4, 6, 8, 10, 12, 14]) (some (2, optimizedBody815_52, 815, 13))

def optimizedBody815_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46)]

def optimizedBody815_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody815_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody815_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_56 optimizedBody815_3

def optimizedBody815_58 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_55, 815, 14)) (some 776) ([2, 4]) (some (2, optimizedBody815_57, 815, 15))

def optimizedBody815_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody815_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody815_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody815_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_61 optimizedBody815_3

def optimizedBody815_63 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody815_60, 815, 16)) (some 70) ([2]) (some (2, optimizedBody815_62, 815, 17))

def optimizedBody815_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody815_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_32 optimizedBody815_64

def optimizedBody815_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_25 optimizedBody815_65

def optimizedBody815_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_66

def optimizedBody815_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_63 optimizedBody815_67

def optimizedBody815_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_59 optimizedBody815_68

def optimizedBody815_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_69

def optimizedBody815_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_58 optimizedBody815_70

def optimizedBody815_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_54 optimizedBody815_71

def optimizedBody815_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_72

def optimizedBody815_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_53 optimizedBody815_73

def optimizedBody815_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_49 optimizedBody815_74

def optimizedBody815_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_48 optimizedBody815_75

def optimizedBody815_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_42 optimizedBody815_76

def optimizedBody815_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_47 optimizedBody815_77

def optimizedBody815_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_42 optimizedBody815_78

def optimizedBody815_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_46 optimizedBody815_79

def optimizedBody815_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_42 optimizedBody815_80

def optimizedBody815_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_45 optimizedBody815_81

def optimizedBody815_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_42 optimizedBody815_82

def optimizedBody815_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_44 optimizedBody815_83

def optimizedBody815_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_42 optimizedBody815_84

def optimizedBody815_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_43 optimizedBody815_85

def optimizedBody815_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_42 optimizedBody815_86

def optimizedBody815_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_87

def optimizedBody815_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_88

def optimizedBody815_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_41 optimizedBody815_89

def optimizedBody815_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_25 optimizedBody815_90

def optimizedBody815_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_24 optimizedBody815_91

def optimizedBody815_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_92

def optimizedBody815_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_23 optimizedBody815_93

def optimizedBody815_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_19 optimizedBody815_94

def optimizedBody815_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_95

def optimizedBody815_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_18 optimizedBody815_96

def optimizedBody815_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_14 optimizedBody815_97

def optimizedBody815_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_13 optimizedBody815_98

def optimizedBody815_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_99

def optimizedBody815_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_12 optimizedBody815_100

def optimizedBody815_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_8 optimizedBody815_101

def optimizedBody815_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_7 optimizedBody815_102

def optimizedBody815_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_6 optimizedBody815_103

def optimizedBody815_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_5 optimizedBody815_104

def optimizedBody815_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody815_0 optimizedBody815_105

def oracle815 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 3 (Flapjack.Spt.ls 5)) 1
      (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 2 (Flapjack.Spt.ls 4)))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.ls 3)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 4) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) (Flapjack.Spt.ls 7))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 6) (Flapjack.Spt.ls 1)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 24 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.ls 24)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 0) Flapjack.Spt.ln)
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 3) (Flapjack.Spt.ls 7))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 1 (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 2))
                (Flapjack.Spt.bs Flapjack.Spt.ln 23 (Flapjack.Spt.ls 22))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 0 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln) 1
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 2)))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 22 (Flapjack.Spt.bs (Flapjack.Spt.ls 7) 24 (Flapjack.Spt.ls 23)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 2) (Flapjack.Spt.ls 0))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) Flapjack.Spt.ln))
              (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 25 (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.ls 0))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs Flapjack.Spt.ln 0
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.ls 22))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs (Flapjack.Spt.ls 25) 25
                (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
              22 (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 23) 23 (Flapjack.Spt.ls 24))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.ls 25))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 24) 24 (Flapjack.Spt.ls 25))
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))))
            Flapjack.Spt.ln)
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.ls 22) 22 (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) 24
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))))
def optimized815 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(815, 3, optimizedBody815_106)
theorem optimize815_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source815, oracle815) = optimized815 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize815_eq
end InitECandidate.Proofs.WordStages
