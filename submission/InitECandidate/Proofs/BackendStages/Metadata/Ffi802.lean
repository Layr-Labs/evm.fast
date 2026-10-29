import InitECandidate.Proofs.BackendStages.Metadata.Data802
import InitECandidate.Proofs.BackendStages.Filtered802
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis802_eq : ffiLines Filtered802.lines = localFfis802 := by
  with_unfolding_all rfl
theorem ffiStep802 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis802) : LabToTarget.findFfiNames (Filtered802 :: rest) = suffixFfis802 := by
  rw [findFfiNames_section, localFfis802_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep802
end InitECandidate.Proofs.BackendStages.Metadata
