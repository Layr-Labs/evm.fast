import InitECandidate.Proofs.BackendStages.Metadata.Data624
import InitECandidate.Proofs.BackendStages.Filtered624
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis624_eq : ffiLines Filtered624.lines = localFfis624 := by
  with_unfolding_all rfl
theorem ffiStep624 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis624) : LabToTarget.findFfiNames (Filtered624 :: rest) = suffixFfis624 := by
  rw [findFfiNames_section, localFfis624_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep624
end InitECandidate.Proofs.BackendStages.Metadata
