import InitECandidate.Proofs.BackendStages.Metadata.Data518
import InitECandidate.Proofs.BackendStages.Padded518
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep518 : walkShmemLines Padded518.lines 383356 beforeFfis518 beforeShmem518 = (384292, afterFfis518, afterShmem518) := by
  kernel_rfl
theorem shmemStep518 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded518 :: rest) 383356 beforeFfis518 beforeShmem518 = LabToTarget.getShmemInfo rest 384292 afterFfis518 afterShmem518 := by
  rw [getShmemInfo_section, walkStep518]
theorem symbolLength518 : LabToTarget.secLength Padded518.lines 0 = 936 := by
  kernel_rfl
#print axioms shmemStep518
#print axioms symbolLength518
end InitECandidate.Proofs.BackendStages.Metadata
