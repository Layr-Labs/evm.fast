import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel782.Data2
import InitECandidate.Proofs.WordStages.Parallel782.Data3
import InitECandidate.Proofs.DeadStages782.Parallel.Data.Chunk003
import InitECandidate.Proofs.WordStages.Parallel782.AgreementsParallel.Chunk002

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel782.AgreementsParallel
theorem input768_eq : InitECandidate.Proofs.DeadStages782.Parallel.input768 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_522 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input768_def]
  kernel_rfl

theorem output768_eq : InitECandidate.Proofs.DeadStages782.Parallel.output768 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_428 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output768_def]
  kernel_rfl

theorem input769_eq : InitECandidate.Proofs.DeadStages782.Parallel.input769 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_520 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input769_def]
  kernel_rfl

theorem output769_eq : InitECandidate.Proofs.DeadStages782.Parallel.output769 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_426 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output769_def]
  kernel_rfl

theorem input770_eq : InitECandidate.Proofs.DeadStages782.Parallel.input770 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_518 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input770_def]
  kernel_rfl

theorem output770_eq : InitECandidate.Proofs.DeadStages782.Parallel.output770 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_424 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output770_def]
  kernel_rfl

theorem input771_eq : InitECandidate.Proofs.DeadStages782.Parallel.input771 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_516 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input771_def]
  kernel_rfl

theorem output771_eq : InitECandidate.Proofs.DeadStages782.Parallel.output771 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_422 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output771_def]
  kernel_rfl

theorem input772_eq : InitECandidate.Proofs.DeadStages782.Parallel.input772 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_515 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input772_def]
  kernel_rfl

theorem output772_eq : InitECandidate.Proofs.DeadStages782.Parallel.output772 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_421 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output772_def]
  kernel_rfl

theorem input773_eq : InitECandidate.Proofs.DeadStages782.Parallel.input773 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_517 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input773_def]
  simp only [input772_eq, input771_eq]
  kernel_rfl

theorem output773_eq : InitECandidate.Proofs.DeadStages782.Parallel.output773 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_423 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output773_def]
  simp only [output772_eq, output771_eq]
  kernel_rfl

theorem input774_eq : InitECandidate.Proofs.DeadStages782.Parallel.input774 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_519 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input774_def]
  simp only [input773_eq, input770_eq]
  kernel_rfl

theorem output774_eq : InitECandidate.Proofs.DeadStages782.Parallel.output774 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_425 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output774_def]
  simp only [output773_eq, output770_eq]
  kernel_rfl

theorem input775_eq : InitECandidate.Proofs.DeadStages782.Parallel.input775 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_521 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input775_def]
  simp only [input774_eq, input769_eq]
  kernel_rfl

theorem output775_eq : InitECandidate.Proofs.DeadStages782.Parallel.output775 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_427 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output775_def]
  simp only [output774_eq, output769_eq]
  kernel_rfl

theorem input776_eq : InitECandidate.Proofs.DeadStages782.Parallel.input776 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_523 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input776_def]
  simp only [input775_eq, input768_eq]
  kernel_rfl

theorem output776_eq : InitECandidate.Proofs.DeadStages782.Parallel.output776 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_429 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output776_def]
  simp only [output775_eq, output768_eq]
  kernel_rfl

theorem input777_eq : InitECandidate.Proofs.DeadStages782.Parallel.input777 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_512 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input777_def]
  kernel_rfl

theorem output777_eq : InitECandidate.Proofs.DeadStages782.Parallel.output777 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_418 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output777_def]
  kernel_rfl

theorem input778_eq : InitECandidate.Proofs.DeadStages782.Parallel.input778 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_510 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input778_def]
  kernel_rfl

theorem output778_eq : InitECandidate.Proofs.DeadStages782.Parallel.output778 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_416 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output778_def]
  kernel_rfl

theorem input779_eq : InitECandidate.Proofs.DeadStages782.Parallel.input779 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_508 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input779_def]
  kernel_rfl

theorem output779_eq : InitECandidate.Proofs.DeadStages782.Parallel.output779 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_414 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output779_def]
  kernel_rfl

theorem input780_eq : InitECandidate.Proofs.DeadStages782.Parallel.input780 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_506 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input780_def]
  kernel_rfl

theorem output780_eq : InitECandidate.Proofs.DeadStages782.Parallel.output780 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_412 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output780_def]
  kernel_rfl

theorem input781_eq : InitECandidate.Proofs.DeadStages782.Parallel.input781 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_505 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input781_def]
  kernel_rfl

theorem output781_eq : InitECandidate.Proofs.DeadStages782.Parallel.output781 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_411 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output781_def]
  kernel_rfl

theorem input782_eq : InitECandidate.Proofs.DeadStages782.Parallel.input782 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_507 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input782_def]
  simp only [input781_eq, input780_eq]
  kernel_rfl

theorem output782_eq : InitECandidate.Proofs.DeadStages782.Parallel.output782 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_413 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output782_def]
  simp only [output781_eq, output780_eq]
  kernel_rfl

theorem input783_eq : InitECandidate.Proofs.DeadStages782.Parallel.input783 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_509 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input783_def]
  simp only [input782_eq, input779_eq]
  kernel_rfl

theorem output783_eq : InitECandidate.Proofs.DeadStages782.Parallel.output783 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_415 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output783_def]
  simp only [output782_eq, output779_eq]
  kernel_rfl

theorem input784_eq : InitECandidate.Proofs.DeadStages782.Parallel.input784 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_511 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input784_def]
  simp only [input783_eq, input778_eq]
  kernel_rfl

theorem output784_eq : InitECandidate.Proofs.DeadStages782.Parallel.output784 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_417 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output784_def]
  simp only [output783_eq, output778_eq]
  kernel_rfl

theorem input785_eq : InitECandidate.Proofs.DeadStages782.Parallel.input785 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_513 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input785_def]
  simp only [input784_eq, input777_eq]
  kernel_rfl

theorem output785_eq : InitECandidate.Proofs.DeadStages782.Parallel.output785 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_419 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output785_def]
  simp only [output784_eq, output777_eq]
  kernel_rfl

theorem input786_eq : InitECandidate.Proofs.DeadStages782.Parallel.input786 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_502 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input786_def]
  kernel_rfl

theorem output786_eq : InitECandidate.Proofs.DeadStages782.Parallel.output786 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_408 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output786_def]
  kernel_rfl

theorem input787_eq : InitECandidate.Proofs.DeadStages782.Parallel.input787 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_500 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input787_def]
  kernel_rfl

theorem output787_eq : InitECandidate.Proofs.DeadStages782.Parallel.output787 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_406 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output787_def]
  kernel_rfl

theorem input788_eq : InitECandidate.Proofs.DeadStages782.Parallel.input788 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_498 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input788_def]
  kernel_rfl

theorem output788_eq : InitECandidate.Proofs.DeadStages782.Parallel.output788 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_404 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output788_def]
  kernel_rfl

theorem input789_eq : InitECandidate.Proofs.DeadStages782.Parallel.input789 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_496 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input789_def]
  kernel_rfl

theorem output789_eq : InitECandidate.Proofs.DeadStages782.Parallel.output789 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_402 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output789_def]
  kernel_rfl

theorem input790_eq : InitECandidate.Proofs.DeadStages782.Parallel.input790 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_495 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input790_def]
  kernel_rfl

theorem output790_eq : InitECandidate.Proofs.DeadStages782.Parallel.output790 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_401 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output790_def]
  kernel_rfl

theorem input791_eq : InitECandidate.Proofs.DeadStages782.Parallel.input791 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_497 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input791_def]
  simp only [input790_eq, input789_eq]
  kernel_rfl

theorem output791_eq : InitECandidate.Proofs.DeadStages782.Parallel.output791 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_403 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output791_def]
  simp only [output790_eq, output789_eq]
  kernel_rfl

theorem input792_eq : InitECandidate.Proofs.DeadStages782.Parallel.input792 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_499 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input792_def]
  simp only [input791_eq, input788_eq]
  kernel_rfl

theorem output792_eq : InitECandidate.Proofs.DeadStages782.Parallel.output792 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_405 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output792_def]
  simp only [output791_eq, output788_eq]
  kernel_rfl

theorem input793_eq : InitECandidate.Proofs.DeadStages782.Parallel.input793 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_501 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input793_def]
  simp only [input792_eq, input787_eq]
  kernel_rfl

theorem output793_eq : InitECandidate.Proofs.DeadStages782.Parallel.output793 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_407 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output793_def]
  simp only [output792_eq, output787_eq]
  kernel_rfl

theorem input794_eq : InitECandidate.Proofs.DeadStages782.Parallel.input794 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_503 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input794_def]
  simp only [input793_eq, input786_eq]
  kernel_rfl

theorem output794_eq : InitECandidate.Proofs.DeadStages782.Parallel.output794 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_409 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output794_def]
  simp only [output793_eq, output786_eq]
  kernel_rfl

theorem input795_eq : InitECandidate.Proofs.DeadStages782.Parallel.input795 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_492 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input795_def]
  kernel_rfl

theorem output795_eq : InitECandidate.Proofs.DeadStages782.Parallel.output795 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_398 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output795_def]
  kernel_rfl

theorem input796_eq : InitECandidate.Proofs.DeadStages782.Parallel.input796 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_490 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input796_def]
  kernel_rfl

theorem output796_eq : InitECandidate.Proofs.DeadStages782.Parallel.output796 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_396 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output796_def]
  kernel_rfl

theorem input797_eq : InitECandidate.Proofs.DeadStages782.Parallel.input797 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_488 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input797_def]
  kernel_rfl

theorem output797_eq : InitECandidate.Proofs.DeadStages782.Parallel.output797 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_394 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output797_def]
  kernel_rfl

theorem input798_eq : InitECandidate.Proofs.DeadStages782.Parallel.input798 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_486 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input798_def]
  kernel_rfl

theorem output798_eq : InitECandidate.Proofs.DeadStages782.Parallel.output798 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_392 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output798_def]
  kernel_rfl

theorem input799_eq : InitECandidate.Proofs.DeadStages782.Parallel.input799 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_485 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input799_def]
  kernel_rfl

theorem output799_eq : InitECandidate.Proofs.DeadStages782.Parallel.output799 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_391 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output799_def]
  kernel_rfl

theorem input800_eq : InitECandidate.Proofs.DeadStages782.Parallel.input800 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_487 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input800_def]
  simp only [input799_eq, input798_eq]
  kernel_rfl

theorem output800_eq : InitECandidate.Proofs.DeadStages782.Parallel.output800 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_393 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output800_def]
  simp only [output799_eq, output798_eq]
  kernel_rfl

theorem input801_eq : InitECandidate.Proofs.DeadStages782.Parallel.input801 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_489 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input801_def]
  simp only [input800_eq, input797_eq]
  kernel_rfl

theorem output801_eq : InitECandidate.Proofs.DeadStages782.Parallel.output801 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_395 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output801_def]
  simp only [output800_eq, output797_eq]
  kernel_rfl

theorem input802_eq : InitECandidate.Proofs.DeadStages782.Parallel.input802 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_491 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input802_def]
  simp only [input801_eq, input796_eq]
  kernel_rfl

theorem output802_eq : InitECandidate.Proofs.DeadStages782.Parallel.output802 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_397 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output802_def]
  simp only [output801_eq, output796_eq]
  kernel_rfl

theorem input803_eq : InitECandidate.Proofs.DeadStages782.Parallel.input803 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_493 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input803_def]
  simp only [input802_eq, input795_eq]
  kernel_rfl

theorem output803_eq : InitECandidate.Proofs.DeadStages782.Parallel.output803 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_399 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output803_def]
  simp only [output802_eq, output795_eq]
  kernel_rfl

theorem input804_eq : InitECandidate.Proofs.DeadStages782.Parallel.input804 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_483 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input804_def]
  kernel_rfl

theorem output804_eq : InitECandidate.Proofs.DeadStages782.Parallel.output804 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_389 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output804_def]
  kernel_rfl

theorem input805_eq : InitECandidate.Proofs.DeadStages782.Parallel.input805 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_478 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input805_def]
  kernel_rfl

theorem output805_eq : InitECandidate.Proofs.DeadStages782.Parallel.output805 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_384 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output805_def]
  kernel_rfl

theorem input806_eq : InitECandidate.Proofs.DeadStages782.Parallel.input806 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_477 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input806_def]
  kernel_rfl

theorem output806_eq : InitECandidate.Proofs.DeadStages782.Parallel.output806 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_383 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output806_def]
  kernel_rfl

theorem input807_eq : InitECandidate.Proofs.DeadStages782.Parallel.input807 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_479 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input807_def]
  simp only [input806_eq, input805_eq]
  kernel_rfl

theorem output807_eq : InitECandidate.Proofs.DeadStages782.Parallel.output807 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_385 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output807_def]
  simp only [output806_eq, output805_eq]
  kernel_rfl

theorem input808_eq : InitECandidate.Proofs.DeadStages782.Parallel.input808 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_476 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input808_def]
  kernel_rfl

theorem output808_eq : InitECandidate.Proofs.DeadStages782.Parallel.output808 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_382 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output808_def]
  kernel_rfl

theorem input809_eq : InitECandidate.Proofs.DeadStages782.Parallel.input809 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_480 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input809_def]
  simp only [input808_eq, input807_eq]
  kernel_rfl

theorem output809_eq : InitECandidate.Proofs.DeadStages782.Parallel.output809 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_386 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output809_def]
  simp only [output808_eq, output807_eq]
  kernel_rfl

theorem input810_eq : InitECandidate.Proofs.DeadStages782.Parallel.input810 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_475 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input810_def]
  kernel_rfl

theorem output810_eq : InitECandidate.Proofs.DeadStages782.Parallel.output810 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_381 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output810_def]
  kernel_rfl

theorem input811_eq : InitECandidate.Proofs.DeadStages782.Parallel.input811 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_481 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input811_def]
  simp only [input810_eq, input809_eq]
  kernel_rfl

theorem output811_eq : InitECandidate.Proofs.DeadStages782.Parallel.output811 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_387 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output811_def]
  simp only [output810_eq, output809_eq]
  kernel_rfl

theorem input812_eq : InitECandidate.Proofs.DeadStages782.Parallel.input812 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_473 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input812_def]
  kernel_rfl

theorem output812_eq : InitECandidate.Proofs.DeadStages782.Parallel.output812 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_379 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output812_def]
  kernel_rfl

theorem input813_eq : InitECandidate.Proofs.DeadStages782.Parallel.input813 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_471 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input813_def]
  kernel_rfl

theorem output813_eq : InitECandidate.Proofs.DeadStages782.Parallel.output813 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_377 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output813_def]
  kernel_rfl

theorem input814_eq : InitECandidate.Proofs.DeadStages782.Parallel.input814 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_469 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input814_def]
  kernel_rfl

theorem input815_eq : InitECandidate.Proofs.DeadStages782.Parallel.input815 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_467 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input815_def]
  kernel_rfl

theorem input816_eq : InitECandidate.Proofs.DeadStages782.Parallel.input816 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_465 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input816_def]
  kernel_rfl

theorem input817_eq : InitECandidate.Proofs.DeadStages782.Parallel.input817 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_462 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input817_def]
  kernel_rfl

theorem output817_eq : InitECandidate.Proofs.DeadStages782.Parallel.output817 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_374 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output817_def]
  kernel_rfl

theorem input818_eq : InitECandidate.Proofs.DeadStages782.Parallel.input818 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_460 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input818_def]
  kernel_rfl

theorem output818_eq : InitECandidate.Proofs.DeadStages782.Parallel.output818 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_372 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output818_def]
  kernel_rfl

theorem input819_eq : InitECandidate.Proofs.DeadStages782.Parallel.input819 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_458 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input819_def]
  kernel_rfl

theorem output819_eq : InitECandidate.Proofs.DeadStages782.Parallel.output819 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_370 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output819_def]
  kernel_rfl

theorem input820_eq : InitECandidate.Proofs.DeadStages782.Parallel.input820 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_457 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input820_def]
  kernel_rfl

theorem output820_eq : InitECandidate.Proofs.DeadStages782.Parallel.output820 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_369 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output820_def]
  kernel_rfl

theorem input821_eq : InitECandidate.Proofs.DeadStages782.Parallel.input821 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_459 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input821_def]
  simp only [input820_eq, input819_eq]
  kernel_rfl

theorem output821_eq : InitECandidate.Proofs.DeadStages782.Parallel.output821 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_371 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output821_def]
  simp only [output820_eq, output819_eq]
  kernel_rfl

theorem input822_eq : InitECandidate.Proofs.DeadStages782.Parallel.input822 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_461 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input822_def]
  simp only [input821_eq, input818_eq]
  kernel_rfl

theorem output822_eq : InitECandidate.Proofs.DeadStages782.Parallel.output822 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_373 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output822_def]
  simp only [output821_eq, output818_eq]
  kernel_rfl

theorem input823_eq : InitECandidate.Proofs.DeadStages782.Parallel.input823 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_463 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input823_def]
  simp only [input822_eq, input817_eq]
  kernel_rfl

theorem output823_eq : InitECandidate.Proofs.DeadStages782.Parallel.output823 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_375 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output823_def]
  simp only [output822_eq, output817_eq]
  kernel_rfl

theorem input824_eq : InitECandidate.Proofs.DeadStages782.Parallel.input824 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_455 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input824_def]
  kernel_rfl

theorem input825_eq : InitECandidate.Proofs.DeadStages782.Parallel.input825 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_452 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input825_def]
  kernel_rfl

theorem output825_eq : InitECandidate.Proofs.DeadStages782.Parallel.output825 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_366 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output825_def]
  kernel_rfl

theorem input826_eq : InitECandidate.Proofs.DeadStages782.Parallel.input826 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_450 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input826_def]
  kernel_rfl

theorem output826_eq : InitECandidate.Proofs.DeadStages782.Parallel.output826 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_364 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output826_def]
  kernel_rfl

theorem input827_eq : InitECandidate.Proofs.DeadStages782.Parallel.input827 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_448 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input827_def]
  kernel_rfl

theorem output827_eq : InitECandidate.Proofs.DeadStages782.Parallel.output827 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_362 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output827_def]
  kernel_rfl

theorem input828_eq : InitECandidate.Proofs.DeadStages782.Parallel.input828 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_447 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input828_def]
  kernel_rfl

theorem output828_eq : InitECandidate.Proofs.DeadStages782.Parallel.output828 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_361 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output828_def]
  kernel_rfl

theorem input829_eq : InitECandidate.Proofs.DeadStages782.Parallel.input829 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_449 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input829_def]
  simp only [input828_eq, input827_eq]
  kernel_rfl

theorem output829_eq : InitECandidate.Proofs.DeadStages782.Parallel.output829 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_363 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output829_def]
  simp only [output828_eq, output827_eq]
  kernel_rfl

theorem input830_eq : InitECandidate.Proofs.DeadStages782.Parallel.input830 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_451 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input830_def]
  simp only [input829_eq, input826_eq]
  kernel_rfl

theorem output830_eq : InitECandidate.Proofs.DeadStages782.Parallel.output830 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_365 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output830_def]
  simp only [output829_eq, output826_eq]
  kernel_rfl

theorem input831_eq : InitECandidate.Proofs.DeadStages782.Parallel.input831 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_453 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input831_def]
  simp only [input830_eq, input825_eq]
  kernel_rfl

theorem output831_eq : InitECandidate.Proofs.DeadStages782.Parallel.output831 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_367 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output831_def]
  simp only [output830_eq, output825_eq]
  kernel_rfl

theorem input832_eq : InitECandidate.Proofs.DeadStages782.Parallel.input832 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_444 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input832_def]
  kernel_rfl

theorem output832_eq : InitECandidate.Proofs.DeadStages782.Parallel.output832 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_358 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output832_def]
  kernel_rfl

theorem input833_eq : InitECandidate.Proofs.DeadStages782.Parallel.input833 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_443 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input833_def]
  kernel_rfl

theorem output833_eq : InitECandidate.Proofs.DeadStages782.Parallel.output833 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_357 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output833_def]
  kernel_rfl

theorem input834_eq : InitECandidate.Proofs.DeadStages782.Parallel.input834 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_445 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input834_def]
  simp only [input833_eq, input832_eq]
  kernel_rfl

theorem output834_eq : InitECandidate.Proofs.DeadStages782.Parallel.output834 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_359 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output834_def]
  simp only [output833_eq, output832_eq]
  kernel_rfl

theorem input835_eq : InitECandidate.Proofs.DeadStages782.Parallel.input835 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_441 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input835_def]
  kernel_rfl

theorem output835_eq : InitECandidate.Proofs.DeadStages782.Parallel.output835 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_355 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output835_def]
  kernel_rfl

theorem input836_eq : InitECandidate.Proofs.DeadStages782.Parallel.input836 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_438 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input836_def]
  kernel_rfl

theorem output836_eq : InitECandidate.Proofs.DeadStages782.Parallel.output836 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_352 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output836_def]
  kernel_rfl

theorem input837_eq : InitECandidate.Proofs.DeadStages782.Parallel.input837 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_437 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input837_def]
  kernel_rfl

theorem output837_eq : InitECandidate.Proofs.DeadStages782.Parallel.output837 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_351 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output837_def]
  kernel_rfl

theorem input838_eq : InitECandidate.Proofs.DeadStages782.Parallel.input838 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_439 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input838_def]
  simp only [input837_eq, input836_eq]
  kernel_rfl

theorem output838_eq : InitECandidate.Proofs.DeadStages782.Parallel.output838 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_353 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output838_def]
  simp only [output837_eq, output836_eq]
  kernel_rfl

theorem input839_eq : InitECandidate.Proofs.DeadStages782.Parallel.input839 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_435 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input839_def]
  kernel_rfl

theorem output839_eq : InitECandidate.Proofs.DeadStages782.Parallel.output839 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_349 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output839_def]
  kernel_rfl

theorem input840_eq : InitECandidate.Proofs.DeadStages782.Parallel.input840 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_432 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input840_def]
  kernel_rfl

theorem output840_eq : InitECandidate.Proofs.DeadStages782.Parallel.output840 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_346 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output840_def]
  kernel_rfl

theorem input841_eq : InitECandidate.Proofs.DeadStages782.Parallel.input841 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_431 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input841_def]
  kernel_rfl

theorem output841_eq : InitECandidate.Proofs.DeadStages782.Parallel.output841 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_345 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output841_def]
  kernel_rfl

theorem input842_eq : InitECandidate.Proofs.DeadStages782.Parallel.input842 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_433 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input842_def]
  simp only [input841_eq, input840_eq]
  kernel_rfl

theorem output842_eq : InitECandidate.Proofs.DeadStages782.Parallel.output842 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_347 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output842_def]
  simp only [output841_eq, output840_eq]
  kernel_rfl

theorem input843_eq : InitECandidate.Proofs.DeadStages782.Parallel.input843 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_429 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input843_def]
  kernel_rfl

theorem output843_eq : InitECandidate.Proofs.DeadStages782.Parallel.output843 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_343 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output843_def]
  kernel_rfl

theorem input844_eq : InitECandidate.Proofs.DeadStages782.Parallel.input844 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_426 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input844_def]
  kernel_rfl

theorem output844_eq : InitECandidate.Proofs.DeadStages782.Parallel.output844 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_340 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output844_def]
  kernel_rfl

theorem input845_eq : InitECandidate.Proofs.DeadStages782.Parallel.input845 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_425 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input845_def]
  kernel_rfl

theorem output845_eq : InitECandidate.Proofs.DeadStages782.Parallel.output845 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_339 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output845_def]
  kernel_rfl

theorem input846_eq : InitECandidate.Proofs.DeadStages782.Parallel.input846 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_427 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input846_def]
  simp only [input845_eq, input844_eq]
  kernel_rfl

theorem output846_eq : InitECandidate.Proofs.DeadStages782.Parallel.output846 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_341 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output846_def]
  simp only [output845_eq, output844_eq]
  kernel_rfl

theorem input847_eq : InitECandidate.Proofs.DeadStages782.Parallel.input847 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_423 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input847_def]
  kernel_rfl

theorem output847_eq : InitECandidate.Proofs.DeadStages782.Parallel.output847 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_337 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output847_def]
  kernel_rfl

theorem input848_eq : InitECandidate.Proofs.DeadStages782.Parallel.input848 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_420 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input848_def]
  kernel_rfl

theorem output848_eq : InitECandidate.Proofs.DeadStages782.Parallel.output848 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_334 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output848_def]
  kernel_rfl

theorem input849_eq : InitECandidate.Proofs.DeadStages782.Parallel.input849 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_419 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input849_def]
  kernel_rfl

theorem output849_eq : InitECandidate.Proofs.DeadStages782.Parallel.output849 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_333 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output849_def]
  kernel_rfl

theorem input850_eq : InitECandidate.Proofs.DeadStages782.Parallel.input850 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_421 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input850_def]
  simp only [input849_eq, input848_eq]
  kernel_rfl

theorem output850_eq : InitECandidate.Proofs.DeadStages782.Parallel.output850 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_335 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output850_def]
  simp only [output849_eq, output848_eq]
  kernel_rfl

theorem input851_eq : InitECandidate.Proofs.DeadStages782.Parallel.input851 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_417 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input851_def]
  kernel_rfl

theorem output851_eq : InitECandidate.Proofs.DeadStages782.Parallel.output851 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_331 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output851_def]
  kernel_rfl

theorem input852_eq : InitECandidate.Proofs.DeadStages782.Parallel.input852 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_414 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input852_def]
  kernel_rfl

theorem output852_eq : InitECandidate.Proofs.DeadStages782.Parallel.output852 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_328 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output852_def]
  kernel_rfl

theorem input853_eq : InitECandidate.Proofs.DeadStages782.Parallel.input853 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_413 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input853_def]
  kernel_rfl

theorem output853_eq : InitECandidate.Proofs.DeadStages782.Parallel.output853 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_327 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output853_def]
  kernel_rfl

theorem input854_eq : InitECandidate.Proofs.DeadStages782.Parallel.input854 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_415 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input854_def]
  simp only [input853_eq, input852_eq]
  kernel_rfl

theorem output854_eq : InitECandidate.Proofs.DeadStages782.Parallel.output854 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_329 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output854_def]
  simp only [output853_eq, output852_eq]
  kernel_rfl

theorem input855_eq : InitECandidate.Proofs.DeadStages782.Parallel.input855 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_411 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input855_def]
  kernel_rfl

theorem output855_eq : InitECandidate.Proofs.DeadStages782.Parallel.output855 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_325 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output855_def]
  kernel_rfl

theorem input856_eq : InitECandidate.Proofs.DeadStages782.Parallel.input856 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_409 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input856_def]
  kernel_rfl

theorem output856_eq : InitECandidate.Proofs.DeadStages782.Parallel.output856 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_323 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output856_def]
  kernel_rfl

theorem input857_eq : InitECandidate.Proofs.DeadStages782.Parallel.input857 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_407 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input857_def]
  kernel_rfl

theorem output857_eq : InitECandidate.Proofs.DeadStages782.Parallel.output857 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_321 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output857_def]
  kernel_rfl

theorem input858_eq : InitECandidate.Proofs.DeadStages782.Parallel.input858 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_405 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input858_def]
  kernel_rfl

theorem output858_eq : InitECandidate.Proofs.DeadStages782.Parallel.output858 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_319 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output858_def]
  kernel_rfl

theorem input859_eq : InitECandidate.Proofs.DeadStages782.Parallel.input859 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_403 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input859_def]
  kernel_rfl

theorem output859_eq : InitECandidate.Proofs.DeadStages782.Parallel.output859 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_317 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output859_def]
  kernel_rfl

theorem input860_eq : InitECandidate.Proofs.DeadStages782.Parallel.input860 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_401 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input860_def]
  kernel_rfl

theorem output860_eq : InitECandidate.Proofs.DeadStages782.Parallel.output860 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_315 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output860_def]
  kernel_rfl

theorem input861_eq : InitECandidate.Proofs.DeadStages782.Parallel.input861 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_399 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input861_def]
  kernel_rfl

theorem output861_eq : InitECandidate.Proofs.DeadStages782.Parallel.output861 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_313 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output861_def]
  kernel_rfl

theorem input862_eq : InitECandidate.Proofs.DeadStages782.Parallel.input862 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_396 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input862_def]
  kernel_rfl

theorem output862_eq : InitECandidate.Proofs.DeadStages782.Parallel.output862 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_310 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output862_def]
  kernel_rfl

theorem input863_eq : InitECandidate.Proofs.DeadStages782.Parallel.input863 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_394 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input863_def]
  kernel_rfl

theorem output863_eq : InitECandidate.Proofs.DeadStages782.Parallel.output863 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_308 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output863_def]
  kernel_rfl

theorem input864_eq : InitECandidate.Proofs.DeadStages782.Parallel.input864 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_392 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input864_def]
  kernel_rfl

theorem output864_eq : InitECandidate.Proofs.DeadStages782.Parallel.output864 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_306 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output864_def]
  kernel_rfl

theorem input865_eq : InitECandidate.Proofs.DeadStages782.Parallel.input865 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_390 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input865_def]
  kernel_rfl

theorem output865_eq : InitECandidate.Proofs.DeadStages782.Parallel.output865 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_304 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output865_def]
  kernel_rfl

theorem input866_eq : InitECandidate.Proofs.DeadStages782.Parallel.input866 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_389 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input866_def]
  kernel_rfl

theorem output866_eq : InitECandidate.Proofs.DeadStages782.Parallel.output866 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_303 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output866_def]
  kernel_rfl

theorem input867_eq : InitECandidate.Proofs.DeadStages782.Parallel.input867 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_391 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input867_def]
  simp only [input866_eq, input865_eq]
  kernel_rfl

theorem output867_eq : InitECandidate.Proofs.DeadStages782.Parallel.output867 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_305 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output867_def]
  simp only [output866_eq, output865_eq]
  kernel_rfl

theorem input868_eq : InitECandidate.Proofs.DeadStages782.Parallel.input868 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_393 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input868_def]
  simp only [input867_eq, input864_eq]
  kernel_rfl

theorem output868_eq : InitECandidate.Proofs.DeadStages782.Parallel.output868 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_307 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output868_def]
  simp only [output867_eq, output864_eq]
  kernel_rfl

theorem input869_eq : InitECandidate.Proofs.DeadStages782.Parallel.input869 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_395 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input869_def]
  simp only [input868_eq, input863_eq]
  kernel_rfl

theorem output869_eq : InitECandidate.Proofs.DeadStages782.Parallel.output869 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_309 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output869_def]
  simp only [output868_eq, output863_eq]
  kernel_rfl

theorem input870_eq : InitECandidate.Proofs.DeadStages782.Parallel.input870 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_397 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input870_def]
  simp only [input869_eq, input862_eq]
  kernel_rfl

theorem output870_eq : InitECandidate.Proofs.DeadStages782.Parallel.output870 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_311 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output870_def]
  simp only [output869_eq, output862_eq]
  kernel_rfl

theorem input871_eq : InitECandidate.Proofs.DeadStages782.Parallel.input871 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_386 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input871_def]
  kernel_rfl

theorem output871_eq : InitECandidate.Proofs.DeadStages782.Parallel.output871 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_300 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output871_def]
  kernel_rfl

theorem input872_eq : InitECandidate.Proofs.DeadStages782.Parallel.input872 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_385 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input872_def]
  kernel_rfl

theorem output872_eq : InitECandidate.Proofs.DeadStages782.Parallel.output872 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_299 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output872_def]
  kernel_rfl

theorem input873_eq : InitECandidate.Proofs.DeadStages782.Parallel.input873 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_387 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input873_def]
  simp only [input872_eq, input871_eq]
  kernel_rfl

theorem output873_eq : InitECandidate.Proofs.DeadStages782.Parallel.output873 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_301 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output873_def]
  simp only [output872_eq, output871_eq]
  kernel_rfl

theorem input874_eq : InitECandidate.Proofs.DeadStages782.Parallel.input874 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_383 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input874_def]
  kernel_rfl

theorem output874_eq : InitECandidate.Proofs.DeadStages782.Parallel.output874 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_297 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output874_def]
  kernel_rfl

theorem input875_eq : InitECandidate.Proofs.DeadStages782.Parallel.input875 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_380 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input875_def]
  kernel_rfl

theorem output875_eq : InitECandidate.Proofs.DeadStages782.Parallel.output875 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_294 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output875_def]
  kernel_rfl

theorem input876_eq : InitECandidate.Proofs.DeadStages782.Parallel.input876 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_379 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input876_def]
  kernel_rfl

theorem output876_eq : InitECandidate.Proofs.DeadStages782.Parallel.output876 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_293 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output876_def]
  kernel_rfl

theorem input877_eq : InitECandidate.Proofs.DeadStages782.Parallel.input877 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_381 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input877_def]
  simp only [input876_eq, input875_eq]
  kernel_rfl

theorem output877_eq : InitECandidate.Proofs.DeadStages782.Parallel.output877 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_295 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output877_def]
  simp only [output876_eq, output875_eq]
  kernel_rfl

theorem input878_eq : InitECandidate.Proofs.DeadStages782.Parallel.input878 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_377 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input878_def]
  kernel_rfl

theorem output878_eq : InitECandidate.Proofs.DeadStages782.Parallel.output878 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_291 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output878_def]
  kernel_rfl

theorem input879_eq : InitECandidate.Proofs.DeadStages782.Parallel.input879 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_374 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input879_def]
  kernel_rfl

theorem output879_eq : InitECandidate.Proofs.DeadStages782.Parallel.output879 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_288 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output879_def]
  kernel_rfl

theorem input880_eq : InitECandidate.Proofs.DeadStages782.Parallel.input880 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_373 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input880_def]
  kernel_rfl

theorem output880_eq : InitECandidate.Proofs.DeadStages782.Parallel.output880 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_287 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output880_def]
  kernel_rfl

theorem input881_eq : InitECandidate.Proofs.DeadStages782.Parallel.input881 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_375 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input881_def]
  simp only [input880_eq, input879_eq]
  kernel_rfl

theorem output881_eq : InitECandidate.Proofs.DeadStages782.Parallel.output881 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_289 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output881_def]
  simp only [output880_eq, output879_eq]
  kernel_rfl

theorem input882_eq : InitECandidate.Proofs.DeadStages782.Parallel.input882 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_371 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input882_def]
  kernel_rfl

theorem output882_eq : InitECandidate.Proofs.DeadStages782.Parallel.output882 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_285 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output882_def]
  kernel_rfl

theorem input883_eq : InitECandidate.Proofs.DeadStages782.Parallel.input883 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_368 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input883_def]
  kernel_rfl

theorem output883_eq : InitECandidate.Proofs.DeadStages782.Parallel.output883 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_282 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output883_def]
  kernel_rfl

theorem input884_eq : InitECandidate.Proofs.DeadStages782.Parallel.input884 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_367 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input884_def]
  kernel_rfl

theorem output884_eq : InitECandidate.Proofs.DeadStages782.Parallel.output884 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_281 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output884_def]
  kernel_rfl

theorem input885_eq : InitECandidate.Proofs.DeadStages782.Parallel.input885 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_369 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input885_def]
  simp only [input884_eq, input883_eq]
  kernel_rfl

theorem output885_eq : InitECandidate.Proofs.DeadStages782.Parallel.output885 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_283 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output885_def]
  simp only [output884_eq, output883_eq]
  kernel_rfl

theorem input886_eq : InitECandidate.Proofs.DeadStages782.Parallel.input886 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_365 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input886_def]
  kernel_rfl

theorem output886_eq : InitECandidate.Proofs.DeadStages782.Parallel.output886 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_279 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output886_def]
  kernel_rfl

theorem input887_eq : InitECandidate.Proofs.DeadStages782.Parallel.input887 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_362 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input887_def]
  kernel_rfl

theorem output887_eq : InitECandidate.Proofs.DeadStages782.Parallel.output887 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_276 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output887_def]
  kernel_rfl

theorem input888_eq : InitECandidate.Proofs.DeadStages782.Parallel.input888 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_361 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input888_def]
  kernel_rfl

theorem output888_eq : InitECandidate.Proofs.DeadStages782.Parallel.output888 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_275 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output888_def]
  kernel_rfl

theorem input889_eq : InitECandidate.Proofs.DeadStages782.Parallel.input889 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_363 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input889_def]
  simp only [input888_eq, input887_eq]
  kernel_rfl

theorem output889_eq : InitECandidate.Proofs.DeadStages782.Parallel.output889 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_277 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output889_def]
  simp only [output888_eq, output887_eq]
  kernel_rfl

theorem input890_eq : InitECandidate.Proofs.DeadStages782.Parallel.input890 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_359 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input890_def]
  kernel_rfl

theorem output890_eq : InitECandidate.Proofs.DeadStages782.Parallel.output890 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_273 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output890_def]
  kernel_rfl

theorem input891_eq : InitECandidate.Proofs.DeadStages782.Parallel.input891 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_356 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input891_def]
  kernel_rfl

theorem output891_eq : InitECandidate.Proofs.DeadStages782.Parallel.output891 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_270 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output891_def]
  kernel_rfl

theorem input892_eq : InitECandidate.Proofs.DeadStages782.Parallel.input892 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_355 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input892_def]
  kernel_rfl

theorem output892_eq : InitECandidate.Proofs.DeadStages782.Parallel.output892 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_269 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output892_def]
  kernel_rfl

theorem input893_eq : InitECandidate.Proofs.DeadStages782.Parallel.input893 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_357 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input893_def]
  simp only [input892_eq, input891_eq]
  kernel_rfl

theorem output893_eq : InitECandidate.Proofs.DeadStages782.Parallel.output893 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_271 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output893_def]
  simp only [output892_eq, output891_eq]
  kernel_rfl

theorem input894_eq : InitECandidate.Proofs.DeadStages782.Parallel.input894 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_353 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input894_def]
  kernel_rfl

theorem output894_eq : InitECandidate.Proofs.DeadStages782.Parallel.output894 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_267 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output894_def]
  kernel_rfl

theorem input895_eq : InitECandidate.Proofs.DeadStages782.Parallel.input895 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_351 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input895_def]
  kernel_rfl

theorem output895_eq : InitECandidate.Proofs.DeadStages782.Parallel.output895 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_265 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output895_def]
  kernel_rfl

theorem input896_eq : InitECandidate.Proofs.DeadStages782.Parallel.input896 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_349 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input896_def]
  kernel_rfl

theorem output896_eq : InitECandidate.Proofs.DeadStages782.Parallel.output896 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_263 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output896_def]
  kernel_rfl

theorem input897_eq : InitECandidate.Proofs.DeadStages782.Parallel.input897 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_347 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input897_def]
  kernel_rfl

theorem output897_eq : InitECandidate.Proofs.DeadStages782.Parallel.output897 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_261 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output897_def]
  kernel_rfl

theorem input898_eq : InitECandidate.Proofs.DeadStages782.Parallel.input898 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_345 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input898_def]
  kernel_rfl

theorem output898_eq : InitECandidate.Proofs.DeadStages782.Parallel.output898 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_259 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output898_def]
  kernel_rfl

theorem input899_eq : InitECandidate.Proofs.DeadStages782.Parallel.input899 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_343 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input899_def]
  kernel_rfl

theorem output899_eq : InitECandidate.Proofs.DeadStages782.Parallel.output899 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_257 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output899_def]
  kernel_rfl

theorem input900_eq : InitECandidate.Proofs.DeadStages782.Parallel.input900 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_341 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input900_def]
  kernel_rfl

theorem output900_eq : InitECandidate.Proofs.DeadStages782.Parallel.output900 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_255 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output900_def]
  kernel_rfl

theorem input901_eq : InitECandidate.Proofs.DeadStages782.Parallel.input901 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_338 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input901_def]
  kernel_rfl

theorem output901_eq : InitECandidate.Proofs.DeadStages782.Parallel.output901 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_252 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output901_def]
  kernel_rfl

theorem input902_eq : InitECandidate.Proofs.DeadStages782.Parallel.input902 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_336 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input902_def]
  kernel_rfl

theorem output902_eq : InitECandidate.Proofs.DeadStages782.Parallel.output902 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_250 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output902_def]
  kernel_rfl

theorem input903_eq : InitECandidate.Proofs.DeadStages782.Parallel.input903 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_334 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input903_def]
  kernel_rfl

theorem output903_eq : InitECandidate.Proofs.DeadStages782.Parallel.output903 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_248 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output903_def]
  kernel_rfl

theorem input904_eq : InitECandidate.Proofs.DeadStages782.Parallel.input904 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_333 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input904_def]
  kernel_rfl

theorem output904_eq : InitECandidate.Proofs.DeadStages782.Parallel.output904 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_247 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output904_def]
  kernel_rfl

theorem input905_eq : InitECandidate.Proofs.DeadStages782.Parallel.input905 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_335 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input905_def]
  simp only [input904_eq, input903_eq]
  kernel_rfl

theorem output905_eq : InitECandidate.Proofs.DeadStages782.Parallel.output905 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_249 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output905_def]
  simp only [output904_eq, output903_eq]
  kernel_rfl

theorem input906_eq : InitECandidate.Proofs.DeadStages782.Parallel.input906 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_337 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input906_def]
  simp only [input905_eq, input902_eq]
  kernel_rfl

theorem output906_eq : InitECandidate.Proofs.DeadStages782.Parallel.output906 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_251 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output906_def]
  simp only [output905_eq, output902_eq]
  kernel_rfl

theorem input907_eq : InitECandidate.Proofs.DeadStages782.Parallel.input907 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_339 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input907_def]
  simp only [input906_eq, input901_eq]
  kernel_rfl

theorem output907_eq : InitECandidate.Proofs.DeadStages782.Parallel.output907 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_253 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output907_def]
  simp only [output906_eq, output901_eq]
  kernel_rfl

theorem input908_eq : InitECandidate.Proofs.DeadStages782.Parallel.input908 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_138 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input908_def]
  kernel_rfl

theorem output908_eq : InitECandidate.Proofs.DeadStages782.Parallel.output908 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output908_def]
  kernel_rfl

theorem input909_eq : InitECandidate.Proofs.DeadStages782.Parallel.input909 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_328 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input909_def]
  kernel_rfl

theorem output909_eq : InitECandidate.Proofs.DeadStages782.Parallel.output909 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_243 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output909_def]
  kernel_rfl

theorem input910_eq : InitECandidate.Proofs.DeadStages782.Parallel.input910 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input910_def]
  kernel_rfl

theorem input911_eq : InitECandidate.Proofs.DeadStages782.Parallel.input911 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_329 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input911_def]
  simp only [input910_eq, input909_eq]
  kernel_rfl

theorem output911_eq : InitECandidate.Proofs.DeadStages782.Parallel.output911 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_243 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output911_def]
  simp only [output909_eq]

theorem input912_eq : InitECandidate.Proofs.DeadStages782.Parallel.input912 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_306 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input912_def]
  kernel_rfl

theorem output912_eq : InitECandidate.Proofs.DeadStages782.Parallel.output912 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_236 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output912_def]
  kernel_rfl

theorem input913_eq : InitECandidate.Proofs.DeadStages782.Parallel.input913 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_330 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input913_def]
  simp only [input912_eq, input911_eq]
  kernel_rfl

theorem output913_eq : InitECandidate.Proofs.DeadStages782.Parallel.output913 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_244 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output913_def]
  simp only [output912_eq, output911_eq]
  kernel_rfl

theorem input914_eq : InitECandidate.Proofs.DeadStages782.Parallel.input914 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_138 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input914_def]
  kernel_rfl

theorem output914_eq : InitECandidate.Proofs.DeadStages782.Parallel.output914 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output914_def]
  kernel_rfl

theorem input915_eq : InitECandidate.Proofs.DeadStages782.Parallel.input915 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_301 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input915_def]
  kernel_rfl

theorem input916_eq : InitECandidate.Proofs.DeadStages782.Parallel.input916 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_138 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input916_def]
  kernel_rfl

theorem output916_eq : InitECandidate.Proofs.DeadStages782.Parallel.output916 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output916_def]
  kernel_rfl

theorem input917_eq : InitECandidate.Proofs.DeadStages782.Parallel.input917 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_299 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input917_def]
  kernel_rfl

theorem input918_eq : InitECandidate.Proofs.DeadStages782.Parallel.input918 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_300 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input918_def]
  simp only [input917_eq, input916_eq]
  kernel_rfl

theorem output918_eq : InitECandidate.Proofs.DeadStages782.Parallel.output918 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output918_def]
  simp only [output916_eq]

theorem input919_eq : InitECandidate.Proofs.DeadStages782.Parallel.input919 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_302 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input919_def]
  simp only [input918_eq, input915_eq]
  kernel_rfl

theorem output919_eq : InitECandidate.Proofs.DeadStages782.Parallel.output919 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output919_def]
  simp only [output918_eq]

theorem input920_eq : InitECandidate.Proofs.DeadStages782.Parallel.input920 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_261 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input920_def]
  kernel_rfl

theorem output920_eq : InitECandidate.Proofs.DeadStages782.Parallel.output920 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_201 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output920_def]
  kernel_rfl

theorem input921_eq : InitECandidate.Proofs.DeadStages782.Parallel.input921 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_259 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input921_def]
  kernel_rfl

theorem output921_eq : InitECandidate.Proofs.DeadStages782.Parallel.output921 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_199 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output921_def]
  kernel_rfl

theorem input922_eq : InitECandidate.Proofs.DeadStages782.Parallel.input922 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_257 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input922_def]
  kernel_rfl

theorem output922_eq : InitECandidate.Proofs.DeadStages782.Parallel.output922 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_197 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output922_def]
  kernel_rfl

theorem input923_eq : InitECandidate.Proofs.DeadStages782.Parallel.input923 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_255 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input923_def]
  kernel_rfl

theorem output923_eq : InitECandidate.Proofs.DeadStages782.Parallel.output923 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_195 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output923_def]
  kernel_rfl

theorem input924_eq : InitECandidate.Proofs.DeadStages782.Parallel.input924 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_253 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input924_def]
  kernel_rfl

theorem output924_eq : InitECandidate.Proofs.DeadStages782.Parallel.output924 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_193 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output924_def]
  kernel_rfl

theorem input925_eq : InitECandidate.Proofs.DeadStages782.Parallel.input925 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_251 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input925_def]
  kernel_rfl

theorem output925_eq : InitECandidate.Proofs.DeadStages782.Parallel.output925 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_191 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output925_def]
  kernel_rfl

theorem input926_eq : InitECandidate.Proofs.DeadStages782.Parallel.input926 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_249 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input926_def]
  kernel_rfl

theorem output926_eq : InitECandidate.Proofs.DeadStages782.Parallel.output926 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_189 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output926_def]
  kernel_rfl

theorem input927_eq : InitECandidate.Proofs.DeadStages782.Parallel.input927 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_247 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input927_def]
  kernel_rfl

theorem output927_eq : InitECandidate.Proofs.DeadStages782.Parallel.output927 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_187 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output927_def]
  kernel_rfl

theorem input928_eq : InitECandidate.Proofs.DeadStages782.Parallel.input928 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_245 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input928_def]
  kernel_rfl

theorem output928_eq : InitECandidate.Proofs.DeadStages782.Parallel.output928 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_185 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output928_def]
  kernel_rfl

theorem input929_eq : InitECandidate.Proofs.DeadStages782.Parallel.input929 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_243 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input929_def]
  kernel_rfl

theorem input930_eq : InitECandidate.Proofs.DeadStages782.Parallel.input930 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_241 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input930_def]
  kernel_rfl

theorem output930_eq : InitECandidate.Proofs.DeadStages782.Parallel.output930 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_183 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output930_def]
  kernel_rfl

theorem input931_eq : InitECandidate.Proofs.DeadStages782.Parallel.input931 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_239 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input931_def]
  kernel_rfl

theorem output931_eq : InitECandidate.Proofs.DeadStages782.Parallel.output931 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_181 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output931_def]
  kernel_rfl

theorem input932_eq : InitECandidate.Proofs.DeadStages782.Parallel.input932 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_237 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input932_def]
  kernel_rfl

theorem output932_eq : InitECandidate.Proofs.DeadStages782.Parallel.output932 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_179 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output932_def]
  kernel_rfl

theorem input933_eq : InitECandidate.Proofs.DeadStages782.Parallel.input933 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_235 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input933_def]
  kernel_rfl

theorem input934_eq : InitECandidate.Proofs.DeadStages782.Parallel.input934 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_233 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input934_def]
  kernel_rfl

theorem output934_eq : InitECandidate.Proofs.DeadStages782.Parallel.output934 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_178 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output934_def]
  kernel_rfl

theorem input935_eq : InitECandidate.Proofs.DeadStages782.Parallel.input935 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_112 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input935_def]
  kernel_rfl

theorem input936_eq : InitECandidate.Proofs.DeadStages782.Parallel.input936 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_234 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input936_def]
  simp only [input935_eq, input934_eq]
  kernel_rfl

theorem output936_eq : InitECandidate.Proofs.DeadStages782.Parallel.output936 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_178 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output936_def]
  simp only [output934_eq]

theorem input937_eq : InitECandidate.Proofs.DeadStages782.Parallel.input937 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_236 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input937_def]
  simp only [input936_eq, input933_eq]
  kernel_rfl

theorem output937_eq : InitECandidate.Proofs.DeadStages782.Parallel.output937 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_178 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output937_def]
  simp only [output936_eq]

theorem input938_eq : InitECandidate.Proofs.DeadStages782.Parallel.input938 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_238 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input938_def]
  simp only [input937_eq, input932_eq]
  kernel_rfl

theorem output938_eq : InitECandidate.Proofs.DeadStages782.Parallel.output938 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_180 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output938_def]
  simp only [output937_eq, output932_eq]
  kernel_rfl

theorem input939_eq : InitECandidate.Proofs.DeadStages782.Parallel.input939 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_240 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input939_def]
  simp only [input938_eq, input931_eq]
  kernel_rfl

theorem output939_eq : InitECandidate.Proofs.DeadStages782.Parallel.output939 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_182 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output939_def]
  simp only [output938_eq, output931_eq]
  kernel_rfl

theorem input940_eq : InitECandidate.Proofs.DeadStages782.Parallel.input940 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_242 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input940_def]
  simp only [input939_eq, input930_eq]
  kernel_rfl

theorem output940_eq : InitECandidate.Proofs.DeadStages782.Parallel.output940 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_184 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output940_def]
  simp only [output939_eq, output930_eq]
  kernel_rfl

theorem input941_eq : InitECandidate.Proofs.DeadStages782.Parallel.input941 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_244 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input941_def]
  simp only [input940_eq, input929_eq]
  kernel_rfl

theorem output941_eq : InitECandidate.Proofs.DeadStages782.Parallel.output941 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_184 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output941_def]
  simp only [output940_eq]

theorem input942_eq : InitECandidate.Proofs.DeadStages782.Parallel.input942 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_246 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input942_def]
  simp only [input941_eq, input928_eq]
  kernel_rfl

theorem output942_eq : InitECandidate.Proofs.DeadStages782.Parallel.output942 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_186 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output942_def]
  simp only [output941_eq, output928_eq]
  kernel_rfl

theorem input943_eq : InitECandidate.Proofs.DeadStages782.Parallel.input943 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_248 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input943_def]
  simp only [input942_eq, input927_eq]
  kernel_rfl

theorem output943_eq : InitECandidate.Proofs.DeadStages782.Parallel.output943 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_188 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output943_def]
  simp only [output942_eq, output927_eq]
  kernel_rfl

theorem input944_eq : InitECandidate.Proofs.DeadStages782.Parallel.input944 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_250 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input944_def]
  simp only [input943_eq, input926_eq]
  kernel_rfl

theorem output944_eq : InitECandidate.Proofs.DeadStages782.Parallel.output944 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_190 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output944_def]
  simp only [output943_eq, output926_eq]
  kernel_rfl

theorem input945_eq : InitECandidate.Proofs.DeadStages782.Parallel.input945 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_252 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input945_def]
  simp only [input944_eq, input925_eq]
  kernel_rfl

theorem output945_eq : InitECandidate.Proofs.DeadStages782.Parallel.output945 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_192 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output945_def]
  simp only [output944_eq, output925_eq]
  kernel_rfl

theorem input946_eq : InitECandidate.Proofs.DeadStages782.Parallel.input946 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_254 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input946_def]
  simp only [input945_eq, input924_eq]
  kernel_rfl

theorem output946_eq : InitECandidate.Proofs.DeadStages782.Parallel.output946 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_194 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output946_def]
  simp only [output945_eq, output924_eq]
  kernel_rfl

theorem input947_eq : InitECandidate.Proofs.DeadStages782.Parallel.input947 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_256 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input947_def]
  simp only [input946_eq, input923_eq]
  kernel_rfl

theorem output947_eq : InitECandidate.Proofs.DeadStages782.Parallel.output947 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_196 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output947_def]
  simp only [output946_eq, output923_eq]
  kernel_rfl

theorem input948_eq : InitECandidate.Proofs.DeadStages782.Parallel.input948 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_258 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input948_def]
  simp only [input947_eq, input922_eq]
  kernel_rfl

theorem output948_eq : InitECandidate.Proofs.DeadStages782.Parallel.output948 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_198 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output948_def]
  simp only [output947_eq, output922_eq]
  kernel_rfl

theorem input949_eq : InitECandidate.Proofs.DeadStages782.Parallel.input949 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_260 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input949_def]
  simp only [input948_eq, input921_eq]
  kernel_rfl

theorem output949_eq : InitECandidate.Proofs.DeadStages782.Parallel.output949 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_200 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output949_def]
  simp only [output948_eq, output921_eq]
  kernel_rfl

theorem input950_eq : InitECandidate.Proofs.DeadStages782.Parallel.input950 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_262 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input950_def]
  simp only [input949_eq, input920_eq]
  kernel_rfl

theorem output950_eq : InitECandidate.Proofs.DeadStages782.Parallel.output950 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_202 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output950_def]
  simp only [output949_eq, output920_eq]
  kernel_rfl

theorem input951_eq : InitECandidate.Proofs.DeadStages782.Parallel.input951 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_232 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input951_def]
  kernel_rfl

theorem output951_eq : InitECandidate.Proofs.DeadStages782.Parallel.output951 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_177 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output951_def]
  kernel_rfl

theorem input952_eq : InitECandidate.Proofs.DeadStages782.Parallel.input952 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_263 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input952_def]
  simp only [input951_eq, input950_eq]
  kernel_rfl

theorem output952_eq : InitECandidate.Proofs.DeadStages782.Parallel.output952 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_203 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output952_def]
  simp only [output951_eq, output950_eq]
  kernel_rfl

theorem input953_eq : InitECandidate.Proofs.DeadStages782.Parallel.input953 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_229 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input953_def]
  kernel_rfl

theorem output953_eq : InitECandidate.Proofs.DeadStages782.Parallel.output953 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_174 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output953_def]
  kernel_rfl

theorem input954_eq : InitECandidate.Proofs.DeadStages782.Parallel.input954 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_228 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input954_def]
  kernel_rfl

theorem output954_eq : InitECandidate.Proofs.DeadStages782.Parallel.output954 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_173 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output954_def]
  kernel_rfl

theorem input955_eq : InitECandidate.Proofs.DeadStages782.Parallel.input955 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_230 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input955_def]
  simp only [input954_eq, input953_eq]
  kernel_rfl

theorem output955_eq : InitECandidate.Proofs.DeadStages782.Parallel.output955 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_175 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output955_def]
  simp only [output954_eq, output953_eq]
  kernel_rfl

theorem input956_eq : InitECandidate.Proofs.DeadStages782.Parallel.input956 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_226 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input956_def]
  kernel_rfl

theorem output956_eq : InitECandidate.Proofs.DeadStages782.Parallel.output956 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_171 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output956_def]
  kernel_rfl

theorem input957_eq : InitECandidate.Proofs.DeadStages782.Parallel.input957 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_138 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input957_def]
  kernel_rfl

theorem output957_eq : InitECandidate.Proofs.DeadStages782.Parallel.output957 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output957_def]
  kernel_rfl

theorem input958_eq : InitECandidate.Proofs.DeadStages782.Parallel.input958 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_221 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input958_def]
  kernel_rfl

theorem output958_eq : InitECandidate.Proofs.DeadStages782.Parallel.output958 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_166 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output958_def]
  kernel_rfl

theorem input959_eq : InitECandidate.Proofs.DeadStages782.Parallel.input959 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_199 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input959_def]
  kernel_rfl

theorem output959_eq : InitECandidate.Proofs.DeadStages782.Parallel.output959 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_159 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output959_def]
  kernel_rfl

theorem input960_eq : InitECandidate.Proofs.DeadStages782.Parallel.input960 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_222 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input960_def]
  simp only [input959_eq, input958_eq]
  kernel_rfl

theorem output960_eq : InitECandidate.Proofs.DeadStages782.Parallel.output960 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_167 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output960_def]
  simp only [output959_eq, output958_eq]
  kernel_rfl

theorem input961_eq : InitECandidate.Proofs.DeadStages782.Parallel.input961 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_198 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input961_def]
  kernel_rfl

theorem output961_eq : InitECandidate.Proofs.DeadStages782.Parallel.output961 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_158 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output961_def]
  kernel_rfl

theorem input962_eq : InitECandidate.Proofs.DeadStages782.Parallel.input962 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_223 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input962_def]
  simp only [input961_eq, input960_eq]
  kernel_rfl

theorem output962_eq : InitECandidate.Proofs.DeadStages782.Parallel.output962 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_168 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output962_def]
  simp only [output961_eq, output960_eq]
  kernel_rfl

theorem input963_eq : InitECandidate.Proofs.DeadStages782.Parallel.input963 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_196 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input963_def]
  kernel_rfl

theorem output963_eq : InitECandidate.Proofs.DeadStages782.Parallel.output963 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_156 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output963_def]
  kernel_rfl

theorem input964_eq : InitECandidate.Proofs.DeadStages782.Parallel.input964 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_194 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input964_def]
  kernel_rfl

theorem input965_eq : InitECandidate.Proofs.DeadStages782.Parallel.input965 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_138 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input965_def]
  kernel_rfl

theorem output965_eq : InitECandidate.Proofs.DeadStages782.Parallel.output965 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output965_def]
  kernel_rfl

theorem input966_eq : InitECandidate.Proofs.DeadStages782.Parallel.input966 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_192 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input966_def]
  kernel_rfl

theorem input967_eq : InitECandidate.Proofs.DeadStages782.Parallel.input967 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_193 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input967_def]
  simp only [input966_eq, input965_eq]
  kernel_rfl

theorem output967_eq : InitECandidate.Proofs.DeadStages782.Parallel.output967 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output967_def]
  simp only [output965_eq]

theorem input968_eq : InitECandidate.Proofs.DeadStages782.Parallel.input968 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_195 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input968_def]
  simp only [input967_eq, input964_eq]
  kernel_rfl

theorem output968_eq : InitECandidate.Proofs.DeadStages782.Parallel.output968 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output968_def]
  simp only [output967_eq]

theorem input969_eq : InitECandidate.Proofs.DeadStages782.Parallel.input969 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_197 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input969_def]
  simp only [input968_eq, input963_eq]
  kernel_rfl

theorem output969_eq : InitECandidate.Proofs.DeadStages782.Parallel.output969 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_157 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output969_def]
  simp only [output968_eq, output963_eq]
  kernel_rfl

theorem input970_eq : InitECandidate.Proofs.DeadStages782.Parallel.input970 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_224 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input970_def]
  simp only [input969_eq, input962_eq]
  kernel_rfl

theorem output970_eq : InitECandidate.Proofs.DeadStages782.Parallel.output970 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_169 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output970_def]
  simp only [output969_eq, output962_eq]
  kernel_rfl

theorem input971_eq : InitECandidate.Proofs.DeadStages782.Parallel.input971 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_225 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input971_def]
  simp only [input970_eq, input957_eq]
  kernel_rfl

theorem output971_eq : InitECandidate.Proofs.DeadStages782.Parallel.output971 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_170 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output971_def]
  simp only [output970_eq, output957_eq]
  kernel_rfl

theorem input972_eq : InitECandidate.Proofs.DeadStages782.Parallel.input972 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_227 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input972_def]
  simp only [input971_eq, input956_eq]
  kernel_rfl

theorem output972_eq : InitECandidate.Proofs.DeadStages782.Parallel.output972 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_172 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output972_def]
  simp only [output971_eq, output956_eq]
  kernel_rfl

theorem input973_eq : InitECandidate.Proofs.DeadStages782.Parallel.input973 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_231 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input973_def]
  simp only [input972_eq, input955_eq]
  kernel_rfl

theorem output973_eq : InitECandidate.Proofs.DeadStages782.Parallel.output973 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_176 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output973_def]
  simp only [output972_eq, output955_eq]
  kernel_rfl

theorem input974_eq : InitECandidate.Proofs.DeadStages782.Parallel.input974 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_264 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input974_def]
  simp only [input973_eq, input952_eq]
  kernel_rfl

theorem output974_eq : InitECandidate.Proofs.DeadStages782.Parallel.output974 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_204 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output974_def]
  simp only [output973_eq, output952_eq]
  kernel_rfl

theorem input975_eq : InitECandidate.Proofs.DeadStages782.Parallel.input975 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_294 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input975_def]
  kernel_rfl

theorem output975_eq : InitECandidate.Proofs.DeadStages782.Parallel.output975 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_229 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output975_def]
  kernel_rfl

theorem input976_eq : InitECandidate.Proofs.DeadStages782.Parallel.input976 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_292 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input976_def]
  kernel_rfl

theorem output976_eq : InitECandidate.Proofs.DeadStages782.Parallel.output976 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_227 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output976_def]
  kernel_rfl

theorem input977_eq : InitECandidate.Proofs.DeadStages782.Parallel.input977 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_290 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input977_def]
  kernel_rfl

theorem output977_eq : InitECandidate.Proofs.DeadStages782.Parallel.output977 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_225 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output977_def]
  kernel_rfl

theorem input978_eq : InitECandidate.Proofs.DeadStages782.Parallel.input978 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_288 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input978_def]
  kernel_rfl

theorem output978_eq : InitECandidate.Proofs.DeadStages782.Parallel.output978 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_223 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output978_def]
  kernel_rfl

theorem input979_eq : InitECandidate.Proofs.DeadStages782.Parallel.input979 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_286 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input979_def]
  kernel_rfl

theorem output979_eq : InitECandidate.Proofs.DeadStages782.Parallel.output979 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_221 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output979_def]
  kernel_rfl

theorem input980_eq : InitECandidate.Proofs.DeadStages782.Parallel.input980 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_284 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input980_def]
  kernel_rfl

theorem output980_eq : InitECandidate.Proofs.DeadStages782.Parallel.output980 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_219 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output980_def]
  kernel_rfl

theorem input981_eq : InitECandidate.Proofs.DeadStages782.Parallel.input981 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_282 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input981_def]
  kernel_rfl

theorem output981_eq : InitECandidate.Proofs.DeadStages782.Parallel.output981 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_217 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output981_def]
  kernel_rfl

theorem input982_eq : InitECandidate.Proofs.DeadStages782.Parallel.input982 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_280 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input982_def]
  kernel_rfl

theorem output982_eq : InitECandidate.Proofs.DeadStages782.Parallel.output982 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_215 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output982_def]
  kernel_rfl

theorem input983_eq : InitECandidate.Proofs.DeadStages782.Parallel.input983 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_278 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input983_def]
  kernel_rfl

theorem output983_eq : InitECandidate.Proofs.DeadStages782.Parallel.output983 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_213 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output983_def]
  kernel_rfl

theorem input984_eq : InitECandidate.Proofs.DeadStages782.Parallel.input984 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_276 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input984_def]
  kernel_rfl

theorem input985_eq : InitECandidate.Proofs.DeadStages782.Parallel.input985 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_274 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input985_def]
  kernel_rfl

theorem output985_eq : InitECandidate.Proofs.DeadStages782.Parallel.output985 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_211 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output985_def]
  kernel_rfl

theorem input986_eq : InitECandidate.Proofs.DeadStages782.Parallel.input986 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_272 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input986_def]
  kernel_rfl

theorem output986_eq : InitECandidate.Proofs.DeadStages782.Parallel.output986 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_209 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output986_def]
  kernel_rfl

theorem input987_eq : InitECandidate.Proofs.DeadStages782.Parallel.input987 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_270 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input987_def]
  kernel_rfl

theorem output987_eq : InitECandidate.Proofs.DeadStages782.Parallel.output987 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_207 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output987_def]
  kernel_rfl

theorem input988_eq : InitECandidate.Proofs.DeadStages782.Parallel.input988 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_268 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input988_def]
  kernel_rfl

theorem input989_eq : InitECandidate.Proofs.DeadStages782.Parallel.input989 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_266 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input989_def]
  kernel_rfl

theorem output989_eq : InitECandidate.Proofs.DeadStages782.Parallel.output989 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_206 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output989_def]
  kernel_rfl

theorem input990_eq : InitECandidate.Proofs.DeadStages782.Parallel.input990 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_112 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input990_def]
  kernel_rfl

theorem input991_eq : InitECandidate.Proofs.DeadStages782.Parallel.input991 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_267 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input991_def]
  simp only [input990_eq, input989_eq]
  kernel_rfl

theorem output991_eq : InitECandidate.Proofs.DeadStages782.Parallel.output991 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_206 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output991_def]
  simp only [output989_eq]

theorem input992_eq : InitECandidate.Proofs.DeadStages782.Parallel.input992 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_269 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input992_def]
  simp only [input991_eq, input988_eq]
  kernel_rfl

theorem output992_eq : InitECandidate.Proofs.DeadStages782.Parallel.output992 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_206 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output992_def]
  simp only [output991_eq]

theorem input993_eq : InitECandidate.Proofs.DeadStages782.Parallel.input993 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_271 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input993_def]
  simp only [input992_eq, input987_eq]
  kernel_rfl

theorem output993_eq : InitECandidate.Proofs.DeadStages782.Parallel.output993 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_208 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output993_def]
  simp only [output992_eq, output987_eq]
  kernel_rfl

theorem input994_eq : InitECandidate.Proofs.DeadStages782.Parallel.input994 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_273 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input994_def]
  simp only [input993_eq, input986_eq]
  kernel_rfl

theorem output994_eq : InitECandidate.Proofs.DeadStages782.Parallel.output994 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_210 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output994_def]
  simp only [output993_eq, output986_eq]
  kernel_rfl

theorem input995_eq : InitECandidate.Proofs.DeadStages782.Parallel.input995 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_275 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input995_def]
  simp only [input994_eq, input985_eq]
  kernel_rfl

theorem output995_eq : InitECandidate.Proofs.DeadStages782.Parallel.output995 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_212 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output995_def]
  simp only [output994_eq, output985_eq]
  kernel_rfl

theorem input996_eq : InitECandidate.Proofs.DeadStages782.Parallel.input996 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_277 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input996_def]
  simp only [input995_eq, input984_eq]
  kernel_rfl

theorem output996_eq : InitECandidate.Proofs.DeadStages782.Parallel.output996 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_212 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output996_def]
  simp only [output995_eq]

theorem input997_eq : InitECandidate.Proofs.DeadStages782.Parallel.input997 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_279 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input997_def]
  simp only [input996_eq, input983_eq]
  kernel_rfl

theorem output997_eq : InitECandidate.Proofs.DeadStages782.Parallel.output997 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_214 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output997_def]
  simp only [output996_eq, output983_eq]
  kernel_rfl

theorem input998_eq : InitECandidate.Proofs.DeadStages782.Parallel.input998 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_281 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input998_def]
  simp only [input997_eq, input982_eq]
  kernel_rfl

theorem output998_eq : InitECandidate.Proofs.DeadStages782.Parallel.output998 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_216 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output998_def]
  simp only [output997_eq, output982_eq]
  kernel_rfl

theorem input999_eq : InitECandidate.Proofs.DeadStages782.Parallel.input999 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_283 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input999_def]
  simp only [input998_eq, input981_eq]
  kernel_rfl

theorem output999_eq : InitECandidate.Proofs.DeadStages782.Parallel.output999 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_218 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output999_def]
  simp only [output998_eq, output981_eq]
  kernel_rfl

theorem input1000_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1000 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_285 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1000_def]
  simp only [input999_eq, input980_eq]
  kernel_rfl

theorem output1000_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1000 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_220 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1000_def]
  simp only [output999_eq, output980_eq]
  kernel_rfl

theorem input1001_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1001 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_287 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1001_def]
  simp only [input1000_eq, input979_eq]
  kernel_rfl

theorem output1001_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1001 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_222 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1001_def]
  simp only [output1000_eq, output979_eq]
  kernel_rfl

theorem input1002_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1002 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_289 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1002_def]
  simp only [input1001_eq, input978_eq]
  kernel_rfl

theorem output1002_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1002 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_224 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1002_def]
  simp only [output1001_eq, output978_eq]
  kernel_rfl

theorem input1003_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1003 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_291 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1003_def]
  simp only [input1002_eq, input977_eq]
  kernel_rfl

theorem output1003_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1003 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_226 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1003_def]
  simp only [output1002_eq, output977_eq]
  kernel_rfl

theorem input1004_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1004 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_293 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1004_def]
  simp only [input1003_eq, input976_eq]
  kernel_rfl

theorem output1004_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1004 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_228 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1004_def]
  simp only [output1003_eq, output976_eq]
  kernel_rfl

theorem input1005_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1005 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_295 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1005_def]
  simp only [input1004_eq, input975_eq]
  kernel_rfl

theorem output1005_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1005 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_230 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1005_def]
  simp only [output1004_eq, output975_eq]
  kernel_rfl

theorem input1006_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1006 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_265 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1006_def]
  kernel_rfl

theorem output1006_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1006 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_205 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1006_def]
  kernel_rfl

theorem input1007_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1007 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_296 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1007_def]
  simp only [input1006_eq, input1005_eq]
  kernel_rfl

theorem output1007_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1007 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_231 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1007_def]
  simp only [output1006_eq, output1005_eq]
  kernel_rfl

theorem input1008_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1008 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_112 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1008_def]
  kernel_rfl

theorem input1009_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1009 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_297 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1009_def]
  simp only [input1008_eq, input1007_eq]
  kernel_rfl

theorem output1009_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1009 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_231 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1009_def]
  simp only [output1007_eq]

theorem input1010_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1010 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_298 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1010_def]
  simp only [input974_eq, input1009_eq]
  kernel_rfl

theorem output1010_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1010 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_232 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1010_def]
  simp only [output974_eq, output1009_eq]
  kernel_rfl

theorem input1011_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1011 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_303 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1011_def]
  simp only [input1010_eq, input919_eq]
  kernel_rfl

theorem output1011_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1011 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_233 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1011_def]
  simp only [output1010_eq, output919_eq]
  kernel_rfl

theorem input1012_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1012 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_190 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1012_def]
  kernel_rfl

theorem output1012_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1012 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_154 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1012_def]
  kernel_rfl

theorem input1013_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1013 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_188 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1013_def]
  kernel_rfl

theorem output1013_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1013 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_152 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1013_def]
  kernel_rfl

theorem input1014_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1014 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_138 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1014_def]
  kernel_rfl

theorem output1014_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1014 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_115 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1014_def]
  kernel_rfl

theorem input1015_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1015 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_183 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1015_def]
  kernel_rfl

theorem output1015_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1015 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_147 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1015_def]
  kernel_rfl

theorem input1016_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1016 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_161 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1016_def]
  kernel_rfl

theorem output1016_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1016 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_134 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1016_def]
  kernel_rfl

theorem input1017_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1017 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_184 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1017_def]
  simp only [input1016_eq, input1015_eq]
  kernel_rfl

theorem output1017_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1017 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_148 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1017_def]
  simp only [output1016_eq, output1015_eq]
  kernel_rfl

theorem input1018_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1018 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_160 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1018_def]
  kernel_rfl

theorem output1018_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1018 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_133 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1018_def]
  kernel_rfl

theorem input1019_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1019 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_185 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1019_def]
  simp only [input1018_eq, input1017_eq]
  kernel_rfl

theorem output1019_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1019 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_149 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1019_def]
  simp only [output1018_eq, output1017_eq]
  kernel_rfl

theorem input1020_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1020 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_158 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1020_def]
  kernel_rfl

theorem output1020_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1020 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_131 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1020_def]
  kernel_rfl

theorem input1021_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1021 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_156 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1021_def]
  kernel_rfl

theorem output1021_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1021 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_129 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1021_def]
  kernel_rfl

theorem input1022_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1022 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_154 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1022_def]
  kernel_rfl

theorem output1022_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1022 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_127 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1022_def]
  kernel_rfl

theorem input1023_eq : InitECandidate.Proofs.DeadStages782.Parallel.input1023 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_2_152 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.input1023_def]
  kernel_rfl

theorem output1023_eq : InitECandidate.Proofs.DeadStages782.Parallel.output1023 =
    InitECandidate.Proofs.WordStages.Parallel782.word782_3_125 := by
  rw [InitECandidate.Proofs.DeadStages782.Parallel.output1023_def]
  kernel_rfl

#print axioms output1023_eq
end InitECandidate.Proofs.WordStages.Parallel782.AgreementsParallel
