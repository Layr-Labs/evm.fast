import InitECandidate.Proofs.BackendStages.Metadata.Data110
import InitECandidate.Proofs.BackendStages.Filtered110
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis110_eq : ffiLines Filtered110.lines = localFfis110 := by
  with_unfolding_all rfl
theorem ffiStep110 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis110) : LabToTarget.findFfiNames (Filtered110 :: rest) = suffixFfis110 := by
  rw [findFfiNames_section, localFfis110_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep110
end InitECandidate.Proofs.BackendStages.Metadata
