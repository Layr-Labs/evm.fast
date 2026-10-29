import InitECandidate.Proofs.BackendStages.Padded748
import InitECandidate.Proofs.BackendStages.BytesData748
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes748_eq : (Padded748.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes748 := by
  with_unfolding_all rfl
#print axioms sectionBytes748_eq
end InitECandidate.Proofs.BackendStages
