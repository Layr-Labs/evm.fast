import InitECandidate.Proofs.BackendStages.Metadata.Data147
import InitECandidate.Proofs.BackendStages.Filtered147
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis147_eq : ffiLines Filtered147.lines = localFfis147 := by
  with_unfolding_all rfl
theorem ffiStep147 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis147) : LabToTarget.findFfiNames (Filtered147 :: rest) = suffixFfis147 := by
  rw [findFfiNames_section, localFfis147_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep147
end InitECandidate.Proofs.BackendStages.Metadata
