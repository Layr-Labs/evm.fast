import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints766.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
theorem node384_conditional
    (child377 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_375 (830, 6) = (output377, (830, 6)))
    (child383 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_381 (830, 6) = (output383, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_382 (830, 6) = (output384, (830, 6)) := by
  rw [output384_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child377 child383

theorem node385_conditional
    (child384 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_382 (830, 6) = (output384, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_383 (830, 6) = (output385, (830, 6)) := by
  rw [output385_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child384

theorem node386_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child385 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_383 (830, 6) = (output385, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_384 (830, 6) = (output386, (830, 6)) := by
  rw [output386_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child385

theorem node387_conditional
    (child386 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_384 (830, 6) = (output386, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_385 (830, 6) = (output387, (830, 6)) := by
  rw [output387_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child386

theorem node388_conditional
    (child375 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_373 (830, 2) = (output375, (830, 6)))
    (child387 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_385 (830, 6) = (output387, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_386 (830, 2) = (output388, (830, 6)) := by
  rw [output388_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child375 child387

theorem node389_conditional
    (child388 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_386 (830, 2) = (output388, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_387 (830, 2) = (output389, (830, 6)) := by
  rw [output389_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child388

theorem node390_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_388 (830, 6) = (output390, (830, 6)) := by
  rw [output390_def]
  kernel_rfl

theorem node391_conditional
    (child390 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_388 (830, 6) = (output390, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_389 (830, 6) = (output391, (830, 6)) := by
  rw [output391_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child390

theorem node392_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_390 (830, 6) = (output392, (830, 6)) := by
  rw [output392_def]
  kernel_rfl

theorem node393_conditional
    (child392 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_390 (830, 6) = (output392, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_391 (830, 6) = (output393, (830, 6)) := by
  rw [output393_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child392

theorem node394_conditional
    (child393 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_391 (830, 6) = (output393, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_392 (830, 6) = (output394, (830, 6)) := by
  rw [output394_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child393 child99

theorem node395_conditional
    (child394 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_392 (830, 6) = (output394, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_393 (830, 6) = (output395, (830, 6)) := by
  rw [output395_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child394

theorem node396_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child395 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_393 (830, 6) = (output395, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_394 (830, 6) = (output396, (830, 6)) := by
  rw [output396_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child395

theorem node397_conditional
    (child396 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_394 (830, 6) = (output396, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_395 (830, 6) = (output397, (830, 6)) := by
  rw [output397_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child396

theorem node398_conditional
    (child391 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_389 (830, 6) = (output391, (830, 6)))
    (child397 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_395 (830, 6) = (output397, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_396 (830, 6) = (output398, (830, 6)) := by
  rw [output398_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child391 child397

theorem node399_conditional
    (child398 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_396 (830, 6) = (output398, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_397 (830, 6) = (output399, (830, 6)) := by
  rw [output399_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child398

theorem node400_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child399 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_397 (830, 6) = (output399, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_398 (830, 6) = (output400, (830, 6)) := by
  rw [output400_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child399

theorem node401_conditional
    (child400 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_398 (830, 6) = (output400, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_399 (830, 6) = (output401, (830, 6)) := by
  rw [output401_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child400

theorem node402_conditional
    (child389 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_387 (830, 2) = (output389, (830, 6)))
    (child401 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_399 (830, 6) = (output401, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_400 (830, 2) = (output402, (830, 6)) := by
  rw [output402_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child389 child401

theorem node403_conditional
    (child402 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_400 (830, 2) = (output402, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_401 (830, 2) = (output403, (830, 6)) := by
  rw [output403_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child402

theorem node404_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_402 (830, 6) = (output404, (830, 6)) := by
  rw [output404_def]
  kernel_rfl

theorem node405_conditional
    (child404 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_402 (830, 6) = (output404, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_403 (830, 6) = (output405, (830, 6)) := by
  rw [output405_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child404

theorem node406_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_404 (830, 6) = (output406, (830, 6)) := by
  rw [output406_def]
  kernel_rfl

theorem node407_conditional
    (child406 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_404 (830, 6) = (output406, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_405 (830, 6) = (output407, (830, 6)) := by
  rw [output407_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child406

theorem node408_conditional
    (child407 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_405 (830, 6) = (output407, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_406 (830, 6) = (output408, (830, 6)) := by
  rw [output408_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child407 child99

theorem node409_conditional
    (child408 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_406 (830, 6) = (output408, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_407 (830, 6) = (output409, (830, 6)) := by
  rw [output409_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child408

theorem node410_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child409 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_407 (830, 6) = (output409, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_408 (830, 6) = (output410, (830, 6)) := by
  rw [output410_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child409

theorem node411_conditional
    (child410 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_408 (830, 6) = (output410, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_409 (830, 6) = (output411, (830, 6)) := by
  rw [output411_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child410

theorem node412_conditional
    (child405 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_403 (830, 6) = (output405, (830, 6)))
    (child411 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_409 (830, 6) = (output411, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_410 (830, 6) = (output412, (830, 6)) := by
  rw [output412_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child405 child411

theorem node413_conditional
    (child412 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_410 (830, 6) = (output412, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_411 (830, 6) = (output413, (830, 6)) := by
  rw [output413_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child412

theorem node414_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child413 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_411 (830, 6) = (output413, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_412 (830, 6) = (output414, (830, 6)) := by
  rw [output414_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child413

theorem node415_conditional
    (child414 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_412 (830, 6) = (output414, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_413 (830, 6) = (output415, (830, 6)) := by
  rw [output415_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child414

theorem node416_conditional
    (child403 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_401 (830, 2) = (output403, (830, 6)))
    (child415 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_413 (830, 6) = (output415, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_414 (830, 2) = (output416, (830, 6)) := by
  rw [output416_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child403 child415

theorem node417_conditional
    (child416 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_414 (830, 2) = (output416, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_415 (830, 2) = (output417, (830, 6)) := by
  rw [output417_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child416

theorem node418_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_416 (830, 6) = (output418, (830, 6)) := by
  rw [output418_def]
  kernel_rfl

theorem node419_conditional
    (child418 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_416 (830, 6) = (output418, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_417 (830, 6) = (output419, (830, 6)) := by
  rw [output419_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child418

theorem node420_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_418 (830, 6) = (output420, (830, 6)) := by
  rw [output420_def]
  kernel_rfl

theorem node421_conditional
    (child420 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_418 (830, 6) = (output420, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_419 (830, 6) = (output421, (830, 6)) := by
  rw [output421_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child420

theorem node422_conditional
    (child421 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_419 (830, 6) = (output421, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_420 (830, 6) = (output422, (830, 6)) := by
  rw [output422_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child421 child99

theorem node423_conditional
    (child422 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_420 (830, 6) = (output422, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_421 (830, 6) = (output423, (830, 6)) := by
  rw [output423_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child422

theorem node424_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child423 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_421 (830, 6) = (output423, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_422 (830, 6) = (output424, (830, 6)) := by
  rw [output424_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child423

theorem node425_conditional
    (child424 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_422 (830, 6) = (output424, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_423 (830, 6) = (output425, (830, 6)) := by
  rw [output425_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child424

theorem node426_conditional
    (child419 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_417 (830, 6) = (output419, (830, 6)))
    (child425 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_423 (830, 6) = (output425, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_424 (830, 6) = (output426, (830, 6)) := by
  rw [output426_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child419 child425

theorem node427_conditional
    (child426 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_424 (830, 6) = (output426, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_425 (830, 6) = (output427, (830, 6)) := by
  rw [output427_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child426

theorem node428_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child427 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_425 (830, 6) = (output427, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_426 (830, 6) = (output428, (830, 6)) := by
  rw [output428_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child427

theorem node429_conditional
    (child428 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_426 (830, 6) = (output428, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_427 (830, 6) = (output429, (830, 6)) := by
  rw [output429_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child428

theorem node430_conditional
    (child417 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_415 (830, 2) = (output417, (830, 6)))
    (child429 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_427 (830, 6) = (output429, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_428 (830, 2) = (output430, (830, 6)) := by
  rw [output430_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child417 child429

theorem node431_conditional
    (child430 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_428 (830, 2) = (output430, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_429 (830, 2) = (output431, (830, 6)) := by
  rw [output431_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child430

theorem node432_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_430 (830, 6) = (output432, (830, 6)) := by
  rw [output432_def]
  kernel_rfl

theorem node433_conditional
    (child432 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_430 (830, 6) = (output432, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_431 (830, 6) = (output433, (830, 6)) := by
  rw [output433_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child432

theorem node434_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_432 (830, 6) = (output434, (830, 6)) := by
  rw [output434_def]
  kernel_rfl

theorem node435_conditional
    (child434 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_432 (830, 6) = (output434, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_433 (830, 6) = (output435, (830, 6)) := by
  rw [output435_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child434

theorem node436_conditional
    (child435 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_433 (830, 6) = (output435, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_434 (830, 6) = (output436, (830, 6)) := by
  rw [output436_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child435 child99

theorem node437_conditional
    (child436 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_434 (830, 6) = (output436, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_435 (830, 6) = (output437, (830, 6)) := by
  rw [output437_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child436

theorem node438_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child437 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_435 (830, 6) = (output437, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_436 (830, 6) = (output438, (830, 6)) := by
  rw [output438_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child437

theorem node439_conditional
    (child438 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_436 (830, 6) = (output438, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_437 (830, 6) = (output439, (830, 6)) := by
  rw [output439_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child438

theorem node440_conditional
    (child433 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_431 (830, 6) = (output433, (830, 6)))
    (child439 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_437 (830, 6) = (output439, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_438 (830, 6) = (output440, (830, 6)) := by
  rw [output440_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child433 child439

theorem node441_conditional
    (child440 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_438 (830, 6) = (output440, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_439 (830, 6) = (output441, (830, 6)) := by
  rw [output441_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child440

theorem node442_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child441 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_439 (830, 6) = (output441, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_440 (830, 6) = (output442, (830, 6)) := by
  rw [output442_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child441

theorem node443_conditional
    (child442 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_440 (830, 6) = (output442, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_441 (830, 6) = (output443, (830, 6)) := by
  rw [output443_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child442

theorem node444_conditional
    (child431 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_429 (830, 2) = (output431, (830, 6)))
    (child443 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_441 (830, 6) = (output443, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_442 (830, 2) = (output444, (830, 6)) := by
  rw [output444_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child431 child443

theorem node445_conditional
    (child444 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_442 (830, 2) = (output444, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_443 (830, 2) = (output445, (830, 6)) := by
  rw [output445_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child444

theorem node446_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_444 (830, 6) = (output446, (830, 6)) := by
  rw [output446_def]
  kernel_rfl

theorem node447_conditional
    (child446 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_444 (830, 6) = (output446, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_445 (830, 6) = (output447, (830, 6)) := by
  rw [output447_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child446

theorem node448_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_446 (830, 6) = (output448, (830, 6)) := by
  rw [output448_def]
  kernel_rfl

theorem node449_conditional
    (child448 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_446 (830, 6) = (output448, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_447 (830, 6) = (output449, (830, 6)) := by
  rw [output449_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child448

theorem node450_conditional
    (child449 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_447 (830, 6) = (output449, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_448 (830, 6) = (output450, (830, 6)) := by
  rw [output450_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child449 child99

theorem node451_conditional
    (child450 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_448 (830, 6) = (output450, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_449 (830, 6) = (output451, (830, 6)) := by
  rw [output451_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child450

theorem node452_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child451 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_449 (830, 6) = (output451, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_450 (830, 6) = (output452, (830, 6)) := by
  rw [output452_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child451

theorem node453_conditional
    (child452 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_450 (830, 6) = (output452, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_451 (830, 6) = (output453, (830, 6)) := by
  rw [output453_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child452

theorem node454_conditional
    (child447 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_445 (830, 6) = (output447, (830, 6)))
    (child453 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_451 (830, 6) = (output453, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_452 (830, 6) = (output454, (830, 6)) := by
  rw [output454_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child447 child453

theorem node455_conditional
    (child454 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_452 (830, 6) = (output454, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_453 (830, 6) = (output455, (830, 6)) := by
  rw [output455_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child454

theorem node456_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child455 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_453 (830, 6) = (output455, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_454 (830, 6) = (output456, (830, 6)) := by
  rw [output456_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child455

theorem node457_conditional
    (child456 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_454 (830, 6) = (output456, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_455 (830, 6) = (output457, (830, 6)) := by
  rw [output457_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child456

theorem node458_conditional
    (child445 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_443 (830, 2) = (output445, (830, 6)))
    (child457 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_455 (830, 6) = (output457, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_456 (830, 2) = (output458, (830, 6)) := by
  rw [output458_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child445 child457

theorem node459_conditional
    (child458 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_456 (830, 2) = (output458, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_457 (830, 2) = (output459, (830, 6)) := by
  rw [output459_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child458

theorem node460_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_458 (830, 6) = (output460, (830, 6)) := by
  rw [output460_def]
  kernel_rfl

theorem node461_conditional
    (child460 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_458 (830, 6) = (output460, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_459 (830, 6) = (output461, (830, 6)) := by
  rw [output461_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child460

theorem node462_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_460 (830, 6) = (output462, (830, 6)) := by
  rw [output462_def]
  kernel_rfl

theorem node463_conditional
    (child462 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_460 (830, 6) = (output462, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_461 (830, 6) = (output463, (830, 6)) := by
  rw [output463_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child462

theorem node464_conditional
    (child463 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_461 (830, 6) = (output463, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_462 (830, 6) = (output464, (830, 6)) := by
  rw [output464_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child463 child99

theorem node465_conditional
    (child464 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_462 (830, 6) = (output464, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_463 (830, 6) = (output465, (830, 6)) := by
  rw [output465_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child464

theorem node466_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child465 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_463 (830, 6) = (output465, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_464 (830, 6) = (output466, (830, 6)) := by
  rw [output466_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child465

theorem node467_conditional
    (child466 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_464 (830, 6) = (output466, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_465 (830, 6) = (output467, (830, 6)) := by
  rw [output467_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child466

theorem node468_conditional
    (child461 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_459 (830, 6) = (output461, (830, 6)))
    (child467 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_465 (830, 6) = (output467, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_466 (830, 6) = (output468, (830, 6)) := by
  rw [output468_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child461 child467

theorem node469_conditional
    (child468 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_466 (830, 6) = (output468, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_467 (830, 6) = (output469, (830, 6)) := by
  rw [output469_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child468

theorem node470_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child469 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_467 (830, 6) = (output469, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_468 (830, 6) = (output470, (830, 6)) := by
  rw [output470_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child469

theorem node471_conditional
    (child470 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_468 (830, 6) = (output470, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_469 (830, 6) = (output471, (830, 6)) := by
  rw [output471_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child470

theorem node472_conditional
    (child459 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_457 (830, 2) = (output459, (830, 6)))
    (child471 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_469 (830, 6) = (output471, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_470 (830, 2) = (output472, (830, 6)) := by
  rw [output472_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child459 child471

theorem node473_conditional
    (child472 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_470 (830, 2) = (output472, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_471 (830, 2) = (output473, (830, 6)) := by
  rw [output473_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child472

theorem node474_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_472 (830, 6) = (output474, (830, 6)) := by
  rw [output474_def]
  kernel_rfl

theorem node475_conditional
    (child474 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_472 (830, 6) = (output474, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_473 (830, 6) = (output475, (830, 6)) := by
  rw [output475_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child474

theorem node476_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_474 (830, 6) = (output476, (830, 6)) := by
  rw [output476_def]
  kernel_rfl

theorem node477_conditional
    (child476 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_474 (830, 6) = (output476, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_475 (830, 6) = (output477, (830, 6)) := by
  rw [output477_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child476

theorem node478_conditional
    (child477 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_475 (830, 6) = (output477, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_476 (830, 6) = (output478, (830, 6)) := by
  rw [output478_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child477 child99

theorem node479_conditional
    (child478 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_476 (830, 6) = (output478, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_477 (830, 6) = (output479, (830, 6)) := by
  rw [output479_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child478

theorem node480_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child479 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_477 (830, 6) = (output479, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_478 (830, 6) = (output480, (830, 6)) := by
  rw [output480_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child479

theorem node481_conditional
    (child480 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_478 (830, 6) = (output480, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_479 (830, 6) = (output481, (830, 6)) := by
  rw [output481_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child480

theorem node482_conditional
    (child475 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_473 (830, 6) = (output475, (830, 6)))
    (child481 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_479 (830, 6) = (output481, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_480 (830, 6) = (output482, (830, 6)) := by
  rw [output482_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child475 child481

theorem node483_conditional
    (child482 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_480 (830, 6) = (output482, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_481 (830, 6) = (output483, (830, 6)) := by
  rw [output483_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child482

theorem node484_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child483 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_481 (830, 6) = (output483, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_482 (830, 6) = (output484, (830, 6)) := by
  rw [output484_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child483

theorem node485_conditional
    (child484 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_482 (830, 6) = (output484, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_483 (830, 6) = (output485, (830, 6)) := by
  rw [output485_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child484

theorem node486_conditional
    (child473 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_471 (830, 2) = (output473, (830, 6)))
    (child485 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_483 (830, 6) = (output485, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_484 (830, 2) = (output486, (830, 6)) := by
  rw [output486_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child473 child485

theorem node487_conditional
    (child486 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_484 (830, 2) = (output486, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_485 (830, 2) = (output487, (830, 6)) := by
  rw [output487_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child486

theorem node488_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_486 (830, 6) = (output488, (830, 6)) := by
  rw [output488_def]
  kernel_rfl

theorem node489_conditional
    (child488 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_486 (830, 6) = (output488, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_487 (830, 6) = (output489, (830, 6)) := by
  rw [output489_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child488

theorem node490_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_488 (830, 6) = (output490, (830, 6)) := by
  rw [output490_def]
  kernel_rfl

theorem node491_conditional
    (child490 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_488 (830, 6) = (output490, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_489 (830, 6) = (output491, (830, 6)) := by
  rw [output491_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child490

theorem node492_conditional
    (child491 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_489 (830, 6) = (output491, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_490 (830, 6) = (output492, (830, 6)) := by
  rw [output492_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child491 child99

theorem node493_conditional
    (child492 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_490 (830, 6) = (output492, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_491 (830, 6) = (output493, (830, 6)) := by
  rw [output493_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child492

theorem node494_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child493 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_491 (830, 6) = (output493, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_492 (830, 6) = (output494, (830, 6)) := by
  rw [output494_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child493

theorem node495_conditional
    (child494 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_492 (830, 6) = (output494, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_493 (830, 6) = (output495, (830, 6)) := by
  rw [output495_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child494

theorem node496_conditional
    (child489 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_487 (830, 6) = (output489, (830, 6)))
    (child495 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_493 (830, 6) = (output495, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_494 (830, 6) = (output496, (830, 6)) := by
  rw [output496_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child489 child495

theorem node497_conditional
    (child496 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_494 (830, 6) = (output496, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_495 (830, 6) = (output497, (830, 6)) := by
  rw [output497_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child496

theorem node498_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child497 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_495 (830, 6) = (output497, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_496 (830, 6) = (output498, (830, 6)) := by
  rw [output498_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child497

theorem node499_conditional
    (child498 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_496 (830, 6) = (output498, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_497 (830, 6) = (output499, (830, 6)) := by
  rw [output499_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child498

theorem node500_conditional
    (child487 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_485 (830, 2) = (output487, (830, 6)))
    (child499 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_497 (830, 6) = (output499, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_498 (830, 2) = (output500, (830, 6)) := by
  rw [output500_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child487 child499

theorem node501_conditional
    (child500 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_498 (830, 2) = (output500, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_499 (830, 2) = (output501, (830, 6)) := by
  rw [output501_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child500

theorem node502_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_500 (830, 6) = (output502, (830, 6)) := by
  rw [output502_def]
  kernel_rfl

theorem node503_conditional
    (child502 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_500 (830, 6) = (output502, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_501 (830, 6) = (output503, (830, 6)) := by
  rw [output503_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child502

theorem node504_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_502 (830, 6) = (output504, (830, 6)) := by
  rw [output504_def]
  kernel_rfl

theorem node505_conditional
    (child504 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_502 (830, 6) = (output504, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_503 (830, 6) = (output505, (830, 6)) := by
  rw [output505_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child504

theorem node506_conditional
    (child505 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_503 (830, 6) = (output505, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_504 (830, 6) = (output506, (830, 6)) := by
  rw [output506_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child505 child99

theorem node507_conditional
    (child506 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_504 (830, 6) = (output506, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_505 (830, 6) = (output507, (830, 6)) := by
  rw [output507_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child506

theorem node508_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child507 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_505 (830, 6) = (output507, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_506 (830, 6) = (output508, (830, 6)) := by
  rw [output508_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child507

theorem node509_conditional
    (child508 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_506 (830, 6) = (output508, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_507 (830, 6) = (output509, (830, 6)) := by
  rw [output509_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child508

theorem node510_conditional
    (child503 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_501 (830, 6) = (output503, (830, 6)))
    (child509 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_507 (830, 6) = (output509, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_508 (830, 6) = (output510, (830, 6)) := by
  rw [output510_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child503 child509

theorem node511_conditional
    (child510 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_508 (830, 6) = (output510, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_509 (830, 6) = (output511, (830, 6)) := by
  rw [output511_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child510

theorem node512_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child511 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_509 (830, 6) = (output511, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_510 (830, 6) = (output512, (830, 6)) := by
  rw [output512_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child511

theorem node513_conditional
    (child512 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_510 (830, 6) = (output512, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_511 (830, 6) = (output513, (830, 6)) := by
  rw [output513_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child512

theorem node514_conditional
    (child501 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_499 (830, 2) = (output501, (830, 6)))
    (child513 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_511 (830, 6) = (output513, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_512 (830, 2) = (output514, (830, 6)) := by
  rw [output514_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child501 child513

theorem node515_conditional
    (child514 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_512 (830, 2) = (output514, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_513 (830, 2) = (output515, (830, 6)) := by
  rw [output515_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child514

theorem node516_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_514 (830, 6) = (output516, (830, 6)) := by
  rw [output516_def]
  kernel_rfl

theorem node517_conditional
    (child516 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_514 (830, 6) = (output516, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_515 (830, 6) = (output517, (830, 6)) := by
  rw [output517_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child516

theorem node518_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_516 (830, 6) = (output518, (830, 6)) := by
  rw [output518_def]
  kernel_rfl

theorem node519_conditional
    (child518 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_516 (830, 6) = (output518, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_517 (830, 6) = (output519, (830, 6)) := by
  rw [output519_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child518

theorem node520_conditional
    (child519 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_517 (830, 6) = (output519, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_518 (830, 6) = (output520, (830, 6)) := by
  rw [output520_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child519 child99

theorem node521_conditional
    (child520 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_518 (830, 6) = (output520, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_519 (830, 6) = (output521, (830, 6)) := by
  rw [output521_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child520

theorem node522_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child521 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_519 (830, 6) = (output521, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_520 (830, 6) = (output522, (830, 6)) := by
  rw [output522_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child521

theorem node523_conditional
    (child522 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_520 (830, 6) = (output522, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_521 (830, 6) = (output523, (830, 6)) := by
  rw [output523_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child522

theorem node524_conditional
    (child517 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_515 (830, 6) = (output517, (830, 6)))
    (child523 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_521 (830, 6) = (output523, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_522 (830, 6) = (output524, (830, 6)) := by
  rw [output524_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child517 child523

theorem node525_conditional
    (child524 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_522 (830, 6) = (output524, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_523 (830, 6) = (output525, (830, 6)) := by
  rw [output525_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child524

theorem node526_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child525 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_523 (830, 6) = (output525, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_524 (830, 6) = (output526, (830, 6)) := by
  rw [output526_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child525

theorem node527_conditional
    (child526 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_524 (830, 6) = (output526, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_525 (830, 6) = (output527, (830, 6)) := by
  rw [output527_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child526

theorem node528_conditional
    (child515 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_513 (830, 2) = (output515, (830, 6)))
    (child527 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_525 (830, 6) = (output527, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_526 (830, 2) = (output528, (830, 6)) := by
  rw [output528_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child515 child527

theorem node529_conditional
    (child528 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_526 (830, 2) = (output528, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_527 (830, 2) = (output529, (830, 6)) := by
  rw [output529_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child528

theorem node530_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_528 (830, 6) = (output530, (830, 6)) := by
  rw [output530_def]
  kernel_rfl

theorem node531_conditional
    (child530 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_528 (830, 6) = (output530, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_529 (830, 6) = (output531, (830, 6)) := by
  rw [output531_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child530

theorem node532_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_530 (830, 6) = (output532, (830, 6)) := by
  rw [output532_def]
  kernel_rfl

theorem node533_conditional
    (child532 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_530 (830, 6) = (output532, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_531 (830, 6) = (output533, (830, 6)) := by
  rw [output533_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child532

theorem node534_conditional
    (child533 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_531 (830, 6) = (output533, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_532 (830, 6) = (output534, (830, 6)) := by
  rw [output534_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child533 child99

theorem node535_conditional
    (child534 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_532 (830, 6) = (output534, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_533 (830, 6) = (output535, (830, 6)) := by
  rw [output535_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child534

theorem node536_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child535 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_533 (830, 6) = (output535, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_534 (830, 6) = (output536, (830, 6)) := by
  rw [output536_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child535

theorem node537_conditional
    (child536 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_534 (830, 6) = (output536, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_535 (830, 6) = (output537, (830, 6)) := by
  rw [output537_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child536

theorem node538_conditional
    (child531 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_529 (830, 6) = (output531, (830, 6)))
    (child537 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_535 (830, 6) = (output537, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_536 (830, 6) = (output538, (830, 6)) := by
  rw [output538_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child531 child537

theorem node539_conditional
    (child538 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_536 (830, 6) = (output538, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_537 (830, 6) = (output539, (830, 6)) := by
  rw [output539_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child538

theorem node540_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child539 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_537 (830, 6) = (output539, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_538 (830, 6) = (output540, (830, 6)) := by
  rw [output540_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child539

theorem node541_conditional
    (child540 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_538 (830, 6) = (output540, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_539 (830, 6) = (output541, (830, 6)) := by
  rw [output541_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child540

theorem node542_conditional
    (child529 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_527 (830, 2) = (output529, (830, 6)))
    (child541 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_539 (830, 6) = (output541, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_540 (830, 2) = (output542, (830, 6)) := by
  rw [output542_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child529 child541

theorem node543_conditional
    (child542 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_540 (830, 2) = (output542, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_541 (830, 2) = (output543, (830, 6)) := by
  rw [output543_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child542

theorem node544_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_542 (830, 6) = (output544, (830, 6)) := by
  rw [output544_def]
  kernel_rfl

theorem node545_conditional
    (child544 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_542 (830, 6) = (output544, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_543 (830, 6) = (output545, (830, 6)) := by
  rw [output545_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child544

theorem node546_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_544 (830, 6) = (output546, (830, 6)) := by
  rw [output546_def]
  kernel_rfl

theorem node547_conditional
    (child546 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_544 (830, 6) = (output546, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_545 (830, 6) = (output547, (830, 6)) := by
  rw [output547_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child546

theorem node548_conditional
    (child547 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_545 (830, 6) = (output547, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_546 (830, 6) = (output548, (830, 6)) := by
  rw [output548_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child547 child99

theorem node549_conditional
    (child548 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_546 (830, 6) = (output548, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_547 (830, 6) = (output549, (830, 6)) := by
  rw [output549_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child548

theorem node550_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child549 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_547 (830, 6) = (output549, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_548 (830, 6) = (output550, (830, 6)) := by
  rw [output550_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child549

theorem node551_conditional
    (child550 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_548 (830, 6) = (output550, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_549 (830, 6) = (output551, (830, 6)) := by
  rw [output551_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child550

theorem node552_conditional
    (child545 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_543 (830, 6) = (output545, (830, 6)))
    (child551 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_549 (830, 6) = (output551, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_550 (830, 6) = (output552, (830, 6)) := by
  rw [output552_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child545 child551

theorem node553_conditional
    (child552 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_550 (830, 6) = (output552, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_551 (830, 6) = (output553, (830, 6)) := by
  rw [output553_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child552

theorem node554_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child553 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_551 (830, 6) = (output553, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_552 (830, 6) = (output554, (830, 6)) := by
  rw [output554_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child553

theorem node555_conditional
    (child554 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_552 (830, 6) = (output554, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_553 (830, 6) = (output555, (830, 6)) := by
  rw [output555_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child554

theorem node556_conditional
    (child543 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_541 (830, 2) = (output543, (830, 6)))
    (child555 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_553 (830, 6) = (output555, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_554 (830, 2) = (output556, (830, 6)) := by
  rw [output556_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child543 child555

theorem node557_conditional
    (child556 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_554 (830, 2) = (output556, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_555 (830, 2) = (output557, (830, 6)) := by
  rw [output557_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child556

theorem node558_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_556 (830, 6) = (output558, (830, 6)) := by
  rw [output558_def]
  kernel_rfl

theorem node559_conditional
    (child558 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_556 (830, 6) = (output558, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_557 (830, 6) = (output559, (830, 6)) := by
  rw [output559_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child558

theorem node560_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_558 (830, 6) = (output560, (830, 6)) := by
  rw [output560_def]
  kernel_rfl

theorem node561_conditional
    (child560 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_558 (830, 6) = (output560, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_559 (830, 6) = (output561, (830, 6)) := by
  rw [output561_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child560

theorem node562_conditional
    (child561 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_559 (830, 6) = (output561, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_560 (830, 6) = (output562, (830, 6)) := by
  rw [output562_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child561 child99

theorem node563_conditional
    (child562 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_560 (830, 6) = (output562, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_561 (830, 6) = (output563, (830, 6)) := by
  rw [output563_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child562

theorem node564_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child563 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_561 (830, 6) = (output563, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_562 (830, 6) = (output564, (830, 6)) := by
  rw [output564_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child563

theorem node565_conditional
    (child564 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_562 (830, 6) = (output564, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_563 (830, 6) = (output565, (830, 6)) := by
  rw [output565_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child564

theorem node566_conditional
    (child559 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_557 (830, 6) = (output559, (830, 6)))
    (child565 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_563 (830, 6) = (output565, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_564 (830, 6) = (output566, (830, 6)) := by
  rw [output566_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child559 child565

theorem node567_conditional
    (child566 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_564 (830, 6) = (output566, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_565 (830, 6) = (output567, (830, 6)) := by
  rw [output567_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child566

theorem node568_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child567 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_565 (830, 6) = (output567, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_566 (830, 6) = (output568, (830, 6)) := by
  rw [output568_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child567

theorem node569_conditional
    (child568 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_566 (830, 6) = (output568, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_567 (830, 6) = (output569, (830, 6)) := by
  rw [output569_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child568

theorem node570_conditional
    (child557 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_555 (830, 2) = (output557, (830, 6)))
    (child569 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_567 (830, 6) = (output569, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_568 (830, 2) = (output570, (830, 6)) := by
  rw [output570_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child557 child569

theorem node571_conditional
    (child570 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_568 (830, 2) = (output570, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_569 (830, 2) = (output571, (830, 6)) := by
  rw [output571_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child570

theorem node572_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_570 (830, 6) = (output572, (830, 6)) := by
  rw [output572_def]
  kernel_rfl

theorem node573_conditional
    (child572 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_570 (830, 6) = (output572, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_571 (830, 6) = (output573, (830, 6)) := by
  rw [output573_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child572

theorem node574_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_572 (830, 6) = (output574, (830, 6)) := by
  rw [output574_def]
  kernel_rfl

theorem node575_conditional
    (child574 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_572 (830, 6) = (output574, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_573 (830, 6) = (output575, (830, 6)) := by
  rw [output575_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child574

theorem node576_conditional
    (child575 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_573 (830, 6) = (output575, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_574 (830, 6) = (output576, (830, 6)) := by
  rw [output576_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child575 child99

theorem node577_conditional
    (child576 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_574 (830, 6) = (output576, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_575 (830, 6) = (output577, (830, 6)) := by
  rw [output577_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child576

theorem node578_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child577 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_575 (830, 6) = (output577, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_576 (830, 6) = (output578, (830, 6)) := by
  rw [output578_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child577

theorem node579_conditional
    (child578 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_576 (830, 6) = (output578, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_577 (830, 6) = (output579, (830, 6)) := by
  rw [output579_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child578

theorem node580_conditional
    (child573 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_571 (830, 6) = (output573, (830, 6)))
    (child579 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_577 (830, 6) = (output579, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_578 (830, 6) = (output580, (830, 6)) := by
  rw [output580_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child573 child579

theorem node581_conditional
    (child580 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_578 (830, 6) = (output580, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_579 (830, 6) = (output581, (830, 6)) := by
  rw [output581_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child580

theorem node582_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child581 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_579 (830, 6) = (output581, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_580 (830, 6) = (output582, (830, 6)) := by
  rw [output582_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child581

theorem node583_conditional
    (child582 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_580 (830, 6) = (output582, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_581 (830, 6) = (output583, (830, 6)) := by
  rw [output583_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child582

theorem node584_conditional
    (child571 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_569 (830, 2) = (output571, (830, 6)))
    (child583 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_581 (830, 6) = (output583, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_582 (830, 2) = (output584, (830, 6)) := by
  rw [output584_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child571 child583

theorem node585_conditional
    (child584 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_582 (830, 2) = (output584, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_583 (830, 2) = (output585, (830, 6)) := by
  rw [output585_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child584

theorem node586_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_584 (830, 6) = (output586, (830, 6)) := by
  rw [output586_def]
  kernel_rfl

theorem node587_conditional
    (child586 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_584 (830, 6) = (output586, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_585 (830, 6) = (output587, (830, 6)) := by
  rw [output587_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child586

theorem node588_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_586 (830, 6) = (output588, (830, 6)) := by
  rw [output588_def]
  kernel_rfl

theorem node589_conditional
    (child588 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_586 (830, 6) = (output588, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_587 (830, 6) = (output589, (830, 6)) := by
  rw [output589_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child588

theorem node590_conditional
    (child589 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_587 (830, 6) = (output589, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_588 (830, 6) = (output590, (830, 6)) := by
  rw [output590_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child589 child99

theorem node591_conditional
    (child590 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_588 (830, 6) = (output590, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_589 (830, 6) = (output591, (830, 6)) := by
  rw [output591_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child590

theorem node592_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child591 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_589 (830, 6) = (output591, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_590 (830, 6) = (output592, (830, 6)) := by
  rw [output592_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child591

theorem node593_conditional
    (child592 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_590 (830, 6) = (output592, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_591 (830, 6) = (output593, (830, 6)) := by
  rw [output593_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child592

theorem node594_conditional
    (child587 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_585 (830, 6) = (output587, (830, 6)))
    (child593 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_591 (830, 6) = (output593, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_592 (830, 6) = (output594, (830, 6)) := by
  rw [output594_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child587 child593

theorem node595_conditional
    (child594 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_592 (830, 6) = (output594, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_593 (830, 6) = (output595, (830, 6)) := by
  rw [output595_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child594

theorem node596_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child595 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_593 (830, 6) = (output595, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_594 (830, 6) = (output596, (830, 6)) := by
  rw [output596_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child595

theorem node597_conditional
    (child596 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_594 (830, 6) = (output596, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_595 (830, 6) = (output597, (830, 6)) := by
  rw [output597_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child596

theorem node598_conditional
    (child585 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_583 (830, 2) = (output585, (830, 6)))
    (child597 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_595 (830, 6) = (output597, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_596 (830, 2) = (output598, (830, 6)) := by
  rw [output598_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child585 child597

theorem node599_conditional
    (child598 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_596 (830, 2) = (output598, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_597 (830, 2) = (output599, (830, 6)) := by
  rw [output599_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child598

theorem node600_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_598 (830, 6) = (output600, (830, 6)) := by
  rw [output600_def]
  kernel_rfl

theorem node601_conditional
    (child600 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_598 (830, 6) = (output600, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_599 (830, 6) = (output601, (830, 6)) := by
  rw [output601_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child600

theorem node602_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_600 (830, 6) = (output602, (830, 6)) := by
  rw [output602_def]
  kernel_rfl

theorem node603_conditional
    (child602 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_600 (830, 6) = (output602, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_601 (830, 6) = (output603, (830, 6)) := by
  rw [output603_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child602

theorem node604_conditional
    (child603 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_601 (830, 6) = (output603, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_602 (830, 6) = (output604, (830, 6)) := by
  rw [output604_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child603 child99

theorem node605_conditional
    (child604 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_602 (830, 6) = (output604, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_603 (830, 6) = (output605, (830, 6)) := by
  rw [output605_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child604

theorem node606_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child605 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_603 (830, 6) = (output605, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_604 (830, 6) = (output606, (830, 6)) := by
  rw [output606_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child605

theorem node607_conditional
    (child606 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_604 (830, 6) = (output606, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_605 (830, 6) = (output607, (830, 6)) := by
  rw [output607_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child606

theorem node608_conditional
    (child601 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_599 (830, 6) = (output601, (830, 6)))
    (child607 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_605 (830, 6) = (output607, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_606 (830, 6) = (output608, (830, 6)) := by
  rw [output608_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child601 child607

theorem node609_conditional
    (child608 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_606 (830, 6) = (output608, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_607 (830, 6) = (output609, (830, 6)) := by
  rw [output609_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child608

theorem node610_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child609 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_607 (830, 6) = (output609, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_608 (830, 6) = (output610, (830, 6)) := by
  rw [output610_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child609

theorem node611_conditional
    (child610 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_608 (830, 6) = (output610, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_609 (830, 6) = (output611, (830, 6)) := by
  rw [output611_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child610

theorem node612_conditional
    (child599 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_597 (830, 2) = (output599, (830, 6)))
    (child611 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_609 (830, 6) = (output611, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_610 (830, 2) = (output612, (830, 6)) := by
  rw [output612_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child599 child611

theorem node613_conditional
    (child612 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_610 (830, 2) = (output612, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_611 (830, 2) = (output613, (830, 6)) := by
  rw [output613_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child612

theorem node614_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_612 (830, 6) = (output614, (830, 6)) := by
  rw [output614_def]
  kernel_rfl

theorem node615_conditional
    (child614 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_612 (830, 6) = (output614, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_613 (830, 6) = (output615, (830, 6)) := by
  rw [output615_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child614

theorem node616_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_614 (830, 6) = (output616, (830, 6)) := by
  rw [output616_def]
  kernel_rfl

theorem node617_conditional
    (child616 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_614 (830, 6) = (output616, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_615 (830, 6) = (output617, (830, 6)) := by
  rw [output617_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child616

theorem node618_conditional
    (child617 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_615 (830, 6) = (output617, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_616 (830, 6) = (output618, (830, 6)) := by
  rw [output618_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child617 child99

theorem node619_conditional
    (child618 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_616 (830, 6) = (output618, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_617 (830, 6) = (output619, (830, 6)) := by
  rw [output619_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child618

theorem node620_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child619 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_617 (830, 6) = (output619, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_618 (830, 6) = (output620, (830, 6)) := by
  rw [output620_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child619

theorem node621_conditional
    (child620 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_618 (830, 6) = (output620, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_619 (830, 6) = (output621, (830, 6)) := by
  rw [output621_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child620

theorem node622_conditional
    (child615 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_613 (830, 6) = (output615, (830, 6)))
    (child621 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_619 (830, 6) = (output621, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_620 (830, 6) = (output622, (830, 6)) := by
  rw [output622_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child615 child621

theorem node623_conditional
    (child622 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_620 (830, 6) = (output622, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_621 (830, 6) = (output623, (830, 6)) := by
  rw [output623_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child622

theorem node624_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child623 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_621 (830, 6) = (output623, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_622 (830, 6) = (output624, (830, 6)) := by
  rw [output624_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child623

theorem node625_conditional
    (child624 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_622 (830, 6) = (output624, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_623 (830, 6) = (output625, (830, 6)) := by
  rw [output625_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child624

theorem node626_conditional
    (child613 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_611 (830, 2) = (output613, (830, 6)))
    (child625 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_623 (830, 6) = (output625, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_624 (830, 2) = (output626, (830, 6)) := by
  rw [output626_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child613 child625

theorem node627_conditional
    (child626 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_624 (830, 2) = (output626, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_625 (830, 2) = (output627, (830, 6)) := by
  rw [output627_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child626

theorem node628_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_626 (830, 6) = (output628, (830, 6)) := by
  rw [output628_def]
  kernel_rfl

theorem node629_conditional
    (child628 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_626 (830, 6) = (output628, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_627 (830, 6) = (output629, (830, 6)) := by
  rw [output629_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child628

theorem node630_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_628 (830, 6) = (output630, (830, 6)) := by
  rw [output630_def]
  kernel_rfl

theorem node631_conditional
    (child630 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_628 (830, 6) = (output630, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_629 (830, 6) = (output631, (830, 6)) := by
  rw [output631_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child630

theorem node632_conditional
    (child631 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_629 (830, 6) = (output631, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_630 (830, 6) = (output632, (830, 6)) := by
  rw [output632_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child631 child99

theorem node633_conditional
    (child632 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_630 (830, 6) = (output632, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_631 (830, 6) = (output633, (830, 6)) := by
  rw [output633_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child632

theorem node634_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child633 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_631 (830, 6) = (output633, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_632 (830, 6) = (output634, (830, 6)) := by
  rw [output634_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child633

theorem node635_conditional
    (child634 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_632 (830, 6) = (output634, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_633 (830, 6) = (output635, (830, 6)) := by
  rw [output635_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child634

theorem node636_conditional
    (child629 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_627 (830, 6) = (output629, (830, 6)))
    (child635 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_633 (830, 6) = (output635, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_634 (830, 6) = (output636, (830, 6)) := by
  rw [output636_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child629 child635

theorem node637_conditional
    (child636 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_634 (830, 6) = (output636, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_635 (830, 6) = (output637, (830, 6)) := by
  rw [output637_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child636

theorem node638_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child637 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_635 (830, 6) = (output637, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_636 (830, 6) = (output638, (830, 6)) := by
  rw [output638_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child637

theorem node639_conditional
    (child638 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_636 (830, 6) = (output638, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_637 (830, 6) = (output639, (830, 6)) := by
  rw [output639_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child638

theorem node640_conditional
    (child627 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_625 (830, 2) = (output627, (830, 6)))
    (child639 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_637 (830, 6) = (output639, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_638 (830, 2) = (output640, (830, 6)) := by
  rw [output640_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child627 child639

theorem node641_conditional
    (child640 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_638 (830, 2) = (output640, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_639 (830, 2) = (output641, (830, 6)) := by
  rw [output641_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child640

theorem node642_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_640 (830, 6) = (output642, (830, 6)) := by
  rw [output642_def]
  kernel_rfl

theorem node643_conditional
    (child642 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_640 (830, 6) = (output642, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_641 (830, 6) = (output643, (830, 6)) := by
  rw [output643_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child642

theorem node644_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_642 (830, 6) = (output644, (830, 6)) := by
  rw [output644_def]
  kernel_rfl

theorem node645_conditional
    (child644 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_642 (830, 6) = (output644, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_643 (830, 6) = (output645, (830, 6)) := by
  rw [output645_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child644

theorem node646_conditional
    (child645 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_643 (830, 6) = (output645, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_644 (830, 6) = (output646, (830, 6)) := by
  rw [output646_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child645 child99

theorem node647_conditional
    (child646 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_644 (830, 6) = (output646, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_645 (830, 6) = (output647, (830, 6)) := by
  rw [output647_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child646

theorem node648_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child647 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_645 (830, 6) = (output647, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_646 (830, 6) = (output648, (830, 6)) := by
  rw [output648_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child647

theorem node649_conditional
    (child648 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_646 (830, 6) = (output648, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_647 (830, 6) = (output649, (830, 6)) := by
  rw [output649_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child648

theorem node650_conditional
    (child643 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_641 (830, 6) = (output643, (830, 6)))
    (child649 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_647 (830, 6) = (output649, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_648 (830, 6) = (output650, (830, 6)) := by
  rw [output650_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child643 child649

theorem node651_conditional
    (child650 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_648 (830, 6) = (output650, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_649 (830, 6) = (output651, (830, 6)) := by
  rw [output651_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child650

theorem node652_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child651 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_649 (830, 6) = (output651, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_650 (830, 6) = (output652, (830, 6)) := by
  rw [output652_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child651

theorem node653_conditional
    (child652 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_650 (830, 6) = (output652, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_651 (830, 6) = (output653, (830, 6)) := by
  rw [output653_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child652

theorem node654_conditional
    (child641 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_639 (830, 2) = (output641, (830, 6)))
    (child653 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_651 (830, 6) = (output653, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_652 (830, 2) = (output654, (830, 6)) := by
  rw [output654_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child641 child653

theorem node655_conditional
    (child654 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_652 (830, 2) = (output654, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_653 (830, 2) = (output655, (830, 6)) := by
  rw [output655_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child654

theorem node656_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_654 (830, 6) = (output656, (830, 6)) := by
  rw [output656_def]
  kernel_rfl

theorem node657_conditional
    (child656 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_654 (830, 6) = (output656, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_655 (830, 6) = (output657, (830, 6)) := by
  rw [output657_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child656

theorem node658_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_656 (830, 6) = (output658, (830, 6)) := by
  rw [output658_def]
  kernel_rfl

theorem node659_conditional
    (child658 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_656 (830, 6) = (output658, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_657 (830, 6) = (output659, (830, 6)) := by
  rw [output659_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child658

theorem node660_conditional
    (child659 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_657 (830, 6) = (output659, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_658 (830, 6) = (output660, (830, 6)) := by
  rw [output660_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child659 child99

theorem node661_conditional
    (child660 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_658 (830, 6) = (output660, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_659 (830, 6) = (output661, (830, 6)) := by
  rw [output661_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child660

theorem node662_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child661 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_659 (830, 6) = (output661, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_660 (830, 6) = (output662, (830, 6)) := by
  rw [output662_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child661

theorem node663_conditional
    (child662 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_660 (830, 6) = (output662, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_661 (830, 6) = (output663, (830, 6)) := by
  rw [output663_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child662

theorem node664_conditional
    (child657 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_655 (830, 6) = (output657, (830, 6)))
    (child663 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_661 (830, 6) = (output663, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_662 (830, 6) = (output664, (830, 6)) := by
  rw [output664_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child657 child663

theorem node665_conditional
    (child664 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_662 (830, 6) = (output664, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_663 (830, 6) = (output665, (830, 6)) := by
  rw [output665_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child664

theorem node666_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child665 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_663 (830, 6) = (output665, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_664 (830, 6) = (output666, (830, 6)) := by
  rw [output666_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child665

theorem node667_conditional
    (child666 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_664 (830, 6) = (output666, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_665 (830, 6) = (output667, (830, 6)) := by
  rw [output667_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child666

theorem node668_conditional
    (child655 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_653 (830, 2) = (output655, (830, 6)))
    (child667 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_665 (830, 6) = (output667, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_666 (830, 2) = (output668, (830, 6)) := by
  rw [output668_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child655 child667

theorem node669_conditional
    (child668 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_666 (830, 2) = (output668, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_667 (830, 2) = (output669, (830, 6)) := by
  rw [output669_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child668

theorem node670_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_668 (830, 6) = (output670, (830, 6)) := by
  rw [output670_def]
  kernel_rfl

theorem node671_conditional
    (child670 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_668 (830, 6) = (output670, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_669 (830, 6) = (output671, (830, 6)) := by
  rw [output671_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child670

theorem node672_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_670 (830, 6) = (output672, (830, 6)) := by
  rw [output672_def]
  kernel_rfl

theorem node673_conditional
    (child672 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_670 (830, 6) = (output672, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_671 (830, 6) = (output673, (830, 6)) := by
  rw [output673_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child672

theorem node674_conditional
    (child673 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_671 (830, 6) = (output673, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_672 (830, 6) = (output674, (830, 6)) := by
  rw [output674_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child673 child99

theorem node675_conditional
    (child674 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_672 (830, 6) = (output674, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_673 (830, 6) = (output675, (830, 6)) := by
  rw [output675_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child674

theorem node676_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child675 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_673 (830, 6) = (output675, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_674 (830, 6) = (output676, (830, 6)) := by
  rw [output676_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child675

theorem node677_conditional
    (child676 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_674 (830, 6) = (output676, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_675 (830, 6) = (output677, (830, 6)) := by
  rw [output677_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child676

theorem node678_conditional
    (child671 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_669 (830, 6) = (output671, (830, 6)))
    (child677 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_675 (830, 6) = (output677, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_676 (830, 6) = (output678, (830, 6)) := by
  rw [output678_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child671 child677

theorem node679_conditional
    (child678 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_676 (830, 6) = (output678, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_677 (830, 6) = (output679, (830, 6)) := by
  rw [output679_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child678

theorem node680_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child679 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_677 (830, 6) = (output679, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_678 (830, 6) = (output680, (830, 6)) := by
  rw [output680_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child679

theorem node681_conditional
    (child680 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_678 (830, 6) = (output680, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_679 (830, 6) = (output681, (830, 6)) := by
  rw [output681_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child680

theorem node682_conditional
    (child669 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_667 (830, 2) = (output669, (830, 6)))
    (child681 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_679 (830, 6) = (output681, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_680 (830, 2) = (output682, (830, 6)) := by
  rw [output682_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child669 child681

theorem node683_conditional
    (child682 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_680 (830, 2) = (output682, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_681 (830, 2) = (output683, (830, 6)) := by
  rw [output683_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child682

theorem node684_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_682 (830, 6) = (output684, (830, 6)) := by
  rw [output684_def]
  kernel_rfl

theorem node685_conditional
    (child684 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_682 (830, 6) = (output684, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_683 (830, 6) = (output685, (830, 6)) := by
  rw [output685_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child684

theorem node686_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_684 (830, 6) = (output686, (830, 6)) := by
  rw [output686_def]
  kernel_rfl

theorem node687_conditional
    (child686 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_684 (830, 6) = (output686, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_685 (830, 6) = (output687, (830, 6)) := by
  rw [output687_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child686

theorem node688_conditional
    (child687 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_685 (830, 6) = (output687, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_686 (830, 6) = (output688, (830, 6)) := by
  rw [output688_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child687 child99

theorem node689_conditional
    (child688 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_686 (830, 6) = (output688, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_687 (830, 6) = (output689, (830, 6)) := by
  rw [output689_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child688

theorem node690_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child689 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_687 (830, 6) = (output689, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_688 (830, 6) = (output690, (830, 6)) := by
  rw [output690_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child689

theorem node691_conditional
    (child690 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_688 (830, 6) = (output690, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_689 (830, 6) = (output691, (830, 6)) := by
  rw [output691_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child690

theorem node692_conditional
    (child685 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_683 (830, 6) = (output685, (830, 6)))
    (child691 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_689 (830, 6) = (output691, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_690 (830, 6) = (output692, (830, 6)) := by
  rw [output692_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child685 child691

theorem node693_conditional
    (child692 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_690 (830, 6) = (output692, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_691 (830, 6) = (output693, (830, 6)) := by
  rw [output693_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child692

theorem node694_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child693 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_691 (830, 6) = (output693, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_692 (830, 6) = (output694, (830, 6)) := by
  rw [output694_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child693

theorem node695_conditional
    (child694 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_692 (830, 6) = (output694, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_693 (830, 6) = (output695, (830, 6)) := by
  rw [output695_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child694

theorem node696_conditional
    (child683 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_681 (830, 2) = (output683, (830, 6)))
    (child695 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_693 (830, 6) = (output695, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_694 (830, 2) = (output696, (830, 6)) := by
  rw [output696_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child683 child695

theorem node697_conditional
    (child696 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_694 (830, 2) = (output696, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_695 (830, 2) = (output697, (830, 6)) := by
  rw [output697_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child696

theorem node698_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_696 (830, 6) = (output698, (830, 6)) := by
  rw [output698_def]
  kernel_rfl

theorem node699_conditional
    (child698 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_696 (830, 6) = (output698, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_697 (830, 6) = (output699, (830, 6)) := by
  rw [output699_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child698

theorem node700_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_698 (830, 6) = (output700, (830, 6)) := by
  rw [output700_def]
  kernel_rfl

theorem node701_conditional
    (child700 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_698 (830, 6) = (output700, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_699 (830, 6) = (output701, (830, 6)) := by
  rw [output701_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child700

theorem node702_conditional
    (child701 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_699 (830, 6) = (output701, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_700 (830, 6) = (output702, (830, 6)) := by
  rw [output702_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child701 child99

theorem node703_conditional
    (child702 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_700 (830, 6) = (output702, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_701 (830, 6) = (output703, (830, 6)) := by
  rw [output703_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child702

theorem node704_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child703 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_701 (830, 6) = (output703, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_702 (830, 6) = (output704, (830, 6)) := by
  rw [output704_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child703

theorem node705_conditional
    (child704 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_702 (830, 6) = (output704, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_703 (830, 6) = (output705, (830, 6)) := by
  rw [output705_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child704

theorem node706_conditional
    (child699 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_697 (830, 6) = (output699, (830, 6)))
    (child705 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_703 (830, 6) = (output705, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_704 (830, 6) = (output706, (830, 6)) := by
  rw [output706_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child699 child705

theorem node707_conditional
    (child706 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_704 (830, 6) = (output706, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_705 (830, 6) = (output707, (830, 6)) := by
  rw [output707_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child706

theorem node708_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child707 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_705 (830, 6) = (output707, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_706 (830, 6) = (output708, (830, 6)) := by
  rw [output708_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child707

theorem node709_conditional
    (child708 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_706 (830, 6) = (output708, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_707 (830, 6) = (output709, (830, 6)) := by
  rw [output709_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child708

theorem node710_conditional
    (child697 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_695 (830, 2) = (output697, (830, 6)))
    (child709 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_707 (830, 6) = (output709, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_708 (830, 2) = (output710, (830, 6)) := by
  rw [output710_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child697 child709

theorem node711_conditional
    (child710 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_708 (830, 2) = (output710, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_709 (830, 2) = (output711, (830, 6)) := by
  rw [output711_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child710

theorem node712_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_710 (830, 6) = (output712, (830, 6)) := by
  rw [output712_def]
  kernel_rfl

theorem node713_conditional
    (child712 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_710 (830, 6) = (output712, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_711 (830, 6) = (output713, (830, 6)) := by
  rw [output713_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child712

theorem node714_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_712 (830, 6) = (output714, (830, 6)) := by
  rw [output714_def]
  kernel_rfl

theorem node715_conditional
    (child714 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_712 (830, 6) = (output714, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_713 (830, 6) = (output715, (830, 6)) := by
  rw [output715_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child714

theorem node716_conditional
    (child715 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_713 (830, 6) = (output715, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_714 (830, 6) = (output716, (830, 6)) := by
  rw [output716_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child715 child99

theorem node717_conditional
    (child716 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_714 (830, 6) = (output716, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_715 (830, 6) = (output717, (830, 6)) := by
  rw [output717_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child716

theorem node718_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child717 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_715 (830, 6) = (output717, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_716 (830, 6) = (output718, (830, 6)) := by
  rw [output718_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child717

theorem node719_conditional
    (child718 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_716 (830, 6) = (output718, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_717 (830, 6) = (output719, (830, 6)) := by
  rw [output719_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child718

theorem node720_conditional
    (child713 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_711 (830, 6) = (output713, (830, 6)))
    (child719 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_717 (830, 6) = (output719, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_718 (830, 6) = (output720, (830, 6)) := by
  rw [output720_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child713 child719

theorem node721_conditional
    (child720 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_718 (830, 6) = (output720, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_719 (830, 6) = (output721, (830, 6)) := by
  rw [output721_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child720

theorem node722_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child721 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_719 (830, 6) = (output721, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_720 (830, 6) = (output722, (830, 6)) := by
  rw [output722_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child721

theorem node723_conditional
    (child722 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_720 (830, 6) = (output722, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_721 (830, 6) = (output723, (830, 6)) := by
  rw [output723_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child722

theorem node724_conditional
    (child711 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_709 (830, 2) = (output711, (830, 6)))
    (child723 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_721 (830, 6) = (output723, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_722 (830, 2) = (output724, (830, 6)) := by
  rw [output724_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child711 child723

theorem node725_conditional
    (child724 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_722 (830, 2) = (output724, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_723 (830, 2) = (output725, (830, 6)) := by
  rw [output725_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child724

theorem node726_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_724 (830, 6) = (output726, (830, 6)) := by
  rw [output726_def]
  kernel_rfl

theorem node727_conditional
    (child726 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_724 (830, 6) = (output726, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_725 (830, 6) = (output727, (830, 6)) := by
  rw [output727_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child726

theorem node728_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_726 (830, 6) = (output728, (830, 6)) := by
  rw [output728_def]
  kernel_rfl

theorem node729_conditional
    (child728 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_726 (830, 6) = (output728, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_727 (830, 6) = (output729, (830, 6)) := by
  rw [output729_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child728

theorem node730_conditional
    (child729 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_727 (830, 6) = (output729, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_728 (830, 6) = (output730, (830, 6)) := by
  rw [output730_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child729 child99

theorem node731_conditional
    (child730 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_728 (830, 6) = (output730, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_729 (830, 6) = (output731, (830, 6)) := by
  rw [output731_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child730

theorem node732_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child731 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_729 (830, 6) = (output731, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_730 (830, 6) = (output732, (830, 6)) := by
  rw [output732_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child731

theorem node733_conditional
    (child732 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_730 (830, 6) = (output732, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_731 (830, 6) = (output733, (830, 6)) := by
  rw [output733_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child732

theorem node734_conditional
    (child727 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_725 (830, 6) = (output727, (830, 6)))
    (child733 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_731 (830, 6) = (output733, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_732 (830, 6) = (output734, (830, 6)) := by
  rw [output734_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child727 child733

theorem node735_conditional
    (child734 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_732 (830, 6) = (output734, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_733 (830, 6) = (output735, (830, 6)) := by
  rw [output735_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child734

theorem node736_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child735 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_733 (830, 6) = (output735, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_734 (830, 6) = (output736, (830, 6)) := by
  rw [output736_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child735

theorem node737_conditional
    (child736 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_734 (830, 6) = (output736, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_735 (830, 6) = (output737, (830, 6)) := by
  rw [output737_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child736

theorem node738_conditional
    (child725 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_723 (830, 2) = (output725, (830, 6)))
    (child737 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_735 (830, 6) = (output737, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_736 (830, 2) = (output738, (830, 6)) := by
  rw [output738_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child725 child737

theorem node739_conditional
    (child738 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_736 (830, 2) = (output738, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_737 (830, 2) = (output739, (830, 6)) := by
  rw [output739_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child738

theorem node740_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_738 (830, 6) = (output740, (830, 6)) := by
  rw [output740_def]
  kernel_rfl

theorem node741_conditional
    (child740 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_738 (830, 6) = (output740, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_739 (830, 6) = (output741, (830, 6)) := by
  rw [output741_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child740

theorem node742_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_740 (830, 6) = (output742, (830, 6)) := by
  rw [output742_def]
  kernel_rfl

theorem node743_conditional
    (child742 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_740 (830, 6) = (output742, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_741 (830, 6) = (output743, (830, 6)) := by
  rw [output743_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child742

theorem node744_conditional
    (child743 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_741 (830, 6) = (output743, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_742 (830, 6) = (output744, (830, 6)) := by
  rw [output744_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child743 child99

theorem node745_conditional
    (child744 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_742 (830, 6) = (output744, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_743 (830, 6) = (output745, (830, 6)) := by
  rw [output745_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child744

theorem node746_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child745 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_743 (830, 6) = (output745, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_744 (830, 6) = (output746, (830, 6)) := by
  rw [output746_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child745

theorem node747_conditional
    (child746 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_744 (830, 6) = (output746, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_745 (830, 6) = (output747, (830, 6)) := by
  rw [output747_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child746

theorem node748_conditional
    (child741 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_739 (830, 6) = (output741, (830, 6)))
    (child747 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_745 (830, 6) = (output747, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_746 (830, 6) = (output748, (830, 6)) := by
  rw [output748_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child741 child747

theorem node749_conditional
    (child748 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_746 (830, 6) = (output748, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_747 (830, 6) = (output749, (830, 6)) := by
  rw [output749_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child748

theorem node750_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child749 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_747 (830, 6) = (output749, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_748 (830, 6) = (output750, (830, 6)) := by
  rw [output750_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child749

theorem node751_conditional
    (child750 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_748 (830, 6) = (output750, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_749 (830, 6) = (output751, (830, 6)) := by
  rw [output751_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child750

theorem node752_conditional
    (child739 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_737 (830, 2) = (output739, (830, 6)))
    (child751 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_749 (830, 6) = (output751, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_750 (830, 2) = (output752, (830, 6)) := by
  rw [output752_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child739 child751

theorem node753_conditional
    (child752 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_750 (830, 2) = (output752, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_751 (830, 2) = (output753, (830, 6)) := by
  rw [output753_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child752

theorem node754_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_752 (830, 6) = (output754, (830, 6)) := by
  rw [output754_def]
  kernel_rfl

theorem node755_conditional
    (child754 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_752 (830, 6) = (output754, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_753 (830, 6) = (output755, (830, 6)) := by
  rw [output755_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child754

theorem node756_conditional : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_754 (830, 6) = (output756, (830, 6)) := by
  rw [output756_def]
  kernel_rfl

theorem node757_conditional
    (child756 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_754 (830, 6) = (output756, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_755 (830, 6) = (output757, (830, 6)) := by
  rw [output757_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child756

theorem node758_conditional
    (child757 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_755 (830, 6) = (output757, (830, 6)))
    (child99 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_97 (830, 6) = (output99, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_756 (830, 6) = (output758, (830, 6)) := by
  rw [output758_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child757 child99

theorem node759_conditional
    (child758 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_756 (830, 6) = (output758, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_757 (830, 6) = (output759, (830, 6)) := by
  rw [output759_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child758

theorem node760_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child759 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_757 (830, 6) = (output759, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_758 (830, 6) = (output760, (830, 6)) := by
  rw [output760_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child759

theorem node761_conditional
    (child760 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_758 (830, 6) = (output760, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_759 (830, 6) = (output761, (830, 6)) := by
  rw [output761_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child760

theorem node762_conditional
    (child755 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_753 (830, 6) = (output755, (830, 6)))
    (child761 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_759 (830, 6) = (output761, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_760 (830, 6) = (output762, (830, 6)) := by
  rw [output762_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child755 child761

theorem node763_conditional
    (child762 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_760 (830, 6) = (output762, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_761 (830, 6) = (output763, (830, 6)) := by
  rw [output763_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child762

theorem node764_conditional
    (child51 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_17 (830, 6) = (output51, (830, 6)))
    (child763 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_761 (830, 6) = (output763, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_762 (830, 6) = (output764, (830, 6)) := by
  rw [output764_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child51 child763

theorem node765_conditional
    (child764 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_762 (830, 6) = (output764, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_763 (830, 6) = (output765, (830, 6)) := by
  rw [output765_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child764

theorem node766_conditional
    (child753 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_751 (830, 2) = (output753, (830, 6)))
    (child765 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_763 (830, 6) = (output765, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_764 (830, 2) = (output766, (830, 6)) := by
  rw [output766_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child753 child765

theorem node767_conditional
    (child766 : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_764 (830, 2) = (output766, (830, 6))) : Flapjack.LoopToWord.compHOL Word.context766
    Loop.loopBody766_765 (830, 2) = (output767, (830, 6)) := by
  rw [output767_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child766

#print axioms node767_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints766
