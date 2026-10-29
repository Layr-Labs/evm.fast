import InitECandidate.Proofs.BackendStages.Padded670
import InitECandidate.Proofs.BackendStages.BytesData670
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes670_eq : (Padded670.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes670 := by
  with_unfolding_all rfl
#print axioms sectionBytes670_eq
end InitECandidate.Proofs.BackendStages
