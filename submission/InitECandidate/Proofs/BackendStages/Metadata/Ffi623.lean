import InitECandidate.Proofs.BackendStages.Metadata.Data623
import InitECandidate.Proofs.BackendStages.Filtered623
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis623_eq : ffiLines Filtered623.lines = localFfis623 := by
  with_unfolding_all rfl
theorem ffiStep623 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis623) : LabToTarget.findFfiNames (Filtered623 :: rest) = suffixFfis623 := by
  rw [findFfiNames_section, localFfis623_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep623
end InitECandidate.Proofs.BackendStages.Metadata
