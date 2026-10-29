import InitECandidate.Proofs.BackendStages.Metadata.Data339
import InitECandidate.Proofs.BackendStages.Filtered339
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis339_eq : ffiLines Filtered339.lines = localFfis339 := by
  with_unfolding_all rfl
theorem ffiStep339 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis339) : LabToTarget.findFfiNames (Filtered339 :: rest) = suffixFfis339 := by
  rw [findFfiNames_section, localFfis339_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep339
end InitECandidate.Proofs.BackendStages.Metadata
