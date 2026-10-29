import InitECandidate.Proofs.BackendStages.Padded146
import InitECandidate.Proofs.BackendStages.BytesData146
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes146_eq : (Padded146.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes146 := by
  with_unfolding_all rfl
#print axioms sectionBytes146_eq
end InitECandidate.Proofs.BackendStages
