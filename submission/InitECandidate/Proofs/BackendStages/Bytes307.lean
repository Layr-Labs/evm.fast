import InitECandidate.Proofs.BackendStages.Padded307
import InitECandidate.Proofs.BackendStages.BytesData307
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes307_eq : (Padded307.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes307 := by
  with_unfolding_all rfl
#print axioms sectionBytes307_eq
end InitECandidate.Proofs.BackendStages
