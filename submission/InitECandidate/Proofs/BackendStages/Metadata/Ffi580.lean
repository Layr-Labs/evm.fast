import InitECandidate.Proofs.BackendStages.Metadata.Data580
import InitECandidate.Proofs.BackendStages.Filtered580
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis580_eq : ffiLines Filtered580.lines = localFfis580 := by
  with_unfolding_all rfl
theorem ffiStep580 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis580) : LabToTarget.findFfiNames (Filtered580 :: rest) = suffixFfis580 := by
  rw [findFfiNames_section, localFfis580_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep580
end InitECandidate.Proofs.BackendStages.Metadata
