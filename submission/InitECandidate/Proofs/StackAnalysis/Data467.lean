import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody467_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody467_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 20#64)

def optimizedBody467_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody467_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (10, 2), (6, 6), (8, 8), (0, 44)]

def optimizedBody467_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody467_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody467_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody467_4 optimizedBody467_5

def optimizedBody467_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2, 4, 6, 8]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody467_3, 467, 2)) (some 146) ([2, 4]) (some (2, optimizedBody467_6, 467, 3))

def optimizedBody467_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody467_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 10), (4, 4), (6, 6), (8, 8)]

def optimizedBody467_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2, 4, 6, 8]

def optimizedBody467_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody467_9 optimizedBody467_10

def optimizedBody467_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody467_8 optimizedBody467_11

def optimizedBody467_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody467_7 optimizedBody467_12

def optimizedBody467_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody467_2 optimizedBody467_13

def optimizedBody467_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody467_1 optimizedBody467_14

def optimizedBody467_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody467_0 optimizedBody467_15

def optimized467 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(467, 2, optimizedBody467_16)
end InitECandidate.Proofs.StackAnalysis
