import InitECandidate.Proofs.BackendStages.Metadata.Data209
import InitECandidate.Proofs.BackendStages.Filtered209
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis209_eq : ffiLines Filtered209.lines = localFfis209 := by
  with_unfolding_all rfl
theorem ffiStep209 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis209) : LabToTarget.findFfiNames (Filtered209 :: rest) = suffixFfis209 := by
  rw [findFfiNames_section, localFfis209_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep209
end InitECandidate.Proofs.BackendStages.Metadata
