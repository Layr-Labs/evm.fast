import InitECandidate.Proofs.BackendStages.Metadata.Data504
import InitECandidate.Proofs.BackendStages.Filtered504
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis504_eq : ffiLines Filtered504.lines = localFfis504 := by
  with_unfolding_all rfl
theorem ffiStep504 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis504) : LabToTarget.findFfiNames (Filtered504 :: rest) = suffixFfis504 := by
  rw [findFfiNames_section, localFfis504_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep504
end InitECandidate.Proofs.BackendStages.Metadata
