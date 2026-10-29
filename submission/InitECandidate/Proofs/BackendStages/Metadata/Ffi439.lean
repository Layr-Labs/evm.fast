import InitECandidate.Proofs.BackendStages.Metadata.Data439
import InitECandidate.Proofs.BackendStages.Filtered439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis439_eq : ffiLines Filtered439.lines = localFfis439 := by
  with_unfolding_all rfl
theorem ffiStep439 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis439) : LabToTarget.findFfiNames (Filtered439 :: rest) = suffixFfis439 := by
  rw [findFfiNames_section, localFfis439_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep439
end InitECandidate.Proofs.BackendStages.Metadata
