import InitECandidate.Proofs.BackendStages.Padded407
import InitECandidate.Proofs.BackendStages.BytesData407
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes407_eq : (Padded407.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes407 := by
  with_unfolding_all rfl
#print axioms sectionBytes407_eq
end InitECandidate.Proofs.BackendStages
