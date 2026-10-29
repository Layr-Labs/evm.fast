import InitECandidate.Proofs.BackendStages.Metadata.Data745
import InitECandidate.Proofs.BackendStages.Filtered745
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis745_eq : ffiLines Filtered745.lines = localFfis745 := by
  with_unfolding_all rfl
theorem ffiStep745 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis745) : LabToTarget.findFfiNames (Filtered745 :: rest) = suffixFfis745 := by
  rw [findFfiNames_section, localFfis745_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep745
end InitECandidate.Proofs.BackendStages.Metadata
