import InitECandidate.Proofs.WordStages.Optimize718
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.SmallSsaKernelComputation
import InitECandidate.Proofs.CompilerStages
import InitECandidate.Proofs.WordStages.Source734
import InitECandidate.Proofs.CompilerComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def optimizedBody734_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (0, 0), (2, 2), (14, 6)]

def optimizedBody734_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 44 (Flapjack.WordLangAddr.addr 4 0#64))

def optimizedBody734_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 4)]

def optimizedBody734_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 46 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody734_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6)]

def optimizedBody734_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 48 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody734_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody734_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10 (Flapjack.WordLangAddr.addr 6 32#64))

def optimizedBody734_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 12 (Flapjack.WordLangAddr.addr 6 40#64))

def optimizedBody734_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 4 (Flapjack.WordLangAddr.addr 6 48#64))

def optimizedBody734_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 70 (Flapjack.WordLangAddr.addr 6 56#64))

def optimizedBody734_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 26 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody734_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 30 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody734_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 32 (Flapjack.WordLangAddr.addr 6 80#64))

def optimizedBody734_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 36 (Flapjack.WordLangAddr.addr 6 88#64))

def optimizedBody734_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 14)]

def optimizedBody734_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 14 (Flapjack.WordLangAddr.addr 6 0#64))

def optimizedBody734_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16 (Flapjack.WordLangAddr.addr 6 8#64))

def optimizedBody734_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 18 (Flapjack.WordLangAddr.addr 6 16#64))

def optimizedBody734_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 20 (Flapjack.WordLangAddr.addr 6 24#64))

def optimizedBody734_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 22 (Flapjack.WordLangAddr.addr 6 32#64))

def optimizedBody734_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 24 (Flapjack.WordLangAddr.addr 6 40#64))

def optimizedBody734_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 40 (Flapjack.WordLangAddr.addr 6 48#64))

def optimizedBody734_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 42 (Flapjack.WordLangAddr.addr 6 56#64))

def optimizedBody734_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 34 (Flapjack.WordLangAddr.addr 6 64#64))

def optimizedBody734_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 38 (Flapjack.WordLangAddr.addr 6 72#64))

def optimizedBody734_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 28 (Flapjack.WordLangAddr.addr 6 80#64))

def optimizedBody734_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 6 (Flapjack.WordLangAddr.addr 6 88#64))

def optimizedBody734_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 44), (4, 46), (6, 48), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 0), (46, 42), (48, 40), (50, 2), (52, 38), (54, 36), (56, 34), (58, 32), (60, 30), (62, 28), (64, 26), (66, 6),
    (68, 4), (70, 70)]

def optimizedBody734_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(10, 10), (12, 12), (8, 8), (6, 6), (4, 4), (36, 2), (44, 44), (16, 46), (14, 48), (50, 50), (20, 52), (32, 54),
    (18, 56), (30, 58), (28, 60), (22, 62), (26, 64), (24, 66), (34, 68), (0, 70)]

def optimizedBody734_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (16, 46), (14, 48), (50, 50), (20, 52), (32, 54), (18, 56), (30, 58), (28, 60), (22, 62), (26, 64),
    (24, 66), (34, 68), (0, 70)]

def optimizedBody734_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody734_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_30 optimizedBody734_31

def optimizedBody734_33 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody734_29, 734, 2)) (some 710) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody734_32, 734, 3))

def optimizedBody734_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody734_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 34), (4, 0), (6, 26), (8, 28), (10, 30), (12, 32), (14, 14), (16, 16), (18, 18), (20, 20), (22, 22), (24, 24),
    (44, 44), (46, 10), (48, 12), (50, 50), (52, 8), (54, 6), (56, 4), (58, 36)]

def optimizedBody734_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(0, 2), (4, 4), (8, 8), (6, 6), (10, 10), (12, 12), (28, 44), (14, 46), (16, 48), (18, 50), (26, 52), (20, 54),
    (22, 56), (24, 58)]

def optimizedBody734_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (28, 44), (14, 46), (16, 48), (18, 50), (26, 52), (20, 54), (22, 56), (24, 58)]

def optimizedBody734_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_37 optimizedBody734_31

def optimizedBody734_39 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody734_36, 734, 4)) (some 710) ([2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24]) (some (2, optimizedBody734_38, 734, 5))

def optimizedBody734_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (24, 24), (16, 16), (14, 14), (26, 26), (20, 20), (22, 22)]

def optimizedBody734_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 24 (Flapjack.WordLangAddr.addr 18 0#64))

def optimizedBody734_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (22, 22)]

def optimizedBody734_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 22 (Flapjack.WordLangAddr.addr 18 8#64))

def optimizedBody734_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (20, 20)]

def optimizedBody734_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 20 (Flapjack.WordLangAddr.addr 18 16#64))

def optimizedBody734_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (26, 26)]

def optimizedBody734_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 26 (Flapjack.WordLangAddr.addr 18 24#64))

def optimizedBody734_48 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (14, 14)]

def optimizedBody734_49 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 14 (Flapjack.WordLangAddr.addr 18 32#64))

def optimizedBody734_50 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18), (16, 16)]

def optimizedBody734_51 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16 (Flapjack.WordLangAddr.addr 18 40#64))

def optimizedBody734_52 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(18, 18)]

def optimizedBody734_53 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 18 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody734_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (0, 0), (12, 12), (10, 10), (8, 8), (6, 6), (4, 4)]

def optimizedBody734_55 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 0 (Flapjack.WordLangAddr.addr 2 0#64))

def optimizedBody734_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4)]

def optimizedBody734_57 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 4 (Flapjack.WordLangAddr.addr 2 8#64))

def optimizedBody734_58 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (6, 6)]

def optimizedBody734_59 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 6 (Flapjack.WordLangAddr.addr 2 16#64))

def optimizedBody734_60 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (8, 8)]

def optimizedBody734_61 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8 (Flapjack.WordLangAddr.addr 2 24#64))

def optimizedBody734_62 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (10, 10)]

def optimizedBody734_63 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10 (Flapjack.WordLangAddr.addr 2 32#64))

def optimizedBody734_64 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (12, 12)]

def optimizedBody734_65 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 12 (Flapjack.WordLangAddr.addr 2 40#64))

def optimizedBody734_66 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody734_67 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody734_68 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 28 [2]

def optimizedBody734_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_67 optimizedBody734_68

def optimizedBody734_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_66 optimizedBody734_69

def optimizedBody734_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_65 optimizedBody734_70

def optimizedBody734_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_64 optimizedBody734_71

def optimizedBody734_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_63 optimizedBody734_72

def optimizedBody734_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_62 optimizedBody734_73

def optimizedBody734_75 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_61 optimizedBody734_74

def optimizedBody734_76 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_60 optimizedBody734_75

def optimizedBody734_77 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_59 optimizedBody734_76

def optimizedBody734_78 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_58 optimizedBody734_77

def optimizedBody734_79 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_57 optimizedBody734_78

def optimizedBody734_80 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_56 optimizedBody734_79

def optimizedBody734_81 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_55 optimizedBody734_80

def optimizedBody734_82 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_54 optimizedBody734_81

def optimizedBody734_83 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_53 optimizedBody734_82

def optimizedBody734_84 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_52 optimizedBody734_83

def optimizedBody734_85 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_51 optimizedBody734_84

def optimizedBody734_86 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_50 optimizedBody734_85

def optimizedBody734_87 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_49 optimizedBody734_86

def optimizedBody734_88 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_48 optimizedBody734_87

def optimizedBody734_89 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_47 optimizedBody734_88

def optimizedBody734_90 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_46 optimizedBody734_89

def optimizedBody734_91 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_45 optimizedBody734_90

def optimizedBody734_92 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_44 optimizedBody734_91

def optimizedBody734_93 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_43 optimizedBody734_92

def optimizedBody734_94 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_42 optimizedBody734_93

def optimizedBody734_95 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_41 optimizedBody734_94

def optimizedBody734_96 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_40 optimizedBody734_95

def optimizedBody734_97 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_34 optimizedBody734_96

def optimizedBody734_98 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_39 optimizedBody734_97

def optimizedBody734_99 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_35 optimizedBody734_98

def optimizedBody734_100 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_34 optimizedBody734_99

def optimizedBody734_101 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_33 optimizedBody734_100

def optimizedBody734_102 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_28 optimizedBody734_101

def optimizedBody734_103 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_27 optimizedBody734_102

def optimizedBody734_104 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_103

def optimizedBody734_105 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_26 optimizedBody734_104

def optimizedBody734_106 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_105

def optimizedBody734_107 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_25 optimizedBody734_106

def optimizedBody734_108 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_107

def optimizedBody734_109 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_24 optimizedBody734_108

def optimizedBody734_110 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_109

def optimizedBody734_111 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_23 optimizedBody734_110

def optimizedBody734_112 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_111

def optimizedBody734_113 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_22 optimizedBody734_112

def optimizedBody734_114 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_113

def optimizedBody734_115 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_21 optimizedBody734_114

def optimizedBody734_116 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_115

def optimizedBody734_117 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_20 optimizedBody734_116

def optimizedBody734_118 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_117

def optimizedBody734_119 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_19 optimizedBody734_118

def optimizedBody734_120 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_119

def optimizedBody734_121 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_18 optimizedBody734_120

def optimizedBody734_122 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_121

def optimizedBody734_123 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_17 optimizedBody734_122

def optimizedBody734_124 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_123

def optimizedBody734_125 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_16 optimizedBody734_124

def optimizedBody734_126 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_15 optimizedBody734_125

def optimizedBody734_127 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_14 optimizedBody734_126

def optimizedBody734_128 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_127

def optimizedBody734_129 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_13 optimizedBody734_128

def optimizedBody734_130 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_129

def optimizedBody734_131 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_12 optimizedBody734_130

def optimizedBody734_132 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_131

def optimizedBody734_133 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_11 optimizedBody734_132

def optimizedBody734_134 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_133

def optimizedBody734_135 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_10 optimizedBody734_134

def optimizedBody734_136 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_135

def optimizedBody734_137 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_9 optimizedBody734_136

def optimizedBody734_138 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_137

def optimizedBody734_139 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_8 optimizedBody734_138

def optimizedBody734_140 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_139

def optimizedBody734_141 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_7 optimizedBody734_140

def optimizedBody734_142 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_141

def optimizedBody734_143 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_6 optimizedBody734_142

def optimizedBody734_144 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_143

def optimizedBody734_145 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_5 optimizedBody734_144

def optimizedBody734_146 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_4 optimizedBody734_145

def optimizedBody734_147 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_3 optimizedBody734_146

def optimizedBody734_148 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_2 optimizedBody734_147

def optimizedBody734_149 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_1 optimizedBody734_148

def optimizedBody734_150 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody734_0 optimizedBody734_149

def oracle734 : Option (Spt Nat) :=
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
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 2 (Flapjack.Spt.ls 7)) 11
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)))
                22
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 9 (Flapjack.Spt.ls 0)) 13
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 3) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 7
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                (Flapjack.Spt.bs Flapjack.Spt.ln 5 (Flapjack.Spt.bs (Flapjack.Spt.ls 3) 17 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 10)) 9
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 7)))
                1
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 7 (Flapjack.Spt.ls 3)) 2
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 0) 14 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 13 (Flapjack.Spt.ls 10)) 16
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 5) Flapjack.Spt.ln))
                (Flapjack.Spt.bs Flapjack.Spt.ln 24 (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 20 (Flapjack.Spt.ls 5))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)) 10
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)))
                7
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 10 (Flapjack.Spt.ls 2)) 35
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 17 (Flapjack.Spt.ls 7)) 18
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 6) Flapjack.Spt.ln))
                (Flapjack.Spt.bs Flapjack.Spt.ln 4 (Flapjack.Spt.ls 21))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 8 Flapjack.Spt.ln)
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 22 (Flapjack.Spt.ls 6)) 6
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 5) 19 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 14) 15 (Flapjack.Spt.bn (Flapjack.Spt.ls 4) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 12)) 23
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 8) 12 (Flapjack.Spt.ls 4)))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 18 (Flapjack.Spt.ls 9)) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 13)))
                2 (Flapjack.Spt.bs (Flapjack.Spt.ls 16) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 0 (Flapjack.Spt.ls 8)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 2) 3 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 14)))
                0
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 8 (Flapjack.Spt.ls 5)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 6) 3 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 11 (Flapjack.Spt.ls 11)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 3 (Flapjack.Spt.ls 6))))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 3
                  (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 8)))
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 25 (Flapjack.Spt.ls 4)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln 12 (Flapjack.Spt.ls 13)) 3
                  (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 1) 3 Flapjack.Spt.ln))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 9)) 3 Flapjack.Spt.ln)
                (Flapjack.Spt.bs Flapjack.Spt.ln 3 (Flapjack.Spt.bs (Flapjack.Spt.ls 4) 3 Flapjack.Spt.ln)))
              (Flapjack.Spt.bn
                (Flapjack.Spt.bs (Flapjack.Spt.ls 15) 3 (Flapjack.Spt.bn (Flapjack.Spt.ls 1) Flapjack.Spt.ln))
                (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 11)) 3
                  (Flapjack.Spt.bs (Flapjack.Spt.ls 9) 3 (Flapjack.Spt.ls 3))))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 27)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 34) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 30) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 32) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 29)))
                Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 28) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 25)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 26)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 33) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 22)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 29) Flapjack.Spt.ln))))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 23)) Flapjack.Spt.ln)
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 24)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 31) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls 28)))
                (Flapjack.Spt.bn (Flapjack.Spt.ls 35) Flapjack.Spt.ln))
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls 27) Flapjack.Spt.ln))))))))
def optimized734 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(734, 4, optimizedBody734_150)
theorem optimize734_eq : WordToWord.fullCompileSingleWith
  RegAlloc.regAllocExecutable riscvConfig.twoRegArith
  (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))
  RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg
  riscvConfig (source734, oracle734) = optimized734 := by
  rw [InitECandidate.Proofs.CompilerStages.fullCompile_expanded]
  dsimp only
  rw [InitECandidate.Proofs.SmallSsaKernelComputation.fullSsaStructural_eq]
  kernel_rfl
#print axioms optimize734_eq
end InitECandidate.Proofs.WordStages
