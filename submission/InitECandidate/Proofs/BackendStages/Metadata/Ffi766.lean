import InitECandidate.Proofs.BackendStages.Metadata.Data766
import InitECandidate.Proofs.BackendStages.Filtered766
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis766_eq : ffiLines Filtered766.lines = localFfis766 := by
  with_unfolding_all rfl
theorem ffiStep766 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis766) : LabToTarget.findFfiNames (Filtered766 :: rest) = suffixFfis766 := by
  rw [findFfiNames_section, localFfis766_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep766
end InitECandidate.Proofs.BackendStages.Metadata
