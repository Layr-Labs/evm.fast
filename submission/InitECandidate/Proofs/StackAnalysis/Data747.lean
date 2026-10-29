import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody747_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody747_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4 288#64)

def optimizedBody747_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (44, 0)]

def optimizedBody747_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody747_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody747_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody747_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody747_4 optimizedBody747_5

def optimizedBody747_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody747_3, 747, 2)) (some 78) ([2, 4]) (some (2, optimizedBody747_6, 747, 3))

def optimizedBody747_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody747_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody747_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody747_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody747_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody747_10 optimizedBody747_11

def optimizedBody747_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody747_9 optimizedBody747_12

def optimizedBody747_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody747_8 optimizedBody747_13

def optimizedBody747_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody747_7 optimizedBody747_14

def optimizedBody747_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody747_2 optimizedBody747_15

def optimizedBody747_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody747_1 optimizedBody747_16

def optimizedBody747_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody747_0 optimizedBody747_17

def optimized747 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(747, 2, optimizedBody747_18)
end InitECandidate.Proofs.StackAnalysis
