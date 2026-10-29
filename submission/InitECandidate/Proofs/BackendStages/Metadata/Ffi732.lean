import InitECandidate.Proofs.BackendStages.Metadata.Data732
import InitECandidate.Proofs.BackendStages.Filtered732
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis732_eq : ffiLines Filtered732.lines = localFfis732 := by
  with_unfolding_all rfl
theorem ffiStep732 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis732) : LabToTarget.findFfiNames (Filtered732 :: rest) = suffixFfis732 := by
  rw [findFfiNames_section, localFfis732_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep732
end InitECandidate.Proofs.BackendStages.Metadata
