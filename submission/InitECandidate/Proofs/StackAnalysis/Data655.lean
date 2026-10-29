import InitECandidate.Proofs.WordStages.Pass655_10
import InitECandidate.Proofs.StackFrameComputation
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option Elab.async false
open Flapjack Flapjack.Compiler.Backend InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.StackAnalysis
def optimized655 : Nat × Nat × WordLangProgHOL (BitVec 64) :=
  (655, 18, pass655_10)

end InitECandidate.Proofs.StackAnalysis
