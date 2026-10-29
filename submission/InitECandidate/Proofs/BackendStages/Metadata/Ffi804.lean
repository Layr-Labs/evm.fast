import InitECandidate.Proofs.BackendStages.Metadata.Data804
import InitECandidate.Proofs.BackendStages.Filtered804
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis804_eq : ffiLines Filtered804.lines = localFfis804 := by
  with_unfolding_all rfl
theorem ffiStep804 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis804) : LabToTarget.findFfiNames (Filtered804 :: rest) = suffixFfis804 := by
  rw [findFfiNames_section, localFfis804_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep804
end InitECandidate.Proofs.BackendStages.Metadata
