import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody133_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (16, 16), (0, 0), (24, 2), (22, 4), (20, 6), (18, 8), (10, 10), (12, 12)]

def optimizedBody133_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody133_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody133_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody133_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody133_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody133_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody133_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody133_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody133_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody133_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody133_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody133_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody133_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_11 optimizedBody133_12

def optimizedBody133_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_10 optimizedBody133_13

def optimizedBody133_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_9 optimizedBody133_14

def optimizedBody133_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_6 optimizedBody133_15

def optimizedBody133_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_8 optimizedBody133_16

def optimizedBody133_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_7 optimizedBody133_17

def optimizedBody133_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody133_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody133_18 optimizedBody133_19

def optimizedBody133_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 24), (4, 22), (6, 20), (8, 18), (44, 0), (46, 16), (48, 18), (50, 12), (52, 10), (54, 14)]

def optimizedBody133_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (8, 8), (6, 6), (4, 4), (44, 44), (12, 46), (48, 48), (0, 50), (14, 52), (10, 54)]

def optimizedBody133_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (48, 48), (0, 50), (14, 52), (10, 54)]

def optimizedBody133_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody133_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_23 optimizedBody133_24

def optimizedBody133_26 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody133_22, 133, 2)) (some 132) ([2, 4, 6, 8]) (some (2, optimizedBody133_25, 133, 3))

def optimizedBody133_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 12), (48, 48), (50, 16), (52, 8), (54, 6), (56, 4)]

def optimizedBody133_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 6), (12, 4), (16, 8), (10, 2), (44, 44), (46, 46), (48, 48), (0, 50), (8, 52), (6, 54), (4, 56)]

def optimizedBody133_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (0, 50), (8, 52), (6, 54), (4, 56)]

def optimizedBody133_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_29 optimizedBody133_24

def optimizedBody133_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody133_28, 133, 4)) (some 132) ([2, 4, 6, 8]) (some (2, optimizedBody133_30, 133, 5))

def optimizedBody133_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46), (48, 48)]

def optimizedBody133_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (10, 2), (8, 8), (0, 44), (12, 46), (14, 48)]

def optimizedBody133_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (12, 46), (14, 48)]

def optimizedBody133_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_34 optimizedBody133_24

def optimizedBody133_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody133_33, 133, 6)) (some 130) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody133_35, 133, 7))

def optimizedBody133_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (12, 12)]

def optimizedBody133_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 12 (Flapjack.WordRegImm.reg 14)))

def optimizedBody133_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 2 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody133_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def optimizedBody133_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody133_42 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 118) ([0, 2, 4, 6, 8]) (none)

def optimizedBody133_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_41 optimizedBody133_42

def optimizedBody133_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_7 optimizedBody133_43

def optimizedBody133_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 6), (4, 4), (10, 10), (8, 8)]

def optimizedBody133_46 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 12) optimizedBody133_44 optimizedBody133_45

def optimizedBody133_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody133_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_47 optimizedBody133_12

def optimizedBody133_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_7 optimizedBody133_48

def optimizedBody133_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_7 optimizedBody133_49

def optimizedBody133_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_46 optimizedBody133_50

def optimizedBody133_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_40 optimizedBody133_51

def optimizedBody133_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_39 optimizedBody133_52

def optimizedBody133_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_38 optimizedBody133_53

def optimizedBody133_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_37 optimizedBody133_54

def optimizedBody133_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_7 optimizedBody133_55

def optimizedBody133_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_36 optimizedBody133_56

def optimizedBody133_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_32 optimizedBody133_57

def optimizedBody133_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_7 optimizedBody133_58

def optimizedBody133_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_31 optimizedBody133_59

def optimizedBody133_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_27 optimizedBody133_60

def optimizedBody133_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_7 optimizedBody133_61

def optimizedBody133_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_26 optimizedBody133_62

def optimizedBody133_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_21 optimizedBody133_63

def optimizedBody133_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_7 optimizedBody133_64

def optimizedBody133_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_7 optimizedBody133_65

def optimizedBody133_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_20 optimizedBody133_66

def optimizedBody133_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_6 optimizedBody133_67

def optimizedBody133_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_5 optimizedBody133_68

def optimizedBody133_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_4 optimizedBody133_69

def optimizedBody133_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_3 optimizedBody133_70

def optimizedBody133_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_2 optimizedBody133_71

def optimizedBody133_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_1 optimizedBody133_72

def optimizedBody133_74 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody133_0 optimizedBody133_73

def optimized133 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(133, 9, optimizedBody133_74)
end InitECandidate.Proofs.StackAnalysis
