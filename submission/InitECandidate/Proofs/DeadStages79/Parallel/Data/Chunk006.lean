import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk005
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages79.Parallel
@[irreducible, cbv_opaque] def input1536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1535 input1534)).val
theorem input1536_def : input1536 = (.seq input1535 input1534) := by
  unfold input1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1536 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1534)).val
theorem output1536_def : output1536 = (output1534) := by
  unfold output1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1536_skip : Flapjack.WordAlloc.isSkip output1536 = true := by
  rw [output1536_def]
  exact output1534_skip


@[irreducible, cbv_opaque] def input1537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1537_def : input1537 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1537 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1537_def : output1537 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1537_skip : Flapjack.WordAlloc.isSkip output1537 = true := by
  rw [output1537_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1537 input1536)).val
theorem input1538_def : input1538 = (.seq input1537 input1536) := by
  unfold input1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1538 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1536)).val
theorem output1538_def : output1538 = (output1536) := by
  unfold output1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1538_skip : Flapjack.WordAlloc.isSkip output1538 = true := by
  rw [output1538_def]
  exact output1536_skip


def value372 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 565

def value373 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 557 value372 input1533 input1538)).val
theorem input1539_def : input1539 = (.ite value15 557 value372 input1533 input1538) := by
  unfold input1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1539 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 557 value372 output1533 output1538)).val
theorem output1539_def : output1539 = (.ite value15 557 value372 output1533 output1538) := by
  unfold output1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1539_skip : Flapjack.WordAlloc.isSkip output1539 = false := by
  rw [output1539_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1539 input1518)).val
theorem input1540_def : input1540 = (.seq input1539 input1518) := by
  unfold input1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1540 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1539 output1518)).val
theorem output1540_def : output1540 = (.seq output1539 output1518) := by
  unfold output1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1540_skip : Flapjack.WordAlloc.isSkip output1540 = false := by
  rw [output1540_def]
  kernel_rfl


def value374 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 565 (Flapjack.WordLangAddr.addr 561 8#64)))).val
theorem input1541_def : input1541 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 565 (Flapjack.WordLangAddr.addr 561 8#64))) := by
  unfold input1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1541 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 565 (Flapjack.WordLangAddr.addr 561 8#64)))).val
theorem output1541_def : output1541 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 565 (Flapjack.WordLangAddr.addr 561 8#64))) := by
  unfold output1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1541_skip : Flapjack.WordAlloc.isSkip output1541 = false := by
  rw [output1541_def]
  kernel_rfl


def value375 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(561, 513)])).val
theorem input1542_def : input1542 = (Flapjack.WordLangProgHOL.move 0 [(561, 513)]) := by
  unfold input1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1542 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(561, 513)])).val
theorem output1542_def : output1542 = (Flapjack.WordLangProgHOL.move 0 [(561, 513)]) := by
  unfold output1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1542_skip : Flapjack.WordAlloc.isSkip output1542 = false := by
  rw [output1542_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1542 input1541)).val
theorem input1543_def : input1543 = (.seq input1542 input1541) := by
  unfold input1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1543 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1542 output1541)).val
theorem output1543_def : output1543 = (.seq output1542 output1541) := by
  unfold output1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1543_skip : Flapjack.WordAlloc.isSkip output1543 = false := by
  rw [output1543_def]
  kernel_rfl


def value376 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            PUnit.unit Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 557 (Flapjack.WordLangAddr.addr 553 8#64)))).val
theorem input1544_def : input1544 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 557 (Flapjack.WordLangAddr.addr 553 8#64))) := by
  unfold input1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1544 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 557 (Flapjack.WordLangAddr.addr 553 8#64)))).val
theorem output1544_def : output1544 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 557 (Flapjack.WordLangAddr.addr 553 8#64))) := by
  unfold output1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1544_skip : Flapjack.WordAlloc.isSkip output1544 = false := by
  rw [output1544_def]
  kernel_rfl


def value377 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(553, 505)])).val
theorem input1545_def : input1545 = (Flapjack.WordLangProgHOL.move 0 [(553, 505)]) := by
  unfold input1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1545 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(553, 505)])).val
theorem output1545_def : output1545 = (Flapjack.WordLangProgHOL.move 0 [(553, 505)]) := by
  unfold output1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1545_skip : Flapjack.WordAlloc.isSkip output1545 = false := by
  rw [output1545_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1545 input1544)).val
theorem input1546_def : input1546 = (.seq input1545 input1544) := by
  unfold input1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1546 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1545 output1544)).val
theorem output1546_def : output1546 = (.seq output1545 output1544) := by
  unfold output1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1546_skip : Flapjack.WordAlloc.isSkip output1546 = false := by
  rw [output1546_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1547_def : input1547 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1547 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1547_def : output1547 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1547_skip : Flapjack.WordAlloc.isSkip output1547 = false := by
  rw [output1547_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64))).val
theorem input1548_def : input1548 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 549 0#64)) := by
  unfold input1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1548 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1548_def : output1548 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1548_skip : Flapjack.WordAlloc.isSkip output1548 = true := by
  rw [output1548_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1549_def : input1549 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1549 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1549_def : output1549 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1549_skip : Flapjack.WordAlloc.isSkip output1549 = false := by
  rw [output1549_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 0#64))).val
theorem input1550_def : input1550 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 545 0#64)) := by
  unfold input1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1550 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1550_def : output1550 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1550_skip : Flapjack.WordAlloc.isSkip output1550 = true := by
  rw [output1550_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1550 input1549)).val
theorem input1551_def : input1551 = (.seq input1550 input1549) := by
  unfold input1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1551 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1549)).val
theorem output1551_def : output1551 = (output1549) := by
  unfold output1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1551_skip : Flapjack.WordAlloc.isSkip output1551 = false := by
  rw [output1551_def]
  exact output1549_skip


@[irreducible, cbv_opaque] def input1552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1551 input1548)).val
theorem input1552_def : input1552 = (.seq input1551 input1548) := by
  unfold input1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1552 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1551)).val
theorem output1552_def : output1552 = (output1551) := by
  unfold output1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1552_skip : Flapjack.WordAlloc.isSkip output1552 = false := by
  rw [output1552_def]
  exact output1551_skip


@[irreducible, cbv_opaque] def input1553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1553_def : input1553 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1553 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1553_def : output1553 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1553_skip : Flapjack.WordAlloc.isSkip output1553 = true := by
  rw [output1553_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(541, 525), (537, 529), (533, 521)])).val
theorem input1554_def : input1554 = (Flapjack.WordLangProgHOL.move 1 [(541, 525), (537, 529), (533, 521)]) := by
  unfold input1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1554 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1554_def : output1554 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1554_skip : Flapjack.WordAlloc.isSkip output1554 = true := by
  rw [output1554_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1554 input1553)).val
theorem input1555_def : input1555 = (.seq input1554 input1553) := by
  unfold input1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1555 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1553)).val
theorem output1555_def : output1555 = (output1553) := by
  unfold output1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1555_skip : Flapjack.WordAlloc.isSkip output1555 = true := by
  rw [output1555_def]
  exact output1553_skip


def value378 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem input1556_def : input1556 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold input1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1556 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem output1556_def : output1556 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold output1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1556_skip : Flapjack.WordAlloc.isSkip output1556 = false := by
  rw [output1556_def]
  kernel_rfl


def value379 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 529)])).val
theorem input1557_def : input1557 = (Flapjack.WordLangProgHOL.move 0 [(2, 529)]) := by
  unfold input1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1557 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 529)])).val
theorem output1557_def : output1557 = (Flapjack.WordLangProgHOL.move 0 [(2, 529)]) := by
  unfold output1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1557_skip : Flapjack.WordAlloc.isSkip output1557 = false := by
  rw [output1557_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1557 input1556)).val
theorem input1558_def : input1558 = (.seq input1557 input1556) := by
  unfold input1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1558 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1557 output1556)).val
theorem output1558_def : output1558 = (.seq output1557 output1556) := by
  unfold output1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1558_skip : Flapjack.WordAlloc.isSkip output1558 = false := by
  rw [output1558_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64))).val
theorem input1559_def : input1559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64)) := by
  unfold input1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1559 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64))).val
theorem output1559_def : output1559 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 529 0#64)) := by
  unfold output1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1559_skip : Flapjack.WordAlloc.isSkip output1559 = false := by
  rw [output1559_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 525 1#64))).val
theorem input1560_def : input1560 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 525 1#64)) := by
  unfold input1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1560 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1560_def : output1560 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1560_skip : Flapjack.WordAlloc.isSkip output1560 = true := by
  rw [output1560_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1561_def : input1561 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1561 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1561_def : output1561 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1561_skip : Flapjack.WordAlloc.isSkip output1561 = false := by
  rw [output1561_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 1#64))).val
theorem input1562_def : input1562 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 521 1#64)) := by
  unfold input1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1562 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1562_def : output1562 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1562_skip : Flapjack.WordAlloc.isSkip output1562 = true := by
  rw [output1562_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1562 input1561)).val
theorem input1563_def : input1563 = (.seq input1562 input1561) := by
  unfold input1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1563 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1561)).val
theorem output1563_def : output1563 = (output1561) := by
  unfold output1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1563_skip : Flapjack.WordAlloc.isSkip output1563 = false := by
  rw [output1563_def]
  exact output1561_skip


@[irreducible, cbv_opaque] def input1564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1563 input1560)).val
theorem input1564_def : input1564 = (.seq input1563 input1560) := by
  unfold input1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1564 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1563)).val
theorem output1564_def : output1564 = (output1563) := by
  unfold output1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1564_skip : Flapjack.WordAlloc.isSkip output1564 = false := by
  rw [output1564_def]
  exact output1563_skip


@[irreducible, cbv_opaque] def input1565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1564 input1559)).val
theorem input1565_def : input1565 = (.seq input1564 input1559) := by
  unfold input1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1565 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1564 output1559)).val
theorem output1565_def : output1565 = (.seq output1564 output1559) := by
  unfold output1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1565_skip : Flapjack.WordAlloc.isSkip output1565 = false := by
  rw [output1565_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1565 input1558)).val
theorem input1566_def : input1566 = (.seq input1565 input1558) := by
  unfold input1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1566 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1565 output1558)).val
theorem output1566_def : output1566 = (.seq output1565 output1558) := by
  unfold output1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1566_skip : Flapjack.WordAlloc.isSkip output1566 = false := by
  rw [output1566_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1566 input1555)).val
theorem input1567_def : input1567 = (.seq input1566 input1555) := by
  unfold input1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1567 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1566)).val
theorem output1567_def : output1567 = (output1566) := by
  unfold output1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1567_skip : Flapjack.WordAlloc.isSkip output1567 = false := by
  rw [output1567_def]
  exact output1566_skip


@[irreducible, cbv_opaque] def input1568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1568_def : input1568 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1568 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1568_def : output1568 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1568_skip : Flapjack.WordAlloc.isSkip output1568 = true := by
  rw [output1568_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(541, 501), (537, 469), (533, 509)])).val
theorem input1569_def : input1569 = (Flapjack.WordLangProgHOL.move 2 [(541, 501), (537, 469), (533, 509)]) := by
  unfold input1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1569 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1569_def : output1569 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1569_skip : Flapjack.WordAlloc.isSkip output1569 = true := by
  rw [output1569_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1569 input1568)).val
theorem input1570_def : input1570 = (.seq input1569 input1568) := by
  unfold input1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1570 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1568)).val
theorem output1570_def : output1570 = (output1568) := by
  unfold output1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1570_skip : Flapjack.WordAlloc.isSkip output1570 = true := by
  rw [output1570_def]
  exact output1568_skip


@[irreducible, cbv_opaque] def input1571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1571_def : input1571 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1571 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1571_def : output1571 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1571_skip : Flapjack.WordAlloc.isSkip output1571 = true := by
  rw [output1571_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1571 input1570)).val
theorem input1572_def : input1572 = (.seq input1571 input1570) := by
  unfold input1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1572 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1570)).val
theorem output1572_def : output1572 = (output1570) := by
  unfold output1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1572_skip : Flapjack.WordAlloc.isSkip output1572 = true := by
  rw [output1572_def]
  exact output1570_skip


def value380 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 517

def value381 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 509 value380 input1567 input1572)).val
theorem input1573_def : input1573 = (.ite value15 509 value380 input1567 input1572) := by
  unfold input1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1573 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 509 value380 output1567 output1572)).val
theorem output1573_def : output1573 = (.ite value15 509 value380 output1567 output1572) := by
  unfold output1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1573_skip : Flapjack.WordAlloc.isSkip output1573 = false := by
  rw [output1573_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1573 input1552)).val
theorem input1574_def : input1574 = (.seq input1573 input1552) := by
  unfold input1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1574 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1573 output1552)).val
theorem output1574_def : output1574 = (.seq output1573 output1552) := by
  unfold output1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1574_skip : Flapjack.WordAlloc.isSkip output1574 = false := by
  rw [output1574_def]
  kernel_rfl


def value382 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 517 (Flapjack.WordLangAddr.addr 513 0#64)))).val
theorem input1575_def : input1575 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 517 (Flapjack.WordLangAddr.addr 513 0#64))) := by
  unfold input1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1575 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 517 (Flapjack.WordLangAddr.addr 513 0#64)))).val
theorem output1575_def : output1575 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 517 (Flapjack.WordLangAddr.addr 513 0#64))) := by
  unfold output1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1575_skip : Flapjack.WordAlloc.isSkip output1575 = false := by
  rw [output1575_def]
  kernel_rfl


def value383 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(513, 457)])).val
theorem input1576_def : input1576 = (Flapjack.WordLangProgHOL.move 0 [(513, 457)]) := by
  unfold input1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1576 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(513, 457)])).val
theorem output1576_def : output1576 = (Flapjack.WordLangProgHOL.move 0 [(513, 457)]) := by
  unfold output1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1576_skip : Flapjack.WordAlloc.isSkip output1576 = false := by
  rw [output1576_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1576 input1575)).val
theorem input1577_def : input1577 = (.seq input1576 input1575) := by
  unfold input1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1577 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1576 output1575)).val
theorem output1577_def : output1577 = (.seq output1576 output1575) := by
  unfold output1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1577_skip : Flapjack.WordAlloc.isSkip output1577 = false := by
  rw [output1577_def]
  kernel_rfl


def value384 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 509 (Flapjack.WordLangAddr.addr 505 0#64)))).val
theorem input1578_def : input1578 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 509 (Flapjack.WordLangAddr.addr 505 0#64))) := by
  unfold input1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1578 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 509 (Flapjack.WordLangAddr.addr 505 0#64)))).val
theorem output1578_def : output1578 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 509 (Flapjack.WordLangAddr.addr 505 0#64))) := by
  unfold output1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1578_skip : Flapjack.WordAlloc.isSkip output1578 = false := by
  rw [output1578_def]
  kernel_rfl


def value385 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(505, 449)])).val
theorem input1579_def : input1579 = (Flapjack.WordLangProgHOL.move 0 [(505, 449)]) := by
  unfold input1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1579 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(505, 449)])).val
theorem output1579_def : output1579 = (Flapjack.WordLangProgHOL.move 0 [(505, 449)]) := by
  unfold output1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1579_skip : Flapjack.WordAlloc.isSkip output1579 = false := by
  rw [output1579_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1579 input1578)).val
theorem input1580_def : input1580 = (.seq input1579 input1578) := by
  unfold input1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1580 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1579 output1578)).val
theorem output1580_def : output1580 = (.seq output1579 output1578) := by
  unfold output1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1580_skip : Flapjack.WordAlloc.isSkip output1580 = false := by
  rw [output1580_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 501 1#64))).val
theorem input1581_def : input1581 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 501 1#64)) := by
  unfold input1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1581 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1581_def : output1581 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1581_skip : Flapjack.WordAlloc.isSkip output1581 = true := by
  rw [output1581_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1582_def : input1582 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1582 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1582_def : output1582 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1582_skip : Flapjack.WordAlloc.isSkip output1582 = false := by
  rw [output1582_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 1#64))).val
theorem input1583_def : input1583 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 1#64)) := by
  unfold input1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1583 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1583_def : output1583 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1583_skip : Flapjack.WordAlloc.isSkip output1583 = true := by
  rw [output1583_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1583 input1582)).val
theorem input1584_def : input1584 = (.seq input1583 input1582) := by
  unfold input1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1584 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1582)).val
theorem output1584_def : output1584 = (output1582) := by
  unfold output1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1584_skip : Flapjack.WordAlloc.isSkip output1584 = false := by
  rw [output1584_def]
  exact output1582_skip


@[irreducible, cbv_opaque] def input1585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1584 input1581)).val
theorem input1585_def : input1585 = (.seq input1584 input1581) := by
  unfold input1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1585 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1584)).val
theorem output1585_def : output1585 = (output1584) := by
  unfold output1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1585_skip : Flapjack.WordAlloc.isSkip output1585 = false := by
  rw [output1585_def]
  exact output1584_skip


@[irreducible, cbv_opaque] def input1586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1585 input1580)).val
theorem input1586_def : input1586 = (.seq input1585 input1580) := by
  unfold input1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1586 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1585 output1580)).val
theorem output1586_def : output1586 = (.seq output1585 output1580) := by
  unfold output1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1586_skip : Flapjack.WordAlloc.isSkip output1586 = false := by
  rw [output1586_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1586 input1577)).val
theorem input1587_def : input1587 = (.seq input1586 input1577) := by
  unfold input1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1587 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1586 output1577)).val
theorem output1587_def : output1587 = (.seq output1586 output1577) := by
  unfold output1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1587_skip : Flapjack.WordAlloc.isSkip output1587 = false := by
  rw [output1587_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1587 input1574)).val
theorem input1588_def : input1588 = (.seq input1587 input1574) := by
  unfold input1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1588 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1587 output1574)).val
theorem output1588_def : output1588 = (.seq output1587 output1574) := by
  unfold output1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1588_skip : Flapjack.WordAlloc.isSkip output1588 = false := by
  rw [output1588_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1588 input1547)).val
theorem input1589_def : input1589 = (.seq input1588 input1547) := by
  unfold input1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1589 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1588 output1547)).val
theorem output1589_def : output1589 = (.seq output1588 output1547) := by
  unfold output1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1589_skip : Flapjack.WordAlloc.isSkip output1589 = false := by
  rw [output1589_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1589 input1546)).val
theorem input1590_def : input1590 = (.seq input1589 input1546) := by
  unfold input1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1590 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1589 output1546)).val
theorem output1590_def : output1590 = (.seq output1589 output1546) := by
  unfold output1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1590_skip : Flapjack.WordAlloc.isSkip output1590 = false := by
  rw [output1590_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1590 input1543)).val
theorem input1591_def : input1591 = (.seq input1590 input1543) := by
  unfold input1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1591 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1590 output1543)).val
theorem output1591_def : output1591 = (.seq output1590 output1543) := by
  unfold output1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1591_skip : Flapjack.WordAlloc.isSkip output1591 = false := by
  rw [output1591_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1591 input1540)).val
theorem input1592_def : input1592 = (.seq input1591 input1540) := by
  unfold input1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1592 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1591 output1540)).val
theorem output1592_def : output1592 = (.seq output1591 output1540) := by
  unfold output1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1592_skip : Flapjack.WordAlloc.isSkip output1592 = false := by
  rw [output1592_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1592 input1513)).val
theorem input1593_def : input1593 = (.seq input1592 input1513) := by
  unfold input1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1593 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1592 output1513)).val
theorem output1593_def : output1593 = (.seq output1592 output1513) := by
  unfold output1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1593_skip : Flapjack.WordAlloc.isSkip output1593 = false := by
  rw [output1593_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1593 input1512)).val
theorem input1594_def : input1594 = (.seq input1593 input1512) := by
  unfold input1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1594 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1593 output1512)).val
theorem output1594_def : output1594 = (.seq output1593 output1512) := by
  unfold output1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1594_skip : Flapjack.WordAlloc.isSkip output1594 = false := by
  rw [output1594_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1594 input1509)).val
theorem input1595_def : input1595 = (.seq input1594 input1509) := by
  unfold input1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1595 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1594 output1509)).val
theorem output1595_def : output1595 = (.seq output1594 output1509) := by
  unfold output1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1595_skip : Flapjack.WordAlloc.isSkip output1595 = false := by
  rw [output1595_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1595 input1506)).val
theorem input1596_def : input1596 = (.seq input1595 input1506) := by
  unfold input1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1596 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1595 output1506)).val
theorem output1596_def : output1596 = (.seq output1595 output1506) := by
  unfold output1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1596_skip : Flapjack.WordAlloc.isSkip output1596 = false := by
  rw [output1596_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1596 input1479)).val
theorem input1597_def : input1597 = (.seq input1596 input1479) := by
  unfold input1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1597 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1596 output1479)).val
theorem output1597_def : output1597 = (.seq output1596 output1479) := by
  unfold output1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1597_skip : Flapjack.WordAlloc.isSkip output1597 = false := by
  rw [output1597_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1597 input1478)).val
theorem input1598_def : input1598 = (.seq input1597 input1478) := by
  unfold input1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1598 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1597 output1478)).val
theorem output1598_def : output1598 = (.seq output1597 output1478) := by
  unfold output1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1598_skip : Flapjack.WordAlloc.isSkip output1598 = false := by
  rw [output1598_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1598 input1475)).val
theorem input1599_def : input1599 = (.seq input1598 input1475) := by
  unfold input1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1599 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1598 output1475)).val
theorem output1599_def : output1599 = (.seq output1598 output1475) := by
  unfold output1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1599_skip : Flapjack.WordAlloc.isSkip output1599 = false := by
  rw [output1599_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1599 input1472)).val
theorem input1600_def : input1600 = (.seq input1599 input1472) := by
  unfold input1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1600 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1599 output1472)).val
theorem output1600_def : output1600 = (.seq output1599 output1472) := by
  unfold output1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1600_skip : Flapjack.WordAlloc.isSkip output1600 = false := by
  rw [output1600_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1600 input1445)).val
theorem input1601_def : input1601 = (.seq input1600 input1445) := by
  unfold input1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1601 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1600 output1445)).val
theorem output1601_def : output1601 = (.seq output1600 output1445) := by
  unfold output1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1601_skip : Flapjack.WordAlloc.isSkip output1601 = false := by
  rw [output1601_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1601 input1444)).val
theorem input1602_def : input1602 = (.seq input1601 input1444) := by
  unfold input1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1602 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1601 output1444)).val
theorem output1602_def : output1602 = (.seq output1601 output1444) := by
  unfold output1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1602_skip : Flapjack.WordAlloc.isSkip output1602 = false := by
  rw [output1602_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1602 input1443)).val
theorem input1603_def : input1603 = (.seq input1602 input1443) := by
  unfold input1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1603 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1602 output1443)).val
theorem output1603_def : output1603 = (.seq output1602 output1443) := by
  unfold output1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1603_skip : Flapjack.WordAlloc.isSkip output1603 = false := by
  rw [output1603_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1603 input1440)).val
theorem input1604_def : input1604 = (.seq input1603 input1440) := by
  unfold input1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1604 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1603 output1440)).val
theorem output1604_def : output1604 = (.seq output1603 output1440) := by
  unfold output1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1604_skip : Flapjack.WordAlloc.isSkip output1604 = false := by
  rw [output1604_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1605_def : input1605 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1605 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1605_def : output1605 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1605_skip : Flapjack.WordAlloc.isSkip output1605 = true := by
  rw [output1605_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(725, 465), (721, 485), (717, 457), (713, 493), (709, 449), (705, 469), (701, 489)])).val
theorem input1606_def : input1606 = (Flapjack.WordLangProgHOL.move 2 [(725, 465), (721, 485), (717, 457), (713, 493), (709, 449), (705, 469), (701, 489)]) := by
  unfold input1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1606 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(717, 457), (709, 449)])).val
theorem output1606_def : output1606 = (Flapjack.WordLangProgHOL.move 2 [(717, 457), (709, 449)]) := by
  unfold output1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1606_skip : Flapjack.WordAlloc.isSkip output1606 = false := by
  rw [output1606_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1606 input1605)).val
theorem input1607_def : input1607 = (.seq input1606 input1605) := by
  unfold input1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1607 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1606)).val
theorem output1607_def : output1607 = (output1606) := by
  unfold output1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1607_skip : Flapjack.WordAlloc.isSkip output1607 = false := by
  rw [output1607_def]
  exact output1606_skip


@[irreducible, cbv_opaque] def input1608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1608_def : input1608 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1608 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1608_def : output1608 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1608_skip : Flapjack.WordAlloc.isSkip output1608 = true := by
  rw [output1608_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1608 input1607)).val
theorem input1609_def : input1609 = (.seq input1608 input1607) := by
  unfold input1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1609 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1607)).val
theorem output1609_def : output1609 = (output1607) := by
  unfold output1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1609_skip : Flapjack.WordAlloc.isSkip output1609 = false := by
  rw [output1609_def]
  exact output1607_skip


def value386 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 493

def value387 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value348 489 value386 input1604 input1609)).val
theorem input1610_def : input1610 = (.ite value348 489 value386 input1604 input1609) := by
  unfold input1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1610 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value348 489 value386 output1604 output1609)).val
theorem output1610_def : output1610 = (.ite value348 489 value386 output1604 output1609) := by
  unfold output1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1610_skip : Flapjack.WordAlloc.isSkip output1610 = false := by
  rw [output1610_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1610 input1437)).val
theorem input1611_def : input1611 = (.seq input1610 input1437) := by
  unfold input1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1611 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1610 output1437)).val
theorem output1611_def : output1611 = (.seq output1610 output1437) := by
  unfold output1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1611_skip : Flapjack.WordAlloc.isSkip output1611 = false := by
  rw [output1611_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 32#64))).val
theorem input1612_def : input1612 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 32#64)) := by
  unfold input1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1612 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 32#64))).val
theorem output1612_def : output1612 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 32#64)) := by
  unfold output1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1612_skip : Flapjack.WordAlloc.isSkip output1612 = false := by
  rw [output1612_def]
  kernel_rfl


def value388 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(489, 73)])).val
theorem input1613_def : input1613 = (Flapjack.WordLangProgHOL.move 0 [(489, 73)]) := by
  unfold input1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1613 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(489, 73)])).val
theorem output1613_def : output1613 = (Flapjack.WordLangProgHOL.move 0 [(489, 73)]) := by
  unfold output1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1613_skip : Flapjack.WordAlloc.isSkip output1613 = false := by
  rw [output1613_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1614_def : input1614 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1614 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1614_def : output1614 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1614_skip : Flapjack.WordAlloc.isSkip output1614 = false := by
  rw [output1614_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 485 0#64))).val
theorem input1615_def : input1615 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 485 0#64)) := by
  unfold input1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1615 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1615_def : output1615 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1615_skip : Flapjack.WordAlloc.isSkip output1615 = true := by
  rw [output1615_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1616_def : input1616 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1616 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1616_def : output1616 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1616_skip : Flapjack.WordAlloc.isSkip output1616 = false := by
  rw [output1616_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64))).val
theorem input1617_def : input1617 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 481 0#64)) := by
  unfold input1617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1617 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1617_def : output1617 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1617_skip : Flapjack.WordAlloc.isSkip output1617 = true := by
  rw [output1617_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1617 input1616)).val
theorem input1618_def : input1618 = (.seq input1617 input1616) := by
  unfold input1618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1618 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1616)).val
theorem output1618_def : output1618 = (output1616) := by
  unfold output1618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1618_skip : Flapjack.WordAlloc.isSkip output1618 = false := by
  rw [output1618_def]
  exact output1616_skip


@[irreducible, cbv_opaque] def input1619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1618 input1615)).val
theorem input1619_def : input1619 = (.seq input1618 input1615) := by
  unfold input1619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1619 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1618)).val
theorem output1619_def : output1619 = (output1618) := by
  unfold output1619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1619_skip : Flapjack.WordAlloc.isSkip output1619 = false := by
  rw [output1619_def]
  exact output1618_skip


@[irreducible, cbv_opaque] def input1620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(477, 405)])).val
theorem input1620_def : input1620 = (Flapjack.WordLangProgHOL.move 1 [(477, 405)]) := by
  unfold input1620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1620 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1620_def : output1620 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1620_skip : Flapjack.WordAlloc.isSkip output1620 = true := by
  rw [output1620_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(473, 437)])).val
theorem input1621_def : input1621 = (Flapjack.WordLangProgHOL.move 1 [(473, 437)]) := by
  unfold input1621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1621 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1621_def : output1621 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1621_skip : Flapjack.WordAlloc.isSkip output1621 = true := by
  rw [output1621_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(469, 441)])).val
theorem input1622_def : input1622 = (Flapjack.WordLangProgHOL.move 1 [(469, 441)]) := by
  unfold input1622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1622 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1622_def : output1622 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1622_skip : Flapjack.WordAlloc.isSkip output1622 = true := by
  rw [output1622_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1623_def : input1623 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1623 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1623_def : output1623 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1623_skip : Flapjack.WordAlloc.isSkip output1623 = true := by
  rw [output1623_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1623 input1622)).val
theorem input1624_def : input1624 = (.seq input1623 input1622) := by
  unfold input1624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1624 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1622)).val
theorem output1624_def : output1624 = (output1622) := by
  unfold output1624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1624_skip : Flapjack.WordAlloc.isSkip output1624 = true := by
  rw [output1624_def]
  exact output1622_skip


@[irreducible, cbv_opaque] def input1625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1624 input1621)).val
theorem input1625_def : input1625 = (.seq input1624 input1621) := by
  unfold input1625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1625 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1621)).val
theorem output1625_def : output1625 = (output1621) := by
  unfold output1625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1625_skip : Flapjack.WordAlloc.isSkip output1625 = true := by
  rw [output1625_def]
  exact output1621_skip


@[irreducible, cbv_opaque] def input1626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1625 input1620)).val
theorem input1626_def : input1626 = (.seq input1625 input1620) := by
  unfold input1626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1626 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1620)).val
theorem output1626_def : output1626 = (output1620) := by
  unfold output1626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1626_skip : Flapjack.WordAlloc.isSkip output1626 = true := by
  rw [output1626_def]
  exact output1620_skip


def value389 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(465, 389), (461, 433), (457, 389), (453, 149), (449, 377), (445, 405)])).val
theorem input1627_def : input1627 = (Flapjack.WordLangProgHOL.move 1 [(465, 389), (461, 433), (457, 389), (453, 149), (449, 377), (445, 405)]) := by
  unfold input1627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1627 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(457, 389), (449, 377)])).val
theorem output1627_def : output1627 = (Flapjack.WordLangProgHOL.move 1 [(457, 389), (449, 377)]) := by
  unfold output1627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1627_skip : Flapjack.WordAlloc.isSkip output1627 = false := by
  rw [output1627_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1627 input1626)).val
theorem input1628_def : input1628 = (.seq input1627 input1626) := by
  unfold input1628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1628 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1627)).val
theorem output1628_def : output1628 = (output1627) := by
  unfold output1628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1628_skip : Flapjack.WordAlloc.isSkip output1628 = false := by
  rw [output1628_def]
  exact output1627_skip


def value390 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem input1629_def : input1629 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold input1629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1629 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem output1629_def : output1629 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold output1629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1629_skip : Flapjack.WordAlloc.isSkip output1629 = false := by
  rw [output1629_def]
  kernel_rfl


def value391 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 441)])).val
theorem input1630_def : input1630 = (Flapjack.WordLangProgHOL.move 0 [(2, 441)]) := by
  unfold input1630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1630 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 441)])).val
theorem output1630_def : output1630 = (Flapjack.WordLangProgHOL.move 0 [(2, 441)]) := by
  unfold output1630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1630_skip : Flapjack.WordAlloc.isSkip output1630 = false := by
  rw [output1630_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1630 input1629)).val
theorem input1631_def : input1631 = (.seq input1630 input1629) := by
  unfold input1631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1631 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1630 output1629)).val
theorem output1631_def : output1631 = (.seq output1630 output1629) := by
  unfold output1631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1631_skip : Flapjack.WordAlloc.isSkip output1631 = false := by
  rw [output1631_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 1#64))).val
theorem input1632_def : input1632 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 1#64)) := by
  unfold input1632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1632 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 1#64))).val
theorem output1632_def : output1632 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 441 1#64)) := by
  unfold output1632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1632_skip : Flapjack.WordAlloc.isSkip output1632 = false := by
  rw [output1632_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1633_def : input1633 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1633 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1633_def : output1633 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1633_skip : Flapjack.WordAlloc.isSkip output1633 = false := by
  rw [output1633_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 437 0#64))).val
theorem input1634_def : input1634 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 437 0#64)) := by
  unfold input1634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1634 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1634_def : output1634 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1634_skip : Flapjack.WordAlloc.isSkip output1634 = true := by
  rw [output1634_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1635_def : input1635 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1635 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1635_def : output1635 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1635_skip : Flapjack.WordAlloc.isSkip output1635 = false := by
  rw [output1635_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64))).val
theorem input1636_def : input1636 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 433 0#64)) := by
  unfold input1636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1636 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1636_def : output1636 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1636_skip : Flapjack.WordAlloc.isSkip output1636 = true := by
  rw [output1636_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1636 input1635)).val
theorem input1637_def : input1637 = (.seq input1636 input1635) := by
  unfold input1637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1637 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1635)).val
theorem output1637_def : output1637 = (output1635) := by
  unfold output1637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1637_skip : Flapjack.WordAlloc.isSkip output1637 = false := by
  rw [output1637_def]
  exact output1635_skip


@[irreducible, cbv_opaque] def input1638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1637 input1634)).val
theorem input1638_def : input1638 = (.seq input1637 input1634) := by
  unfold input1638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1638 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1637)).val
theorem output1638_def : output1638 = (output1637) := by
  unfold output1638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1638_skip : Flapjack.WordAlloc.isSkip output1638 = false := by
  rw [output1638_def]
  exact output1637_skip


@[irreducible, cbv_opaque] def input1639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1639_def : input1639 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1639 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1639_def : output1639 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1639_skip : Flapjack.WordAlloc.isSkip output1639 = true := by
  rw [output1639_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(429, 409), (425, 413), (421, 417)])).val
theorem input1640_def : input1640 = (Flapjack.WordLangProgHOL.move 1 [(429, 409), (425, 413), (421, 417)]) := by
  unfold input1640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1640 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1640_def : output1640 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1640_skip : Flapjack.WordAlloc.isSkip output1640 = true := by
  rw [output1640_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1640 input1639)).val
theorem input1641_def : input1641 = (.seq input1640 input1639) := by
  unfold input1641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1641 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1639)).val
theorem output1641_def : output1641 = (output1639) := by
  unfold output1641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1641_skip : Flapjack.WordAlloc.isSkip output1641 = true := by
  rw [output1641_def]
  exact output1639_skip


@[irreducible, cbv_opaque] def input1642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem input1642_def : input1642 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold input1642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1642 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem output1642_def : output1642 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold output1642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1642_skip : Flapjack.WordAlloc.isSkip output1642 = false := by
  rw [output1642_def]
  kernel_rfl


def value392 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 417)])).val
theorem input1643_def : input1643 = (Flapjack.WordLangProgHOL.move 0 [(2, 417)]) := by
  unfold input1643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1643 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 417)])).val
theorem output1643_def : output1643 = (Flapjack.WordLangProgHOL.move 0 [(2, 417)]) := by
  unfold output1643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1643_skip : Flapjack.WordAlloc.isSkip output1643 = false := by
  rw [output1643_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1643 input1642)).val
theorem input1644_def : input1644 = (.seq input1643 input1642) := by
  unfold input1644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1644 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1643 output1642)).val
theorem output1644_def : output1644 = (.seq output1643 output1642) := by
  unfold output1644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1644_skip : Flapjack.WordAlloc.isSkip output1644 = false := by
  rw [output1644_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 0#64))).val
theorem input1645_def : input1645 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 0#64)) := by
  unfold input1645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1645 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 0#64))).val
theorem output1645_def : output1645 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 417 0#64)) := by
  unfold output1645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1645_skip : Flapjack.WordAlloc.isSkip output1645 = false := by
  rw [output1645_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 1#64))).val
theorem input1646_def : input1646 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 413 1#64)) := by
  unfold input1646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1646 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1646_def : output1646 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1646_skip : Flapjack.WordAlloc.isSkip output1646 = true := by
  rw [output1646_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1647_def : input1647 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1647 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1647_def : output1647 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1647_skip : Flapjack.WordAlloc.isSkip output1647 = false := by
  rw [output1647_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 1#64))).val
theorem input1648_def : input1648 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 409 1#64)) := by
  unfold input1648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1648 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1648_def : output1648 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1648_skip : Flapjack.WordAlloc.isSkip output1648 = true := by
  rw [output1648_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1648 input1647)).val
theorem input1649_def : input1649 = (.seq input1648 input1647) := by
  unfold input1649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1649 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1647)).val
theorem output1649_def : output1649 = (output1647) := by
  unfold output1649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1649_skip : Flapjack.WordAlloc.isSkip output1649 = false := by
  rw [output1649_def]
  exact output1647_skip


@[irreducible, cbv_opaque] def input1650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1649 input1646)).val
theorem input1650_def : input1650 = (.seq input1649 input1646) := by
  unfold input1650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1650 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1649)).val
theorem output1650_def : output1650 = (output1649) := by
  unfold output1650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1650_skip : Flapjack.WordAlloc.isSkip output1650 = false := by
  rw [output1650_def]
  exact output1649_skip


@[irreducible, cbv_opaque] def input1651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1650 input1645)).val
theorem input1651_def : input1651 = (.seq input1650 input1645) := by
  unfold input1651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1651 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1650 output1645)).val
theorem output1651_def : output1651 = (.seq output1650 output1645) := by
  unfold output1651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1651_skip : Flapjack.WordAlloc.isSkip output1651 = false := by
  rw [output1651_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1651 input1644)).val
theorem input1652_def : input1652 = (.seq input1651 input1644) := by
  unfold input1652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1652 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1651 output1644)).val
theorem output1652_def : output1652 = (.seq output1651 output1644) := by
  unfold output1652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1652_skip : Flapjack.WordAlloc.isSkip output1652 = false := by
  rw [output1652_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1652 input1641)).val
theorem input1653_def : input1653 = (.seq input1652 input1641) := by
  unfold input1653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1653 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1652)).val
theorem output1653_def : output1653 = (output1652) := by
  unfold output1653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1653_skip : Flapjack.WordAlloc.isSkip output1653 = false := by
  rw [output1653_def]
  exact output1652_skip


@[irreducible, cbv_opaque] def input1654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1654_def : input1654 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1654 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1654_def : output1654 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1654_skip : Flapjack.WordAlloc.isSkip output1654 = true := by
  rw [output1654_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(429, 401), (425, 373), (421, 401)])).val
theorem input1655_def : input1655 = (Flapjack.WordLangProgHOL.move 2 [(429, 401), (425, 373), (421, 401)]) := by
  unfold input1655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1655 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1655_def : output1655 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1655_skip : Flapjack.WordAlloc.isSkip output1655 = true := by
  rw [output1655_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1655 input1654)).val
theorem input1656_def : input1656 = (.seq input1655 input1654) := by
  unfold input1656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1656 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1654)).val
theorem output1656_def : output1656 = (output1654) := by
  unfold output1656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1656_skip : Flapjack.WordAlloc.isSkip output1656 = true := by
  rw [output1656_def]
  exact output1654_skip


@[irreducible, cbv_opaque] def input1657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1657_def : input1657 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1657 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1657_def : output1657 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1657_skip : Flapjack.WordAlloc.isSkip output1657 = true := by
  rw [output1657_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1657 input1656)).val
theorem input1658_def : input1658 = (.seq input1657 input1656) := by
  unfold input1658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1658 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1656)).val
theorem output1658_def : output1658 = (output1656) := by
  unfold output1658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1658_skip : Flapjack.WordAlloc.isSkip output1658 = true := by
  rw [output1658_def]
  exact output1656_skip


def value393 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 405

def value394 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 401 value393 input1653 input1658)).val
theorem input1659_def : input1659 = (.ite value15 401 value393 input1653 input1658) := by
  unfold input1659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1659 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 401 value393 output1653 output1658)).val
theorem output1659_def : output1659 = (.ite value15 401 value393 output1653 output1658) := by
  unfold output1659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1659_skip : Flapjack.WordAlloc.isSkip output1659 = false := by
  rw [output1659_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1659 input1638)).val
theorem input1660_def : input1660 = (.seq input1659 input1638) := by
  unfold input1660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1660 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1659 output1638)).val
theorem output1660_def : output1660 = (.seq output1659 output1638) := by
  unfold output1660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1660_skip : Flapjack.WordAlloc.isSkip output1660 = false := by
  rw [output1660_def]
  kernel_rfl


def value395 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(405, 397)])).val
theorem input1661_def : input1661 = (Flapjack.WordLangProgHOL.move 0 [(405, 397)]) := by
  unfold input1661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1661 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(405, 397)])).val
theorem output1661_def : output1661 = (Flapjack.WordLangProgHOL.move 0 [(405, 397)]) := by
  unfold output1661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1661_skip : Flapjack.WordAlloc.isSkip output1661 = false := by
  rw [output1661_def]
  kernel_rfl


def value396 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(401, 385)])).val
theorem input1662_def : input1662 = (Flapjack.WordLangProgHOL.move 0 [(401, 385)]) := by
  unfold input1662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1662 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(401, 385)])).val
theorem output1662_def : output1662 = (Flapjack.WordLangProgHOL.move 0 [(401, 385)]) := by
  unfold output1662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1662_skip : Flapjack.WordAlloc.isSkip output1662 = false := by
  rw [output1662_def]
  kernel_rfl


def value397 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 397 (Flapjack.WordLangAddr.addr 393 0#64)))).val
theorem input1663_def : input1663 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 397 (Flapjack.WordLangAddr.addr 393 0#64))) := by
  unfold input1663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1663 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 397 (Flapjack.WordLangAddr.addr 393 0#64)))).val
theorem output1663_def : output1663 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 397 (Flapjack.WordLangAddr.addr 393 0#64))) := by
  unfold output1663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1663_skip : Flapjack.WordAlloc.isSkip output1663 = false := by
  rw [output1663_def]
  kernel_rfl


def value398 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 393 389 (Flapjack.WordRegImm.imm 19#64))))).val
theorem input1664_def : input1664 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 393 389 (Flapjack.WordRegImm.imm 19#64)))) := by
  unfold input1664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1664 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 393 389 (Flapjack.WordRegImm.imm 19#64))))).val
theorem output1664_def : output1664 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 393 389 (Flapjack.WordRegImm.imm 19#64)))) := by
  unfold output1664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1664_skip : Flapjack.WordAlloc.isSkip output1664 = false := by
  rw [output1664_def]
  kernel_rfl


def value399 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(389, 325)])).val
theorem input1665_def : input1665 = (Flapjack.WordLangProgHOL.move 0 [(389, 325)]) := by
  unfold input1665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1665 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(389, 325)])).val
theorem output1665_def : output1665 = (Flapjack.WordLangProgHOL.move 0 [(389, 325)]) := by
  unfold output1665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1665_skip : Flapjack.WordAlloc.isSkip output1665 = false := by
  rw [output1665_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1665 input1664)).val
theorem input1666_def : input1666 = (.seq input1665 input1664) := by
  unfold input1666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1666 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1665 output1664)).val
theorem output1666_def : output1666 = (.seq output1665 output1664) := by
  unfold output1666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1666_skip : Flapjack.WordAlloc.isSkip output1666 = false := by
  rw [output1666_def]
  kernel_rfl


def value400 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 385 (Flapjack.WordLangAddr.addr 381 0#64)))).val
theorem input1667_def : input1667 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 385 (Flapjack.WordLangAddr.addr 381 0#64))) := by
  unfold input1667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1667 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 385 (Flapjack.WordLangAddr.addr 381 0#64)))).val
theorem output1667_def : output1667 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 385 (Flapjack.WordLangAddr.addr 381 0#64))) := by
  unfold output1667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1667_skip : Flapjack.WordAlloc.isSkip output1667 = false := by
  rw [output1667_def]
  kernel_rfl


def value401 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 381 377 (Flapjack.WordRegImm.imm 19#64))))).val
theorem input1668_def : input1668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 381 377 (Flapjack.WordRegImm.imm 19#64)))) := by
  unfold input1668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1668 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 381 377 (Flapjack.WordRegImm.imm 19#64))))).val
theorem output1668_def : output1668 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 381 377 (Flapjack.WordRegImm.imm 19#64)))) := by
  unfold output1668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1668_skip : Flapjack.WordAlloc.isSkip output1668 = false := by
  rw [output1668_def]
  kernel_rfl


def value402 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(377, 313)])).val
theorem input1669_def : input1669 = (Flapjack.WordLangProgHOL.move 0 [(377, 313)]) := by
  unfold input1669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1669 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(377, 313)])).val
theorem output1669_def : output1669 = (Flapjack.WordLangProgHOL.move 0 [(377, 313)]) := by
  unfold output1669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1669_skip : Flapjack.WordAlloc.isSkip output1669 = false := by
  rw [output1669_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1669 input1668)).val
theorem input1670_def : input1670 = (.seq input1669 input1668) := by
  unfold input1670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1670 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1669 output1668)).val
theorem output1670_def : output1670 = (.seq output1669 output1668) := by
  unfold output1670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1670_skip : Flapjack.WordAlloc.isSkip output1670 = false := by
  rw [output1670_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1671_def : input1671 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1671 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1671_def : output1671 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1671_skip : Flapjack.WordAlloc.isSkip output1671 = false := by
  rw [output1671_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 0#64))).val
theorem input1672_def : input1672 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 373 0#64)) := by
  unfold input1672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1672 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1672_def : output1672 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1672_skip : Flapjack.WordAlloc.isSkip output1672 = true := by
  rw [output1672_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1673_def : input1673 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1673 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1673_def : output1673 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1673_skip : Flapjack.WordAlloc.isSkip output1673 = false := by
  rw [output1673_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64))).val
theorem input1674_def : input1674 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 369 0#64)) := by
  unfold input1674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1674 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1674_def : output1674 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1674_skip : Flapjack.WordAlloc.isSkip output1674 = true := by
  rw [output1674_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1674 input1673)).val
theorem input1675_def : input1675 = (.seq input1674 input1673) := by
  unfold input1675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1675 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1673)).val
theorem output1675_def : output1675 = (output1673) := by
  unfold output1675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1675_skip : Flapjack.WordAlloc.isSkip output1675 = false := by
  rw [output1675_def]
  exact output1673_skip


@[irreducible, cbv_opaque] def input1676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1675 input1672)).val
theorem input1676_def : input1676 = (.seq input1675 input1672) := by
  unfold input1676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1676 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1675)).val
theorem output1676_def : output1676 = (output1675) := by
  unfold output1676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1676_skip : Flapjack.WordAlloc.isSkip output1676 = false := by
  rw [output1676_def]
  exact output1675_skip


@[irreducible, cbv_opaque] def input1677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1677_def : input1677 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1677 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1677_def : output1677 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1677_skip : Flapjack.WordAlloc.isSkip output1677 = true := by
  rw [output1677_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(365, 345), (361, 349), (357, 353)])).val
theorem input1678_def : input1678 = (Flapjack.WordLangProgHOL.move 1 [(365, 345), (361, 349), (357, 353)]) := by
  unfold input1678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1678 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1678_def : output1678 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1678_skip : Flapjack.WordAlloc.isSkip output1678 = true := by
  rw [output1678_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1678 input1677)).val
theorem input1679_def : input1679 = (.seq input1678 input1677) := by
  unfold input1679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1679 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1677)).val
theorem output1679_def : output1679 = (output1677) := by
  unfold output1679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1679_skip : Flapjack.WordAlloc.isSkip output1679 = true := by
  rw [output1679_def]
  exact output1677_skip


def value403 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem input1680_def : input1680 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold input1680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1680 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem output1680_def : output1680 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold output1680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1680_skip : Flapjack.WordAlloc.isSkip output1680 = false := by
  rw [output1680_def]
  kernel_rfl


def value404 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 353)])).val
theorem input1681_def : input1681 = (Flapjack.WordLangProgHOL.move 0 [(2, 353)]) := by
  unfold input1681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1681 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 353)])).val
theorem output1681_def : output1681 = (Flapjack.WordLangProgHOL.move 0 [(2, 353)]) := by
  unfold output1681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1681_skip : Flapjack.WordAlloc.isSkip output1681 = false := by
  rw [output1681_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1681 input1680)).val
theorem input1682_def : input1682 = (.seq input1681 input1680) := by
  unfold input1682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1682 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1681 output1680)).val
theorem output1682_def : output1682 = (.seq output1681 output1680) := by
  unfold output1682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1682_skip : Flapjack.WordAlloc.isSkip output1682 = false := by
  rw [output1682_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64))).val
theorem input1683_def : input1683 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64)) := by
  unfold input1683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1683 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64))).val
theorem output1683_def : output1683 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 353 0#64)) := by
  unfold output1683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1683_skip : Flapjack.WordAlloc.isSkip output1683 = false := by
  rw [output1683_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 1#64))).val
theorem input1684_def : input1684 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 349 1#64)) := by
  unfold input1684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1684 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1684_def : output1684 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1684_skip : Flapjack.WordAlloc.isSkip output1684 = true := by
  rw [output1684_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1685_def : input1685 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1685 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1685_def : output1685 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1685_skip : Flapjack.WordAlloc.isSkip output1685 = false := by
  rw [output1685_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 345 1#64))).val
theorem input1686_def : input1686 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 345 1#64)) := by
  unfold input1686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1686 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1686_def : output1686 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1686_skip : Flapjack.WordAlloc.isSkip output1686 = true := by
  rw [output1686_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1686 input1685)).val
theorem input1687_def : input1687 = (.seq input1686 input1685) := by
  unfold input1687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1687 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1685)).val
theorem output1687_def : output1687 = (output1685) := by
  unfold output1687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1687_skip : Flapjack.WordAlloc.isSkip output1687 = false := by
  rw [output1687_def]
  exact output1685_skip


@[irreducible, cbv_opaque] def input1688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1687 input1684)).val
theorem input1688_def : input1688 = (.seq input1687 input1684) := by
  unfold input1688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1688 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1687)).val
theorem output1688_def : output1688 = (output1687) := by
  unfold output1688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1688_skip : Flapjack.WordAlloc.isSkip output1688 = false := by
  rw [output1688_def]
  exact output1687_skip


@[irreducible, cbv_opaque] def input1689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1688 input1683)).val
theorem input1689_def : input1689 = (.seq input1688 input1683) := by
  unfold input1689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1689 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1688 output1683)).val
theorem output1689_def : output1689 = (.seq output1688 output1683) := by
  unfold output1689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1689_skip : Flapjack.WordAlloc.isSkip output1689 = false := by
  rw [output1689_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1689 input1682)).val
theorem input1690_def : input1690 = (.seq input1689 input1682) := by
  unfold input1690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1690 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1689 output1682)).val
theorem output1690_def : output1690 = (.seq output1689 output1682) := by
  unfold output1690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1690_skip : Flapjack.WordAlloc.isSkip output1690 = false := by
  rw [output1690_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1690 input1679)).val
theorem input1691_def : input1691 = (.seq input1690 input1679) := by
  unfold input1691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1691 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1690)).val
theorem output1691_def : output1691 = (output1690) := by
  unfold output1691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1691_skip : Flapjack.WordAlloc.isSkip output1691 = false := by
  rw [output1691_def]
  exact output1690_skip


@[irreducible, cbv_opaque] def input1692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1692_def : input1692 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1692 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1692_def : output1692 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1692_skip : Flapjack.WordAlloc.isSkip output1692 = true := by
  rw [output1692_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(365, 337), (361, 309), (357, 337)])).val
theorem input1693_def : input1693 = (Flapjack.WordLangProgHOL.move 2 [(365, 337), (361, 309), (357, 337)]) := by
  unfold input1693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1693 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1693_def : output1693 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1693_skip : Flapjack.WordAlloc.isSkip output1693 = true := by
  rw [output1693_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1693 input1692)).val
theorem input1694_def : input1694 = (.seq input1693 input1692) := by
  unfold input1694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1694 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1692)).val
theorem output1694_def : output1694 = (output1692) := by
  unfold output1694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1694_skip : Flapjack.WordAlloc.isSkip output1694 = true := by
  rw [output1694_def]
  exact output1692_skip


@[irreducible, cbv_opaque] def input1695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1695_def : input1695 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1695 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1695_def : output1695 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1695_skip : Flapjack.WordAlloc.isSkip output1695 = true := by
  rw [output1695_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1695 input1694)).val
theorem input1696_def : input1696 = (.seq input1695 input1694) := by
  unfold input1696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1696 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1694)).val
theorem output1696_def : output1696 = (output1694) := by
  unfold output1696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1696_skip : Flapjack.WordAlloc.isSkip output1696 = true := by
  rw [output1696_def]
  exact output1694_skip


def value405 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 341

def value406 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 337 value405 input1691 input1696)).val
theorem input1697_def : input1697 = (.ite value15 337 value405 input1691 input1696) := by
  unfold input1697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1697 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 337 value405 output1691 output1696)).val
theorem output1697_def : output1697 = (.ite value15 337 value405 output1691 output1696) := by
  unfold output1697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1697_skip : Flapjack.WordAlloc.isSkip output1697 = false := by
  rw [output1697_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1697 input1676)).val
theorem input1698_def : input1698 = (.seq input1697 input1676) := by
  unfold input1698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1698 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1697 output1676)).val
theorem output1698_def : output1698 = (.seq output1697 output1676) := by
  unfold output1698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1698_skip : Flapjack.WordAlloc.isSkip output1698 = false := by
  rw [output1698_def]
  kernel_rfl


def value407 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(341, 333)])).val
theorem input1699_def : input1699 = (Flapjack.WordLangProgHOL.move 0 [(341, 333)]) := by
  unfold input1699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1699 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(341, 333)])).val
theorem output1699_def : output1699 = (Flapjack.WordLangProgHOL.move 0 [(341, 333)]) := by
  unfold output1699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1699_skip : Flapjack.WordAlloc.isSkip output1699 = false := by
  rw [output1699_def]
  kernel_rfl


def value408 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(337, 321)])).val
theorem input1700_def : input1700 = (Flapjack.WordLangProgHOL.move 0 [(337, 321)]) := by
  unfold input1700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1700 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(337, 321)])).val
theorem output1700_def : output1700 = (Flapjack.WordLangProgHOL.move 0 [(337, 321)]) := by
  unfold output1700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1700_skip : Flapjack.WordAlloc.isSkip output1700 = false := by
  rw [output1700_def]
  kernel_rfl


def value409 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 333 (Flapjack.WordLangAddr.addr 329 0#64)))).val
theorem input1701_def : input1701 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 333 (Flapjack.WordLangAddr.addr 329 0#64))) := by
  unfold input1701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1701 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 333 (Flapjack.WordLangAddr.addr 329 0#64)))).val
theorem output1701_def : output1701 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 333 (Flapjack.WordLangAddr.addr 329 0#64))) := by
  unfold output1701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1701_skip : Flapjack.WordAlloc.isSkip output1701 = false := by
  rw [output1701_def]
  kernel_rfl


def value410 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 329 325 (Flapjack.WordRegImm.imm 18#64))))).val
theorem input1702_def : input1702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 329 325 (Flapjack.WordRegImm.imm 18#64)))) := by
  unfold input1702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1702 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 329 325 (Flapjack.WordRegImm.imm 18#64))))).val
theorem output1702_def : output1702 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 329 325 (Flapjack.WordRegImm.imm 18#64)))) := by
  unfold output1702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1702_skip : Flapjack.WordAlloc.isSkip output1702 = false := by
  rw [output1702_def]
  kernel_rfl


def value411 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(325, 261)])).val
theorem input1703_def : input1703 = (Flapjack.WordLangProgHOL.move 0 [(325, 261)]) := by
  unfold input1703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1703 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(325, 261)])).val
theorem output1703_def : output1703 = (Flapjack.WordLangProgHOL.move 0 [(325, 261)]) := by
  unfold output1703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1703_skip : Flapjack.WordAlloc.isSkip output1703 = false := by
  rw [output1703_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1703 input1702)).val
theorem input1704_def : input1704 = (.seq input1703 input1702) := by
  unfold input1704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1704 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1703 output1702)).val
theorem output1704_def : output1704 = (.seq output1703 output1702) := by
  unfold output1704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1704_skip : Flapjack.WordAlloc.isSkip output1704 = false := by
  rw [output1704_def]
  kernel_rfl


def value412 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 321 (Flapjack.WordLangAddr.addr 317 0#64)))).val
theorem input1705_def : input1705 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 321 (Flapjack.WordLangAddr.addr 317 0#64))) := by
  unfold input1705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1705 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 321 (Flapjack.WordLangAddr.addr 317 0#64)))).val
theorem output1705_def : output1705 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 321 (Flapjack.WordLangAddr.addr 317 0#64))) := by
  unfold output1705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1705_skip : Flapjack.WordAlloc.isSkip output1705 = false := by
  rw [output1705_def]
  kernel_rfl


def value413 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln)
          PUnit.unit (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 317 313 (Flapjack.WordRegImm.imm 18#64))))).val
theorem input1706_def : input1706 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 317 313 (Flapjack.WordRegImm.imm 18#64)))) := by
  unfold input1706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1706 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 317 313 (Flapjack.WordRegImm.imm 18#64))))).val
theorem output1706_def : output1706 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 317 313 (Flapjack.WordRegImm.imm 18#64)))) := by
  unfold output1706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1706_skip : Flapjack.WordAlloc.isSkip output1706 = false := by
  rw [output1706_def]
  kernel_rfl


def value414 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(313, 249)])).val
theorem input1707_def : input1707 = (Flapjack.WordLangProgHOL.move 0 [(313, 249)]) := by
  unfold input1707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1707 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(313, 249)])).val
theorem output1707_def : output1707 = (Flapjack.WordLangProgHOL.move 0 [(313, 249)]) := by
  unfold output1707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1707_skip : Flapjack.WordAlloc.isSkip output1707 = false := by
  rw [output1707_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1707 input1706)).val
theorem input1708_def : input1708 = (.seq input1707 input1706) := by
  unfold input1708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1708 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1707 output1706)).val
theorem output1708_def : output1708 = (.seq output1707 output1706) := by
  unfold output1708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1708_skip : Flapjack.WordAlloc.isSkip output1708 = false := by
  rw [output1708_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1709_def : input1709 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1709 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1709_def : output1709 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1709_skip : Flapjack.WordAlloc.isSkip output1709 = false := by
  rw [output1709_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 0#64))).val
theorem input1710_def : input1710 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 309 0#64)) := by
  unfold input1710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1710 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1710_def : output1710 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1710_skip : Flapjack.WordAlloc.isSkip output1710 = true := by
  rw [output1710_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1711_def : input1711 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1711 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1711_def : output1711 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1711_skip : Flapjack.WordAlloc.isSkip output1711 = false := by
  rw [output1711_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 0#64))).val
theorem input1712_def : input1712 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 305 0#64)) := by
  unfold input1712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1712 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1712_def : output1712 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1712_skip : Flapjack.WordAlloc.isSkip output1712 = true := by
  rw [output1712_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1712 input1711)).val
theorem input1713_def : input1713 = (.seq input1712 input1711) := by
  unfold input1713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1713 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1711)).val
theorem output1713_def : output1713 = (output1711) := by
  unfold output1713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1713_skip : Flapjack.WordAlloc.isSkip output1713 = false := by
  rw [output1713_def]
  exact output1711_skip


@[irreducible, cbv_opaque] def input1714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1713 input1710)).val
theorem input1714_def : input1714 = (.seq input1713 input1710) := by
  unfold input1714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1714 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1713)).val
theorem output1714_def : output1714 = (output1713) := by
  unfold output1714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1714_skip : Flapjack.WordAlloc.isSkip output1714 = false := by
  rw [output1714_def]
  exact output1713_skip


@[irreducible, cbv_opaque] def input1715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1715_def : input1715 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1715 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1715_def : output1715 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1715_skip : Flapjack.WordAlloc.isSkip output1715 = true := by
  rw [output1715_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(301, 281), (297, 285), (293, 289)])).val
theorem input1716_def : input1716 = (Flapjack.WordLangProgHOL.move 1 [(301, 281), (297, 285), (293, 289)]) := by
  unfold input1716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1716 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1716_def : output1716 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1716_skip : Flapjack.WordAlloc.isSkip output1716 = true := by
  rw [output1716_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1716 input1715)).val
theorem input1717_def : input1717 = (.seq input1716 input1715) := by
  unfold input1717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1717 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1715)).val
theorem output1717_def : output1717 = (output1715) := by
  unfold output1717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1717_skip : Flapjack.WordAlloc.isSkip output1717 = true := by
  rw [output1717_def]
  exact output1715_skip


def value415 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem input1718_def : input1718 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold input1718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1718 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem output1718_def : output1718 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold output1718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1718_skip : Flapjack.WordAlloc.isSkip output1718 = false := by
  rw [output1718_def]
  kernel_rfl


def value416 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 289)])).val
theorem input1719_def : input1719 = (Flapjack.WordLangProgHOL.move 0 [(2, 289)]) := by
  unfold input1719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1719 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 289)])).val
theorem output1719_def : output1719 = (Flapjack.WordLangProgHOL.move 0 [(2, 289)]) := by
  unfold output1719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1719_skip : Flapjack.WordAlloc.isSkip output1719 = false := by
  rw [output1719_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1719 input1718)).val
theorem input1720_def : input1720 = (.seq input1719 input1718) := by
  unfold input1720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1720 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1719 output1718)).val
theorem output1720_def : output1720 = (.seq output1719 output1718) := by
  unfold output1720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1720_skip : Flapjack.WordAlloc.isSkip output1720 = false := by
  rw [output1720_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 0#64))).val
theorem input1721_def : input1721 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 0#64)) := by
  unfold input1721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1721 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 0#64))).val
theorem output1721_def : output1721 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 289 0#64)) := by
  unfold output1721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1721_skip : Flapjack.WordAlloc.isSkip output1721 = false := by
  rw [output1721_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 1#64))).val
theorem input1722_def : input1722 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 285 1#64)) := by
  unfold input1722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1722 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1722_def : output1722 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1722_skip : Flapjack.WordAlloc.isSkip output1722 = true := by
  rw [output1722_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1723_def : input1723 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1723 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1723_def : output1723 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1723_skip : Flapjack.WordAlloc.isSkip output1723 = false := by
  rw [output1723_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 1#64))).val
theorem input1724_def : input1724 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 281 1#64)) := by
  unfold input1724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1724 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1724_def : output1724 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1724_skip : Flapjack.WordAlloc.isSkip output1724 = true := by
  rw [output1724_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1724 input1723)).val
theorem input1725_def : input1725 = (.seq input1724 input1723) := by
  unfold input1725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1725 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1723)).val
theorem output1725_def : output1725 = (output1723) := by
  unfold output1725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1725_skip : Flapjack.WordAlloc.isSkip output1725 = false := by
  rw [output1725_def]
  exact output1723_skip


@[irreducible, cbv_opaque] def input1726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1725 input1722)).val
theorem input1726_def : input1726 = (.seq input1725 input1722) := by
  unfold input1726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1726 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1725)).val
theorem output1726_def : output1726 = (output1725) := by
  unfold output1726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1726_skip : Flapjack.WordAlloc.isSkip output1726 = false := by
  rw [output1726_def]
  exact output1725_skip


@[irreducible, cbv_opaque] def input1727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1726 input1721)).val
theorem input1727_def : input1727 = (.seq input1726 input1721) := by
  unfold input1727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1727 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1726 output1721)).val
theorem output1727_def : output1727 = (.seq output1726 output1721) := by
  unfold output1727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1727_skip : Flapjack.WordAlloc.isSkip output1727 = false := by
  rw [output1727_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1727 input1720)).val
theorem input1728_def : input1728 = (.seq input1727 input1720) := by
  unfold input1728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1728 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1727 output1720)).val
theorem output1728_def : output1728 = (.seq output1727 output1720) := by
  unfold output1728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1728_skip : Flapjack.WordAlloc.isSkip output1728 = false := by
  rw [output1728_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1728 input1717)).val
theorem input1729_def : input1729 = (.seq input1728 input1717) := by
  unfold input1729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1729 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1728)).val
theorem output1729_def : output1729 = (output1728) := by
  unfold output1729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1729_skip : Flapjack.WordAlloc.isSkip output1729 = false := by
  rw [output1729_def]
  exact output1728_skip


@[irreducible, cbv_opaque] def input1730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1730_def : input1730 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1730 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1730_def : output1730 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1730_skip : Flapjack.WordAlloc.isSkip output1730 = true := by
  rw [output1730_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(301, 273), (297, 245), (293, 273)])).val
theorem input1731_def : input1731 = (Flapjack.WordLangProgHOL.move 2 [(301, 273), (297, 245), (293, 273)]) := by
  unfold input1731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1731 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1731_def : output1731 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1731_skip : Flapjack.WordAlloc.isSkip output1731 = true := by
  rw [output1731_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1731 input1730)).val
theorem input1732_def : input1732 = (.seq input1731 input1730) := by
  unfold input1732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1732 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1730)).val
theorem output1732_def : output1732 = (output1730) := by
  unfold output1732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1732_skip : Flapjack.WordAlloc.isSkip output1732 = true := by
  rw [output1732_def]
  exact output1730_skip


@[irreducible, cbv_opaque] def input1733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1733_def : input1733 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1733 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1733_def : output1733 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1733_skip : Flapjack.WordAlloc.isSkip output1733 = true := by
  rw [output1733_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1733 input1732)).val
theorem input1734_def : input1734 = (.seq input1733 input1732) := by
  unfold input1734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1734 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1732)).val
theorem output1734_def : output1734 = (output1732) := by
  unfold output1734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1734_skip : Flapjack.WordAlloc.isSkip output1734 = true := by
  rw [output1734_def]
  exact output1732_skip


def value417 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 277

def value418 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 273 value417 input1729 input1734)).val
theorem input1735_def : input1735 = (.ite value15 273 value417 input1729 input1734) := by
  unfold input1735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1735 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 273 value417 output1729 output1734)).val
theorem output1735_def : output1735 = (.ite value15 273 value417 output1729 output1734) := by
  unfold output1735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1735_skip : Flapjack.WordAlloc.isSkip output1735 = false := by
  rw [output1735_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1735 input1714)).val
theorem input1736_def : input1736 = (.seq input1735 input1714) := by
  unfold input1736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1736 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1735 output1714)).val
theorem output1736_def : output1736 = (.seq output1735 output1714) := by
  unfold output1736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1736_skip : Flapjack.WordAlloc.isSkip output1736 = false := by
  rw [output1736_def]
  kernel_rfl


def value419 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(277, 269)])).val
theorem input1737_def : input1737 = (Flapjack.WordLangProgHOL.move 0 [(277, 269)]) := by
  unfold input1737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1737 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(277, 269)])).val
theorem output1737_def : output1737 = (Flapjack.WordLangProgHOL.move 0 [(277, 269)]) := by
  unfold output1737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1737_skip : Flapjack.WordAlloc.isSkip output1737 = false := by
  rw [output1737_def]
  kernel_rfl


def value420 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(273, 257)])).val
theorem input1738_def : input1738 = (Flapjack.WordLangProgHOL.move 0 [(273, 257)]) := by
  unfold input1738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1738 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(273, 257)])).val
theorem output1738_def : output1738 = (Flapjack.WordLangProgHOL.move 0 [(273, 257)]) := by
  unfold output1738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1738_skip : Flapjack.WordAlloc.isSkip output1738 = false := by
  rw [output1738_def]
  kernel_rfl


def value421 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 269 (Flapjack.WordLangAddr.addr 265 0#64)))).val
theorem input1739_def : input1739 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 269 (Flapjack.WordLangAddr.addr 265 0#64))) := by
  unfold input1739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1739 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 269 (Flapjack.WordLangAddr.addr 265 0#64)))).val
theorem output1739_def : output1739 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 269 (Flapjack.WordLangAddr.addr 265 0#64))) := by
  unfold output1739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1739_skip : Flapjack.WordAlloc.isSkip output1739 = false := by
  rw [output1739_def]
  kernel_rfl


def value422 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 261 (Flapjack.WordRegImm.imm 17#64))))).val
theorem input1740_def : input1740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 261 (Flapjack.WordRegImm.imm 17#64)))) := by
  unfold input1740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1740 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 261 (Flapjack.WordRegImm.imm 17#64))))).val
theorem output1740_def : output1740 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 265 261 (Flapjack.WordRegImm.imm 17#64)))) := by
  unfold output1740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1740_skip : Flapjack.WordAlloc.isSkip output1740 = false := by
  rw [output1740_def]
  kernel_rfl


def value423 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(261, 197)])).val
theorem input1741_def : input1741 = (Flapjack.WordLangProgHOL.move 0 [(261, 197)]) := by
  unfold input1741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1741 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(261, 197)])).val
theorem output1741_def : output1741 = (Flapjack.WordLangProgHOL.move 0 [(261, 197)]) := by
  unfold output1741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1741_skip : Flapjack.WordAlloc.isSkip output1741 = false := by
  rw [output1741_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1741 input1740)).val
theorem input1742_def : input1742 = (.seq input1741 input1740) := by
  unfold input1742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1742 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1741 output1740)).val
theorem output1742_def : output1742 = (.seq output1741 output1740) := by
  unfold output1742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1742_skip : Flapjack.WordAlloc.isSkip output1742 = false := by
  rw [output1742_def]
  kernel_rfl


def value424 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 257 (Flapjack.WordLangAddr.addr 253 0#64)))).val
theorem input1743_def : input1743 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 257 (Flapjack.WordLangAddr.addr 253 0#64))) := by
  unfold input1743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1743 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 257 (Flapjack.WordLangAddr.addr 253 0#64)))).val
theorem output1743_def : output1743 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 257 (Flapjack.WordLangAddr.addr 253 0#64))) := by
  unfold output1743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1743_skip : Flapjack.WordAlloc.isSkip output1743 = false := by
  rw [output1743_def]
  kernel_rfl


def value425 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 249 (Flapjack.WordRegImm.imm 17#64))))).val
theorem input1744_def : input1744 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 249 (Flapjack.WordRegImm.imm 17#64)))) := by
  unfold input1744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1744 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 249 (Flapjack.WordRegImm.imm 17#64))))).val
theorem output1744_def : output1744 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 253 249 (Flapjack.WordRegImm.imm 17#64)))) := by
  unfold output1744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1744_skip : Flapjack.WordAlloc.isSkip output1744 = false := by
  rw [output1744_def]
  kernel_rfl


def value426 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(249, 185)])).val
theorem input1745_def : input1745 = (Flapjack.WordLangProgHOL.move 0 [(249, 185)]) := by
  unfold input1745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1745 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(249, 185)])).val
theorem output1745_def : output1745 = (Flapjack.WordLangProgHOL.move 0 [(249, 185)]) := by
  unfold output1745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1745_skip : Flapjack.WordAlloc.isSkip output1745 = false := by
  rw [output1745_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1745 input1744)).val
theorem input1746_def : input1746 = (.seq input1745 input1744) := by
  unfold input1746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1746 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1745 output1744)).val
theorem output1746_def : output1746 = (.seq output1745 output1744) := by
  unfold output1746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1746_skip : Flapjack.WordAlloc.isSkip output1746 = false := by
  rw [output1746_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1747_def : input1747 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1747 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1747_def : output1747 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1747_skip : Flapjack.WordAlloc.isSkip output1747 = false := by
  rw [output1747_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64))).val
theorem input1748_def : input1748 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 245 0#64)) := by
  unfold input1748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1748 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1748_def : output1748 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1748_skip : Flapjack.WordAlloc.isSkip output1748 = true := by
  rw [output1748_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1749_def : input1749 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1749 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1749_def : output1749 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1749_skip : Flapjack.WordAlloc.isSkip output1749 = false := by
  rw [output1749_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64))).val
theorem input1750_def : input1750 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 241 0#64)) := by
  unfold input1750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1750 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1750_def : output1750 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1750_skip : Flapjack.WordAlloc.isSkip output1750 = true := by
  rw [output1750_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1750 input1749)).val
theorem input1751_def : input1751 = (.seq input1750 input1749) := by
  unfold input1751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1751 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1749)).val
theorem output1751_def : output1751 = (output1749) := by
  unfold output1751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1751_skip : Flapjack.WordAlloc.isSkip output1751 = false := by
  rw [output1751_def]
  exact output1749_skip


@[irreducible, cbv_opaque] def input1752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1751 input1748)).val
theorem input1752_def : input1752 = (.seq input1751 input1748) := by
  unfold input1752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1752 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1751)).val
theorem output1752_def : output1752 = (output1751) := by
  unfold output1752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1752_skip : Flapjack.WordAlloc.isSkip output1752 = false := by
  rw [output1752_def]
  exact output1751_skip


@[irreducible, cbv_opaque] def input1753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(237, 221)])).val
theorem input1753_def : input1753 = (Flapjack.WordLangProgHOL.move 1 [(237, 221)]) := by
  unfold input1753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1753 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1753_def : output1753 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1753_skip : Flapjack.WordAlloc.isSkip output1753 = true := by
  rw [output1753_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1754_def : input1754 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1754 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1754_def : output1754 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1754_skip : Flapjack.WordAlloc.isSkip output1754 = true := by
  rw [output1754_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1754 input1753)).val
theorem input1755_def : input1755 = (.seq input1754 input1753) := by
  unfold input1755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1755 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1753)).val
theorem output1755_def : output1755 = (output1753) := by
  unfold output1755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1755_skip : Flapjack.WordAlloc.isSkip output1755 = true := by
  rw [output1755_def]
  exact output1753_skip


@[irreducible, cbv_opaque] def input1756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(233, 217), (229, 225)])).val
theorem input1756_def : input1756 = (Flapjack.WordLangProgHOL.move 1 [(233, 217), (229, 225)]) := by
  unfold input1756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1756 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1756_def : output1756 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1756_skip : Flapjack.WordAlloc.isSkip output1756 = true := by
  rw [output1756_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1756 input1755)).val
theorem input1757_def : input1757 = (.seq input1756 input1755) := by
  unfold input1757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1757 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1755)).val
theorem output1757_def : output1757 = (output1755) := by
  unfold output1757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1757_skip : Flapjack.WordAlloc.isSkip output1757 = true := by
  rw [output1757_def]
  exact output1755_skip


def value427 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem input1758_def : input1758 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold input1758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1758 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 25 [2])).val
theorem output1758_def : output1758 = (Flapjack.WordLangProgHOL.return 25 [2]) := by
  unfold output1758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1758_skip : Flapjack.WordAlloc.isSkip output1758 = false := by
  rw [output1758_def]
  kernel_rfl


def value428 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 225)])).val
theorem input1759_def : input1759 = (Flapjack.WordLangProgHOL.move 0 [(2, 225)]) := by
  unfold input1759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1759 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 225)])).val
theorem output1759_def : output1759 = (Flapjack.WordLangProgHOL.move 0 [(2, 225)]) := by
  unfold output1759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1759_skip : Flapjack.WordAlloc.isSkip output1759 = false := by
  rw [output1759_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1759 input1758)).val
theorem input1760_def : input1760 = (.seq input1759 input1758) := by
  unfold input1760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1760 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1759 output1758)).val
theorem output1760_def : output1760 = (.seq output1759 output1758) := by
  unfold output1760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1760_skip : Flapjack.WordAlloc.isSkip output1760 = false := by
  rw [output1760_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64))).val
theorem input1761_def : input1761 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)) := by
  unfold input1761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1761 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64))).val
theorem output1761_def : output1761 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 225 0#64)) := by
  unfold output1761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1761_skip : Flapjack.WordAlloc.isSkip output1761 = false := by
  rw [output1761_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 221 1#64))).val
theorem input1762_def : input1762 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 221 1#64)) := by
  unfold input1762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1762 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1762_def : output1762 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1762_skip : Flapjack.WordAlloc.isSkip output1762 = true := by
  rw [output1762_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1763_def : input1763 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1763 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1763_def : output1763 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1763_skip : Flapjack.WordAlloc.isSkip output1763 = false := by
  rw [output1763_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 1#64))).val
theorem input1764_def : input1764 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 217 1#64)) := by
  unfold input1764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1764 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1764_def : output1764 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1764_skip : Flapjack.WordAlloc.isSkip output1764 = true := by
  rw [output1764_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1764 input1763)).val
theorem input1765_def : input1765 = (.seq input1764 input1763) := by
  unfold input1765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1765 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1763)).val
theorem output1765_def : output1765 = (output1763) := by
  unfold output1765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1765_skip : Flapjack.WordAlloc.isSkip output1765 = false := by
  rw [output1765_def]
  exact output1763_skip


@[irreducible, cbv_opaque] def input1766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1765 input1762)).val
theorem input1766_def : input1766 = (.seq input1765 input1762) := by
  unfold input1766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1766 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1765)).val
theorem output1766_def : output1766 = (output1765) := by
  unfold output1766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1766_skip : Flapjack.WordAlloc.isSkip output1766 = false := by
  rw [output1766_def]
  exact output1765_skip


@[irreducible, cbv_opaque] def input1767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1766 input1761)).val
theorem input1767_def : input1767 = (.seq input1766 input1761) := by
  unfold input1767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1767 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1766 output1761)).val
theorem output1767_def : output1767 = (.seq output1766 output1761) := by
  unfold output1767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1767_skip : Flapjack.WordAlloc.isSkip output1767 = false := by
  rw [output1767_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1767 input1760)).val
theorem input1768_def : input1768 = (.seq input1767 input1760) := by
  unfold input1768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1767 output1760)).val
theorem output1768_def : output1768 = (.seq output1767 output1760) := by
  unfold output1768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1768_skip : Flapjack.WordAlloc.isSkip output1768 = false := by
  rw [output1768_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1768 input1757)).val
theorem input1769_def : input1769 = (.seq input1768 input1757) := by
  unfold input1769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1768)).val
theorem output1769_def : output1769 = (output1768) := by
  unfold output1769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1769_skip : Flapjack.WordAlloc.isSkip output1769 = false := by
  rw [output1769_def]
  exact output1768_skip


@[irreducible, cbv_opaque] def input1770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64))).val
theorem input1770_def : input1770 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 237 0#64)) := by
  unfold input1770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1770_def : output1770 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1770_skip : Flapjack.WordAlloc.isSkip output1770 = true := by
  rw [output1770_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1771_def : input1771 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1771_def : output1771 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1771_skip : Flapjack.WordAlloc.isSkip output1771 = true := by
  rw [output1771_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1771 input1770)).val
theorem input1772_def : input1772 = (.seq input1771 input1770) := by
  unfold input1772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1770)).val
theorem output1772_def : output1772 = (output1770) := by
  unfold output1772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1772_skip : Flapjack.WordAlloc.isSkip output1772 = true := by
  rw [output1772_def]
  exact output1770_skip


@[irreducible, cbv_opaque] def input1773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(233, 209), (229, 209)])).val
theorem input1773_def : input1773 = (Flapjack.WordLangProgHOL.move 2 [(233, 209), (229, 209)]) := by
  unfold input1773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1773_def : output1773 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1773_skip : Flapjack.WordAlloc.isSkip output1773 = true := by
  rw [output1773_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1773 input1772)).val
theorem input1774_def : input1774 = (.seq input1773 input1772) := by
  unfold input1774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1772)).val
theorem output1774_def : output1774 = (output1772) := by
  unfold output1774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1774_skip : Flapjack.WordAlloc.isSkip output1774 = true := by
  rw [output1774_def]
  exact output1772_skip


@[irreducible, cbv_opaque] def input1775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input1775_def : input1775 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input1775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1775_def : output1775 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1775_skip : Flapjack.WordAlloc.isSkip output1775 = true := by
  rw [output1775_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1775 input1774)).val
theorem input1776_def : input1776 = (.seq input1775 input1774) := by
  unfold input1776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output1774)).val
theorem output1776_def : output1776 = (output1774) := by
  unfold output1776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1776_skip : Flapjack.WordAlloc.isSkip output1776 = true := by
  rw [output1776_def]
  exact output1774_skip


def value429 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 213

def value430 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 209 value429 input1769 input1776)).val
theorem input1777_def : input1777 = (.ite value15 209 value429 input1769 input1776) := by
  unfold input1777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 209 value429 output1769 output1776)).val
theorem output1777_def : output1777 = (.ite value15 209 value429 output1769 output1776) := by
  unfold output1777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1777_skip : Flapjack.WordAlloc.isSkip output1777 = false := by
  rw [output1777_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1777 input1752)).val
theorem input1778_def : input1778 = (.seq input1777 input1752) := by
  unfold input1778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1777 output1752)).val
theorem output1778_def : output1778 = (.seq output1777 output1752) := by
  unfold output1778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1778_skip : Flapjack.WordAlloc.isSkip output1778 = false := by
  rw [output1778_def]
  kernel_rfl


def value431 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(213, 205)])).val
theorem input1779_def : input1779 = (Flapjack.WordLangProgHOL.move 0 [(213, 205)]) := by
  unfold input1779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(213, 205)])).val
theorem output1779_def : output1779 = (Flapjack.WordLangProgHOL.move 0 [(213, 205)]) := by
  unfold output1779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1779_skip : Flapjack.WordAlloc.isSkip output1779 = false := by
  rw [output1779_def]
  kernel_rfl


def value432 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(209, 193)])).val
theorem input1780_def : input1780 = (Flapjack.WordLangProgHOL.move 0 [(209, 193)]) := by
  unfold input1780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(209, 193)])).val
theorem output1780_def : output1780 = (Flapjack.WordLangProgHOL.move 0 [(209, 193)]) := by
  unfold output1780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1780_skip : Flapjack.WordAlloc.isSkip output1780 = false := by
  rw [output1780_def]
  kernel_rfl


def value433 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 205 (Flapjack.WordLangAddr.addr 201 0#64)))).val
theorem input1781_def : input1781 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 205 (Flapjack.WordLangAddr.addr 201 0#64))) := by
  unfold input1781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 205 (Flapjack.WordLangAddr.addr 201 0#64)))).val
theorem output1781_def : output1781 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 205 (Flapjack.WordLangAddr.addr 201 0#64))) := by
  unfold output1781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1781_skip : Flapjack.WordAlloc.isSkip output1781 = false := by
  rw [output1781_def]
  kernel_rfl


def value434 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 197 (Flapjack.WordRegImm.imm 16#64))))).val
theorem input1782_def : input1782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 197 (Flapjack.WordRegImm.imm 16#64)))) := by
  unfold input1782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 197 (Flapjack.WordRegImm.imm 16#64))))).val
theorem output1782_def : output1782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 201 197 (Flapjack.WordRegImm.imm 16#64)))) := by
  unfold output1782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1782_skip : Flapjack.WordAlloc.isSkip output1782 = false := by
  rw [output1782_def]
  kernel_rfl


def value435 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(197, 145)])).val
theorem input1783_def : input1783 = (Flapjack.WordLangProgHOL.move 0 [(197, 145)]) := by
  unfold input1783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(197, 145)])).val
theorem output1783_def : output1783 = (Flapjack.WordLangProgHOL.move 0 [(197, 145)]) := by
  unfold output1783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1783_skip : Flapjack.WordAlloc.isSkip output1783 = false := by
  rw [output1783_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1783 input1782)).val
theorem input1784_def : input1784 = (.seq input1783 input1782) := by
  unfold input1784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1783 output1782)).val
theorem output1784_def : output1784 = (.seq output1783 output1782) := by
  unfold output1784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1784_skip : Flapjack.WordAlloc.isSkip output1784 = false := by
  rw [output1784_def]
  kernel_rfl


def value436 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 193 (Flapjack.WordLangAddr.addr 189 0#64)))).val
theorem input1785_def : input1785 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 193 (Flapjack.WordLangAddr.addr 189 0#64))) := by
  unfold input1785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 193 (Flapjack.WordLangAddr.addr 189 0#64)))).val
theorem output1785_def : output1785 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load8 193 (Flapjack.WordLangAddr.addr 189 0#64))) := by
  unfold output1785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1785_skip : Flapjack.WordAlloc.isSkip output1785 = false := by
  rw [output1785_def]
  kernel_rfl


def value437 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs
          (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln) PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 189 185 (Flapjack.WordRegImm.imm 16#64))))).val
theorem input1786_def : input1786 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 189 185 (Flapjack.WordRegImm.imm 16#64)))) := by
  unfold input1786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 189 185 (Flapjack.WordRegImm.imm 16#64))))).val
theorem output1786_def : output1786 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 189 185 (Flapjack.WordRegImm.imm 16#64)))) := by
  unfold output1786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1786_skip : Flapjack.WordAlloc.isSkip output1786 = false := by
  rw [output1786_def]
  kernel_rfl


def value438 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(185, 137)])).val
theorem input1787_def : input1787 = (Flapjack.WordLangProgHOL.move 0 [(185, 137)]) := by
  unfold input1787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(185, 137)])).val
theorem output1787_def : output1787 = (Flapjack.WordLangProgHOL.move 0 [(185, 137)]) := by
  unfold output1787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1787_skip : Flapjack.WordAlloc.isSkip output1787 = false := by
  rw [output1787_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1787 input1786)).val
theorem input1788_def : input1788 = (.seq input1787 input1786) := by
  unfold input1788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1787 output1786)).val
theorem output1788_def : output1788 = (.seq output1787 output1786) := by
  unfold output1788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1788_skip : Flapjack.WordAlloc.isSkip output1788 = false := by
  rw [output1788_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1789_def : input1789 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1789_def : output1789 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1789_skip : Flapjack.WordAlloc.isSkip output1789 = false := by
  rw [output1789_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64))).val
theorem input1790_def : input1790 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 181 0#64)) := by
  unfold input1790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1790_def : output1790 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1790_skip : Flapjack.WordAlloc.isSkip output1790 = true := by
  rw [output1790_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input1791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input1791_def : input1791 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input1791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output1791_def : output1791 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output1791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1791_skip : Flapjack.WordAlloc.isSkip output1791 = false := by
  rw [output1791_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages79.Parallel
