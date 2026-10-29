import InitECandidate.Proofs.BackendStages.Padded700
import InitECandidate.Proofs.BackendStages.BytesData700
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes700_eq : (Padded700.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes700 := by
  with_unfolding_all rfl
#print axioms sectionBytes700_eq
end InitECandidate.Proofs.BackendStages
