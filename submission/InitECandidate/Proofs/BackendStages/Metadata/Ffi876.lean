import InitECandidate.Proofs.BackendStages.Metadata.Data876
import InitECandidate.Proofs.BackendStages.Filtered876
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis876_eq : ffiLines Filtered876.lines = localFfis876 := by
  with_unfolding_all rfl
theorem ffiStep876 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis876) : LabToTarget.findFfiNames (Filtered876 :: rest) = suffixFfis876 := by
  rw [findFfiNames_section, localFfis876_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep876
end InitECandidate.Proofs.BackendStages.Metadata
