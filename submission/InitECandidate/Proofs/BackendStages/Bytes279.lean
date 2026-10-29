import InitECandidate.Proofs.BackendStages.Padded279
import InitECandidate.Proofs.BackendStages.BytesData279
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes279_eq : (Padded279.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes279 := by
  with_unfolding_all rfl
#print axioms sectionBytes279_eq
end InitECandidate.Proofs.BackendStages
