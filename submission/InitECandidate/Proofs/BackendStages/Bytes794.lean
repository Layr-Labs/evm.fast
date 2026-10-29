import InitECandidate.Proofs.BackendStages.Padded794
import InitECandidate.Proofs.BackendStages.BytesData794
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes794_eq : (Padded794.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes794 := by
  with_unfolding_all rfl
#print axioms sectionBytes794_eq
end InitECandidate.Proofs.BackendStages
