import InitECandidate.Proofs.BackendStages.Metadata.Data285
import InitECandidate.Proofs.BackendStages.Filtered285
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis285_eq : ffiLines Filtered285.lines = localFfis285 := by
  with_unfolding_all rfl
theorem ffiStep285 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis285) : LabToTarget.findFfiNames (Filtered285 :: rest) = suffixFfis285 := by
  rw [findFfiNames_section, localFfis285_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep285
end InitECandidate.Proofs.BackendStages.Metadata
