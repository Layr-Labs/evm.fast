import InitECandidate.Proofs.BackendStages.Metadata.Data843
import InitECandidate.Proofs.BackendStages.Filtered843
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis843_eq : ffiLines Filtered843.lines = localFfis843 := by
  with_unfolding_all rfl
theorem ffiStep843 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis843) : LabToTarget.findFfiNames (Filtered843 :: rest) = suffixFfis843 := by
  rw [findFfiNames_section, localFfis843_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep843
end InitECandidate.Proofs.BackendStages.Metadata
