import InitECandidate.Proofs.BackendStages.Metadata.Ffi512
import InitECandidate.Proofs.BackendStages.Metadata.Shmem512
import InitECandidate.Proofs.BackendStages.Metadata.Ffi513
import InitECandidate.Proofs.BackendStages.Metadata.Shmem513
import InitECandidate.Proofs.BackendStages.Metadata.Ffi514
import InitECandidate.Proofs.BackendStages.Metadata.Shmem514
import InitECandidate.Proofs.BackendStages.Metadata.Ffi515
import InitECandidate.Proofs.BackendStages.Metadata.Shmem515
import InitECandidate.Proofs.BackendStages.Metadata.Ffi516
import InitECandidate.Proofs.BackendStages.Metadata.Shmem516
import InitECandidate.Proofs.BackendStages.Metadata.Ffi517
import InitECandidate.Proofs.BackendStages.Metadata.Shmem517
import InitECandidate.Proofs.BackendStages.Metadata.Ffi518
import InitECandidate.Proofs.BackendStages.Metadata.Shmem518
import InitECandidate.Proofs.BackendStages.Metadata.Ffi519
import InitECandidate.Proofs.BackendStages.Metadata.Shmem519
import InitECandidate.Proofs.BackendStages.Metadata.Ffi520
import InitECandidate.Proofs.BackendStages.Metadata.Shmem520
import InitECandidate.Proofs.BackendStages.Metadata.Ffi521
import InitECandidate.Proofs.BackendStages.Metadata.Shmem521
import InitECandidate.Proofs.BackendStages.Metadata.Ffi522
import InitECandidate.Proofs.BackendStages.Metadata.Shmem522
import InitECandidate.Proofs.BackendStages.Metadata.Ffi523
import InitECandidate.Proofs.BackendStages.Metadata.Shmem523
import InitECandidate.Proofs.BackendStages.Metadata.Ffi524
import InitECandidate.Proofs.BackendStages.Metadata.Shmem524
import InitECandidate.Proofs.BackendStages.Metadata.Ffi525
import InitECandidate.Proofs.BackendStages.Metadata.Shmem525
import InitECandidate.Proofs.BackendStages.Metadata.Ffi526
import InitECandidate.Proofs.BackendStages.Metadata.Shmem526
import InitECandidate.Proofs.BackendStages.Metadata.Ffi527
import InitECandidate.Proofs.BackendStages.Metadata.Shmem527
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk512_527 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis527) : LabToTarget.findFfiNames ([Filtered512, Filtered513, Filtered514, Filtered515, Filtered516, Filtered517, Filtered518, Filtered519, Filtered520, Filtered521, Filtered522, Filtered523, Filtered524, Filtered525, Filtered526, Filtered527] ++ rest) = suffixFfis512 := by
  exact ffiStep512 _ ( ffiStep513 _ ( ffiStep514 _ ( ffiStep515 _ ( ffiStep516 _ ( ffiStep517 _ ( ffiStep518 _ ( ffiStep519 _ ( ffiStep520 _ ( ffiStep521 _ ( ffiStep522 _ ( ffiStep523 _ ( ffiStep524 _ ( ffiStep525 _ ( ffiStep526 _ ( ffiStep527 _ (h))))))))))))))))
theorem shmemChunk512_527 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded512, Padded513, Padded514, Padded515, Padded516, Padded517, Padded518, Padded519, Padded520, Padded521, Padded522, Padded523, Padded524, Padded525, Padded526, Padded527] ++ rest) 379460 beforeFfis512 beforeShmem512 = LabToTarget.getShmemInfo rest 391728 afterFfis527 afterShmem527 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 379460 beforeFfis512 beforeShmem512 = _
  rw [shmemStep512]
  change LabToTarget.getShmemInfo _ 380224 beforeFfis513 beforeShmem513 = _
  rw [shmemStep513]
  change LabToTarget.getShmemInfo _ 380836 beforeFfis514 beforeShmem514 = _
  rw [shmemStep514]
  change LabToTarget.getShmemInfo _ 381504 beforeFfis515 beforeShmem515 = _
  rw [shmemStep515]
  change LabToTarget.getShmemInfo _ 382172 beforeFfis516 beforeShmem516 = _
  rw [shmemStep516]
  change LabToTarget.getShmemInfo _ 382840 beforeFfis517 beforeShmem517 = _
  rw [shmemStep517]
  change LabToTarget.getShmemInfo _ 383356 beforeFfis518 beforeShmem518 = _
  rw [shmemStep518]
  change LabToTarget.getShmemInfo _ 384292 beforeFfis519 beforeShmem519 = _
  rw [shmemStep519]
  change LabToTarget.getShmemInfo _ 385212 beforeFfis520 beforeShmem520 = _
  rw [shmemStep520]
  change LabToTarget.getShmemInfo _ 386132 beforeFfis521 beforeShmem521 = _
  rw [shmemStep521]
  change LabToTarget.getShmemInfo _ 387052 beforeFfis522 beforeShmem522 = _
  rw [shmemStep522]
  change LabToTarget.getShmemInfo _ 387668 beforeFfis523 beforeShmem523 = _
  rw [shmemStep523]
  change LabToTarget.getShmemInfo _ 389804 beforeFfis524 beforeShmem524 = _
  rw [shmemStep524]
  change LabToTarget.getShmemInfo _ 389976 beforeFfis525 beforeShmem525 = _
  rw [shmemStep525]
  change LabToTarget.getShmemInfo _ 390436 beforeFfis526 beforeShmem526 = _
  rw [shmemStep526]
  change LabToTarget.getShmemInfo _ 391360 beforeFfis527 beforeShmem527 = _
  rw [shmemStep527]
theorem symbolsChunk512_527 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 379460 ([Padded512, Padded513, Padded514, Padded515, Padded516, Padded517, Padded518, Padded519, Padded520, Padded521, Padded522, Padded523, Padded524, Padded525, Padded526, Padded527] ++ rest) = [(512, 379460, 764), (513, 380224, 612), (514, 380836, 668), (515, 381504, 668), (516, 382172, 668), (517, 382840, 516), (518, 383356, 936), (519, 384292, 920), (520, 385212, 920), (521, 386132, 920), (522, 387052, 616), (523, 387668, 2136), (524, 389804, 172), (525, 389976, 460), (526, 390436, 924), (527, 391360, 368)] ++ LabToTarget.getSymbols 391728 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength512, symbolLength513, symbolLength514, symbolLength515, symbolLength516, symbolLength517, symbolLength518, symbolLength519, symbolLength520, symbolLength521, symbolLength522, symbolLength523, symbolLength524, symbolLength525, symbolLength526, symbolLength527]
  rfl
#print axioms ffiChunk512_527
#print axioms shmemChunk512_527
#print axioms symbolsChunk512_527
end InitECandidate.Proofs.BackendStages.Metadata
