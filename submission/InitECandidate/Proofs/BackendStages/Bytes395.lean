import InitECandidate.Proofs.BackendStages.Padded395
import InitECandidate.Proofs.BackendStages.BytesData395
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes395_eq : (Padded395.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes395 := by
  with_unfolding_all rfl
#print axioms sectionBytes395_eq
end InitECandidate.Proofs.BackendStages
