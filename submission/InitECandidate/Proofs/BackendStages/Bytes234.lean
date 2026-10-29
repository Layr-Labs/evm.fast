import InitECandidate.Proofs.BackendStages.Padded234
import InitECandidate.Proofs.BackendStages.BytesData234
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes234_eq : (Padded234.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes234 := by
  with_unfolding_all rfl
#print axioms sectionBytes234_eq
end InitECandidate.Proofs.BackendStages
