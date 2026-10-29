import InitECandidate.Proofs.BackendStages.Metadata.Data794
import InitECandidate.Proofs.BackendStages.Filtered794
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis794_eq : ffiLines Filtered794.lines = localFfis794 := by
  with_unfolding_all rfl
theorem ffiStep794 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis794) : LabToTarget.findFfiNames (Filtered794 :: rest) = suffixFfis794 := by
  rw [findFfiNames_section, localFfis794_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep794
end InitECandidate.Proofs.BackendStages.Metadata
