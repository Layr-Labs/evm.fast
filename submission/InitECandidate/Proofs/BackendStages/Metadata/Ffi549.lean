import InitECandidate.Proofs.BackendStages.Metadata.Data549
import InitECandidate.Proofs.BackendStages.Filtered549
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis549_eq : ffiLines Filtered549.lines = localFfis549 := by
  with_unfolding_all rfl
theorem ffiStep549 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis549) : LabToTarget.findFfiNames (Filtered549 :: rest) = suffixFfis549 := by
  rw [findFfiNames_section, localFfis549_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep549
end InitECandidate.Proofs.BackendStages.Metadata
