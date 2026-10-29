import InitECandidate.Proofs.BackendStages.Metadata.Data86
import InitECandidate.Proofs.BackendStages.Filtered86
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis86_eq : ffiLines Filtered86.lines = localFfis86 := by
  with_unfolding_all rfl
theorem ffiStep86 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis86) : LabToTarget.findFfiNames (Filtered86 :: rest) = suffixFfis86 := by
  rw [findFfiNames_section, localFfis86_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep86
end InitECandidate.Proofs.BackendStages.Metadata
