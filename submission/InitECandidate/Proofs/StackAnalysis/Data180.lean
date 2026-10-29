import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody180_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(0, 0), (2, 2)]

def optimizedBody180_1 : WordLangProgHOL (BitVec 64) :=
.call (none) (some 175) ([0, 2]) (none)

def optimizedBody180_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody180_0 optimizedBody180_1

def optimized180 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(180, 2, optimizedBody180_2)
end InitECandidate.Proofs.StackAnalysis
