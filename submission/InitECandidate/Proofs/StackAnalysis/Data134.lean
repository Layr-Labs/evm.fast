import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody134_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(14, 14), (16, 16), (0, 0), (24, 2), (22, 4), (20, 6), (18, 8), (10, 10), (12, 12)]

def optimizedBody134_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 16 (Flapjack.WordRegImm.reg 14)))

def optimizedBody134_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12)]

def optimizedBody134_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 12)))

def optimizedBody134_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10)]

def optimizedBody134_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.or 2 2 (Flapjack.WordRegImm.reg 10)))

def optimizedBody134_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 0#64)

def optimizedBody134_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody134_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody134_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 0#64)

def optimizedBody134_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8 0#64)

def optimizedBody134_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2), (4, 4), (6, 6), (8, 8)]

def optimizedBody134_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody134_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_11 optimizedBody134_12

def optimizedBody134_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_10 optimizedBody134_13

def optimizedBody134_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_9 optimizedBody134_14

def optimizedBody134_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_6 optimizedBody134_15

def optimizedBody134_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_8 optimizedBody134_16

def optimizedBody134_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_7 optimizedBody134_17

def optimizedBody134_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.skip

def optimizedBody134_20 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 4) optimizedBody134_18 optimizedBody134_19

def optimizedBody134_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 24), (4, 22), (6, 20), (8, 18), (44, 0), (46, 16), (48, 18), (50, 12), (52, 10), (54, 14)]

def optimizedBody134_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(16, 2), (8, 8), (6, 6), (4, 4), (44, 44), (12, 46), (46, 48), (0, 50), (14, 52), (10, 54)]

def optimizedBody134_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (46, 48), (0, 50), (14, 52), (10, 54)]

def optimizedBody134_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody134_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_23 optimizedBody134_24

def optimizedBody134_26 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody134_22, 134, 2)) (some 132) ([2, 4, 6, 8]) (some (2, optimizedBody134_25, 134, 3))

def optimizedBody134_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 14), (4, 0), (6, 10), (8, 12), (44, 44), (46, 46), (48, 16), (50, 8), (52, 6), (54, 4)]

def optimizedBody134_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(14, 6), (12, 4), (16, 8), (10, 2), (44, 44), (46, 46), (0, 48), (8, 50), (6, 52), (4, 54)]

def optimizedBody134_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (0, 48), (8, 50), (6, 52), (4, 54)]

def optimizedBody134_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_29 optimizedBody134_24

def optimizedBody134_31 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody134_28, 134, 4)) (some 132) ([2, 4, 6, 8]) (some (2, optimizedBody134_30, 134, 5))

def optimizedBody134_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 0), (4, 4), (6, 6), (8, 8), (10, 10), (12, 12), (14, 14), (16, 16), (44, 44), (46, 46)]

def optimizedBody134_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (4, 4), (10, 2), (8, 8), (0, 44), (12, 46)]

def optimizedBody134_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (12, 46)]

def optimizedBody134_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_34 optimizedBody134_24

def optimizedBody134_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody134_33, 134, 6)) (some 131) ([2, 4, 6, 8, 10, 12, 14, 16]) (some (2, optimizedBody134_35, 134, 7))

def optimizedBody134_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsr 2 12 (Flapjack.WordRegImm.imm 63#64)))

def optimizedBody134_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 1#64)

def optimizedBody134_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody134_40 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 118) ([0, 2, 4, 6, 8]) (none)

def optimizedBody134_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_39 optimizedBody134_40

def optimizedBody134_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_7 optimizedBody134_41

def optimizedBody134_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(6, 6), (4, 4), (10, 10), (8, 8)]

def optimizedBody134_44 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.WordRegImm.reg 12) optimizedBody134_42 optimizedBody134_43

def optimizedBody134_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody134_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_45 optimizedBody134_12

def optimizedBody134_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_7 optimizedBody134_46

def optimizedBody134_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_7 optimizedBody134_47

def optimizedBody134_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_44 optimizedBody134_48

def optimizedBody134_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_38 optimizedBody134_49

def optimizedBody134_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_37 optimizedBody134_50

def optimizedBody134_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_2 optimizedBody134_51

def optimizedBody134_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_7 optimizedBody134_52

def optimizedBody134_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_36 optimizedBody134_53

def optimizedBody134_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_32 optimizedBody134_54

def optimizedBody134_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_7 optimizedBody134_55

def optimizedBody134_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_31 optimizedBody134_56

def optimizedBody134_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_27 optimizedBody134_57

def optimizedBody134_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_7 optimizedBody134_58

def optimizedBody134_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_26 optimizedBody134_59

def optimizedBody134_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_21 optimizedBody134_60

def optimizedBody134_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_7 optimizedBody134_61

def optimizedBody134_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_7 optimizedBody134_62

def optimizedBody134_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_20 optimizedBody134_63

def optimizedBody134_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_6 optimizedBody134_64

def optimizedBody134_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_5 optimizedBody134_65

def optimizedBody134_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_4 optimizedBody134_66

def optimizedBody134_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_3 optimizedBody134_67

def optimizedBody134_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_2 optimizedBody134_68

def optimizedBody134_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_1 optimizedBody134_69

def optimizedBody134_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody134_0 optimizedBody134_70

def optimized134 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(134, 9, optimizedBody134_71)
end InitECandidate.Proofs.StackAnalysis
