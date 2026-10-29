import InitECandidate.Proofs.BackendStages.Metadata.Data297
import InitECandidate.Proofs.BackendStages.Filtered297
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis297_eq : ffiLines Filtered297.lines = localFfis297 := by
  with_unfolding_all rfl
theorem ffiStep297 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis297) : LabToTarget.findFfiNames (Filtered297 :: rest) = suffixFfis297 := by
  rw [findFfiNames_section, localFfis297_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep297
end InitECandidate.Proofs.BackendStages.Metadata
