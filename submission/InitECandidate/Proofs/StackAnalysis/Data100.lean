import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.StackAnalysis
def optimizedBody100_0 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.move 1 [(2, 2), (0, 0)]

def optimizedBody100_1 : WordLangProgHOL (BitVec 64) :=
Flapjack.WordLangProgHOL.return 0 [2]

def optimizedBody100_2 : WordLangProgHOL (BitVec 64) :=
.seq optimizedBody100_0 optimizedBody100_1

def optimized100 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
(100, 5, optimizedBody100_2)
end InitECandidate.Proofs.StackAnalysis
