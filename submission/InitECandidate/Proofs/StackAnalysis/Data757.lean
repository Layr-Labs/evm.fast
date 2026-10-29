import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody757_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 2)]

def optimizedBody757_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48)]

def optimizedBody757_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48)]

def optimizedBody757_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody757_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_2 optimizedBody757_3

def optimizedBody757_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody757_1, 757, 2)) (some 69) ([]) (some (2, optimizedBody757_4, 757, 3))

def optimizedBody757_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody757_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 576#64)

def optimizedBody757_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 0)]

def optimizedBody757_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody757_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (50, 50)]

def optimizedBody757_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_10 optimizedBody757_3

def optimizedBody757_12 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody757_9, 757, 4)) (some 68) ([2]) (some (2, optimizedBody757_11, 757, 5))

def optimizedBody757_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 0), (48, 48), (50, 50)]

def optimizedBody757_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (4, 46), (0, 48), (46, 50)]

def optimizedBody757_15 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (46, 50)]

def optimizedBody757_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_15 optimizedBody757_3

def optimizedBody757_17 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody757_14, 757, 6)) (some 756) ([2]) (some (2, optimizedBody757_16, 757, 7))

def optimizedBody757_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(4, 4), (2, 0)]

def optimizedBody757_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 576#64)

def optimizedBody757_20 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody757_21 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (0, 46)]

def optimizedBody757_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody757_23 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_22 optimizedBody757_3

def optimizedBody757_24 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody757_21, 757, 8)) (some 79) ([2, 4, 6]) (some (2, optimizedBody757_23, 757, 9))

def optimizedBody757_25 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4)]

def optimizedBody757_26 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44), (4, 46)]

def optimizedBody757_27 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44), (4, 46)]

def optimizedBody757_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_27 optimizedBody757_3

def optimizedBody757_29 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody757_26, 757, 10)) (some 70) ([2]) (some (2, optimizedBody757_28, 757, 11))

def optimizedBody757_30 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 4)]

def optimizedBody757_31 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody757_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_30 optimizedBody757_31

def optimizedBody757_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_6 optimizedBody757_32

def optimizedBody757_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_29 optimizedBody757_33

def optimizedBody757_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_25 optimizedBody757_34

def optimizedBody757_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_6 optimizedBody757_35

def optimizedBody757_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_24 optimizedBody757_36

def optimizedBody757_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_20 optimizedBody757_37

def optimizedBody757_39 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_19 optimizedBody757_38

def optimizedBody757_40 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_18 optimizedBody757_39

def optimizedBody757_41 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_6 optimizedBody757_40

def optimizedBody757_42 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_17 optimizedBody757_41

def optimizedBody757_43 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_13 optimizedBody757_42

def optimizedBody757_44 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_6 optimizedBody757_43

def optimizedBody757_45 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_12 optimizedBody757_44

def optimizedBody757_46 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_8 optimizedBody757_45

def optimizedBody757_47 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_7 optimizedBody757_46

def optimizedBody757_48 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_6 optimizedBody757_47

def optimizedBody757_49 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_5 optimizedBody757_48

def optimizedBody757_50 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody757_0 optimizedBody757_49

def optimized757 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(757, 2, optimizedBody757_50)
end InitECandidate.Proofs.StackAnalysis
