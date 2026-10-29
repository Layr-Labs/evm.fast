import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody239_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0), (46, 4), (48, 2), (50, 6)]

def optimizedBody239_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(6, 2), (44, 44), (4, 46), (0, 48), (50, 50)]

def optimizedBody239_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (4, 46), (0, 48), (50, 50)]

def optimizedBody239_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody239_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_2 optimizedBody239_3

def optimizedBody239_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody239_1, 239, 2)) (some 69) ([]) (some (2, optimizedBody239_4, 239, 3))

def optimizedBody239_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody239_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (44, 44), (46, 4), (48, 6), (50, 50)]

def optimizedBody239_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 2), (4, 4), (44, 44), (6, 46), (46, 48), (8, 50)]

def optimizedBody239_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (46, 48), (8, 50)]

def optimizedBody239_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_9 optimizedBody239_3

def optimizedBody239_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody239_8, 239, 4)) (some 241) ([2, 4]) (some (2, optimizedBody239_10, 239, 5))

def optimizedBody239_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (4, 4), (6, 6), (8, 8), (44, 44), (46, 46)]

def optimizedBody239_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (0, 46)]

def optimizedBody239_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (0, 46)]

def optimizedBody239_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_14 optimizedBody239_3

def optimizedBody239_16 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody239_13, 239, 6)) (some 238) ([2, 4, 6, 8]) (some (2, optimizedBody239_15, 239, 7))

def optimizedBody239_17 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 0), (44, 44)]

def optimizedBody239_18 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody239_19 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody239_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_19 optimizedBody239_3

def optimizedBody239_21 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody239_18, 239, 8)) (some 70) ([2]) (some (2, optimizedBody239_20, 239, 9))

def optimizedBody239_22 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody239_23 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody239_24 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody239_25 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_23 optimizedBody239_24

def optimizedBody239_26 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_22 optimizedBody239_25

def optimizedBody239_27 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_6 optimizedBody239_26

def optimizedBody239_28 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_21 optimizedBody239_27

def optimizedBody239_29 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_17 optimizedBody239_28

def optimizedBody239_30 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_6 optimizedBody239_29

def optimizedBody239_31 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_16 optimizedBody239_30

def optimizedBody239_32 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_12 optimizedBody239_31

def optimizedBody239_33 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_6 optimizedBody239_32

def optimizedBody239_34 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_11 optimizedBody239_33

def optimizedBody239_35 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_7 optimizedBody239_34

def optimizedBody239_36 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_6 optimizedBody239_35

def optimizedBody239_37 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_5 optimizedBody239_36

def optimizedBody239_38 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody239_0 optimizedBody239_37

def optimized239 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(239, 4, optimizedBody239_38)
end InitECandidate.Proofs.StackAnalysis
