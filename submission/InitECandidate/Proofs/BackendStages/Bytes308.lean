import InitECandidate.Proofs.BackendStages.Padded308
import InitECandidate.Proofs.BackendStages.BytesData308
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes308_eq : (Padded308.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes308 := by
  with_unfolding_all rfl
#print axioms sectionBytes308_eq
end InitECandidate.Proofs.BackendStages
