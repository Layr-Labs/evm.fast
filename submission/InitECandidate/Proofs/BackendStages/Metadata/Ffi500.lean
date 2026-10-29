import InitECandidate.Proofs.BackendStages.Metadata.Data500
import InitECandidate.Proofs.BackendStages.Filtered500
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis500_eq : ffiLines Filtered500.lines = localFfis500 := by
  with_unfolding_all rfl
theorem ffiStep500 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis500) : LabToTarget.findFfiNames (Filtered500 :: rest) = suffixFfis500 := by
  rw [findFfiNames_section, localFfis500_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep500
end InitECandidate.Proofs.BackendStages.Metadata
