import InitECandidate.Proofs.BackendStages.Metadata.Data323
import InitECandidate.Proofs.BackendStages.Filtered323
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis323_eq : ffiLines Filtered323.lines = localFfis323 := by
  with_unfolding_all rfl
theorem ffiStep323 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis323) : LabToTarget.findFfiNames (Filtered323 :: rest) = suffixFfis323 := by
  rw [findFfiNames_section, localFfis323_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep323
end InitECandidate.Proofs.BackendStages.Metadata
