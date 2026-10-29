import InitECandidate.Proofs.BackendStages.Metadata.Data829
import InitECandidate.Proofs.BackendStages.Filtered829
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis829_eq : ffiLines Filtered829.lines = localFfis829 := by
  with_unfolding_all rfl
theorem ffiStep829 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis829) : LabToTarget.findFfiNames (Filtered829 :: rest) = suffixFfis829 := by
  rw [findFfiNames_section, localFfis829_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep829
end InitECandidate.Proofs.BackendStages.Metadata
