import InitECandidate.Proofs.BackendStages.Padded249
import InitECandidate.Proofs.BackendStages.BytesData249
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes249_eq : (Padded249.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes249 := by
  with_unfolding_all rfl
#print axioms sectionBytes249_eq
end InitECandidate.Proofs.BackendStages
