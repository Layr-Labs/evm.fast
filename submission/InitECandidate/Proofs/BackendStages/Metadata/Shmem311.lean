import InitECandidate.Proofs.BackendStages.Metadata.Data311
import InitECandidate.Proofs.BackendStages.Padded311
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep311 : walkShmemLines Padded311.lines 243236 beforeFfis311 beforeShmem311 = (243816, afterFfis311, afterShmem311) := by
  kernel_rfl
theorem shmemStep311 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded311 :: rest) 243236 beforeFfis311 beforeShmem311 = LabToTarget.getShmemInfo rest 243816 afterFfis311 afterShmem311 := by
  rw [getShmemInfo_section, walkStep311]
theorem symbolLength311 : LabToTarget.secLength Padded311.lines 0 = 580 := by
  kernel_rfl
#print axioms shmemStep311
#print axioms symbolLength311
end InitECandidate.Proofs.BackendStages.Metadata
