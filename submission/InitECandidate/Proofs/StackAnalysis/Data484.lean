import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody484_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 6), (8, 8), (10, 10)]

def optimizedBody484_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 12 0#64)

def optimizedBody484_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (14, 6)]

def optimizedBody484_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody484_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(14, 14), (4, 4)]

def optimizedBody484_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 6 4 (Flapjack.WordRegImm.reg 14)))

def optimizedBody484_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (8, 8)]

def optimizedBody484_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 8), (48, 8)]

def optimizedBody484_8 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_3 optimizedBody484_7

def optimizedBody484_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 6), (48, 8)]

def optimizedBody484_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_3 optimizedBody484_9

def optimizedBody484_11 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 8 (Flapjack.WordRegImm.reg 6) optimizedBody484_8 optimizedBody484_10

def optimizedBody484_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 2), (14, 14), (2, 10)]

def optimizedBody484_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 14 (Flapjack.WordRegImm.reg 4)))

def optimizedBody484_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0), (46, 6), (48, 48), (50, 2)]

def optimizedBody484_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (12, 46), (8, 48), (10, 50)]

def optimizedBody484_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (12, 46), (8, 48), (10, 50)]

def optimizedBody484_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody484_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_16 optimizedBody484_17

def optimizedBody484_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody484_15, 484, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody484_18, 484, 3))

def optimizedBody484_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 44), (12, 12), (8, 8), (10, 10)]

def optimizedBody484_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_3 optimizedBody484_20

def optimizedBody484_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_19 optimizedBody484_21

def optimizedBody484_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_14 optimizedBody484_22

def optimizedBody484_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_13 optimizedBody484_23

def optimizedBody484_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_12 optimizedBody484_24

def optimizedBody484_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_3 optimizedBody484_25

def optimizedBody484_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_11 optimizedBody484_26

def optimizedBody484_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_6 optimizedBody484_27

def optimizedBody484_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_5 optimizedBody484_28

def optimizedBody484_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_4 optimizedBody484_29

def optimizedBody484_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_3 optimizedBody484_30

def optimizedBody484_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (12, 12), (8, 8), (10, 10)]

def optimizedBody484_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_3 optimizedBody484_32

def optimizedBody484_34 : WordLangProgHOL (BitVec 64) :=
.ite (Flapjack.Cmp.lower) 14 (Flapjack.WordRegImm.reg 4) optimizedBody484_31 optimizedBody484_33

def optimizedBody484_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (12, 12)]

def optimizedBody484_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 12 (Flapjack.WordRegImm.reg 10)))

def optimizedBody484_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (8, 8)]

def optimizedBody484_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.sub 4 8 (Flapjack.WordRegImm.reg 12)))

def optimizedBody484_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody484_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody484_41 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody484_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_41 optimizedBody484_17

def optimizedBody484_43 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody484_40, 484, 4)) (some 78) ([2, 4]) (some (2, optimizedBody484_42, 484, 5))

def optimizedBody484_44 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody484_45 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody484_46 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody484_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_45 optimizedBody484_46

def optimizedBody484_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_44 optimizedBody484_47

def optimizedBody484_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_3 optimizedBody484_48

def optimizedBody484_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_43 optimizedBody484_49

def optimizedBody484_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_39 optimizedBody484_50

def optimizedBody484_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_38 optimizedBody484_51

def optimizedBody484_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_37 optimizedBody484_52

def optimizedBody484_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_36 optimizedBody484_53

def optimizedBody484_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_35 optimizedBody484_54

def optimizedBody484_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_3 optimizedBody484_55

def optimizedBody484_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_34 optimizedBody484_56

def optimizedBody484_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_2 optimizedBody484_57

def optimizedBody484_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_1 optimizedBody484_58

def optimizedBody484_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody484_0 optimizedBody484_59

def optimized484 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(484, 6, optimizedBody484_60)
end InitECandidate.Proofs.StackAnalysis
