import InitECandidate.Proofs.SmallOptimizerComputation
import InitECandidate.Proofs.WordStages.Source753
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Oracles753
def optimizedBody753_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (14, 6), (16, 8), (18, 10), (20, 12), (22, 14), (24, 16)]

def optimizedBody753_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody753_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 4)]

def optimizedBody753_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 26 8#64))

def optimizedBody753_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(26, 26)]

def optimizedBody753_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 26 16#64))

def optimizedBody753_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 26 24#64))

def optimizedBody753_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 26 32#64))

def optimizedBody753_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 26 40#64))

def optimizedBody753_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 26 48#64))

def optimizedBody753_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 26 56#64))

def optimizedBody753_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 26 64#64))

def optimizedBody753_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 26 72#64))

def optimizedBody753_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 38 (Flapjack.WordLangAddr.addr 26 80#64))

def optimizedBody753_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 26 88#64))

def optimizedBody753_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 28), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0), (46, 24), (48, 16), (50, 36), (52, 30), (54, 20), (56, 26), (58, 2), (60, 18), (62, 38), (64, 14),
    (66, 34), (68, 32), (70, 22)]

def optimizedBody753_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(4, 4), (8, 8), (6, 6), (12, 12), (36, 2), (10, 10), (44, 44), (24, 46), (16, 48), (26, 50), (0, 52), (20, 54),
    (32, 56), (54, 58), (18, 60), (30, 62), (14, 64), (28, 66), (34, 68), (22, 70)]

def optimizedBody753_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (24, 46), (16, 48), (26, 50), (0, 52), (20, 54), (32, 56), (54, 58), (18, 60), (30, 62), (14, 64),
    (28, 66), (34, 68), (22, 70)]

def optimizedBody753_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody753_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_17 optimizedBody753_18

def optimizedBody753_20 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody753_16, 753, 2)) (some 724) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody753_19, 753, 3))

def optimizedBody753_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody753_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 4), (48, 8), (50, 6), (52, 12), (54, 54), (56, 36), (58, 10)]

def optimizedBody753_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (10, 10), (8, 8), (4, 4), (12, 12), (6, 6), (28, 44), (18, 46), (26, 48), (16, 50), (24, 52), (14, 54),
    (20, 56), (22, 58)]

def optimizedBody753_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44), (18, 46), (26, 48), (16, 50), (24, 52), (14, 54), (20, 56), (22, 58)]

def optimizedBody753_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_24 optimizedBody753_18

def optimizedBody753_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody753_23, 753, 4)) (some 724) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody753_25, 753, 5))

def optimizedBody753_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (20, 20), (24, 24), (22, 22), (26, 26), (16, 16), (18, 18)]

def optimizedBody753_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 14 0#64))

def optimizedBody753_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (18, 18)]

def optimizedBody753_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 18 (Flapjack.WordLangAddr.addr 14 8#64))

def optimizedBody753_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (16, 16)]

def optimizedBody753_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 14 16#64))

def optimizedBody753_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (26, 26)]

def optimizedBody753_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 14 24#64))

def optimizedBody753_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (22, 22)]

def optimizedBody753_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 14 32#64))

def optimizedBody753_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (24, 24)]

def optimizedBody753_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 14 40#64))

def optimizedBody753_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14)]

def optimizedBody753_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 14 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody753_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody753_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody753_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody753_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody753_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody753_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody753_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody753_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody753_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody753_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody753_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody753_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody753_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody753_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody753_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody753_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_54 optimizedBody753_55

def optimizedBody753_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_53 optimizedBody753_56

def optimizedBody753_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_52 optimizedBody753_57

def optimizedBody753_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_51 optimizedBody753_58

def optimizedBody753_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_50 optimizedBody753_59

def optimizedBody753_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_49 optimizedBody753_60

def optimizedBody753_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_48 optimizedBody753_61

def optimizedBody753_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_47 optimizedBody753_62

def optimizedBody753_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_46 optimizedBody753_63

def optimizedBody753_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_45 optimizedBody753_64

def optimizedBody753_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_44 optimizedBody753_65

def optimizedBody753_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_43 optimizedBody753_66

def optimizedBody753_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_42 optimizedBody753_67

def optimizedBody753_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_41 optimizedBody753_68

def optimizedBody753_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_40 optimizedBody753_69

def optimizedBody753_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_39 optimizedBody753_70

def optimizedBody753_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_38 optimizedBody753_71

def optimizedBody753_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_37 optimizedBody753_72

def optimizedBody753_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_36 optimizedBody753_73

def optimizedBody753_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_35 optimizedBody753_74

def optimizedBody753_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_34 optimizedBody753_75

def optimizedBody753_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_33 optimizedBody753_76

def optimizedBody753_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_32 optimizedBody753_77

def optimizedBody753_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_31 optimizedBody753_78

def optimizedBody753_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_30 optimizedBody753_79

def optimizedBody753_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_29 optimizedBody753_80

def optimizedBody753_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_28 optimizedBody753_81

def optimizedBody753_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_27 optimizedBody753_82

def optimizedBody753_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_21 optimizedBody753_83

def optimizedBody753_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_26 optimizedBody753_84

def optimizedBody753_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_22 optimizedBody753_85

def optimizedBody753_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_21 optimizedBody753_86

def optimizedBody753_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_20 optimizedBody753_87

def optimizedBody753_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_15 optimizedBody753_88

def optimizedBody753_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_14 optimizedBody753_89

def optimizedBody753_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_4 optimizedBody753_90

def optimizedBody753_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_13 optimizedBody753_91

def optimizedBody753_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_4 optimizedBody753_92

def optimizedBody753_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_12 optimizedBody753_93

def optimizedBody753_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_4 optimizedBody753_94

def optimizedBody753_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_11 optimizedBody753_95

def optimizedBody753_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_4 optimizedBody753_96

def optimizedBody753_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_10 optimizedBody753_97

def optimizedBody753_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_4 optimizedBody753_98

def optimizedBody753_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_9 optimizedBody753_99

def optimizedBody753_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_4 optimizedBody753_100

def optimizedBody753_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_8 optimizedBody753_101

def optimizedBody753_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_4 optimizedBody753_102

def optimizedBody753_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_7 optimizedBody753_103

def optimizedBody753_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_4 optimizedBody753_104

def optimizedBody753_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_6 optimizedBody753_105

def optimizedBody753_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_4 optimizedBody753_106

def optimizedBody753_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_5 optimizedBody753_107

def optimizedBody753_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_4 optimizedBody753_108

def optimizedBody753_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_3 optimizedBody753_109

def optimizedBody753_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_2 optimizedBody753_110

def optimizedBody753_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_1 optimizedBody753_111

def optimizedBody753_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody753_0 optimizedBody753_112

def oracle753 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.ls 11)))
                12 (Flapjack.Spt.ls 15))
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 13
                  (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 4)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)) 4
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) (Flapjack.Spt.ls 9)) 8
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.ls 12)) 6
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5)) 17 (Flapjack.Spt.ls 22))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 2 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 5))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 8)))
                10 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)) 16 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 0)) 19
                  (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 6)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 16 (Flapjack.Spt.ls 0)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 11)) 5
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 3)) 18 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 14
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 14 (Flapjack.Spt.ls 13)))
                11 (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 13 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) 13
                  (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 2)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 13
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1)) (Flapjack.Spt.ls 27)) 7
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 6 (Flapjack.Spt.ls 7)) 13
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 4)) 13 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 13 Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 15 (Flapjack.Spt.ls 9)))
                9 (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 7)) 13 Flapjack.Spt.ln))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 6)) 13
                  (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 3)))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)) 13
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 1))
                  (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 5)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.ls 7)) 13
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12))))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 2)) 13 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 12)) 2
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 25) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 32)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 23) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 30)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 34))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 24) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 31)))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23))))
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 35))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls 22) Flapjack.Spt.ln)
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 33))
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26))))))))))
def optimized753 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(753, 9, optimizedBody753_113)
end InitECandidate.Proofs.SmallStages.Oracles753
