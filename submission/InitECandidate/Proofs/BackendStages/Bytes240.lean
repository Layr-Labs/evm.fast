import InitECandidate.Proofs.BackendStages.Padded240
import InitECandidate.Proofs.BackendStages.BytesData240
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes240_eq : (Padded240.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes240 := by
  with_unfolding_all rfl
#print axioms sectionBytes240_eq
end InitECandidate.Proofs.BackendStages
