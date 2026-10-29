import InitECandidate.Proofs.BackendStages.Padded272
import InitECandidate.Proofs.BackendStages.BytesData272
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes272_eq : (Padded272.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes272 := by
  with_unfolding_all rfl
#print axioms sectionBytes272_eq
end InitECandidate.Proofs.BackendStages
