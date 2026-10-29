import InitECandidate.Proofs.BackendStages.Padded386
import InitECandidate.Proofs.BackendStages.BytesData386
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes386_eq : (Padded386.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes386 := by
  with_unfolding_all rfl
#print axioms sectionBytes386_eq
end InitECandidate.Proofs.BackendStages
