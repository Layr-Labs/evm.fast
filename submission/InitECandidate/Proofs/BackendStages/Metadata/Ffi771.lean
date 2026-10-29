import InitECandidate.Proofs.BackendStages.Metadata.Data771
import InitECandidate.Proofs.BackendStages.Filtered771
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis771_eq : ffiLines Filtered771.lines = localFfis771 := by
  with_unfolding_all rfl
theorem ffiStep771 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis771) : LabToTarget.findFfiNames (Filtered771 :: rest) = suffixFfis771 := by
  rw [findFfiNames_section, localFfis771_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep771
end InitECandidate.Proofs.BackendStages.Metadata
