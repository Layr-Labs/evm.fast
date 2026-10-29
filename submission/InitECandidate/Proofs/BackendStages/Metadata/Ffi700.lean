import InitECandidate.Proofs.BackendStages.Metadata.Data700
import InitECandidate.Proofs.BackendStages.Filtered700
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis700_eq : ffiLines Filtered700.lines = localFfis700 := by
  with_unfolding_all rfl
theorem ffiStep700 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis700) : LabToTarget.findFfiNames (Filtered700 :: rest) = suffixFfis700 := by
  rw [findFfiNames_section, localFfis700_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep700
end InitECandidate.Proofs.BackendStages.Metadata
