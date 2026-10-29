import InitECandidate.Proofs.BackendStages.Metadata.Data813
import InitECandidate.Proofs.BackendStages.Filtered813
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis813_eq : ffiLines Filtered813.lines = localFfis813 := by
  with_unfolding_all rfl
theorem ffiStep813 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis813) : LabToTarget.findFfiNames (Filtered813 :: rest) = suffixFfis813 := by
  rw [findFfiNames_section, localFfis813_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep813
end InitECandidate.Proofs.BackendStages.Metadata
