import InitECandidate.Proofs.BackendStages.Metadata.Data6
import InitECandidate.Proofs.BackendStages.Filtered6
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis6_eq : ffiLines Filtered6.lines = localFfis6 := by
  with_unfolding_all rfl
theorem ffiStep6 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis6) : LabToTarget.findFfiNames (Filtered6 :: rest) = suffixFfis6 := by
  rw [findFfiNames_section, localFfis6_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep6
end InitECandidate.Proofs.BackendStages.Metadata
