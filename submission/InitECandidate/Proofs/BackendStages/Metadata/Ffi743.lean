import InitECandidate.Proofs.BackendStages.Metadata.Data743
import InitECandidate.Proofs.BackendStages.Filtered743
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis743_eq : ffiLines Filtered743.lines = localFfis743 := by
  with_unfolding_all rfl
theorem ffiStep743 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis743) : LabToTarget.findFfiNames (Filtered743 :: rest) = suffixFfis743 := by
  rw [findFfiNames_section, localFfis743_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep743
end InitECandidate.Proofs.BackendStages.Metadata
