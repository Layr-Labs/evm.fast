import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody776_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (50, 2)]

def optimizedBody776_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody776_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (50, 50)]

def optimizedBody776_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody776_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_2 optimizedBody776_3

def optimizedBody776_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody776_1, 776, 2)) (some 69) ([]) (some (2, optimizedBody776_4, 776, 3))

def optimizedBody776_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody776_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 96#64)

def optimizedBody776_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 0), (50, 50)]

def optimizedBody776_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (46, 46), (48, 48), (4, 50)]

def optimizedBody776_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (48, 48), (4, 50)]

def optimizedBody776_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_10 optimizedBody776_3

def optimizedBody776_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody776_9, 776, 4)) (some 68) ([2]) (some (2, optimizedBody776_11, 776, 5))

def optimizedBody776_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 46), (48, 48), (50, 0)]

def optimizedBody776_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody776_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (48, 48), (0, 50)]

def optimizedBody776_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_15 optimizedBody776_3

def optimizedBody776_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody776_14, 776, 6)) (some 773) ([2, 4]) (some (2, optimizedBody776_16, 776, 7))

def optimizedBody776_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 48), (50, 0)]

def optimizedBody776_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody776_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (46, 48), (4, 50)]

def optimizedBody776_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_20 optimizedBody776_3

def optimizedBody776_22 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody776_19, 776, 8)) (some 728) ([2, 4]) (some (2, optimizedBody776_21, 776, 9))

def optimizedBody776_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4)]

def optimizedBody776_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 2 4 (Flapjack.WordRegImm.imm 48#64)))

def optimizedBody776_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0)]

def optimizedBody776_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 64#64)))

def optimizedBody776_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 44), (46, 46)]

def optimizedBody776_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody776_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody776_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_29 optimizedBody776_3

def optimizedBody776_31 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody776_28, 776, 10)) (some 728) ([2, 4]) (some (2, optimizedBody776_30, 776, 11))

def optimizedBody776_32 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody776_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody776_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody776_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_34 optimizedBody776_3

def optimizedBody776_36 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody776_33, 776, 12)) (some 70) ([2]) (some (2, optimizedBody776_35, 776, 13))

def optimizedBody776_37 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody776_38 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody776_39 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody776_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_38 optimizedBody776_39

def optimizedBody776_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_37 optimizedBody776_40

def optimizedBody776_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_6 optimizedBody776_41

def optimizedBody776_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_36 optimizedBody776_42

def optimizedBody776_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_32 optimizedBody776_43

def optimizedBody776_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_6 optimizedBody776_44

def optimizedBody776_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_31 optimizedBody776_45

def optimizedBody776_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_27 optimizedBody776_46

def optimizedBody776_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_26 optimizedBody776_47

def optimizedBody776_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_25 optimizedBody776_48

def optimizedBody776_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_24 optimizedBody776_49

def optimizedBody776_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_23 optimizedBody776_50

def optimizedBody776_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_6 optimizedBody776_51

def optimizedBody776_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_22 optimizedBody776_52

def optimizedBody776_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_18 optimizedBody776_53

def optimizedBody776_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_6 optimizedBody776_54

def optimizedBody776_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_17 optimizedBody776_55

def optimizedBody776_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_13 optimizedBody776_56

def optimizedBody776_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_6 optimizedBody776_57

def optimizedBody776_59 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_12 optimizedBody776_58

def optimizedBody776_60 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_8 optimizedBody776_59

def optimizedBody776_61 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_7 optimizedBody776_60

def optimizedBody776_62 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_6 optimizedBody776_61

def optimizedBody776_63 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_5 optimizedBody776_62

def optimizedBody776_64 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody776_0 optimizedBody776_63

def optimized776 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(776, 3, optimizedBody776_64)
end InitECandidate.Proofs.StackAnalysis
