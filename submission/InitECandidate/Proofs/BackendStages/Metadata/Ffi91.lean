import InitECandidate.Proofs.BackendStages.Metadata.Data91
import InitECandidate.Proofs.BackendStages.Filtered91
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis91_eq : ffiLines Filtered91.lines = localFfis91 := by
  with_unfolding_all rfl
theorem ffiStep91 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis91) : LabToTarget.findFfiNames (Filtered91 :: rest) = suffixFfis91 := by
  rw [findFfiNames_section, localFfis91_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep91
end InitECandidate.Proofs.BackendStages.Metadata
