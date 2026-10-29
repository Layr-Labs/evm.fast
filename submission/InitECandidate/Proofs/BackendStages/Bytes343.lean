import InitECandidate.Proofs.BackendStages.Padded343
import InitECandidate.Proofs.BackendStages.BytesData343
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes343_eq : (Padded343.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes343 := by
  with_unfolding_all rfl
#print axioms sectionBytes343_eq
end InitECandidate.Proofs.BackendStages
