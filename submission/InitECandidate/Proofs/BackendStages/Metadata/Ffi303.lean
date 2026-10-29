import InitECandidate.Proofs.BackendStages.Metadata.Data303
import InitECandidate.Proofs.BackendStages.Filtered303
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis303_eq : ffiLines Filtered303.lines = localFfis303 := by
  with_unfolding_all rfl
theorem ffiStep303 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis303) : LabToTarget.findFfiNames (Filtered303 :: rest) = suffixFfis303 := by
  rw [findFfiNames_section, localFfis303_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep303
end InitECandidate.Proofs.BackendStages.Metadata
