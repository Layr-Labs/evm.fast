import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody726_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 14), (4, 12), (44, 0), (46, 8), (48, 4), (50, 2), (52, 10), (54, 6), (56, 14)]

def optimizedBody726_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (52, 54), (0, 56)]

def optimizedBody726_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (50, 50), (4, 52), (52, 54), (0, 56)]

def optimizedBody726_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody726_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_2 optimizedBody726_3

def optimizedBody726_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody726_1, 726, 2)) (some 89) ([2, 4]) (some (2, optimizedBody726_4, 726, 3))

def optimizedBody726_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody726_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody726_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 8#64)))

def optimizedBody726_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 52), (54, 0)]

def optimizedBody726_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (48, 50), (50, 52), (0, 54)]

def optimizedBody726_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (48, 50), (50, 52), (0, 54)]

def optimizedBody726_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_11 optimizedBody726_3

def optimizedBody726_13 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
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
  Flapjack.Spt.ln)), optimizedBody726_10, 726, 4)) (some 89) ([2, 4]) (some (2, optimizedBody726_12, 726, 5))

def optimizedBody726_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 16#64)))

def optimizedBody726_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 50), (52, 0)]

def optimizedBody726_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (46, 46), (48, 48), (4, 50), (0, 52)]

def optimizedBody726_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50), (0, 52)]

def optimizedBody726_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_17 optimizedBody726_3

def optimizedBody726_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody726_16, 726, 6)) (some 89) ([2, 4]) (some (2, optimizedBody726_18, 726, 7))

def optimizedBody726_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 24#64)))

def optimizedBody726_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody726_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (46, 48), (0, 50)]

def optimizedBody726_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (46, 48), (0, 50)]

def optimizedBody726_24 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_23 optimizedBody726_3

def optimizedBody726_25 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody726_22, 726, 8)) (some 89) ([2, 4]) (some (2, optimizedBody726_24, 726, 9))

def optimizedBody726_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 32#64)))

def optimizedBody726_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46), (48, 0)]

def optimizedBody726_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48)]

def optimizedBody726_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48)]

def optimizedBody726_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_29 optimizedBody726_3

def optimizedBody726_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody726_28, 726, 10)) (some 89) ([2, 4]) (some (2, optimizedBody726_30, 726, 11))

def optimizedBody726_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 0 (Flapjack.WordRegImm.imm 40#64)))

def optimizedBody726_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44)]

def optimizedBody726_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody726_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody726_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_35 optimizedBody726_3

def optimizedBody726_37 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody726_34, 726, 12)) (some 89) ([2, 4]) (some (2, optimizedBody726_36, 726, 13))

def optimizedBody726_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody726_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody726_40 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody726_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_39 optimizedBody726_40

def optimizedBody726_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_38 optimizedBody726_41

def optimizedBody726_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_6 optimizedBody726_42

def optimizedBody726_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_37 optimizedBody726_43

def optimizedBody726_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_33 optimizedBody726_44

def optimizedBody726_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_32 optimizedBody726_45

def optimizedBody726_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_7 optimizedBody726_46

def optimizedBody726_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_6 optimizedBody726_47

def optimizedBody726_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_31 optimizedBody726_48

def optimizedBody726_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_27 optimizedBody726_49

def optimizedBody726_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_26 optimizedBody726_50

def optimizedBody726_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_7 optimizedBody726_51

def optimizedBody726_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_6 optimizedBody726_52

def optimizedBody726_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_25 optimizedBody726_53

def optimizedBody726_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_21 optimizedBody726_54

def optimizedBody726_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_20 optimizedBody726_55

def optimizedBody726_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_7 optimizedBody726_56

def optimizedBody726_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_6 optimizedBody726_57

def optimizedBody726_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_19 optimizedBody726_58

def optimizedBody726_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_15 optimizedBody726_59

def optimizedBody726_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_14 optimizedBody726_60

def optimizedBody726_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_7 optimizedBody726_61

def optimizedBody726_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_6 optimizedBody726_62

def optimizedBody726_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_13 optimizedBody726_63

def optimizedBody726_65 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_9 optimizedBody726_64

def optimizedBody726_66 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_8 optimizedBody726_65

def optimizedBody726_67 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_7 optimizedBody726_66

def optimizedBody726_68 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_6 optimizedBody726_67

def optimizedBody726_69 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_5 optimizedBody726_68

def optimizedBody726_70 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody726_0 optimizedBody726_69

def optimized726 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(726, 8, optimizedBody726_70)
end InitECandidate.Proofs.StackAnalysis
