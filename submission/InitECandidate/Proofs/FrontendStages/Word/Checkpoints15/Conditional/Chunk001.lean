import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints15.Data.Chunk001
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints15
theorem node384_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child383 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_383 (79, 2) = (output383, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_384 (79, 2) = (output384, (79, 2)) := by
  rw [output384_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child383

theorem node385_conditional
    (child384 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_384 (79, 2) = (output384, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_385 (79, 2) = (output385, (79, 2)) := by
  rw [output385_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child384

theorem node386_conditional
    (child311 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_311 (79, 2) = (output311, (79, 2)))
    (child385 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_385 (79, 2) = (output385, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_386 (79, 2) = (output386, (79, 2)) := by
  rw [output386_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child311 child385

theorem node387_conditional
    (child386 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_386 (79, 2) = (output386, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_387 (79, 2) = (output387, (79, 2)) := by
  rw [output387_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child386

theorem node388_conditional
    (child309 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_309 (79, 2) = (output309, (79, 2)))
    (child387 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_387 (79, 2) = (output387, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_388 (79, 2) = (output388, (79, 2)) := by
  rw [output388_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child309 child387

theorem node389_conditional
    (child388 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_388 (79, 2) = (output388, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_389 (79, 2) = (output389, (79, 2)) := by
  rw [output389_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child388

theorem node390_conditional
    (child17 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_17 (79, 2) = (output17, (79, 2)))
    (child389 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_389 (79, 2) = (output389, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_390 (79, 2) = (output390, (79, 2)) := by
  rw [output390_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child17 child389

theorem node391_conditional
    (child390 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_390 (79, 2) = (output390, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_391 (79, 2) = (output391, (79, 2)) := by
  rw [output391_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child390

theorem node392_conditional
    (child391 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_391 (79, 2) = (output391, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_392 (79, 2) = (output392, (79, 2)) := by
  rw [output392_def]
  have h := InitECandidate.Proofs.LoopWordComputation.comp_loop_checked Word.context15 (match Loop.loopBody15_392 with | .loop live _ _ => live | _ => .ln) (match Loop.loopBody15_392 with | .loop _ _ live => live | _ => .ln) _ _ _ _ child391
  exact h.trans (by kernel_rfl)

theorem node393_conditional
    (child307 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_307 (79, 2) = (output307, (79, 2)))
    (child392 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_392 (79, 2) = (output392, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_393 (79, 2) = (output393, (79, 2)) := by
  rw [output393_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child307 child392

theorem node394_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_394 (79, 2) = (output394, (79, 2)) := by
  rw [output394_def]
  kernel_rfl

theorem node395_conditional
    (child394 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_394 (79, 2) = (output394, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_395 (79, 2) = (output395, (79, 2)) := by
  rw [output395_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child394

theorem node396_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_396 (79, 2) = (output396, (79, 2)) := by
  rw [output396_def]
  kernel_rfl

theorem node397_conditional
    (child396 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_396 (79, 2) = (output396, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_397 (79, 2) = (output397, (79, 2)) := by
  rw [output397_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child396

theorem node398_conditional
    (child397 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_397 (79, 2) = (output397, (79, 2)))
    (child367 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_367 (79, 2) = (output367, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_398 (79, 2) = (output398, (79, 2)) := by
  rw [output398_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child397 child367

theorem node399_conditional
    (child398 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_398 (79, 2) = (output398, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_399 (79, 2) = (output399, (79, 2)) := by
  rw [output399_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child398

theorem node400_conditional
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2)))
    (child399 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_399 (79, 2) = (output399, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_400 (79, 2) = (output400, (79, 2)) := by
  rw [output400_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1 child399

theorem node401_conditional
    (child400 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_400 (79, 2) = (output400, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_401 (79, 2) = (output401, (79, 2)) := by
  rw [output401_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child400

theorem node402_conditional
    (child329 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_329 (79, 2) = (output329, (79, 2)))
    (child401 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_401 (79, 2) = (output401, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_402 (79, 2) = (output402, (79, 2)) := by
  rw [output402_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child329 child401

theorem node403_conditional
    (child402 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_402 (79, 2) = (output402, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_403 (79, 2) = (output403, (79, 2)) := by
  rw [output403_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child402

theorem node404_conditional
    (child403 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_403 (79, 2) = (output403, (79, 2)))
    (child375 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_375 (79, 2) = (output375, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_404 (79, 2) = (output404, (79, 2)) := by
  rw [output404_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child403 child375

theorem node405_conditional
    (child404 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_404 (79, 2) = (output404, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_405 (79, 2) = (output405, (79, 2)) := by
  rw [output405_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child404

theorem node406_conditional
    (child405 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_405 (79, 2) = (output405, (79, 2)))
    (child379 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_379 (79, 2) = (output379, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_406 (79, 2) = (output406, (79, 2)) := by
  rw [output406_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child405 child379

theorem node407_conditional
    (child406 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_406 (79, 2) = (output406, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_407 (79, 2) = (output407, (79, 2)) := by
  rw [output407_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child406

theorem node408_conditional
    (child407 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_407 (79, 2) = (output407, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_408 (79, 2) = (output408, (79, 2)) := by
  rw [output408_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child407 child1

theorem node409_conditional
    (child408 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_408 (79, 2) = (output408, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_409 (79, 2) = (output409, (79, 2)) := by
  rw [output409_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child408

theorem node410_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child409 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_409 (79, 2) = (output409, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_410 (79, 2) = (output410, (79, 2)) := by
  rw [output410_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child409

theorem node411_conditional
    (child410 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_410 (79, 2) = (output410, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_411 (79, 2) = (output411, (79, 2)) := by
  rw [output411_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child410

theorem node412_conditional
    (child311 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_311 (79, 2) = (output311, (79, 2)))
    (child411 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_411 (79, 2) = (output411, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_412 (79, 2) = (output412, (79, 2)) := by
  rw [output412_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child311 child411

theorem node413_conditional
    (child412 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_412 (79, 2) = (output412, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_413 (79, 2) = (output413, (79, 2)) := by
  rw [output413_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child412

theorem node414_conditional
    (child395 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_395 (79, 2) = (output395, (79, 2)))
    (child413 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_413 (79, 2) = (output413, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_414 (79, 2) = (output414, (79, 2)) := by
  rw [output414_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child395 child413

theorem node415_conditional
    (child414 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_414 (79, 2) = (output414, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_415 (79, 2) = (output415, (79, 2)) := by
  rw [output415_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child414

theorem node416_conditional
    (child17 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_17 (79, 2) = (output17, (79, 2)))
    (child415 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_415 (79, 2) = (output415, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_416 (79, 2) = (output416, (79, 2)) := by
  rw [output416_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child17 child415

theorem node417_conditional
    (child416 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_416 (79, 2) = (output416, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_417 (79, 2) = (output417, (79, 2)) := by
  rw [output417_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child416

theorem node418_conditional
    (child417 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_417 (79, 2) = (output417, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_418 (79, 2) = (output418, (79, 2)) := by
  rw [output418_def]
  have h := InitECandidate.Proofs.LoopWordComputation.comp_loop_checked Word.context15 (match Loop.loopBody15_418 with | .loop live _ _ => live | _ => .ln) (match Loop.loopBody15_418 with | .loop _ _ live => live | _ => .ln) _ _ _ _ child417
  exact h.trans (by kernel_rfl)

theorem node419_conditional
    (child393 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_393 (79, 2) = (output393, (79, 2)))
    (child418 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_418 (79, 2) = (output418, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_419 (79, 2) = (output419, (79, 2)) := by
  rw [output419_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child393 child418

theorem node420_conditional
    (child419 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_419 (79, 2) = (output419, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_420 (79, 2) = (output420, (79, 2)) := by
  rw [output420_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child419 child1

theorem node421_conditional
    (child420 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_420 (79, 2) = (output420, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_421 (79, 2) = (output421, (79, 2)) := by
  rw [output421_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child420 child1

theorem node422_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child421 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_421 (79, 2) = (output421, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_422 (79, 2) = (output422, (79, 2)) := by
  rw [output422_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child421

theorem node423_conditional
    (child13 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_13 (79, 2) = (output13, (79, 2)))
    (child422 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_422 (79, 2) = (output422, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_423 (79, 2) = (output423, (79, 2)) := by
  rw [output423_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child13 child422

theorem node424_conditional
    (child7 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_7 (79, 2) = (output7, (79, 2)))
    (child423 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_423 (79, 2) = (output423, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_424 (79, 2) = (output424, (79, 2)) := by
  rw [output424_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child7 child423

theorem node425_conditional
    (child5 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_5 (79, 2) = (output5, (79, 2)))
    (child424 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_424 (79, 2) = (output424, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_425 (79, 2) = (output425, (79, 2)) := by
  rw [output425_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child5 child424

theorem node426_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_426 (79, 2) = (output426, (79, 2)) := by
  rw [output426_def]
  kernel_rfl

theorem node427_conditional
    (child426 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_426 (79, 2) = (output426, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_427 (79, 2) = (output427, (79, 2)) := by
  rw [output427_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child426

theorem node428_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_428 (79, 2) = (output428, (79, 2)) := by
  rw [output428_def]
  kernel_rfl

theorem node429_conditional
    (child428 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_428 (79, 2) = (output428, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_429 (79, 2) = (output429, (79, 2)) := by
  rw [output429_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child428

theorem node430_conditional
    (child69 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_69 (79, 2) = (output69, (79, 2)))
    (child71 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_71 (79, 2) = (output71, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_430 (79, 2) = (output430, (79, 2)) := by
  rw [output430_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child69 child71

theorem node431_conditional
    (child430 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_430 (79, 2) = (output430, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_431 (79, 2) = (output431, (79, 2)) := by
  rw [output431_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child430

theorem node432_conditional
    (child33 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_33 (79, 2) = (output33, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_432 (79, 2) = (output432, (79, 2)) := by
  rw [output432_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child33 child1

theorem node433_conditional
    (child432 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_432 (79, 2) = (output432, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_433 (79, 2) = (output433, (79, 2)) := by
  rw [output433_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child432

theorem node434_conditional
    (child433 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_433 (79, 2) = (output433, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_434 (79, 2) = (output434, (79, 2)) := by
  rw [output434_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child433 child1

theorem node435_conditional
    (child434 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_434 (79, 2) = (output434, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_435 (79, 2) = (output435, (79, 2)) := by
  rw [output435_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child434

theorem node436_conditional
    (child75 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_75 (79, 2) = (output75, (79, 2)))
    (child435 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_435 (79, 2) = (output435, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_436 (79, 2) = (output436, (79, 2)) := by
  rw [output436_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child75 child435

theorem node437_conditional
    (child436 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_436 (79, 2) = (output436, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_437 (79, 2) = (output437, (79, 2)) := by
  rw [output437_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child436

theorem node438_conditional
    (child431 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_431 (79, 2) = (output431, (79, 2)))
    (child437 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_437 (79, 2) = (output437, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_438 (79, 2) = (output438, (79, 2)) := by
  rw [output438_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child431 child437

theorem node439_conditional
    (child438 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_438 (79, 2) = (output438, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_439 (79, 2) = (output439, (79, 2)) := by
  rw [output439_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child438

theorem node440_conditional
    (child67 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_67 (79, 2) = (output67, (79, 2)))
    (child439 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_439 (79, 2) = (output439, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_440 (79, 2) = (output440, (79, 2)) := by
  rw [output440_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child67 child439

theorem node441_conditional
    (child440 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_440 (79, 2) = (output440, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_441 (79, 2) = (output441, (79, 2)) := by
  rw [output441_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child440

theorem node442_conditional
    (child65 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_65 (79, 2) = (output65, (79, 2)))
    (child441 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_441 (79, 2) = (output441, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_442 (79, 2) = (output442, (79, 2)) := by
  rw [output442_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child65 child441

theorem node443_conditional
    (child442 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_442 (79, 2) = (output442, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_443 (79, 2) = (output443, (79, 2)) := by
  rw [output443_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child442

theorem node444_conditional
    (child63 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_63 (79, 2) = (output63, (79, 2)))
    (child443 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_443 (79, 2) = (output443, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_444 (79, 2) = (output444, (79, 2)) := by
  rw [output444_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child63 child443

theorem node445_conditional
    (child444 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_444 (79, 2) = (output444, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_445 (79, 2) = (output445, (79, 2)) := by
  rw [output445_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child444

theorem node446_conditional
    (child429 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_429 (79, 2) = (output429, (79, 2)))
    (child445 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_445 (79, 2) = (output445, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_446 (79, 2) = (output446, (79, 2)) := by
  rw [output446_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child429 child445

theorem node447_conditional
    (child446 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_446 (79, 2) = (output446, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_447 (79, 2) = (output447, (79, 2)) := by
  rw [output447_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child446

theorem node448_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child447 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_447 (79, 2) = (output447, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_448 (79, 2) = (output448, (79, 2)) := by
  rw [output448_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child447

theorem node449_conditional
    (child448 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_448 (79, 2) = (output448, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_449 (79, 2) = (output449, (79, 2)) := by
  rw [output449_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child448

theorem node450_conditional
    (child427 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_427 (79, 2) = (output427, (79, 2)))
    (child449 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_449 (79, 2) = (output449, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_450 (79, 2) = (output450, (79, 2)) := by
  rw [output450_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child427 child449

theorem node451_conditional
    (child450 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_450 (79, 2) = (output450, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_451 (79, 2) = (output451, (79, 2)) := by
  rw [output451_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child450

theorem node452_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_452 (79, 2) = (output452, (79, 2)) := by
  rw [output452_def]
  kernel_rfl

theorem node453_conditional
    (child452 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_452 (79, 2) = (output452, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_453 (79, 2) = (output453, (79, 2)) := by
  rw [output453_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child452

theorem node454_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_454 (79, 2) = (output454, (79, 2)) := by
  rw [output454_def]
  kernel_rfl

theorem node455_conditional
    (child454 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_454 (79, 2) = (output454, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_455 (79, 2) = (output455, (79, 2)) := by
  rw [output455_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child454

theorem node456_conditional
    (child455 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_455 (79, 2) = (output455, (79, 2)))
    (child445 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_445 (79, 2) = (output445, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_456 (79, 2) = (output456, (79, 2)) := by
  rw [output456_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child455 child445

theorem node457_conditional
    (child456 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_456 (79, 2) = (output456, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_457 (79, 2) = (output457, (79, 2)) := by
  rw [output457_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child456

theorem node458_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child457 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_457 (79, 2) = (output457, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_458 (79, 2) = (output458, (79, 2)) := by
  rw [output458_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child457

theorem node459_conditional
    (child458 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_458 (79, 2) = (output458, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_459 (79, 2) = (output459, (79, 2)) := by
  rw [output459_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child458

theorem node460_conditional
    (child453 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_453 (79, 2) = (output453, (79, 2)))
    (child459 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_459 (79, 2) = (output459, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_460 (79, 2) = (output460, (79, 2)) := by
  rw [output460_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child453 child459

theorem node461_conditional
    (child460 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_460 (79, 2) = (output460, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_461 (79, 2) = (output461, (79, 2)) := by
  rw [output461_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child460

theorem node462_conditional
    (child451 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_451 (79, 2) = (output451, (79, 2)))
    (child461 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_461 (79, 2) = (output461, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_462 (79, 2) = (output462, (79, 2)) := by
  rw [output462_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child451 child461

theorem node463_conditional
    (child462 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_462 (79, 2) = (output462, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_463 (79, 2) = (output463, (79, 2)) := by
  rw [output463_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child462

theorem node464_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_464 (79, 2) = (output464, (79, 2)) := by
  rw [output464_def]
  kernel_rfl

theorem node465_conditional
    (child464 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_464 (79, 2) = (output464, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_465 (79, 2) = (output465, (79, 2)) := by
  rw [output465_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child464

theorem node466_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_466 (79, 2) = (output466, (79, 2)) := by
  rw [output466_def]
  kernel_rfl

theorem node467_conditional
    (child466 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_466 (79, 2) = (output466, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_467 (79, 2) = (output467, (79, 2)) := by
  rw [output467_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child466

theorem node468_conditional
    (child467 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_467 (79, 2) = (output467, (79, 2)))
    (child445 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_445 (79, 2) = (output445, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_468 (79, 2) = (output468, (79, 2)) := by
  rw [output468_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child467 child445

theorem node469_conditional
    (child468 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_468 (79, 2) = (output468, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_469 (79, 2) = (output469, (79, 2)) := by
  rw [output469_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child468

theorem node470_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child469 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_469 (79, 2) = (output469, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_470 (79, 2) = (output470, (79, 2)) := by
  rw [output470_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child469

theorem node471_conditional
    (child470 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_470 (79, 2) = (output470, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_471 (79, 2) = (output471, (79, 2)) := by
  rw [output471_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child470

theorem node472_conditional
    (child465 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_465 (79, 2) = (output465, (79, 2)))
    (child471 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_471 (79, 2) = (output471, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_472 (79, 2) = (output472, (79, 2)) := by
  rw [output472_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child465 child471

theorem node473_conditional
    (child472 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_472 (79, 2) = (output472, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_473 (79, 2) = (output473, (79, 2)) := by
  rw [output473_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child472

theorem node474_conditional
    (child463 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_463 (79, 2) = (output463, (79, 2)))
    (child473 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_473 (79, 2) = (output473, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_474 (79, 2) = (output474, (79, 2)) := by
  rw [output474_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child463 child473

theorem node475_conditional
    (child474 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_474 (79, 2) = (output474, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_475 (79, 2) = (output475, (79, 2)) := by
  rw [output475_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child474

theorem node476_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_476 (79, 2) = (output476, (79, 2)) := by
  rw [output476_def]
  kernel_rfl

theorem node477_conditional
    (child476 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_476 (79, 2) = (output476, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_477 (79, 2) = (output477, (79, 2)) := by
  rw [output477_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child476

theorem node478_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_478 (79, 2) = (output478, (79, 2)) := by
  rw [output478_def]
  kernel_rfl

theorem node479_conditional
    (child478 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_478 (79, 2) = (output478, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_479 (79, 2) = (output479, (79, 2)) := by
  rw [output479_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child478

theorem node480_conditional
    (child479 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_479 (79, 2) = (output479, (79, 2)))
    (child445 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_445 (79, 2) = (output445, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_480 (79, 2) = (output480, (79, 2)) := by
  rw [output480_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child479 child445

theorem node481_conditional
    (child480 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_480 (79, 2) = (output480, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_481 (79, 2) = (output481, (79, 2)) := by
  rw [output481_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child480

theorem node482_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child481 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_481 (79, 2) = (output481, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_482 (79, 2) = (output482, (79, 2)) := by
  rw [output482_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child481

theorem node483_conditional
    (child482 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_482 (79, 2) = (output482, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_483 (79, 2) = (output483, (79, 2)) := by
  rw [output483_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child482

theorem node484_conditional
    (child477 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_477 (79, 2) = (output477, (79, 2)))
    (child483 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_483 (79, 2) = (output483, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_484 (79, 2) = (output484, (79, 2)) := by
  rw [output484_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child477 child483

theorem node485_conditional
    (child484 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_484 (79, 2) = (output484, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_485 (79, 2) = (output485, (79, 2)) := by
  rw [output485_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child484

theorem node486_conditional
    (child475 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_475 (79, 2) = (output475, (79, 2)))
    (child485 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_485 (79, 2) = (output485, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_486 (79, 2) = (output486, (79, 2)) := by
  rw [output486_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child475 child485

theorem node487_conditional
    (child486 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_486 (79, 2) = (output486, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_487 (79, 2) = (output487, (79, 2)) := by
  rw [output487_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child486

theorem node488_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_488 (79, 2) = (output488, (79, 2)) := by
  rw [output488_def]
  kernel_rfl

theorem node489_conditional
    (child488 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_488 (79, 2) = (output488, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_489 (79, 2) = (output489, (79, 2)) := by
  rw [output489_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child488

theorem node490_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_490 (79, 2) = (output490, (79, 2)) := by
  rw [output490_def]
  kernel_rfl

theorem node491_conditional
    (child490 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_490 (79, 2) = (output490, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_491 (79, 2) = (output491, (79, 2)) := by
  rw [output491_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child490

theorem node492_conditional
    (child491 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_491 (79, 2) = (output491, (79, 2)))
    (child445 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_445 (79, 2) = (output445, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_492 (79, 2) = (output492, (79, 2)) := by
  rw [output492_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child491 child445

theorem node493_conditional
    (child492 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_492 (79, 2) = (output492, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_493 (79, 2) = (output493, (79, 2)) := by
  rw [output493_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child492

theorem node494_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child493 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_493 (79, 2) = (output493, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_494 (79, 2) = (output494, (79, 2)) := by
  rw [output494_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child493

theorem node495_conditional
    (child494 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_494 (79, 2) = (output494, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_495 (79, 2) = (output495, (79, 2)) := by
  rw [output495_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child494

theorem node496_conditional
    (child489 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_489 (79, 2) = (output489, (79, 2)))
    (child495 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_495 (79, 2) = (output495, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_496 (79, 2) = (output496, (79, 2)) := by
  rw [output496_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child489 child495

theorem node497_conditional
    (child496 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_496 (79, 2) = (output496, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_497 (79, 2) = (output497, (79, 2)) := by
  rw [output497_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child496

theorem node498_conditional
    (child487 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_487 (79, 2) = (output487, (79, 2)))
    (child497 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_497 (79, 2) = (output497, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_498 (79, 2) = (output498, (79, 2)) := by
  rw [output498_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child487 child497

theorem node499_conditional
    (child498 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_498 (79, 2) = (output498, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_499 (79, 2) = (output499, (79, 2)) := by
  rw [output499_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child498

theorem node500_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_500 (79, 2) = (output500, (79, 2)) := by
  rw [output500_def]
  kernel_rfl

theorem node501_conditional
    (child500 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_500 (79, 2) = (output500, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_501 (79, 2) = (output501, (79, 2)) := by
  rw [output501_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child500

theorem node502_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_502 (79, 2) = (output502, (79, 2)) := by
  rw [output502_def]
  kernel_rfl

theorem node503_conditional
    (child502 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_502 (79, 2) = (output502, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_503 (79, 2) = (output503, (79, 2)) := by
  rw [output503_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child502

theorem node504_conditional
    (child503 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_503 (79, 2) = (output503, (79, 2)))
    (child445 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_445 (79, 2) = (output445, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_504 (79, 2) = (output504, (79, 2)) := by
  rw [output504_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child503 child445

theorem node505_conditional
    (child504 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_504 (79, 2) = (output504, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_505 (79, 2) = (output505, (79, 2)) := by
  rw [output505_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child504

theorem node506_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child505 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_505 (79, 2) = (output505, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_506 (79, 2) = (output506, (79, 2)) := by
  rw [output506_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child505

theorem node507_conditional
    (child506 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_506 (79, 2) = (output506, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_507 (79, 2) = (output507, (79, 2)) := by
  rw [output507_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child506

theorem node508_conditional
    (child501 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_501 (79, 2) = (output501, (79, 2)))
    (child507 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_507 (79, 2) = (output507, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_508 (79, 2) = (output508, (79, 2)) := by
  rw [output508_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child501 child507

theorem node509_conditional
    (child508 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_508 (79, 2) = (output508, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_509 (79, 2) = (output509, (79, 2)) := by
  rw [output509_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child508

theorem node510_conditional
    (child499 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_499 (79, 2) = (output499, (79, 2)))
    (child509 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_509 (79, 2) = (output509, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_510 (79, 2) = (output510, (79, 2)) := by
  rw [output510_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child499 child509

theorem node511_conditional
    (child510 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_510 (79, 2) = (output510, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_511 (79, 2) = (output511, (79, 2)) := by
  rw [output511_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child510

theorem node512_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_512 (79, 2) = (output512, (79, 2)) := by
  rw [output512_def]
  kernel_rfl

theorem node513_conditional
    (child512 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_512 (79, 2) = (output512, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_513 (79, 2) = (output513, (79, 2)) := by
  rw [output513_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child512

theorem node514_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_514 (79, 2) = (output514, (79, 2)) := by
  rw [output514_def]
  kernel_rfl

theorem node515_conditional
    (child514 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_514 (79, 2) = (output514, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_515 (79, 2) = (output515, (79, 2)) := by
  rw [output515_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child514

theorem node516_conditional
    (child515 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_515 (79, 2) = (output515, (79, 2)))
    (child445 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_445 (79, 2) = (output445, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_516 (79, 2) = (output516, (79, 2)) := by
  rw [output516_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child515 child445

theorem node517_conditional
    (child516 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_516 (79, 2) = (output516, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_517 (79, 2) = (output517, (79, 2)) := by
  rw [output517_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child516

theorem node518_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child517 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_517 (79, 2) = (output517, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_518 (79, 2) = (output518, (79, 2)) := by
  rw [output518_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child517

theorem node519_conditional
    (child518 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_518 (79, 2) = (output518, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_519 (79, 2) = (output519, (79, 2)) := by
  rw [output519_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child518

theorem node520_conditional
    (child513 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_513 (79, 2) = (output513, (79, 2)))
    (child519 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_519 (79, 2) = (output519, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_520 (79, 2) = (output520, (79, 2)) := by
  rw [output520_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child513 child519

theorem node521_conditional
    (child520 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_520 (79, 2) = (output520, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_521 (79, 2) = (output521, (79, 2)) := by
  rw [output521_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child520

theorem node522_conditional
    (child511 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_511 (79, 2) = (output511, (79, 2)))
    (child521 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_521 (79, 2) = (output521, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_522 (79, 2) = (output522, (79, 2)) := by
  rw [output522_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child511 child521

theorem node523_conditional
    (child522 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_522 (79, 2) = (output522, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_523 (79, 2) = (output523, (79, 2)) := by
  rw [output523_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child522

theorem node524_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_524 (79, 2) = (output524, (79, 2)) := by
  rw [output524_def]
  kernel_rfl

theorem node525_conditional
    (child524 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_524 (79, 2) = (output524, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_525 (79, 2) = (output525, (79, 2)) := by
  rw [output525_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child524

theorem node526_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_526 (79, 2) = (output526, (79, 2)) := by
  rw [output526_def]
  kernel_rfl

theorem node527_conditional
    (child526 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_526 (79, 2) = (output526, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_527 (79, 2) = (output527, (79, 2)) := by
  rw [output527_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child526

theorem node528_conditional
    (child527 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_527 (79, 2) = (output527, (79, 2)))
    (child445 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_445 (79, 2) = (output445, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_528 (79, 2) = (output528, (79, 2)) := by
  rw [output528_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child527 child445

theorem node529_conditional
    (child528 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_528 (79, 2) = (output528, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_529 (79, 2) = (output529, (79, 2)) := by
  rw [output529_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child528

theorem node530_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child529 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_529 (79, 2) = (output529, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_530 (79, 2) = (output530, (79, 2)) := by
  rw [output530_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child529

theorem node531_conditional
    (child530 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_530 (79, 2) = (output530, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_531 (79, 2) = (output531, (79, 2)) := by
  rw [output531_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child530

theorem node532_conditional
    (child525 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_525 (79, 2) = (output525, (79, 2)))
    (child531 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_531 (79, 2) = (output531, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_532 (79, 2) = (output532, (79, 2)) := by
  rw [output532_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child525 child531

theorem node533_conditional
    (child532 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_532 (79, 2) = (output532, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_533 (79, 2) = (output533, (79, 2)) := by
  rw [output533_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child532

theorem node534_conditional
    (child523 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_523 (79, 2) = (output523, (79, 2)))
    (child533 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_533 (79, 2) = (output533, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_534 (79, 2) = (output534, (79, 2)) := by
  rw [output534_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child523 child533

theorem node535_conditional
    (child534 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_534 (79, 2) = (output534, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_535 (79, 2) = (output535, (79, 2)) := by
  rw [output535_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child534

theorem node536_conditional
    (child535 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_535 (79, 2) = (output535, (79, 2)))
    (child401 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_401 (79, 2) = (output401, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_536 (79, 2) = (output536, (79, 2)) := by
  rw [output536_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child535 child401

theorem node537_conditional
    (child536 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_536 (79, 2) = (output536, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_537 (79, 2) = (output537, (79, 2)) := by
  rw [output537_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child536

theorem node538_conditional
    (child537 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_537 (79, 2) = (output537, (79, 2)))
    (child375 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_375 (79, 2) = (output375, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_538 (79, 2) = (output538, (79, 2)) := by
  rw [output538_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child537 child375

theorem node539_conditional
    (child538 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_538 (79, 2) = (output538, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_539 (79, 2) = (output539, (79, 2)) := by
  rw [output539_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child538

theorem node540_conditional
    (child539 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_539 (79, 2) = (output539, (79, 2)))
    (child379 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_379 (79, 2) = (output379, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_540 (79, 2) = (output540, (79, 2)) := by
  rw [output540_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child539 child379

theorem node541_conditional
    (child540 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_540 (79, 2) = (output540, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_541 (79, 2) = (output541, (79, 2)) := by
  rw [output541_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child540

theorem node542_conditional
    (child541 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_541 (79, 2) = (output541, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_542 (79, 2) = (output542, (79, 2)) := by
  rw [output542_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child541 child1

theorem node543_conditional
    (child542 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_542 (79, 2) = (output542, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_543 (79, 2) = (output543, (79, 2)) := by
  rw [output543_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child542

theorem node544_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child543 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_543 (79, 2) = (output543, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_544 (79, 2) = (output544, (79, 2)) := by
  rw [output544_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child543

theorem node545_conditional
    (child544 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_544 (79, 2) = (output544, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_545 (79, 2) = (output545, (79, 2)) := by
  rw [output545_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child544

theorem node546_conditional
    (child311 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_311 (79, 2) = (output311, (79, 2)))
    (child545 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_545 (79, 2) = (output545, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_546 (79, 2) = (output546, (79, 2)) := by
  rw [output546_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child311 child545

theorem node547_conditional
    (child546 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_546 (79, 2) = (output546, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_547 (79, 2) = (output547, (79, 2)) := by
  rw [output547_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child546

theorem node548_conditional
    (child395 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_395 (79, 2) = (output395, (79, 2)))
    (child547 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_547 (79, 2) = (output547, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_548 (79, 2) = (output548, (79, 2)) := by
  rw [output548_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child395 child547

theorem node549_conditional
    (child548 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_548 (79, 2) = (output548, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_549 (79, 2) = (output549, (79, 2)) := by
  rw [output549_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child548

theorem node550_conditional
    (child17 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_17 (79, 2) = (output17, (79, 2)))
    (child549 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_549 (79, 2) = (output549, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_550 (79, 2) = (output550, (79, 2)) := by
  rw [output550_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child17 child549

theorem node551_conditional
    (child550 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_550 (79, 2) = (output550, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_551 (79, 2) = (output551, (79, 2)) := by
  rw [output551_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child550

theorem node552_conditional
    (child551 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_551 (79, 2) = (output551, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_552 (79, 2) = (output552, (79, 2)) := by
  rw [output552_def]
  have h := InitECandidate.Proofs.LoopWordComputation.comp_loop_checked Word.context15 (match Loop.loopBody15_552 with | .loop live _ _ => live | _ => .ln) (match Loop.loopBody15_552 with | .loop _ _ live => live | _ => .ln) _ _ _ _ child551
  exact h.trans (by kernel_rfl)

theorem node553_conditional
    (child425 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_425 (79, 2) = (output425, (79, 2)))
    (child552 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_552 (79, 2) = (output552, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_553 (79, 2) = (output553, (79, 2)) := by
  rw [output553_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child425 child552

theorem node554_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_554 (79, 2) = (output554, (79, 2)) := by
  rw [output554_def]
  kernel_rfl

theorem node555_conditional
    (child554 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_554 (79, 2) = (output554, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_555 (79, 2) = (output555, (79, 2)) := by
  rw [output555_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child554

theorem node556_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_556 (79, 2) = (output556, (79, 2)) := by
  rw [output556_def]
  kernel_rfl

theorem node557_conditional
    (child556 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_556 (79, 2) = (output556, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_557 (79, 2) = (output557, (79, 2)) := by
  rw [output557_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child556

theorem node558_conditional
    (child9 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_9 (79, 2) = (output9, (79, 2)))
    (child11 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_11 (79, 2) = (output11, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_558 (79, 2) = (output558, (79, 2)) := by
  rw [output558_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child9 child11

theorem node559_conditional
    (child558 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_558 (79, 2) = (output558, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_559 (79, 2) = (output559, (79, 2)) := by
  rw [output559_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child558

theorem node560_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_560 (79, 2) = (output560, (79, 2)) := by
  rw [output560_def]
  kernel_rfl

theorem node561_conditional
    (child560 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_560 (79, 2) = (output560, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_561 (79, 2) = (output561, (79, 2)) := by
  rw [output561_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child560

theorem node562_conditional
    (child561 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_561 (79, 2) = (output561, (79, 2)))
    (child367 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_367 (79, 2) = (output367, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_562 (79, 2) = (output562, (79, 2)) := by
  rw [output562_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child561 child367

theorem node563_conditional
    (child562 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_562 (79, 2) = (output562, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_563 (79, 2) = (output563, (79, 2)) := by
  rw [output563_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child562

theorem node564_conditional
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2)))
    (child563 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_563 (79, 2) = (output563, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_564 (79, 2) = (output564, (79, 2)) := by
  rw [output564_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1 child563

theorem node565_conditional
    (child564 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_564 (79, 2) = (output564, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_565 (79, 2) = (output565, (79, 2)) := by
  rw [output565_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child564

theorem node566_conditional
    (child451 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_451 (79, 2) = (output451, (79, 2)))
    (child565 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_565 (79, 2) = (output565, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_566 (79, 2) = (output566, (79, 2)) := by
  rw [output566_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child451 child565

theorem node567_conditional
    (child566 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_566 (79, 2) = (output566, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_567 (79, 2) = (output567, (79, 2)) := by
  rw [output567_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child566

theorem node568_conditional
    (child567 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_567 (79, 2) = (output567, (79, 2)))
    (child375 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_375 (79, 2) = (output375, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_568 (79, 2) = (output568, (79, 2)) := by
  rw [output568_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child567 child375

theorem node569_conditional
    (child568 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_568 (79, 2) = (output568, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_569 (79, 2) = (output569, (79, 2)) := by
  rw [output569_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child568

theorem node570_conditional
    (child569 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_569 (79, 2) = (output569, (79, 2)))
    (child379 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_379 (79, 2) = (output379, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_570 (79, 2) = (output570, (79, 2)) := by
  rw [output570_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child569 child379

theorem node571_conditional
    (child570 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_570 (79, 2) = (output570, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_571 (79, 2) = (output571, (79, 2)) := by
  rw [output571_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child570

theorem node572_conditional
    (child571 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_571 (79, 2) = (output571, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_572 (79, 2) = (output572, (79, 2)) := by
  rw [output572_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child571 child1

theorem node573_conditional
    (child572 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_572 (79, 2) = (output572, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_573 (79, 2) = (output573, (79, 2)) := by
  rw [output573_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child572

theorem node574_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child573 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_573 (79, 2) = (output573, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_574 (79, 2) = (output574, (79, 2)) := by
  rw [output574_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child573

theorem node575_conditional
    (child574 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_574 (79, 2) = (output574, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_575 (79, 2) = (output575, (79, 2)) := by
  rw [output575_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child574

theorem node576_conditional
    (child559 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_559 (79, 2) = (output559, (79, 2)))
    (child575 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_575 (79, 2) = (output575, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_576 (79, 2) = (output576, (79, 2)) := by
  rw [output576_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child559 child575

theorem node577_conditional
    (child576 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_576 (79, 2) = (output576, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_577 (79, 2) = (output577, (79, 2)) := by
  rw [output577_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child576

theorem node578_conditional
    (child557 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_557 (79, 2) = (output557, (79, 2)))
    (child577 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_577 (79, 2) = (output577, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_578 (79, 2) = (output578, (79, 2)) := by
  rw [output578_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child557 child577

theorem node579_conditional
    (child578 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_578 (79, 2) = (output578, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_579 (79, 2) = (output579, (79, 2)) := by
  rw [output579_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child578

theorem node580_conditional
    (child555 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_555 (79, 2) = (output555, (79, 2)))
    (child579 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_579 (79, 2) = (output579, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_580 (79, 2) = (output580, (79, 2)) := by
  rw [output580_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child555 child579

theorem node581_conditional
    (child580 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_580 (79, 2) = (output580, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_581 (79, 2) = (output581, (79, 2)) := by
  rw [output581_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child580

theorem node582_conditional
    (child581 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_581 (79, 2) = (output581, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_582 (79, 2) = (output582, (79, 2)) := by
  rw [output582_def]
  have h := InitECandidate.Proofs.LoopWordComputation.comp_loop_checked Word.context15 (match Loop.loopBody15_582 with | .loop live _ _ => live | _ => .ln) (match Loop.loopBody15_582 with | .loop _ _ live => live | _ => .ln) _ _ _ _ child581
  exact h.trans (by kernel_rfl)

theorem node583_conditional
    (child553 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_553 (79, 2) = (output553, (79, 2)))
    (child582 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_582 (79, 2) = (output582, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_583 (79, 2) = (output583, (79, 2)) := by
  rw [output583_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child553 child582

theorem node584_conditional
    (child583 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_583 (79, 2) = (output583, (79, 2)))
    (child153 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_153 (79, 2) = (output153, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_584 (79, 2) = (output584, (79, 2)) := by
  rw [output584_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child583 child153

theorem node585_conditional
    (child3 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_3 (79, 2) = (output3, (79, 2)))
    (child584 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_584 (79, 2) = (output584, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_585 (79, 2) = (output585, (79, 2)) := by
  rw [output585_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3 child584

theorem node586_conditional
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2)))
    (child585 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_585 (79, 2) = (output585, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_586 (79, 2) = (output586, (79, 2)) := by
  rw [output586_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1 child585

#print axioms node586_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints15
