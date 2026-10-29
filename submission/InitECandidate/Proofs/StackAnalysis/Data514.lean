import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody514_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody514_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44)]

def optimizedBody514_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody514_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody514_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_2 optimizedBody514_3

def optimizedBody514_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_1, 514, 2)) (some 475) ([]) (some (2, optimizedBody514_4, 514, 3))

def optimizedBody514_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody514_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 0), (50, 6), (56, 8), (60, 4)]

def optimizedBody514_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44), (48, 48), (50, 50), (56, 56), (60, 60)]

def optimizedBody514_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (56, 56), (60, 60)]

def optimizedBody514_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_9 optimizedBody514_3

def optimizedBody514_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_8, 514, 4)) (some 475) ([]) (some (2, optimizedBody514_10, 514, 5))

def optimizedBody514_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody514_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 8), (48, 48), (50, 50), (52, 0), (54, 6), (56, 56), (58, 4), (60, 60)]

def optimizedBody514_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (16, 48), (10, 50), (14, 52), (6, 54), (8, 56), (4, 58), (12, 60)]

def optimizedBody514_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (16, 48), (10, 50), (14, 52), (6, 54), (8, 56), (4, 58), (12, 60)]

def optimizedBody514_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_15 optimizedBody514_3

def optimizedBody514_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_14, 514, 6)) (some 470) ([2]) (some (2, optimizedBody514_16, 514, 7))

def optimizedBody514_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody514_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 2 14 (Flapjack.WordRegImm.reg 16)))

def optimizedBody514_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (4, 4)]

def optimizedBody514_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 4 4 (Flapjack.WordRegImm.reg 12)))

def optimizedBody514_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody514_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 6 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody514_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody514_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.and 8 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody514_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody514_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody514_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_27, 514, 8)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody514_4, 514, 9))

def optimizedBody514_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody514_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody514_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody514_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_31 optimizedBody514_3

def optimizedBody514_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody514_30, 514, 10)) (some 490) ([2]) (some (2, optimizedBody514_32, 514, 11))

def optimizedBody514_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody514_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody514_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody514_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_35 optimizedBody514_36

def optimizedBody514_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_34 optimizedBody514_37

def optimizedBody514_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_38

def optimizedBody514_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_33 optimizedBody514_39

def optimizedBody514_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_2 optimizedBody514_40

def optimizedBody514_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_29 optimizedBody514_41

def optimizedBody514_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_42

def optimizedBody514_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_28 optimizedBody514_43

def optimizedBody514_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_26 optimizedBody514_44

def optimizedBody514_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_25 optimizedBody514_45

def optimizedBody514_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_24 optimizedBody514_46

def optimizedBody514_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_23 optimizedBody514_47

def optimizedBody514_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_22 optimizedBody514_48

def optimizedBody514_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_21 optimizedBody514_49

def optimizedBody514_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_20 optimizedBody514_50

def optimizedBody514_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_19 optimizedBody514_51

def optimizedBody514_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_18 optimizedBody514_52

def optimizedBody514_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_53

def optimizedBody514_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_17 optimizedBody514_54

def optimizedBody514_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_13 optimizedBody514_55

def optimizedBody514_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_12 optimizedBody514_56

def optimizedBody514_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_57

def optimizedBody514_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_11 optimizedBody514_58

def optimizedBody514_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_7 optimizedBody514_59

def optimizedBody514_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_6 optimizedBody514_60

def optimizedBody514_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_5 optimizedBody514_61

def optimizedBody514_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody514_0 optimizedBody514_62

def optimized514 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(514, 1, optimizedBody514_63)
end InitECandidate.Proofs.StackAnalysis
