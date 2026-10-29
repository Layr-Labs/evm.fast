import InitECandidate.Proofs.BackendStages.Metadata.Data82
import InitECandidate.Proofs.BackendStages.Filtered82
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis82_eq : ffiLines Filtered82.lines = localFfis82 := by
  with_unfolding_all rfl
theorem ffiStep82 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis82) : LabToTarget.findFfiNames (Filtered82 :: rest) = suffixFfis82 := by
  rw [findFfiNames_section, localFfis82_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep82
end InitECandidate.Proofs.BackendStages.Metadata
