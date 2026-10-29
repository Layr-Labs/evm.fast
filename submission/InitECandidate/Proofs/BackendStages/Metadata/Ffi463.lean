import InitECandidate.Proofs.BackendStages.Metadata.Data463
import InitECandidate.Proofs.BackendStages.Filtered463
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis463_eq : ffiLines Filtered463.lines = localFfis463 := by
  with_unfolding_all rfl
theorem ffiStep463 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis463) : LabToTarget.findFfiNames (Filtered463 :: rest) = suffixFfis463 := by
  rw [findFfiNames_section, localFfis463_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep463
end InitECandidate.Proofs.BackendStages.Metadata
