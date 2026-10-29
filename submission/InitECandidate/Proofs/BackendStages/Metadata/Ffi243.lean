import InitECandidate.Proofs.BackendStages.Metadata.Data243
import InitECandidate.Proofs.BackendStages.Filtered243
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis243_eq : ffiLines Filtered243.lines = localFfis243 := by
  with_unfolding_all rfl
theorem ffiStep243 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis243) : LabToTarget.findFfiNames (Filtered243 :: rest) = suffixFfis243 := by
  rw [findFfiNames_section, localFfis243_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep243
end InitECandidate.Proofs.BackendStages.Metadata
