import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody138_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 0), (10, 2), (4, 4), (6, 6)]

def optimizedBody138_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody138_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody138_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 8), (46, 0)]

def optimizedBody138_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (8, 46)]

def optimizedBody138_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (8, 46)]

def optimizedBody138_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody138_7 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_5 optimizedBody138_6

def optimizedBody138_8 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody138_4, 138, 2)) (some 137) ([2]) (some (2, optimizedBody138_7, 138, 3))

def optimizedBody138_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody138_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 192#64)))

def optimizedBody138_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody138_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 8 [2]

def optimizedBody138_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_11 optimizedBody138_12

def optimizedBody138_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_10 optimizedBody138_13

def optimizedBody138_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_9 optimizedBody138_14

def optimizedBody138_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_15

def optimizedBody138_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_8 optimizedBody138_16

def optimizedBody138_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_3 optimizedBody138_17

def optimizedBody138_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_18

def optimizedBody138_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (10, 10), (6, 6), (44, 0)]

def optimizedBody138_21 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.reg 2) optimizedBody138_19 optimizedBody138_20

def optimizedBody138_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 6)]

def optimizedBody138_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 0 0#64)

def optimizedBody138_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (46, 44)]

def optimizedBody138_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 46)]

def optimizedBody138_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 46)]

def optimizedBody138_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_26 optimizedBody138_6

def optimizedBody138_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody138_25, 138, 4)) (some 137) ([2]) (some (2, optimizedBody138_27, 138, 5))

def optimizedBody138_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 128#64)))

def optimizedBody138_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 6 [2]

def optimizedBody138_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_11 optimizedBody138_30

def optimizedBody138_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_29 optimizedBody138_31

def optimizedBody138_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_9 optimizedBody138_32

def optimizedBody138_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_33

def optimizedBody138_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_28 optimizedBody138_34

def optimizedBody138_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_24 optimizedBody138_35

def optimizedBody138_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_36

def optimizedBody138_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(4, 4), (10, 10), (44, 44)]

def optimizedBody138_39 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody138_37 optimizedBody138_38

def optimizedBody138_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody138_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody138_42 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (6, 44)]

def optimizedBody138_43 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (6, 44)]

def optimizedBody138_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_43 optimizedBody138_6

def optimizedBody138_45 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody138_42, 138, 6)) (some 137) ([2]) (some (2, optimizedBody138_44, 138, 7))

def optimizedBody138_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody138_47 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody138_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_47 optimizedBody138_31

def optimizedBody138_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_46 optimizedBody138_48

def optimizedBody138_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_49

def optimizedBody138_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_45 optimizedBody138_50

def optimizedBody138_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_41 optimizedBody138_51

def optimizedBody138_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_52

def optimizedBody138_54 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 2 [(10, 10), (0, 44)]

def optimizedBody138_55 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.WordRegImm.reg 0) optimizedBody138_53 optimizedBody138_54

def optimizedBody138_56 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 10)]

def optimizedBody138_57 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 137) ([0, 2]) (none)

def optimizedBody138_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_56 optimizedBody138_57

def optimizedBody138_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_58

def optimizedBody138_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_59

def optimizedBody138_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_55 optimizedBody138_60

def optimizedBody138_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_23 optimizedBody138_61

def optimizedBody138_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_40 optimizedBody138_62

def optimizedBody138_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_63

def optimizedBody138_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_64

def optimizedBody138_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_39 optimizedBody138_65

def optimizedBody138_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_23 optimizedBody138_66

def optimizedBody138_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_22 optimizedBody138_67

def optimizedBody138_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_68

def optimizedBody138_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_2 optimizedBody138_69

def optimizedBody138_71 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_21 optimizedBody138_70

def optimizedBody138_72 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_1 optimizedBody138_71

def optimizedBody138_73 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody138_0 optimizedBody138_72

def optimized138 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(138, 5, optimizedBody138_73)
end InitECandidate.Proofs.StackAnalysis
