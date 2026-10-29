import InitECandidate.Proofs.BackendStages.Metadata.Data298
import InitECandidate.Proofs.BackendStages.Filtered298
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis298_eq : ffiLines Filtered298.lines = localFfis298 := by
  with_unfolding_all rfl
theorem ffiStep298 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis298) : LabToTarget.findFfiNames (Filtered298 :: rest) = suffixFfis298 := by
  rw [findFfiNames_section, localFfis298_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep298
end InitECandidate.Proofs.BackendStages.Metadata
