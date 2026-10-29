import InitECandidate.Proofs.BackendStages.Metadata.Data668
import InitECandidate.Proofs.BackendStages.Filtered668
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis668_eq : ffiLines Filtered668.lines = localFfis668 := by
  with_unfolding_all rfl
theorem ffiStep668 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis668) : LabToTarget.findFfiNames (Filtered668 :: rest) = suffixFfis668 := by
  rw [findFfiNames_section, localFfis668_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep668
end InitECandidate.Proofs.BackendStages.Metadata
