import InitECandidate.Proofs.BackendStages.Metadata.Ffi672
import InitECandidate.Proofs.BackendStages.Metadata.Shmem672
import InitECandidate.Proofs.BackendStages.Metadata.Ffi673
import InitECandidate.Proofs.BackendStages.Metadata.Shmem673
import InitECandidate.Proofs.BackendStages.Metadata.Ffi674
import InitECandidate.Proofs.BackendStages.Metadata.Shmem674
import InitECandidate.Proofs.BackendStages.Metadata.Ffi675
import InitECandidate.Proofs.BackendStages.Metadata.Shmem675
import InitECandidate.Proofs.BackendStages.Metadata.Ffi676
import InitECandidate.Proofs.BackendStages.Metadata.Shmem676
import InitECandidate.Proofs.BackendStages.Metadata.Ffi677
import InitECandidate.Proofs.BackendStages.Metadata.Shmem677
import InitECandidate.Proofs.BackendStages.Metadata.Ffi678
import InitECandidate.Proofs.BackendStages.Metadata.Shmem678
import InitECandidate.Proofs.BackendStages.Metadata.Ffi679
import InitECandidate.Proofs.BackendStages.Metadata.Shmem679
import InitECandidate.Proofs.BackendStages.Metadata.Ffi680
import InitECandidate.Proofs.BackendStages.Metadata.Shmem680
import InitECandidate.Proofs.BackendStages.Metadata.Ffi681
import InitECandidate.Proofs.BackendStages.Metadata.Shmem681
import InitECandidate.Proofs.BackendStages.Metadata.Ffi682
import InitECandidate.Proofs.BackendStages.Metadata.Shmem682
import InitECandidate.Proofs.BackendStages.Metadata.Ffi683
import InitECandidate.Proofs.BackendStages.Metadata.Shmem683
import InitECandidate.Proofs.BackendStages.Metadata.Ffi684
import InitECandidate.Proofs.BackendStages.Metadata.Shmem684
import InitECandidate.Proofs.BackendStages.Metadata.Ffi685
import InitECandidate.Proofs.BackendStages.Metadata.Shmem685
import InitECandidate.Proofs.BackendStages.Metadata.Ffi686
import InitECandidate.Proofs.BackendStages.Metadata.Shmem686
import InitECandidate.Proofs.BackendStages.Metadata.Ffi687
import InitECandidate.Proofs.BackendStages.Metadata.Shmem687
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk672_687 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis687) : LabToTarget.findFfiNames ([Filtered672, Filtered673, Filtered674, Filtered675, Filtered676, Filtered677, Filtered678, Filtered679, Filtered680, Filtered681, Filtered682, Filtered683, Filtered684, Filtered685, Filtered686, Filtered687] ++ rest) = suffixFfis672 := by
  exact ffiStep672 _ ( ffiStep673 _ ( ffiStep674 _ ( ffiStep675 _ ( ffiStep676 _ ( ffiStep677 _ ( ffiStep678 _ ( ffiStep679 _ ( ffiStep680 _ ( ffiStep681 _ ( ffiStep682 _ ( ffiStep683 _ ( ffiStep684 _ ( ffiStep685 _ ( ffiStep686 _ ( ffiStep687 _ (h))))))))))))))))
theorem shmemChunk672_687 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded672, Padded673, Padded674, Padded675, Padded676, Padded677, Padded678, Padded679, Padded680, Padded681, Padded682, Padded683, Padded684, Padded685, Padded686, Padded687] ++ rest) 602848 beforeFfis672 beforeShmem672 = LabToTarget.getShmemInfo rest 627408 afterFfis687 afterShmem687 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 602848 beforeFfis672 beforeShmem672 = _
  rw [shmemStep672]
  change LabToTarget.getShmemInfo _ 603204 beforeFfis673 beforeShmem673 = _
  rw [shmemStep673]
  change LabToTarget.getShmemInfo _ 603560 beforeFfis674 beforeShmem674 = _
  rw [shmemStep674]
  change LabToTarget.getShmemInfo _ 603860 beforeFfis675 beforeShmem675 = _
  rw [shmemStep675]
  change LabToTarget.getShmemInfo _ 604184 beforeFfis676 beforeShmem676 = _
  rw [shmemStep676]
  change LabToTarget.getShmemInfo _ 604200 beforeFfis677 beforeShmem677 = _
  rw [shmemStep677]
  change LabToTarget.getShmemInfo _ 604220 beforeFfis678 beforeShmem678 = _
  rw [shmemStep678]
  change LabToTarget.getShmemInfo _ 604376 beforeFfis679 beforeShmem679 = _
  rw [shmemStep679]
  change LabToTarget.getShmemInfo _ 604656 beforeFfis680 beforeShmem680 = _
  rw [shmemStep680]
  change LabToTarget.getShmemInfo _ 605104 beforeFfis681 beforeShmem681 = _
  rw [shmemStep681]
  change LabToTarget.getShmemInfo _ 605120 beforeFfis682 beforeShmem682 = _
  rw [shmemStep682]
  change LabToTarget.getShmemInfo _ 610128 beforeFfis683 beforeShmem683 = _
  rw [shmemStep683]
  change LabToTarget.getShmemInfo _ 617988 beforeFfis684 beforeShmem684 = _
  rw [shmemStep684]
  change LabToTarget.getShmemInfo _ 620044 beforeFfis685 beforeShmem685 = _
  rw [shmemStep685]
  change LabToTarget.getShmemInfo _ 626276 beforeFfis686 beforeShmem686 = _
  rw [shmemStep686]
  change LabToTarget.getShmemInfo _ 627128 beforeFfis687 beforeShmem687 = _
  rw [shmemStep687]
theorem symbolsChunk672_687 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 602848 ([Padded672, Padded673, Padded674, Padded675, Padded676, Padded677, Padded678, Padded679, Padded680, Padded681, Padded682, Padded683, Padded684, Padded685, Padded686, Padded687] ++ rest) = [(672, 602848, 356), (673, 603204, 356), (674, 603560, 300), (675, 603860, 324), (676, 604184, 16), (677, 604200, 20), (678, 604220, 156), (679, 604376, 280), (680, 604656, 448), (681, 605104, 16), (682, 605120, 5008), (683, 610128, 7860), (684, 617988, 2056), (685, 620044, 6232), (686, 626276, 852), (687, 627128, 280)] ++ LabToTarget.getSymbols 627408 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength672, symbolLength673, symbolLength674, symbolLength675, symbolLength676, symbolLength677, symbolLength678, symbolLength679, symbolLength680, symbolLength681, symbolLength682, symbolLength683, symbolLength684, symbolLength685, symbolLength686, symbolLength687]
  rfl
#print axioms ffiChunk672_687
#print axioms shmemChunk672_687
#print axioms symbolsChunk672_687
end InitECandidate.Proofs.BackendStages.Metadata
