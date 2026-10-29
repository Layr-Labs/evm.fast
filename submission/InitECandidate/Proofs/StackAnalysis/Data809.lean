import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody809_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(44, 0)]

def optimizedBody809_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(0, 44)]

def optimizedBody809_2 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 44)]

def optimizedBody809_3 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.raise 2

def optimizedBody809_4 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_2 optimizedBody809_3

def optimizedBody809_5 : WordLangProgHOL (BitVec 64) :=
.call (some (([2]), ((Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln,
  Flapjack.Spt.ln)), optimizedBody809_1, 809, 2)) (some 704) ([]) (some (2, optimizedBody809_4, 809, 3))

def optimizedBody809_6 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.tick

def optimizedBody809_7 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2 0#64)

def optimizedBody809_8 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 0 [(2, 2)]

def optimizedBody809_9 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody809_10 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_8 optimizedBody809_9

def optimizedBody809_11 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_7 optimizedBody809_10

def optimizedBody809_12 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_6 optimizedBody809_11

def optimizedBody809_13 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_5 optimizedBody809_12

def optimizedBody809_14 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody809_0 optimizedBody809_13

def optimized809 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(809, 1, optimizedBody809_14)
end InitECandidate.Proofs.StackAnalysis
