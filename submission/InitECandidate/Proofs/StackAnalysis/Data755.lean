import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody755_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(4, 4), (2, 2), (0, 0)]

def optimizedBody755_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6 576#64)

def optimizedBody755_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (4, 4), (6, 6), (44, 0)]

def optimizedBody755_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody755_4 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody755_5 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody755_6 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_4 optimizedBody755_5

def optimizedBody755_7 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody755_3, 755, 2)) (some 77) ([2, 4, 6]) (some (2, optimizedBody755_6, 755, 3))

def optimizedBody755_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody755_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody755_10 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody755_11 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody755_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_10 optimizedBody755_11

def optimizedBody755_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_9 optimizedBody755_12

def optimizedBody755_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_8 optimizedBody755_13

def optimizedBody755_15 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_7 optimizedBody755_14

def optimizedBody755_16 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_2 optimizedBody755_15

def optimizedBody755_17 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_1 optimizedBody755_16

def optimizedBody755_18 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody755_0 optimizedBody755_17

def optimized755 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(755, 3, optimizedBody755_18)
end InitECandidate.Proofs.StackAnalysis
