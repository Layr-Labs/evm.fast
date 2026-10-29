import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody232_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (46, 2)]

def optimizedBody232_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (46, 46)]

def optimizedBody232_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46)]

def optimizedBody232_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody232_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_2 optimizedBody232_3

def optimizedBody232_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody232_1, 232, 2)) (some 69) ([]) (some (2, optimizedBody232_4, 232, 3))

def optimizedBody232_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody232_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 32#64)

def optimizedBody232_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (46, 46), (50, 0)]

def optimizedBody232_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (48, 48), (0, 46), (50, 50)]

def optimizedBody232_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46), (50, 50)]

def optimizedBody232_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_10 optimizedBody232_3

def optimizedBody232_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody232_9, 232, 4)) (some 68) ([2]) (some (2, optimizedBody232_11, 232, 5))

def optimizedBody232_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(6, 6), (2, 0)]

def optimizedBody232_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 64#64)

def optimizedBody232_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 6), (48, 48), (50, 50)]

def optimizedBody232_16 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody232_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46), (4, 48), (46, 50)]

def optimizedBody232_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_17 optimizedBody232_3

def optimizedBody232_19 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody232_16, 232, 6)) (some 158) ([2, 4, 6]) (some (2, optimizedBody232_18, 232, 7))

def optimizedBody232_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 0), (2, 4)]

def optimizedBody232_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.binop Flapjack.BinOp.add 4 0 (Flapjack.WordRegImm.imm 12#64)))

def optimizedBody232_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 20#64)

def optimizedBody232_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody232_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody232_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody232_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_25 optimizedBody232_3

def optimizedBody232_27 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody232_24, 232, 8)) (some 77) ([2, 4, 6]) (some (2, optimizedBody232_26, 232, 9))

def optimizedBody232_28 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody232_29 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody232_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody232_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_30 optimizedBody232_3

def optimizedBody232_32 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody232_29, 232, 10)) (some 70) ([2]) (some (2, optimizedBody232_31, 232, 11))

def optimizedBody232_33 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody232_34 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody232_35 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody232_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_34 optimizedBody232_35

def optimizedBody232_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_33 optimizedBody232_36

def optimizedBody232_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_6 optimizedBody232_37

def optimizedBody232_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_32 optimizedBody232_38

def optimizedBody232_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_28 optimizedBody232_39

def optimizedBody232_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_6 optimizedBody232_40

def optimizedBody232_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_27 optimizedBody232_41

def optimizedBody232_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_23 optimizedBody232_42

def optimizedBody232_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_22 optimizedBody232_43

def optimizedBody232_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_21 optimizedBody232_44

def optimizedBody232_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_20 optimizedBody232_45

def optimizedBody232_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_6 optimizedBody232_46

def optimizedBody232_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_19 optimizedBody232_47

def optimizedBody232_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_15 optimizedBody232_48

def optimizedBody232_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_14 optimizedBody232_49

def optimizedBody232_51 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_13 optimizedBody232_50

def optimizedBody232_52 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_6 optimizedBody232_51

def optimizedBody232_53 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_12 optimizedBody232_52

def optimizedBody232_54 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_8 optimizedBody232_53

def optimizedBody232_55 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_7 optimizedBody232_54

def optimizedBody232_56 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_6 optimizedBody232_55

def optimizedBody232_57 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_5 optimizedBody232_56

def optimizedBody232_58 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody232_0 optimizedBody232_57

def optimized232 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(232, 3, optimizedBody232_58)
end InitECandidate.Proofs.StackAnalysis
