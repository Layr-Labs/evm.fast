import InitECandidate.Proofs.BackendStages.Padded128
import InitECandidate.Proofs.BackendStages.BytesData128
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes128_eq : (Padded128.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes128 := by
  with_unfolding_all rfl
#print axioms sectionBytes128_eq
end InitECandidate.Proofs.BackendStages
