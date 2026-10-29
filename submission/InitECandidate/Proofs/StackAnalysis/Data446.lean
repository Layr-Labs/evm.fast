import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody446_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (44, 0)]

def optimizedBody446_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody446_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody446_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody446_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody446_2 optimizedBody446_3

def optimizedBody446_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody446_1, 446, 2)) (some 439) ([2]) (some (2, optimizedBody446_4, 446, 3))

def optimizedBody446_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody446_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody446_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody446_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody446_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody446_8 optimizedBody446_9

def optimizedBody446_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody446_7 optimizedBody446_10

def optimizedBody446_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody446_6 optimizedBody446_11

def optimizedBody446_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody446_5 optimizedBody446_12

def optimizedBody446_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody446_0 optimizedBody446_13

def optimized446 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(446, 2, optimizedBody446_14)
end InitECandidate.Proofs.StackAnalysis
