import InitECandidate.Proofs.BackendStages.Metadata.Data512
import InitECandidate.Proofs.BackendStages.Filtered512
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis512_eq : ffiLines Filtered512.lines = localFfis512 := by
  with_unfolding_all rfl
theorem ffiStep512 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis512) : LabToTarget.findFfiNames (Filtered512 :: rest) = suffixFfis512 := by
  rw [findFfiNames_section, localFfis512_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep512
end InitECandidate.Proofs.BackendStages.Metadata
