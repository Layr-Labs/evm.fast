import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody258_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (8, 8), (44, 0), (46, 8), (48, 4)]

def optimizedBody258_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(44, 44), (6, 46), (4, 48)]

def optimizedBody258_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 44), (6, 46), (4, 48)]

def optimizedBody258_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody258_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody258_2 optimizedBody258_3

def optimizedBody258_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody258_1, 258, 2)) (some 235) ([2, 4, 6, 8]) (some (2, optimizedBody258_4, 258, 3))

def optimizedBody258_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody258_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 6), (4, 4), (6, 6), (44, 44)]

def optimizedBody258_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody258_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody258_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody258_9 optimizedBody258_3

def optimizedBody258_11 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody258_8, 258, 4)) (some 236) ([2, 4, 6]) (some (2, optimizedBody258_10, 258, 5))

def optimizedBody258_12 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody258_13 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody258_14 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody258_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody258_13 optimizedBody258_14

def optimizedBody258_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody258_12 optimizedBody258_15

def optimizedBody258_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody258_6 optimizedBody258_16

def optimizedBody258_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody258_11 optimizedBody258_17

def optimizedBody258_19 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody258_7 optimizedBody258_18

def optimizedBody258_20 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody258_6 optimizedBody258_19

def optimizedBody258_21 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody258_5 optimizedBody258_20

def optimizedBody258_22 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody258_0 optimizedBody258_21

def optimized258 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(258, 5, optimizedBody258_22)
end InitECandidate.Proofs.StackAnalysis
