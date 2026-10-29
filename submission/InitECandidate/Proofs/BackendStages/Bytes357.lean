import InitECandidate.Proofs.BackendStages.Padded357
import InitECandidate.Proofs.BackendStages.BytesData357
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes357_eq : (Padded357.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes357 := by
  with_unfolding_all rfl
#print axioms sectionBytes357_eq
end InitECandidate.Proofs.BackendStages
