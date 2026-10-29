import InitECandidate.Proofs.BackendStages.Padded534
import InitECandidate.Proofs.BackendStages.BytesData534
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes534_eq : (Padded534.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes534 := by
  with_unfolding_all rfl
#print axioms sectionBytes534_eq
end InitECandidate.Proofs.BackendStages
