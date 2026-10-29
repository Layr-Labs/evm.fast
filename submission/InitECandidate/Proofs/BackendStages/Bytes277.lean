import InitECandidate.Proofs.BackendStages.Padded277
import InitECandidate.Proofs.BackendStages.BytesData277
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes277_eq : (Padded277.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes277 := by
  with_unfolding_all rfl
#print axioms sectionBytes277_eq
end InitECandidate.Proofs.BackendStages
