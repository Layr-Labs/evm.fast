import InitECandidate.Proofs.BackendStages.Metadata.Data299
import InitECandidate.Proofs.BackendStages.Filtered299
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis299_eq : ffiLines Filtered299.lines = localFfis299 := by
  with_unfolding_all rfl
theorem ffiStep299 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis299) : LabToTarget.findFfiNames (Filtered299 :: rest) = suffixFfis299 := by
  rw [findFfiNames_section, localFfis299_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep299
end InitECandidate.Proofs.BackendStages.Metadata
