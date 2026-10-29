import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody742_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (14, 6), (16, 8), (18, 10), (20, 12), (22, 14), (24, 16)]

def optimizedBody742_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody742_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 4)]

def optimizedBody742_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 26 8#64))

def optimizedBody742_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody742_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 26 16#64))

def optimizedBody742_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 26 24#64))

def optimizedBody742_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 26 32#64))

def optimizedBody742_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 26 40#64))

def optimizedBody742_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 26 48#64))

def optimizedBody742_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 26 56#64))

def optimizedBody742_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 26 64#64))

def optimizedBody742_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 26 72#64))

def optimizedBody742_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 38 (Flapjack.WordLangAddr.addr 26 80#64))

def optimizedBody742_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 26 88#64))

def optimizedBody742_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 28), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0), (46, 24), (48, 16), (50, 36), (52, 30), (54, 20), (56, 26), (58, 2), (60, 18), (62, 38), (64, 14),
    (66, 34), (68, 32), (70, 22)]

def optimizedBody742_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 8), (6, 6), (12, 12), (36, 2), (10, 10), (44, 44), (24, 46), (16, 48), (26, 50), (0, 52), (20, 54),
    (32, 56), (54, 58), (18, 60), (30, 62), (14, 64), (28, 66), (34, 68), (22, 70)]

def optimizedBody742_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (16, 48), (26, 50), (0, 52), (20, 54), (32, 56), (54, 58), (18, 60), (30, 62), (14, 64),
    (28, 66), (34, 68), (22, 70)]

def optimizedBody742_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody742_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_17 optimizedBody742_18

def optimizedBody742_20 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody742_16, 742, 2)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody742_19, 742, 3))

def optimizedBody742_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody742_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 4), (48, 8), (50, 6), (52, 12), (54, 54), (56, 36), (58, 10)]

def optimizedBody742_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (10, 10), (8, 8), (4, 4), (12, 12), (6, 6), (28, 44), (18, 46), (26, 48), (16, 50), (24, 52), (14, 54),
    (20, 56), (22, 58)]

def optimizedBody742_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44), (18, 46), (26, 48), (16, 50), (24, 52), (14, 54), (20, 56), (22, 58)]

def optimizedBody742_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_24 optimizedBody742_18

def optimizedBody742_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8, 10, 12]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody742_23, 742, 4)) (some 714) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody742_25, 742, 5))

def optimizedBody742_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (20, 20), (24, 24), (22, 22), (26, 26), (16, 16), (18, 18)]

def optimizedBody742_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody742_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (18, 18)]

def optimizedBody742_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 14 8#64))

def optimizedBody742_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (16, 16)]

def optimizedBody742_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody742_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (26, 26)]

def optimizedBody742_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 14 24#64))

def optimizedBody742_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (22, 22)]

def optimizedBody742_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 14 32#64))

def optimizedBody742_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (24, 24)]

def optimizedBody742_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 14 40#64))

def optimizedBody742_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody742_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody742_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody742_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody742_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody742_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody742_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody742_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody742_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody742_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody742_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody742_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody742_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody742_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody742_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody742_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody742_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody742_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_54 optimizedBody742_55

def optimizedBody742_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_53 optimizedBody742_56

def optimizedBody742_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_52 optimizedBody742_57

def optimizedBody742_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_51 optimizedBody742_58

def optimizedBody742_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_50 optimizedBody742_59

def optimizedBody742_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_49 optimizedBody742_60

def optimizedBody742_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_48 optimizedBody742_61

def optimizedBody742_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_47 optimizedBody742_62

def optimizedBody742_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_46 optimizedBody742_63

def optimizedBody742_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_45 optimizedBody742_64

def optimizedBody742_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_44 optimizedBody742_65

def optimizedBody742_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_43 optimizedBody742_66

def optimizedBody742_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_42 optimizedBody742_67

def optimizedBody742_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_41 optimizedBody742_68

def optimizedBody742_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_40 optimizedBody742_69

def optimizedBody742_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_39 optimizedBody742_70

def optimizedBody742_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_38 optimizedBody742_71

def optimizedBody742_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_37 optimizedBody742_72

def optimizedBody742_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_36 optimizedBody742_73

def optimizedBody742_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_35 optimizedBody742_74

def optimizedBody742_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_34 optimizedBody742_75

def optimizedBody742_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_33 optimizedBody742_76

def optimizedBody742_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_32 optimizedBody742_77

def optimizedBody742_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_31 optimizedBody742_78

def optimizedBody742_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_30 optimizedBody742_79

def optimizedBody742_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_29 optimizedBody742_80

def optimizedBody742_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_28 optimizedBody742_81

def optimizedBody742_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_27 optimizedBody742_82

def optimizedBody742_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_21 optimizedBody742_83

def optimizedBody742_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_26 optimizedBody742_84

def optimizedBody742_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_22 optimizedBody742_85

def optimizedBody742_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_21 optimizedBody742_86

def optimizedBody742_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_20 optimizedBody742_87

def optimizedBody742_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_15 optimizedBody742_88

def optimizedBody742_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_14 optimizedBody742_89

def optimizedBody742_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_90

def optimizedBody742_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_13 optimizedBody742_91

def optimizedBody742_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_92

def optimizedBody742_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_12 optimizedBody742_93

def optimizedBody742_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_94

def optimizedBody742_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_11 optimizedBody742_95

def optimizedBody742_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_96

def optimizedBody742_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_10 optimizedBody742_97

def optimizedBody742_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_98

def optimizedBody742_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_9 optimizedBody742_99

def optimizedBody742_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_100

def optimizedBody742_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_8 optimizedBody742_101

def optimizedBody742_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_102

def optimizedBody742_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_7 optimizedBody742_103

def optimizedBody742_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_104

def optimizedBody742_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_6 optimizedBody742_105

def optimizedBody742_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_106

def optimizedBody742_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_5 optimizedBody742_107

def optimizedBody742_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_4 optimizedBody742_108

def optimizedBody742_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_3 optimizedBody742_109

def optimizedBody742_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_2 optimizedBody742_110

def optimizedBody742_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_1 optimizedBody742_111

def optimizedBody742_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody742_0 optimizedBody742_112

def optimized742 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(742, 9, optimizedBody742_113)
end InitECandidate.Proofs.StackAnalysis
