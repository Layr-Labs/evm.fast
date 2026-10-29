import InitECandidate.Proofs.BackendStages.Metadata.Data809
import InitECandidate.Proofs.BackendStages.Filtered809
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis809_eq : ffiLines Filtered809.lines = localFfis809 := by
  with_unfolding_all rfl
theorem ffiStep809 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis809) : LabToTarget.findFfiNames (Filtered809 :: rest) = suffixFfis809 := by
  rw [findFfiNames_section, localFfis809_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep809
end InitECandidate.Proofs.BackendStages.Metadata
