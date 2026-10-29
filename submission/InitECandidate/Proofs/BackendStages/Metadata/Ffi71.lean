import InitECandidate.Proofs.BackendStages.Metadata.Data71
import InitECandidate.Proofs.BackendStages.Filtered71
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis71_eq : ffiLines Filtered71.lines = localFfis71 := by
  with_unfolding_all rfl
theorem ffiStep71 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis71) : LabToTarget.findFfiNames (Filtered71 :: rest) = suffixFfis71 := by
  rw [findFfiNames_section, localFfis71_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep71
end InitECandidate.Proofs.BackendStages.Metadata
