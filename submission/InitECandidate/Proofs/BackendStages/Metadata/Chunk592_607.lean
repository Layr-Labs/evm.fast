import InitECandidate.Proofs.BackendStages.Metadata.Ffi592
import InitECandidate.Proofs.BackendStages.Metadata.Shmem592
import InitECandidate.Proofs.BackendStages.Metadata.Ffi593
import InitECandidate.Proofs.BackendStages.Metadata.Shmem593
import InitECandidate.Proofs.BackendStages.Metadata.Ffi594
import InitECandidate.Proofs.BackendStages.Metadata.Shmem594
import InitECandidate.Proofs.BackendStages.Metadata.Ffi595
import InitECandidate.Proofs.BackendStages.Metadata.Shmem595
import InitECandidate.Proofs.BackendStages.Metadata.Ffi596
import InitECandidate.Proofs.BackendStages.Metadata.Shmem596
import InitECandidate.Proofs.BackendStages.Metadata.Ffi597
import InitECandidate.Proofs.BackendStages.Metadata.Shmem597
import InitECandidate.Proofs.BackendStages.Metadata.Ffi598
import InitECandidate.Proofs.BackendStages.Metadata.Shmem598
import InitECandidate.Proofs.BackendStages.Metadata.Ffi599
import InitECandidate.Proofs.BackendStages.Metadata.Shmem599
import InitECandidate.Proofs.BackendStages.Metadata.Ffi600
import InitECandidate.Proofs.BackendStages.Metadata.Shmem600
import InitECandidate.Proofs.BackendStages.Metadata.Ffi601
import InitECandidate.Proofs.BackendStages.Metadata.Shmem601
import InitECandidate.Proofs.BackendStages.Metadata.Ffi602
import InitECandidate.Proofs.BackendStages.Metadata.Shmem602
import InitECandidate.Proofs.BackendStages.Metadata.Ffi603
import InitECandidate.Proofs.BackendStages.Metadata.Shmem603
import InitECandidate.Proofs.BackendStages.Metadata.Ffi604
import InitECandidate.Proofs.BackendStages.Metadata.Shmem604
import InitECandidate.Proofs.BackendStages.Metadata.Ffi605
import InitECandidate.Proofs.BackendStages.Metadata.Shmem605
import InitECandidate.Proofs.BackendStages.Metadata.Ffi606
import InitECandidate.Proofs.BackendStages.Metadata.Shmem606
import InitECandidate.Proofs.BackendStages.Metadata.Ffi607
import InitECandidate.Proofs.BackendStages.Metadata.Shmem607
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk592_607 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis607) : LabToTarget.findFfiNames ([Filtered592, Filtered593, Filtered594, Filtered595, Filtered596, Filtered597, Filtered598, Filtered599, Filtered600, Filtered601, Filtered602, Filtered603, Filtered604, Filtered605, Filtered606, Filtered607] ++ rest) = suffixFfis592 := by
  exact ffiStep592 _ ( ffiStep593 _ ( ffiStep594 _ ( ffiStep595 _ ( ffiStep596 _ ( ffiStep597 _ ( ffiStep598 _ ( ffiStep599 _ ( ffiStep600 _ ( ffiStep601 _ ( ffiStep602 _ ( ffiStep603 _ ( ffiStep604 _ ( ffiStep605 _ ( ffiStep606 _ ( ffiStep607 _ (h))))))))))))))))
theorem shmemChunk592_607 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded592, Padded593, Padded594, Padded595, Padded596, Padded597, Padded598, Padded599, Padded600, Padded601, Padded602, Padded603, Padded604, Padded605, Padded606, Padded607] ++ rest) 448808 beforeFfis592 beforeShmem592 = LabToTarget.getShmemInfo rest 481004 afterFfis607 afterShmem607 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 448808 beforeFfis592 beforeShmem592 = _
  rw [shmemStep592]
  change LabToTarget.getShmemInfo _ 449304 beforeFfis593 beforeShmem593 = _
  rw [shmemStep593]
  change LabToTarget.getShmemInfo _ 454216 beforeFfis594 beforeShmem594 = _
  rw [shmemStep594]
  change LabToTarget.getShmemInfo _ 456424 beforeFfis595 beforeShmem595 = _
  rw [shmemStep595]
  change LabToTarget.getShmemInfo _ 468856 beforeFfis596 beforeShmem596 = _
  rw [shmemStep596]
  change LabToTarget.getShmemInfo _ 469364 beforeFfis597 beforeShmem597 = _
  rw [shmemStep597]
  change LabToTarget.getShmemInfo _ 469740 beforeFfis598 beforeShmem598 = _
  rw [shmemStep598]
  change LabToTarget.getShmemInfo _ 470748 beforeFfis599 beforeShmem599 = _
  rw [shmemStep599]
  change LabToTarget.getShmemInfo _ 471072 beforeFfis600 beforeShmem600 = _
  rw [shmemStep600]
  change LabToTarget.getShmemInfo _ 471256 beforeFfis601 beforeShmem601 = _
  rw [shmemStep601]
  change LabToTarget.getShmemInfo _ 475560 beforeFfis602 beforeShmem602 = _
  rw [shmemStep602]
  change LabToTarget.getShmemInfo _ 476460 beforeFfis603 beforeShmem603 = _
  rw [shmemStep603]
  change LabToTarget.getShmemInfo _ 477760 beforeFfis604 beforeShmem604 = _
  rw [shmemStep604]
  change LabToTarget.getShmemInfo _ 477832 beforeFfis605 beforeShmem605 = _
  rw [shmemStep605]
  change LabToTarget.getShmemInfo _ 478316 beforeFfis606 beforeShmem606 = _
  rw [shmemStep606]
  change LabToTarget.getShmemInfo _ 480112 beforeFfis607 beforeShmem607 = _
  rw [shmemStep607]
theorem symbolsChunk592_607 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 448808 ([Padded592, Padded593, Padded594, Padded595, Padded596, Padded597, Padded598, Padded599, Padded600, Padded601, Padded602, Padded603, Padded604, Padded605, Padded606, Padded607] ++ rest) = [(592, 448808, 496), (593, 449304, 4912), (594, 454216, 2208), (595, 456424, 12432), (596, 468856, 508), (597, 469364, 376), (598, 469740, 1008), (599, 470748, 324), (600, 471072, 184), (601, 471256, 4304), (602, 475560, 900), (603, 476460, 1300), (604, 477760, 72), (605, 477832, 484), (606, 478316, 1796), (607, 480112, 892)] ++ LabToTarget.getSymbols 481004 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength592, symbolLength593, symbolLength594, symbolLength595, symbolLength596, symbolLength597, symbolLength598, symbolLength599, symbolLength600, symbolLength601, symbolLength602, symbolLength603, symbolLength604, symbolLength605, symbolLength606, symbolLength607]
  rfl
#print axioms ffiChunk592_607
#print axioms shmemChunk592_607
#print axioms symbolsChunk592_607
end InitECandidate.Proofs.BackendStages.Metadata
