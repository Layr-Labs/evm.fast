import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody516_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody516_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (6, 6), (8, 8), (4, 4), (44, 44)]

def optimizedBody516_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44)]

def optimizedBody516_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody516_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_2 optimizedBody516_3

def optimizedBody516_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody516_1, 516, 2)) (some 475) ([]) (some (2, optimizedBody516_4, 516, 3))

def optimizedBody516_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody516_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (48, 0), (50, 6), (56, 8), (60, 4)]

def optimizedBody516_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(8, 8), (0, 2), (6, 6), (4, 4), (44, 44), (48, 48), (50, 50), (56, 56), (60, 60)]

def optimizedBody516_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50), (56, 56), (60, 60)]

def optimizedBody516_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_9 optimizedBody516_3

def optimizedBody516_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody516_8, 516, 4)) (some 475) ([]) (some (2, optimizedBody516_10, 516, 5))

def optimizedBody516_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 3#64)

def optimizedBody516_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (46, 8), (48, 48), (50, 50), (52, 0), (54, 6), (56, 56), (58, 4), (60, 60)]

def optimizedBody516_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (16, 48), (10, 50), (14, 52), (6, 54), (8, 56), (4, 58), (12, 60)]

def optimizedBody516_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1
  [(2, 2), (44, 44), (0, 46), (16, 48), (10, 50), (14, 52), (6, 54), (8, 56), (4, 58), (12, 60)]

def optimizedBody516_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_15 optimizedBody516_3

def optimizedBody516_17 : WordLangProgHOL (BitVec 64) :=
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
  Flapjack.Spt.ln)), optimizedBody516_14, 516, 6)) (some 470) ([2]) (some (2, optimizedBody516_16, 516, 7))

def optimizedBody516_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(16, 16), (14, 14)]

def optimizedBody516_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 2 14 (Flapjack.WordRegImm.reg 16)))

def optimizedBody516_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(12, 12), (4, 4)]

def optimizedBody516_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 4 4 (Flapjack.WordRegImm.reg 12)))

def optimizedBody516_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(10, 10), (6, 6)]

def optimizedBody516_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 6 6 (Flapjack.WordRegImm.reg 10)))

def optimizedBody516_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(8, 8), (0, 0)]

def optimizedBody516_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.xor 8 0 (Flapjack.WordRegImm.reg 8)))

def optimizedBody516_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 44)]

def optimizedBody516_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44)]

def optimizedBody516_28 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody516_27, 516, 8)) (some 476) ([2, 4, 6, 8]) (some (2, optimizedBody516_4, 516, 9))

def optimizedBody516_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 1#64)

def optimizedBody516_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody516_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody516_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_31 optimizedBody516_3

def optimizedBody516_33 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody516_30, 516, 10)) (some 490) ([2]) (some (2, optimizedBody516_32, 516, 11))

def optimizedBody516_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody516_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody516_36 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody516_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_35 optimizedBody516_36

def optimizedBody516_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_34 optimizedBody516_37

def optimizedBody516_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_6 optimizedBody516_38

def optimizedBody516_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_33 optimizedBody516_39

def optimizedBody516_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_2 optimizedBody516_40

def optimizedBody516_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_29 optimizedBody516_41

def optimizedBody516_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_6 optimizedBody516_42

def optimizedBody516_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_28 optimizedBody516_43

def optimizedBody516_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_26 optimizedBody516_44

def optimizedBody516_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_25 optimizedBody516_45

def optimizedBody516_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_24 optimizedBody516_46

def optimizedBody516_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_23 optimizedBody516_47

def optimizedBody516_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_22 optimizedBody516_48

def optimizedBody516_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_21 optimizedBody516_49

def optimizedBody516_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_20 optimizedBody516_50

def optimizedBody516_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_19 optimizedBody516_51

def optimizedBody516_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_18 optimizedBody516_52

def optimizedBody516_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_6 optimizedBody516_53

def optimizedBody516_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_17 optimizedBody516_54

def optimizedBody516_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_13 optimizedBody516_55

def optimizedBody516_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_12 optimizedBody516_56

def optimizedBody516_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_6 optimizedBody516_57

def optimizedBody516_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_11 optimizedBody516_58

def optimizedBody516_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_7 optimizedBody516_59

def optimizedBody516_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_6 optimizedBody516_60

def optimizedBody516_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_5 optimizedBody516_61

def optimizedBody516_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody516_0 optimizedBody516_62

def optimized516 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(516, 1, optimizedBody516_63)
end InitECandidate.Proofs.StackAnalysis
