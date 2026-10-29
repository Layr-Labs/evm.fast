import InitECandidate.Proofs.WordStages.Optimize725
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source741
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody741_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (26, 2)]

def optimizedBody741_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 2 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody741_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 4)]

def optimizedBody741_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 24 8#64))

def optimizedBody741_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(24, 24)]

def optimizedBody741_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 24 16#64))

def optimizedBody741_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 24 24#64))

def optimizedBody741_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 24 32#64))

def optimizedBody741_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 24 40#64))

def optimizedBody741_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 24 48#64))

def optimizedBody741_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 24 56#64))

def optimizedBody741_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 24 64#64))

def optimizedBody741_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 24 72#64))

def optimizedBody741_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 24 80#64))

def optimizedBody741_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 24 88#64))

def optimizedBody741_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0), (46, 8), (48, 22), (50, 20), (52, 16), (54, 2), (56, 26), (58, 18), (60, 6), (62, 12), (64, 10), (66, 24),
    (68, 4), (70, 14)]

def optimizedBody741_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 10), (4, 4), (6, 6), (12, 12), (36, 2), (8, 8), (44, 44), (28, 46), (22, 48), (20, 50), (16, 52), (34, 54),
    (52, 56), (18, 58), (26, 60), (32, 62), (30, 64), (24, 66), (0, 68), (14, 70)]

def optimizedBody741_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (28, 46), (22, 48), (20, 50), (16, 52), (34, 54), (52, 56), (18, 58), (26, 60), (32, 62), (30, 64),
    (24, 66), (0, 68), (14, 70)]

def optimizedBody741_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody741_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_17 optimizedBody741_18

def optimizedBody741_20 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody741_16, 741, 2)) (some 711) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody741_19, 741, 3))

def optimizedBody741_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody741_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 10), (48, 4), (50, 6), (52, 52), (54, 12), (56, 36), (58, 8)]

def optimizedBody741_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 10), (6, 6), (4, 4), (8, 8), (0, 2), (12, 12), (28, 44), (14, 46), (20, 48), (18, 50), (16, 52), (26, 54),
    (22, 56), (24, 58)]

def optimizedBody741_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44), (14, 46), (20, 48), (18, 50), (16, 52), (26, 54), (22, 56), (24, 58)]

def optimizedBody741_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_24 optimizedBody741_18

def optimizedBody741_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody741_23, 741, 4)) (some 710) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody741_25, 741, 5))

def optimizedBody741_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (22, 22), (26, 26), (14, 14), (24, 24), (18, 18), (20, 20)]

def optimizedBody741_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 16 0#64))

def optimizedBody741_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (20, 20)]

def optimizedBody741_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 16 8#64))

def optimizedBody741_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (18, 18)]

def optimizedBody741_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 16 16#64))

def optimizedBody741_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (24, 24)]

def optimizedBody741_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 16 24#64))

def optimizedBody741_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody741_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 16 32#64))

def optimizedBody741_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (26, 26)]

def optimizedBody741_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 16 40#64))

def optimizedBody741_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16)]

def optimizedBody741_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 16 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody741_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody741_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody741_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody741_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody741_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody741_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody741_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody741_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody741_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody741_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody741_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody741_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody741_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody741_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody741_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody741_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_54 optimizedBody741_55

def optimizedBody741_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_53 optimizedBody741_56

def optimizedBody741_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_52 optimizedBody741_57

def optimizedBody741_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_51 optimizedBody741_58

def optimizedBody741_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_50 optimizedBody741_59

def optimizedBody741_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_49 optimizedBody741_60

def optimizedBody741_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_48 optimizedBody741_61

def optimizedBody741_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_47 optimizedBody741_62

def optimizedBody741_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_46 optimizedBody741_63

def optimizedBody741_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_45 optimizedBody741_64

def optimizedBody741_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_44 optimizedBody741_65

def optimizedBody741_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_43 optimizedBody741_66

def optimizedBody741_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_42 optimizedBody741_67

def optimizedBody741_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_41 optimizedBody741_68

def optimizedBody741_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_40 optimizedBody741_69

def optimizedBody741_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_39 optimizedBody741_70

def optimizedBody741_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_38 optimizedBody741_71

def optimizedBody741_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_37 optimizedBody741_72

def optimizedBody741_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_36 optimizedBody741_73

def optimizedBody741_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_35 optimizedBody741_74

def optimizedBody741_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_34 optimizedBody741_75

def optimizedBody741_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_33 optimizedBody741_76

def optimizedBody741_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_32 optimizedBody741_77

def optimizedBody741_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_31 optimizedBody741_78

def optimizedBody741_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_30 optimizedBody741_79

def optimizedBody741_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_29 optimizedBody741_80

def optimizedBody741_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_28 optimizedBody741_81

def optimizedBody741_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_27 optimizedBody741_82

def optimizedBody741_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_21 optimizedBody741_83

def optimizedBody741_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_26 optimizedBody741_84

def optimizedBody741_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_22 optimizedBody741_85

def optimizedBody741_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_21 optimizedBody741_86

def optimizedBody741_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_20 optimizedBody741_87

def optimizedBody741_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_15 optimizedBody741_88

def optimizedBody741_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_14 optimizedBody741_89

def optimizedBody741_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_90

def optimizedBody741_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_13 optimizedBody741_91

def optimizedBody741_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_92

def optimizedBody741_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_12 optimizedBody741_93

def optimizedBody741_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_94

def optimizedBody741_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_11 optimizedBody741_95

def optimizedBody741_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_96

def optimizedBody741_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_10 optimizedBody741_97

def optimizedBody741_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_98

def optimizedBody741_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_9 optimizedBody741_99

def optimizedBody741_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_100

def optimizedBody741_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_8 optimizedBody741_101

def optimizedBody741_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_102

def optimizedBody741_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_7 optimizedBody741_103

def optimizedBody741_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_104

def optimizedBody741_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_6 optimizedBody741_105

def optimizedBody741_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_106

def optimizedBody741_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_5 optimizedBody741_107

def optimizedBody741_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_4 optimizedBody741_108

def optimizedBody741_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_3 optimizedBody741_109

def optimizedBody741_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_2 optimizedBody741_110

def optimizedBody741_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_1 optimizedBody741_111

def optimizedBody741_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody741_0 optimizedBody741_112

def oracle741 : Option (Spt Nat) :=
some
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 11)) 3
        (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 9)))
      1
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 10)) 2
        (Flapjack.Spt.bs (Flapjack.Spt.ls 12) 4 (Flapjack.Spt.ls 8))))
    0
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 8) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 12
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.ls 3))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 13)))
                2 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 12 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 14) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 12
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 12
                  (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 0))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 10)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 8)) 12 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 10) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8))) 12
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 12
                  (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 2))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 12)))
                13 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 1)) 12 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                12 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 12 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 9))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 8)) 12
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 9) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))) 4
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 12 (Flapjack.Spt.ls 8)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 7)))
                (Flapjack.Spt.ls 8)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                2
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 10
                  (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 13))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 13)) 6
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.ls 7) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9))) 3
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 11
                  (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 4))))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.ls 9)))
                0 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 8)) 7 Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)))
                1 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 9 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 26 (Flapjack.Spt.ls 5)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)) 5
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 26) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))))))))
def optimized741 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(741, 3, optimizedBody741_113)
theorem optimize741_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source741, oracle741) = optimized741 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize741_eq
end InitECandidate.Proofs.WordStages
