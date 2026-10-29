import InitECandidate.Proofs.BackendStages.Metadata.Data578
import InitECandidate.Proofs.BackendStages.Filtered578
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis578_eq : ffiLines Filtered578.lines = localFfis578 := by
  with_unfolding_all rfl
theorem ffiStep578 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis578) : LabToTarget.findFfiNames (Filtered578 :: rest) = suffixFfis578 := by
  rw [findFfiNames_section, localFfis578_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep578
end InitECandidate.Proofs.BackendStages.Metadata
