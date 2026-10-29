import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody277_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (48, 4), (46, 2)]

def optimizedBody277_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody277_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (48, 48), (0, 46)]

def optimizedBody277_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody277_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_2 optimizedBody277_3

def optimizedBody277_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody277_1, 277, 2)) (some 69) ([]) (some (2, optimizedBody277_4, 277, 3))

def optimizedBody277_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody277_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44), (46, 4), (48, 48)]

def optimizedBody277_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (46, 46), (6, 48)]

def optimizedBody277_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (46, 46), (6, 48)]

def optimizedBody277_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_9 optimizedBody277_3

def optimizedBody277_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody277_8, 277, 4)) (some 276) ([2]) (some (2, optimizedBody277_10, 277, 5))

def optimizedBody277_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (44, 44), (46, 46)]

def optimizedBody277_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody277_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody277_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_14 optimizedBody277_3

def optimizedBody277_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody277_13, 277, 6)) (some 158) ([2, 4, 6]) (some (2, optimizedBody277_15, 277, 7))

def optimizedBody277_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody277_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody277_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody277_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_19 optimizedBody277_3

def optimizedBody277_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody277_18, 277, 8)) (some 70) ([2]) (some (2, optimizedBody277_20, 277, 9))

def optimizedBody277_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody277_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody277_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody277_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_23 optimizedBody277_24

def optimizedBody277_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_22 optimizedBody277_25

def optimizedBody277_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_6 optimizedBody277_26

def optimizedBody277_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_21 optimizedBody277_27

def optimizedBody277_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_17 optimizedBody277_28

def optimizedBody277_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_6 optimizedBody277_29

def optimizedBody277_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_16 optimizedBody277_30

def optimizedBody277_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_12 optimizedBody277_31

def optimizedBody277_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_6 optimizedBody277_32

def optimizedBody277_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_11 optimizedBody277_33

def optimizedBody277_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_7 optimizedBody277_34

def optimizedBody277_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_6 optimizedBody277_35

def optimizedBody277_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_5 optimizedBody277_36

def optimizedBody277_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody277_0 optimizedBody277_37

def optimized277 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(277, 3, optimizedBody277_38)
end InitECandidate.Proofs.StackAnalysis
