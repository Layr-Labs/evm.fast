import InitECandidate.Proofs.BackendStages.Padded314
import InitECandidate.Proofs.BackendStages.BytesData314
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes314_eq : (Padded314.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes314 := by
  with_unfolding_all rfl
#print axioms sectionBytes314_eq
end InitECandidate.Proofs.BackendStages
