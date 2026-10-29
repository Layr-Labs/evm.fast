import InitECandidate.Proofs.BackendStages.Metadata.Data347
import InitECandidate.Proofs.BackendStages.Filtered347
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis347_eq : ffiLines Filtered347.lines = localFfis347 := by
  with_unfolding_all rfl
theorem ffiStep347 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis347) : LabToTarget.findFfiNames (Filtered347 :: rest) = suffixFfis347 := by
  rw [findFfiNames_section, localFfis347_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep347
end InitECandidate.Proofs.BackendStages.Metadata
