import InitECandidate.Proofs.BackendStages.Metadata.Data836
import InitECandidate.Proofs.BackendStages.Filtered836
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis836_eq : ffiLines Filtered836.lines = localFfis836 := by
  with_unfolding_all rfl
theorem ffiStep836 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis836) : LabToTarget.findFfiNames (Filtered836 :: rest) = suffixFfis836 := by
  rw [findFfiNames_section, localFfis836_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep836
end InitECandidate.Proofs.BackendStages.Metadata
