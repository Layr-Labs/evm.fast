import InitECandidate.Proofs.BackendStages.Metadata.Data780
import InitECandidate.Proofs.BackendStages.Filtered780
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis780_eq : ffiLines Filtered780.lines = localFfis780 := by
  with_unfolding_all rfl
theorem ffiStep780 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis780) : LabToTarget.findFfiNames (Filtered780 :: rest) = suffixFfis780 := by
  rw [findFfiNames_section, localFfis780_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep780
end InitECandidate.Proofs.BackendStages.Metadata
