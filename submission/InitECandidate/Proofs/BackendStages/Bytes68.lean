import InitECandidate.Proofs.BackendStages.Padded68
import InitECandidate.Proofs.BackendStages.BytesData68
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes68_eq : (Padded68.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes68 := by
  with_unfolding_all rfl
#print axioms sectionBytes68_eq
end InitECandidate.Proofs.BackendStages
