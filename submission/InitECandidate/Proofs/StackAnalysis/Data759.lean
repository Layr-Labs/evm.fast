import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody759_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2), (4, 4), (6, 4)]

def optimizedBody759_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 758) ([0, 2, 4, 6]) (none)

def optimizedBody759_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody759_0 optimizedBody759_1

def optimized759 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(759, 3, optimizedBody759_2)
end InitECandidate.Proofs.StackAnalysis
