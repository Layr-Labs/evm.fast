import InitECandidate.Proofs.BackendStages.Padded284
import InitECandidate.Proofs.BackendStages.BytesData284
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes284_eq : (Padded284.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes284 := by
  with_unfolding_all rfl
#print axioms sectionBytes284_eq
end InitECandidate.Proofs.BackendStages
