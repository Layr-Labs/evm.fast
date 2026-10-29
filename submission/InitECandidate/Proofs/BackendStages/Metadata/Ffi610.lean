import InitECandidate.Proofs.BackendStages.Metadata.Data610
import InitECandidate.Proofs.BackendStages.Filtered610
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis610_eq : ffiLines Filtered610.lines = localFfis610 := by
  with_unfolding_all rfl
theorem ffiStep610 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis610) : LabToTarget.findFfiNames (Filtered610 :: rest) = suffixFfis610 := by
  rw [findFfiNames_section, localFfis610_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep610
end InitECandidate.Proofs.BackendStages.Metadata
