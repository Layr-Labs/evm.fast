import InitECandidate.Proofs.BackendStages.Padded365
import InitECandidate.Proofs.BackendStages.BytesData365
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes365_eq : (Padded365.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes365 := by
  with_unfolding_all rfl
#print axioms sectionBytes365_eq
end InitECandidate.Proofs.BackendStages
