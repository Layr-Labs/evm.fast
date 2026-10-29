import InitECandidate.Proofs.BackendStages.Metadata.Data277
import InitECandidate.Proofs.BackendStages.Filtered277
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis277_eq : ffiLines Filtered277.lines = localFfis277 := by
  with_unfolding_all rfl
theorem ffiStep277 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis277) : LabToTarget.findFfiNames (Filtered277 :: rest) = suffixFfis277 := by
  rw [findFfiNames_section, localFfis277_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep277
end InitECandidate.Proofs.BackendStages.Metadata
