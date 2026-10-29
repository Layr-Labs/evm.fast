import InitECandidate.Proofs.BackendStages.Padded171
import InitECandidate.Proofs.BackendStages.BytesData171
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes171_eq : (Padded171.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes171 := by
  with_unfolding_all rfl
#print axioms sectionBytes171_eq
end InitECandidate.Proofs.BackendStages
