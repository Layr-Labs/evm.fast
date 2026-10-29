import InitECandidate.Proofs.BackendStages.Padded114
import InitECandidate.Proofs.BackendStages.BytesData114
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes114_eq : (Padded114.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes114 := by
  with_unfolding_all rfl
#print axioms sectionBytes114_eq
end InitECandidate.Proofs.BackendStages
