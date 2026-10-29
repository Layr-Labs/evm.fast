import InitECandidate.Proofs.BackendStages.Metadata.Data386
import InitECandidate.Proofs.BackendStages.Padded386
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep386 : walkShmemLines Padded386.lines 295688 beforeFfis386 beforeShmem386 = (297620, afterFfis386, afterShmem386) := by
  kernel_rfl
theorem shmemStep386 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded386 :: rest) 295688 beforeFfis386 beforeShmem386 = LabToTarget.getShmemInfo rest 297620 afterFfis386 afterShmem386 := by
  rw [getShmemInfo_section, walkStep386]
theorem symbolLength386 : LabToTarget.secLength Padded386.lines 0 = 1932 := by
  kernel_rfl
#print axioms shmemStep386
#print axioms symbolLength386
end InitECandidate.Proofs.BackendStages.Metadata
