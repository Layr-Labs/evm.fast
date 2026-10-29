import InitECandidate.Proofs.LoopWordComputation
import InitECandidate.Proofs.FrontendStages.Word.Variables397
import InitECandidate.Proofs.WordStages.Source461
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints397.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints397
@[irreducible, cbv_opaque] def output1536 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1535)).val
theorem output1536_def : output1536 = (output1535) := by
  unfold output1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1537 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1536 output1524)).val
theorem output1537_def : output1537 = (.seq output1536 output1524) := by
  unfold output1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1538 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1537)).val
theorem output1538_def : output1538 = (output1537) := by
  unfold output1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1539 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1538 output1524)).val
theorem output1539_def : output1539 = (.seq output1538 output1524) := by
  unfold output1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1540 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1539)).val
theorem output1540_def : output1540 = (output1539) := by
  unfold output1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1541 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1534 output1540)).val
theorem output1541_def : output1541 = (.seq output1534 output1540) := by
  unfold output1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1542 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1541)).val
theorem output1542_def : output1542 = (output1541) := by
  unfold output1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1543 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1524 output1542)).val
theorem output1543_def : output1543 = (.seq output1524 output1542) := by
  unfold output1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1544 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1543)).val
theorem output1544_def : output1544 = (output1543) := by
  unfold output1544
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1545 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1532 output1544)).val
theorem output1545_def : output1545 = (.seq output1532 output1544) := by
  unfold output1545
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1546 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1545)).val
theorem output1546_def : output1546 = (output1545) := by
  unfold output1546
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1547 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 68,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]]))).val
theorem output1547_def : output1547 = (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 68,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]])) := by
  unfold output1547
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1548 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1547)).val
theorem output1548_def : output1548 = (output1547) := by
  unfold output1548
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1549 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([24],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 84))
    (some 180) [60] (some (60, Flapjack.WordLangProgHOL.raise 60, 461, 85)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1549_def : output1549 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([24],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 84))
    (some 180) [60] (some (60, Flapjack.WordLangProgHOL.raise 60, 461, 85)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1549
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1550 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1549)).val
theorem output1550_def : output1550 = (output1549) := by
  unfold output1550
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1551 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1551_def : output1551 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1551
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1552 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1551)).val
theorem output1552_def : output1552 = (output1551) := by
  unfold output1552
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1553 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1550 output1552)).val
theorem output1553_def : output1553 = (.seq output1550 output1552) := by
  unfold output1553
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1554 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1553)).val
theorem output1554_def : output1554 = (output1553) := by
  unfold output1554
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1555 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1548 output1554)).val
theorem output1555_def : output1555 = (.seq output1548 output1554) := by
  unfold output1555
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1556 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1555)).val
theorem output1556_def : output1556 = (output1555) := by
  unfold output1556
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1557 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.var 24]))).val
theorem output1557_def : output1557 = (Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.var 24])) := by
  unfold output1557
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1558 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1557)).val
theorem output1558_def : output1558 = (output1557) := by
  unfold output1558
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1559 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]))).val
theorem output1559_def : output1559 = (Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64])) := by
  unfold output1559
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1560 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1559)).val
theorem output1560_def : output1560 = (output1559) := by
  unfold output1560
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1561 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 68,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]]))).val
theorem output1561_def : output1561 = (Flapjack.WordLangProgHOL.assign 10
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 68,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]])) := by
  unfold output1561
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1562 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1561)).val
theorem output1562_def : output1562 = (output1561) := by
  unfold output1562
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1563 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([60],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 86))
    (some 77) [42, 78, 10] (some (42, Flapjack.WordLangProgHOL.raise 42, 461, 87)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1563_def : output1563 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([60],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 86))
    (some 77) [42, 78, 10] (some (42, Flapjack.WordLangProgHOL.raise 42, 461, 87)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1563
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1564 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1563)).val
theorem output1564_def : output1564 = (output1563) := by
  unfold output1564
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1565 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1565_def : output1565 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1565
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1566 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1565)).val
theorem output1566_def : output1566 = (output1565) := by
  unfold output1566
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1567 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1564 output1566)).val
theorem output1567_def : output1567 = (.seq output1564 output1566) := by
  unfold output1567
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1568 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1567)).val
theorem output1568_def : output1568 = (output1567) := by
  unfold output1568
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1569 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1562 output1568)).val
theorem output1569_def : output1569 = (.seq output1562 output1568) := by
  unfold output1569
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1570 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1569)).val
theorem output1570_def : output1570 = (output1569) := by
  unfold output1570
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1571 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1560 output1570)).val
theorem output1571_def : output1571 = (.seq output1560 output1570) := by
  unfold output1571
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1572 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1571)).val
theorem output1572_def : output1572 = (output1571) := by
  unfold output1572
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1573 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1558 output1572)).val
theorem output1573_def : output1573 = (.seq output1558 output1572) := by
  unfold output1573
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1574 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1573)).val
theorem output1574_def : output1574 = (output1573) := by
  unfold output1574
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1575 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1552 output1574)).val
theorem output1575_def : output1575 = (.seq output1552 output1574) := by
  unfold output1575
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1576 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1575)).val
theorem output1576_def : output1576 = (output1575) := by
  unfold output1576
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1577 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1552 output1576)).val
theorem output1577_def : output1577 = (.seq output1552 output1576) := by
  unfold output1577
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1578 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1577)).val
theorem output1578_def : output1578 = (output1577) := by
  unfold output1578
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1579 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 66))).val
theorem output1579_def : output1579 = (Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 66)) := by
  unfold output1579
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1580 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1579)).val
theorem output1580_def : output1580 = (output1579) := by
  unfold output1580
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1581 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 68,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]]))).val
theorem output1581_def : output1581 = (Flapjack.WordLangProgHOL.assign 78
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 68,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]])) := by
  unfold output1581
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1582 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1581)).val
theorem output1582_def : output1582 = (output1581) := by
  unfold output1582
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1583 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([60],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 88))
    (some 178) [42, 78] (some (42, Flapjack.WordLangProgHOL.raise 42, 461, 89)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1583_def : output1583 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([60],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 88))
    (some 178) [42, 78] (some (42, Flapjack.WordLangProgHOL.raise 42, 461, 89)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1583
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1584 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1583)).val
theorem output1584_def : output1584 = (output1583) := by
  unfold output1584
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1585 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1585_def : output1585 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1585
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1586 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1585)).val
theorem output1586_def : output1586 = (output1585) := by
  unfold output1586
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1587 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1584 output1586)).val
theorem output1587_def : output1587 = (.seq output1584 output1586) := by
  unfold output1587
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1588 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1587)).val
theorem output1588_def : output1588 = (output1587) := by
  unfold output1588
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1589 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1582 output1588)).val
theorem output1589_def : output1589 = (.seq output1582 output1588) := by
  unfold output1589
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1590 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1589)).val
theorem output1590_def : output1590 = (output1589) := by
  unfold output1590
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1591 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1580 output1590)).val
theorem output1591_def : output1591 = (.seq output1580 output1590) := by
  unfold output1591
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1592 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1591)).val
theorem output1592_def : output1592 = (output1591) := by
  unfold output1592
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1593 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1566 output1592)).val
theorem output1593_def : output1593 = (.seq output1566 output1592) := by
  unfold output1593
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1594 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1593)).val
theorem output1594_def : output1594 = (output1593) := by
  unfold output1594
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1595 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1566 output1594)).val
theorem output1595_def : output1595 = (.seq output1566 output1594) := by
  unfold output1595
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1596 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1595)).val
theorem output1596_def : output1596 = (output1595) := by
  unfold output1596
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1597 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1578 output1596)).val
theorem output1597_def : output1597 = (.seq output1578 output1596) := by
  unfold output1597
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1598 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1597)).val
theorem output1598_def : output1598 = (output1597) := by
  unfold output1598
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1599 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.var 68,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]]]))).val
theorem output1599_def : output1599 = (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.var 24,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.var 68,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]]])) := by
  unfold output1599
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1600 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1599)).val
theorem output1600_def : output1600 = (output1599) := by
  unfold output1600
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1601 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 60))).val
theorem output1601_def : output1601 = (Flapjack.WordLangProgHOL.assign 66 (Flapjack.WordLangExpHOL.var 60)) := by
  unfold output1601
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1602 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1601)).val
theorem output1602_def : output1602 = (output1601) := by
  unfold output1602
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1603 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1602 output1586)).val
theorem output1603_def : output1603 = (.seq output1602 output1586) := by
  unfold output1603
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1604 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1603)).val
theorem output1604_def : output1604 = (output1603) := by
  unfold output1604
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1605 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1604 output1586)).val
theorem output1605_def : output1605 = (.seq output1604 output1586) := by
  unfold output1605
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1606 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1605)).val
theorem output1606_def : output1606 = (output1605) := by
  unfold output1606
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1607 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1600 output1606)).val
theorem output1607_def : output1607 = (.seq output1600 output1606) := by
  unfold output1607
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1608 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1607)).val
theorem output1608_def : output1608 = (output1607) := by
  unfold output1608
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1609 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1586 output1608)).val
theorem output1609_def : output1609 = (.seq output1586 output1608) := by
  unfold output1609
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1610 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1609)).val
theorem output1610_def : output1610 = (output1609) := by
  unfold output1610
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1611 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1598 output1610)).val
theorem output1611_def : output1611 = (.seq output1598 output1610) := by
  unfold output1611
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1612 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1611)).val
theorem output1612_def : output1612 = (output1611) := by
  unfold output1612
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1613 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 1#64]))).val
theorem output1613_def : output1613 = (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 22, Flapjack.WordLangExpHOL.const 1#64])) := by
  unfold output1613
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1614 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1613)).val
theorem output1614_def : output1614 = (output1613) := by
  unfold output1614
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1615 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 60))).val
theorem output1615_def : output1615 = (Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.var 60)) := by
  unfold output1615
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1616 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1615)).val
theorem output1616_def : output1616 = (output1615) := by
  unfold output1616
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1617 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1616 output1586)).val
theorem output1617_def : output1617 = (.seq output1616 output1586) := by
  unfold output1617
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1618 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1617)).val
theorem output1618_def : output1618 = (output1617) := by
  unfold output1618
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1619 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1618 output1586)).val
theorem output1619_def : output1619 = (.seq output1618 output1586) := by
  unfold output1619
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1620 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1619)).val
theorem output1620_def : output1620 = (output1619) := by
  unfold output1620
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1621 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1614 output1620)).val
theorem output1621_def : output1621 = (.seq output1614 output1620) := by
  unfold output1621
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1622 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1621)).val
theorem output1622_def : output1622 = (output1621) := by
  unfold output1622
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1623 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1586 output1622)).val
theorem output1623_def : output1623 = (.seq output1586 output1622) := by
  unfold output1623
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1624 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1623)).val
theorem output1624_def : output1624 = (output1623) := by
  unfold output1624
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1625 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1612 output1624)).val
theorem output1625_def : output1625 = (.seq output1612 output1624) := by
  unfold output1625
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1626 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1625)).val
theorem output1626_def : output1626 = (output1625) := by
  unfold output1626
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1627 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1556 output1626)).val
theorem output1627_def : output1627 = (.seq output1556 output1626) := by
  unfold output1627
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1628 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1627)).val
theorem output1628_def : output1628 = (output1627) := by
  unfold output1628
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1629 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1524 output1628)).val
theorem output1629_def : output1629 = (.seq output1524 output1628) := by
  unfold output1629
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1630 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1629)).val
theorem output1630_def : output1630 = (output1629) := by
  unfold output1630
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1631 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1524 output1630)).val
theorem output1631_def : output1631 = (.seq output1524 output1630) := by
  unfold output1631
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1632 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1631)).val
theorem output1632_def : output1632 = (output1631) := by
  unfold output1632
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1633 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1546 output1632)).val
theorem output1633_def : output1633 = (.seq output1546 output1632) := by
  unfold output1633
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1634 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1633)).val
theorem output1634_def : output1634 = (output1633) := by
  unfold output1634
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1635 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1488 output1634)).val
theorem output1635_def : output1635 = (.seq output1488 output1634) := by
  unfold output1635
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1636 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1635)).val
theorem output1636_def : output1636 = (output1635) := by
  unfold output1636
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1637 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1440 output1636)).val
theorem output1637_def : output1637 = (.seq output1440 output1636) := by
  unfold output1637
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1638 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1637)).val
theorem output1638_def : output1638 = (output1637) := by
  unfold output1638
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1639 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1486 output1638)).val
theorem output1639_def : output1639 = (.seq output1486 output1638) := by
  unfold output1639
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1640 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1639)).val
theorem output1640_def : output1640 = (output1639) := by
  unfold output1640
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1641 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1440 output1640)).val
theorem output1641_def : output1641 = (.seq output1440 output1640) := by
  unfold output1641
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1642 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1641)).val
theorem output1642_def : output1642 = (output1641) := by
  unfold output1642
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1643 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.continue 0)).val
theorem output1643_def : output1643 = (Flapjack.WordLangProgHOL.continue 0) := by
  unfold output1643
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1644 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1643)).val
theorem output1644_def : output1644 = (output1643) := by
  unfold output1644
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1645 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1642 output1644)).val
theorem output1645_def : output1645 = (.seq output1642 output1644) := by
  unfold output1645
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1646 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1645)).val
theorem output1646_def : output1646 = (output1645) := by
  unfold output1646
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1647 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.break 0)).val
theorem output1647_def : output1647 = (Flapjack.WordLangProgHOL.break 0) := by
  unfold output1647
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1648 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1647)).val
theorem output1648_def : output1648 = (output1647) := by
  unfold output1648
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1649 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.notEqual) 60 (Flapjack.WordRegImm.imm 0#64) output1646 output1648) .tick)).val
theorem output1649_def : output1649 = (.seq (.ite (Flapjack.Cmp.notEqual) 60 (Flapjack.WordRegImm.imm 0#64) output1646 output1648) .tick) := by
  unfold output1649
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1650 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1649)).val
theorem output1650_def : output1650 = (output1649) := by
  unfold output1650
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1651 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1650 output1586)).val
theorem output1651_def : output1651 = (.seq output1650 output1586) := by
  unfold output1651
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1652 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1651)).val
theorem output1652_def : output1652 = (output1651) := by
  unfold output1652
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1653 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1484 output1652)).val
theorem output1653_def : output1653 = (.seq output1484 output1652) := by
  unfold output1653
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1654 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1653)).val
theorem output1654_def : output1654 = (output1653) := by
  unfold output1654
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1655 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1482 output1654)).val
theorem output1655_def : output1655 = (.seq output1482 output1654) := by
  unfold output1655
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1656 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1655)).val
theorem output1656_def : output1656 = (output1655) := by
  unfold output1656
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1657 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1476 output1656)).val
theorem output1657_def : output1657 = (.seq output1476 output1656) := by
  unfold output1657
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1658 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1657)).val
theorem output1658_def : output1658 = (output1657) := by
  unfold output1658
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1659 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1474 output1658)).val
theorem output1659_def : output1659 = (.seq output1474 output1658) := by
  unfold output1659
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1660 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1659)).val
theorem output1660_def : output1660 = (output1659) := by
  unfold output1660
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1661 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq .tick (.seq (.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) output1660 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)) .tick))).val
theorem output1661_def : output1661 = (.seq .tick (.seq (.loop (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln) output1660 (Flapjack.Spt.bs
  (Flapjack.Spt.bs
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
      PUnit.unit
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
          (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
    PUnit.unit
    (Flapjack.Spt.bs
      (Flapjack.Spt.bs
        (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
        PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
      PUnit.unit
      (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
        (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
  PUnit.unit Flapjack.Spt.ln)) .tick)) := by
  unfold output1661
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1662 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1472 output1661)).val
theorem output1662_def : output1662 = (.seq output1472 output1661) := by
  unfold output1662
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1663 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 66,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64]]))).val
theorem output1663_def : output1663 = (Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 66,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64]])) := by
  unfold output1663
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1664 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1663)).val
theorem output1664_def : output1664 = (output1663) := by
  unfold output1664
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1665 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([32],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 90))
    (some 180) [68] (some (68, Flapjack.WordLangProgHOL.raise 68, 461, 91)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1665_def : output1665 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([32],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 90))
    (some 180) [68] (some (68, Flapjack.WordLangProgHOL.raise 68, 461, 91)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1665
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1666 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1665)).val
theorem output1666_def : output1666 = (output1665) := by
  unfold output1666
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1667 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1667_def : output1667 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1667
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1668 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1667)).val
theorem output1668_def : output1668 = (output1667) := by
  unfold output1668
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1669 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1666 output1668)).val
theorem output1669_def : output1669 = (.seq output1666 output1668) := by
  unfold output1669
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1670 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1669)).val
theorem output1670_def : output1670 = (output1669) := by
  unfold output1670
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1671 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1664 output1670)).val
theorem output1671_def : output1671 = (.seq output1664 output1670) := by
  unfold output1671
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1672 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1671)).val
theorem output1672_def : output1672 = (output1671) := by
  unfold output1672
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1673 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.var 32]))).val
theorem output1673_def : output1673 = (Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.var 32])) := by
  unfold output1673
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1674 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1673)).val
theorem output1674_def : output1674 = (output1673) := by
  unfold output1674
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1675 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64]))).val
theorem output1675_def : output1675 = (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64])) := by
  unfold output1675
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1676 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1675)).val
theorem output1676_def : output1676 = (output1675) := by
  unfold output1676
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1677 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 66,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64]]))).val
theorem output1677_def : output1677 = (Flapjack.WordLangProgHOL.assign 42
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 66,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64]])) := by
  unfold output1677
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1678 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1677)).val
theorem output1678_def : output1678 = (output1677) := by
  unfold output1678
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1679 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([68],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 92))
    (some 77) [24, 60, 42] (some (24, Flapjack.WordLangProgHOL.raise 24, 461, 93)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1679_def : output1679 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([68],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 92))
    (some 77) [24, 60, 42] (some (24, Flapjack.WordLangProgHOL.raise 24, 461, 93)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1679
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1680 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1679)).val
theorem output1680_def : output1680 = (output1679) := by
  unfold output1680
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1681 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1681_def : output1681 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1681
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1682 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1681)).val
theorem output1682_def : output1682 = (output1681) := by
  unfold output1682
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1683 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1680 output1682)).val
theorem output1683_def : output1683 = (.seq output1680 output1682) := by
  unfold output1683
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1684 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1683)).val
theorem output1684_def : output1684 = (output1683) := by
  unfold output1684
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1685 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1678 output1684)).val
theorem output1685_def : output1685 = (.seq output1678 output1684) := by
  unfold output1685
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1686 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1685)).val
theorem output1686_def : output1686 = (output1685) := by
  unfold output1686
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1687 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1676 output1686)).val
theorem output1687_def : output1687 = (.seq output1676 output1686) := by
  unfold output1687
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1688 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1687)).val
theorem output1688_def : output1688 = (output1687) := by
  unfold output1688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1689 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1674 output1688)).val
theorem output1689_def : output1689 = (.seq output1674 output1688) := by
  unfold output1689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1690 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1689)).val
theorem output1690_def : output1690 = (output1689) := by
  unfold output1690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1691 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1668 output1690)).val
theorem output1691_def : output1691 = (.seq output1668 output1690) := by
  unfold output1691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1692 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1691)).val
theorem output1692_def : output1692 = (output1691) := by
  unfold output1692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1693 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1668 output1692)).val
theorem output1693_def : output1693 = (.seq output1668 output1692) := by
  unfold output1693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1694 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1693)).val
theorem output1694_def : output1694 = (output1693) := by
  unfold output1694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1695 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 52))).val
theorem output1695_def : output1695 = (Flapjack.WordLangProgHOL.assign 24 (Flapjack.WordLangExpHOL.var 52)) := by
  unfold output1695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1696 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1695)).val
theorem output1696_def : output1696 = (output1695) := by
  unfold output1696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1697 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 66,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64]]))).val
theorem output1697_def : output1697 = (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 66,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64]])) := by
  unfold output1697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1698 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1697)).val
theorem output1698_def : output1698 = (output1697) := by
  unfold output1698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1699 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([68],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 94))
    (some 178) [24, 60] (some (24, Flapjack.WordLangProgHOL.raise 24, 461, 95)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1699_def : output1699 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([68],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 94))
    (some 178) [24, 60] (some (24, Flapjack.WordLangProgHOL.raise 24, 461, 95)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1700 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1699)).val
theorem output1700_def : output1700 = (output1699) := by
  unfold output1700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1701 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1701_def : output1701 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1702 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1701)).val
theorem output1702_def : output1702 = (output1701) := by
  unfold output1702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1703 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1700 output1702)).val
theorem output1703_def : output1703 = (.seq output1700 output1702) := by
  unfold output1703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1704 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1703)).val
theorem output1704_def : output1704 = (output1703) := by
  unfold output1704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1705 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1698 output1704)).val
theorem output1705_def : output1705 = (.seq output1698 output1704) := by
  unfold output1705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1706 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1705)).val
theorem output1706_def : output1706 = (output1705) := by
  unfold output1706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1707 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1696 output1706)).val
theorem output1707_def : output1707 = (.seq output1696 output1706) := by
  unfold output1707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1708 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1707)).val
theorem output1708_def : output1708 = (output1707) := by
  unfold output1708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1709 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1682 output1708)).val
theorem output1709_def : output1709 = (.seq output1682 output1708) := by
  unfold output1709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1710 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1709)).val
theorem output1710_def : output1710 = (output1709) := by
  unfold output1710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1711 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1682 output1710)).val
theorem output1711_def : output1711 = (.seq output1682 output1710) := by
  unfold output1711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1712 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1711)).val
theorem output1712_def : output1712 = (output1711) := by
  unfold output1712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1713 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1694 output1712)).val
theorem output1713_def : output1713 = (.seq output1694 output1712) := by
  unfold output1713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1714 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1713)).val
theorem output1714_def : output1714 = (output1713) := by
  unfold output1714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1715 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.var 32,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.var 66,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64]]]))).val
theorem output1715_def : output1715 = (Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.var 32,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
        [Flapjack.WordLangExpHOL.var 66,
          Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
            [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64]]])) := by
  unfold output1715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1716 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1715)).val
theorem output1716_def : output1716 = (output1715) := by
  unfold output1716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1717 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 68))).val
theorem output1717_def : output1717 = (Flapjack.WordLangProgHOL.assign 52 (Flapjack.WordLangExpHOL.var 68)) := by
  unfold output1717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1718 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1717)).val
theorem output1718_def : output1718 = (output1717) := by
  unfold output1718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1719 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1718 output1702)).val
theorem output1719_def : output1719 = (.seq output1718 output1702) := by
  unfold output1719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1720 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1719)).val
theorem output1720_def : output1720 = (output1719) := by
  unfold output1720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1721 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1720 output1702)).val
theorem output1721_def : output1721 = (.seq output1720 output1702) := by
  unfold output1721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1722 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1721)).val
theorem output1722_def : output1722 = (output1721) := by
  unfold output1722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1723 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1716 output1722)).val
theorem output1723_def : output1723 = (.seq output1716 output1722) := by
  unfold output1723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1724 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1723)).val
theorem output1724_def : output1724 = (output1723) := by
  unfold output1724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1725 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1702 output1724)).val
theorem output1725_def : output1725 = (.seq output1702 output1724) := by
  unfold output1725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1726 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1725)).val
theorem output1726_def : output1726 = (output1725) := by
  unfold output1726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1727 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1714 output1726)).val
theorem output1727_def : output1727 = (.seq output1714 output1726) := by
  unfold output1727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1728 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1727)).val
theorem output1728_def : output1728 = (output1727) := by
  unfold output1728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1729 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64])))).val
theorem output1729_def : output1729 = (Flapjack.WordLangProgHOL.assign 68
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 6, Flapjack.WordLangExpHOL.const 32#64]))) := by
  unfold output1729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1730 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1729)).val
theorem output1730_def : output1730 = (output1729) := by
  unfold output1730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1731 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 68, Flapjack.WordLangExpHOL.const 8#64])))).val
theorem output1731_def : output1731 = (Flapjack.WordLangProgHOL.assign 24
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 68, Flapjack.WordLangExpHOL.const 8#64]))) := by
  unfold output1731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1732 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1731)).val
theorem output1732_def : output1732 = (output1731) := by
  unfold output1732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1733 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 68, Flapjack.WordLangExpHOL.const 0#64])))).val
theorem output1733_def : output1733 = (Flapjack.WordLangProgHOL.assign 60
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 68, Flapjack.WordLangExpHOL.const 0#64]))) := by
  unfold output1733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1734 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1733)).val
theorem output1734_def : output1734 = (output1733) := by
  unfold output1734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1735 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 60))).val
theorem output1735_def : output1735 = (Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 60)) := by
  unfold output1735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1736 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1735)).val
theorem output1736_def : output1736 = (output1735) := by
  unfold output1736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1737 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24))).val
theorem output1737_def : output1737 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24)) := by
  unfold output1737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1738 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1737)).val
theorem output1738_def : output1738 = (output1737) := by
  unfold output1738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1739 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 24#64))).val
theorem output1739_def : output1739 = (Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.const 24#64)) := by
  unfold output1739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1740 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1739)).val
theorem output1740_def : output1740 = (output1739) := by
  unfold output1740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1741 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output1741_def : output1741 = (Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output1741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1742 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1741)).val
theorem output1742_def : output1742 = (output1741) := by
  unfold output1742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1743 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 8))).val
theorem output1743_def : output1743 = (Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 8)) := by
  unfold output1743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1744 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1743)).val
theorem output1744_def : output1744 = (output1743) := by
  unfold output1744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1745 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([42],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 96))
    (some 459) [78, 10, 44, 26, 62] (some (78, Flapjack.WordLangProgHOL.raise 78, 461, 97)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1745_def : output1745 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([42],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.ls PUnit.unit))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 96))
    (some 459) [78, 10, 44, 26, 62] (some (78, Flapjack.WordLangProgHOL.raise 78, 461, 97)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1746 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1745)).val
theorem output1746_def : output1746 = (output1745) := by
  unfold output1746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1747 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1747_def : output1747 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1748 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1747)).val
theorem output1748_def : output1748 = (output1747) := by
  unfold output1748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1749 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1746 output1748)).val
theorem output1749_def : output1749 = (.seq output1746 output1748) := by
  unfold output1749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1750 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1749)).val
theorem output1750_def : output1750 = (output1749) := by
  unfold output1750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1751 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1744 output1750)).val
theorem output1751_def : output1751 = (.seq output1744 output1750) := by
  unfold output1751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1752 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1751)).val
theorem output1752_def : output1752 = (output1751) := by
  unfold output1752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1753 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1742 output1752)).val
theorem output1753_def : output1753 = (.seq output1742 output1752) := by
  unfold output1753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1754 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1753)).val
theorem output1754_def : output1754 = (output1753) := by
  unfold output1754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1755 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1740 output1754)).val
theorem output1755_def : output1755 = (.seq output1740 output1754) := by
  unfold output1755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1756 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1755)).val
theorem output1756_def : output1756 = (output1755) := by
  unfold output1756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1757 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1738 output1756)).val
theorem output1757_def : output1757 = (.seq output1738 output1756) := by
  unfold output1757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1758 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1757)).val
theorem output1758_def : output1758 = (output1757) := by
  unfold output1758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1759 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1736 output1758)).val
theorem output1759_def : output1759 = (.seq output1736 output1758) := by
  unfold output1759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1760 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1759)).val
theorem output1760_def : output1760 = (output1759) := by
  unfold output1760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1761 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1702 output1760)).val
theorem output1761_def : output1761 = (.seq output1702 output1760) := by
  unfold output1761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1762 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1761)).val
theorem output1762_def : output1762 = (output1761) := by
  unfold output1762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1763 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1702 output1762)).val
theorem output1763_def : output1763 = (.seq output1702 output1762) := by
  unfold output1763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1764 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1763)).val
theorem output1764_def : output1764 = (output1763) := by
  unfold output1764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1765 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64]))).val
theorem output1765_def : output1765 = (Flapjack.WordLangProgHOL.assign 66
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 52, Flapjack.WordLangExpHOL.const 9#64])) := by
  unfold output1765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1766 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1765)).val
theorem output1766_def : output1766 = (output1765) := by
  unfold output1766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1767 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1766 output1748)).val
theorem output1767_def : output1767 = (.seq output1766 output1748) := by
  unfold output1767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1768 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1767)).val
theorem output1768_def : output1768 = (output1767) := by
  unfold output1768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1769 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1768 output1748)).val
theorem output1769_def : output1769 = (.seq output1768 output1748) := by
  unfold output1769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1770 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1769)).val
theorem output1770_def : output1770 = (output1769) := by
  unfold output1770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1771 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1764 output1770)).val
theorem output1771_def : output1771 = (.seq output1764 output1770) := by
  unfold output1771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1772 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1771)).val
theorem output1772_def : output1772 = (output1771) := by
  unfold output1772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1773 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output1773_def : output1773 = (Flapjack.WordLangProgHOL.assign 22 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output1773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1774 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1773)).val
theorem output1774_def : output1774 = (output1773) := by
  unfold output1774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1775 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1774 output1748)).val
theorem output1775_def : output1775 = (.seq output1774 output1748) := by
  unfold output1775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1776 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1775)).val
theorem output1776_def : output1776 = (output1775) := by
  unfold output1776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1777 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1776 output1748)).val
theorem output1777_def : output1777 = (.seq output1776 output1748) := by
  unfold output1777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1778 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1777)).val
theorem output1778_def : output1778 = (output1777) := by
  unfold output1778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1779 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1772 output1778)).val
theorem output1779_def : output1779 = (.seq output1772 output1778) := by
  unfold output1779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1780 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1779)).val
theorem output1780_def : output1780 = (output1779) := by
  unfold output1780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1781 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 22))).val
theorem output1781_def : output1781 = (Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.var 22)) := by
  unfold output1781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1782 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1781)).val
theorem output1782_def : output1782 = (output1781) := by
  unfold output1782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1783 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24))).val
theorem output1783_def : output1783 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 24)) := by
  unfold output1783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1784 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1783)).val
theorem output1784_def : output1784 = (output1783) := by
  unfold output1784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1785 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 1#64))).val
theorem output1785_def : output1785 = (Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 1#64)) := by
  unfold output1785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1786 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1785)).val
theorem output1786_def : output1786 = (output1785) := by
  unfold output1786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1787 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output1787_def : output1787 = (Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output1787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1788 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1787)).val
theorem output1788_def : output1788 = (output1787) := by
  unfold output1788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1789 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.less) 78 (Flapjack.WordRegImm.reg 10) output1786 output1788) .tick)).val
theorem output1789_def : output1789 = (.seq (.ite (Flapjack.Cmp.less) 78 (Flapjack.WordRegImm.reg 10) output1786 output1788) .tick) := by
  unfold output1789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1790 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1789)).val
theorem output1790_def : output1790 = (output1789) := by
  unfold output1790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1791 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 78))).val
theorem output1791_def : output1791 = (Flapjack.WordLangProgHOL.assign 44 (Flapjack.WordLangExpHOL.var 78)) := by
  unfold output1791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1792 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1791)).val
theorem output1792_def : output1792 = (output1791) := by
  unfold output1792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1793 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 22))).val
theorem output1793_def : output1793 = (Flapjack.WordLangProgHOL.assign 42 (Flapjack.WordLangExpHOL.var 22)) := by
  unfold output1793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1794 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1793)).val
theorem output1794_def : output1794 = (output1793) := by
  unfold output1794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1795 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 24#64))).val
theorem output1795_def : output1795 = (Flapjack.WordLangProgHOL.assign 78 (Flapjack.WordLangExpHOL.const 24#64)) := by
  unfold output1795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1796 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1795)).val
theorem output1796_def : output1796 = (output1795) := by
  unfold output1796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1797 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 10 10 42 78)))).val
theorem output1797_def : output1797 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.longMul 10 10 42 78))) := by
  unfold output1797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1798 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1797)).val
theorem output1798_def : output1798 = (output1797) := by
  unfold output1798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1799 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1798 output1748)).val
theorem output1799_def : output1799 = (.seq output1798 output1748) := by
  unfold output1799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1800 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1799)).val
theorem output1800_def : output1800 = (output1799) := by
  unfold output1800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1801 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1796 output1800)).val
theorem output1801_def : output1801 = (.seq output1796 output1800) := by
  unfold output1801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1802 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1801)).val
theorem output1802_def : output1802 = (output1801) := by
  unfold output1802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1803 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1794 output1802)).val
theorem output1803_def : output1803 = (.seq output1794 output1802) := by
  unfold output1803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1804 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1803)).val
theorem output1804_def : output1804 = (output1803) := by
  unfold output1804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1805 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.var 10]))).val
theorem output1805_def : output1805 = (Flapjack.WordLangProgHOL.assign 44
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 60, Flapjack.WordLangExpHOL.var 10])) := by
  unfold output1805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1806 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1805)).val
theorem output1806_def : output1806 = (output1805) := by
  unfold output1806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1807 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]))).val
theorem output1807_def : output1807 = (Flapjack.WordLangProgHOL.assign 26
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64])) := by
  unfold output1807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1808 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1807)).val
theorem output1808_def : output1808 = (output1807) := by
  unfold output1808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1809 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 26))).val
theorem output1809_def : output1809 = (Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 26)) := by
  unfold output1809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1810 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1809)).val
theorem output1810_def : output1810 = (output1809) := by
  unfold output1810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1811 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 44)))).val
theorem output1811_def : output1811 = (Flapjack.WordLangProgHOL.assign 18 (Flapjack.WordLangExpHOL.load (Flapjack.WordLangExpHOL.var 44))) := by
  unfold output1811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1812 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1811)).val
theorem output1812_def : output1812 = (output1811) := by
  unfold output1812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1813 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([34],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 98))
    (some 177) [62, 18] (some (62, Flapjack.WordLangProgHOL.raise 62, 461, 99)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1813_def : output1813 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([34],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 98))
    (some 177) [62, 18] (some (62, Flapjack.WordLangProgHOL.raise 62, 461, 99)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1814 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1813)).val
theorem output1814_def : output1814 = (output1813) := by
  unfold output1814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1815 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1815_def : output1815 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1816 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1815)).val
theorem output1816_def : output1816 = (output1815) := by
  unfold output1816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1817 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1814 output1816)).val
theorem output1817_def : output1817 = (.seq output1814 output1816) := by
  unfold output1817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1818 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1817)).val
theorem output1818_def : output1818 = (output1817) := by
  unfold output1818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1819 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1812 output1818)).val
theorem output1819_def : output1819 = (.seq output1812 output1818) := by
  unfold output1819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1820 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1819)).val
theorem output1820_def : output1820 = (output1819) := by
  unfold output1820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1821 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1810 output1820)).val
theorem output1821_def : output1821 = (.seq output1810 output1820) := by
  unfold output1821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1822 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1821)).val
theorem output1822_def : output1822 = (output1821) := by
  unfold output1822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1823 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 34]))).val
theorem output1823_def : output1823 = (Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 34])) := by
  unfold output1823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1824 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1823)).val
theorem output1824_def : output1824 = (output1823) := by
  unfold output1824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1825 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 62))).val
theorem output1825_def : output1825 = (Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 62)) := by
  unfold output1825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1826 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1825)).val
theorem output1826_def : output1826 = (output1825) := by
  unfold output1826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1827 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1826 output1816)).val
theorem output1827_def : output1827 = (.seq output1826 output1816) := by
  unfold output1827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1828 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1827)).val
theorem output1828_def : output1828 = (output1827) := by
  unfold output1828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1829 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1828 output1816)).val
theorem output1829_def : output1829 = (.seq output1828 output1816) := by
  unfold output1829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1830 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1829)).val
theorem output1830_def : output1830 = (output1829) := by
  unfold output1830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1831 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1824 output1830)).val
theorem output1831_def : output1831 = (.seq output1824 output1830) := by
  unfold output1831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1832 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1831)).val
theorem output1832_def : output1832 = (output1831) := by
  unfold output1832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1833 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1816 output1832)).val
theorem output1833_def : output1833 = (.seq output1816 output1832) := by
  unfold output1833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1834 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1833)).val
theorem output1834_def : output1834 = (output1833) := by
  unfold output1834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1835 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1822 output1834)).val
theorem output1835_def : output1835 = (.seq output1822 output1834) := by
  unfold output1835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1836 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1835)).val
theorem output1836_def : output1836 = (output1835) := by
  unfold output1836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1837 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 26))).val
theorem output1837_def : output1837 = (Flapjack.WordLangProgHOL.assign 62 (Flapjack.WordLangExpHOL.var 26)) := by
  unfold output1837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1838 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1837)).val
theorem output1838_def : output1838 = (output1837) := by
  unfold output1838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1839 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64])))).val
theorem output1839_def : output1839 = (Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 8#64]))) := by
  unfold output1839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1840 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1839)).val
theorem output1840_def : output1840 = (output1839) := by
  unfold output1840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1841 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 16#64])))).val
theorem output1841_def : output1841 = (Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.load
    (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
      [Flapjack.WordLangExpHOL.var 44, Flapjack.WordLangExpHOL.const 16#64]))) := by
  unfold output1841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1842 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1841)).val
theorem output1842_def : output1842 = (output1841) := by
  unfold output1842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1843 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([34],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 100))
    (some 176) [62, 18, 54] (some (62, Flapjack.WordLangProgHOL.raise 62, 461, 101)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1843_def : output1843 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([34],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 100))
    (some 176) [62, 18, 54] (some (62, Flapjack.WordLangProgHOL.raise 62, 461, 101)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1844 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1843)).val
theorem output1844_def : output1844 = (output1843) := by
  unfold output1844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1845 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1845_def : output1845 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1846 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1845)).val
theorem output1846_def : output1846 = (output1845) := by
  unfold output1846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1847 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1844 output1846)).val
theorem output1847_def : output1847 = (.seq output1844 output1846) := by
  unfold output1847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1848 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1847)).val
theorem output1848_def : output1848 = (output1847) := by
  unfold output1848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1849 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1842 output1848)).val
theorem output1849_def : output1849 = (.seq output1842 output1848) := by
  unfold output1849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1850 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1849)).val
theorem output1850_def : output1850 = (output1849) := by
  unfold output1850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1851 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1840 output1850)).val
theorem output1851_def : output1851 = (.seq output1840 output1850) := by
  unfold output1851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1852 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1851)).val
theorem output1852_def : output1852 = (output1851) := by
  unfold output1852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1853 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1838 output1852)).val
theorem output1853_def : output1853 = (.seq output1838 output1852) := by
  unfold output1853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1854 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1853)).val
theorem output1854_def : output1854 = (output1853) := by
  unfold output1854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1855 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1836 output1854)).val
theorem output1855_def : output1855 = (.seq output1836 output1854) := by
  unfold output1855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1856 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1855)).val
theorem output1856_def : output1856 = (output1855) := by
  unfold output1856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1857 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 34]))).val
theorem output1857_def : output1857 = (Flapjack.WordLangProgHOL.assign 62
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 26, Flapjack.WordLangExpHOL.var 34])) := by
  unfold output1857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1858 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1857)).val
theorem output1858_def : output1858 = (output1857) := by
  unfold output1858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1859 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 62))).val
theorem output1859_def : output1859 = (Flapjack.WordLangProgHOL.assign 26 (Flapjack.WordLangExpHOL.var 62)) := by
  unfold output1859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1860 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1859)).val
theorem output1860_def : output1860 = (output1859) := by
  unfold output1860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1861 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1860 output1846)).val
theorem output1861_def : output1861 = (.seq output1860 output1846) := by
  unfold output1861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1862 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1861)).val
theorem output1862_def : output1862 = (output1861) := by
  unfold output1862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1863 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1862 output1846)).val
theorem output1863_def : output1863 = (.seq output1862 output1846) := by
  unfold output1863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1864 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1863)).val
theorem output1864_def : output1864 = (output1863) := by
  unfold output1864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1865 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1858 output1864)).val
theorem output1865_def : output1865 = (.seq output1858 output1864) := by
  unfold output1865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1866 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1865)).val
theorem output1866_def : output1866 = (output1865) := by
  unfold output1866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1867 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1846 output1866)).val
theorem output1867_def : output1867 = (.seq output1846 output1866) := by
  unfold output1867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1868 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1867)).val
theorem output1868_def : output1868 = (output1867) := by
  unfold output1868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1869 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1856 output1868)).val
theorem output1869_def : output1869 = (.seq output1856 output1868) := by
  unfold output1869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1870 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1869)).val
theorem output1870_def : output1870 = (output1869) := by
  unfold output1870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1871 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]]))).val
theorem output1871_def : output1871 = (Flapjack.WordLangProgHOL.assign 18
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]])) := by
  unfold output1871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1872 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1871)).val
theorem output1872_def : output1872 = (output1871) := by
  unfold output1872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1873 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([62],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 102))
    (some 180) [18] (some (18, Flapjack.WordLangProgHOL.raise 18, 461, 103)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1873_def : output1873 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([62],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 102))
    (some 180) [18] (some (18, Flapjack.WordLangProgHOL.raise 18, 461, 103)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1874 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1873)).val
theorem output1874_def : output1874 = (output1873) := by
  unfold output1874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1875 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1875_def : output1875 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1876 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1875)).val
theorem output1876_def : output1876 = (output1875) := by
  unfold output1876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1877 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1874 output1876)).val
theorem output1877_def : output1877 = (.seq output1874 output1876) := by
  unfold output1877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1878 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1877)).val
theorem output1878_def : output1878 = (output1877) := by
  unfold output1878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1879 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1872 output1878)).val
theorem output1879_def : output1879 = (.seq output1872 output1878) := by
  unfold output1879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1880 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1879)).val
theorem output1880_def : output1880 = (output1879) := by
  unfold output1880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1881 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.var 62]))).val
theorem output1881_def : output1881 = (Flapjack.WordLangProgHOL.assign 54
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.var 62])) := by
  unfold output1881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1882 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1881)).val
theorem output1882_def : output1882 = (output1881) := by
  unfold output1882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1883 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]))).val
theorem output1883_def : output1883 = (Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64])) := by
  unfold output1883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1884 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1883)).val
theorem output1884_def : output1884 = (output1883) := by
  unfold output1884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1885 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]]))).val
theorem output1885_def : output1885 = (Flapjack.WordLangProgHOL.assign 72
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]])) := by
  unfold output1885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1886 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1885)).val
theorem output1886_def : output1886 = (output1885) := by
  unfold output1886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1887 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([18],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 104))
    (some 77) [54, 36, 72] (some (54, Flapjack.WordLangProgHOL.raise 54, 461, 105)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1887_def : output1887 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([18],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 104))
    (some 77) [54, 36, 72] (some (54, Flapjack.WordLangProgHOL.raise 54, 461, 105)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1888 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1887)).val
theorem output1888_def : output1888 = (output1887) := by
  unfold output1888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1889 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1889_def : output1889 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1890 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1889)).val
theorem output1890_def : output1890 = (output1889) := by
  unfold output1890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1891 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1888 output1890)).val
theorem output1891_def : output1891 = (.seq output1888 output1890) := by
  unfold output1891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1892 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1891)).val
theorem output1892_def : output1892 = (output1891) := by
  unfold output1892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1893 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1886 output1892)).val
theorem output1893_def : output1893 = (.seq output1886 output1892) := by
  unfold output1893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1894 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1893)).val
theorem output1894_def : output1894 = (output1893) := by
  unfold output1894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1895 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1884 output1894)).val
theorem output1895_def : output1895 = (.seq output1884 output1894) := by
  unfold output1895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1896 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1895)).val
theorem output1896_def : output1896 = (output1895) := by
  unfold output1896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1897 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1882 output1896)).val
theorem output1897_def : output1897 = (.seq output1882 output1896) := by
  unfold output1897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1898 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1897)).val
theorem output1898_def : output1898 = (output1897) := by
  unfold output1898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1899 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1876 output1898)).val
theorem output1899_def : output1899 = (.seq output1876 output1898) := by
  unfold output1899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1900 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1899)).val
theorem output1900_def : output1900 = (output1899) := by
  unfold output1900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1901 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1876 output1900)).val
theorem output1901_def : output1901 = (.seq output1876 output1900) := by
  unfold output1901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1902 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1901)).val
theorem output1902_def : output1902 = (output1901) := by
  unfold output1902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1903 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 66))).val
theorem output1903_def : output1903 = (Flapjack.WordLangProgHOL.assign 54 (Flapjack.WordLangExpHOL.var 66)) := by
  unfold output1903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1904 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1903)).val
theorem output1904_def : output1904 = (output1903) := by
  unfold output1904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1905 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]]))).val
theorem output1905_def : output1905 = (Flapjack.WordLangProgHOL.assign 36
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
    [Flapjack.WordLangExpHOL.var 26,
      Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
        [Flapjack.WordLangExpHOL.var 66, Flapjack.WordLangExpHOL.const 9#64]])) := by
  unfold output1905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1906 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1905)).val
theorem output1906_def : output1906 = (output1905) := by
  unfold output1906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1907 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([18],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 106))
    (some 178) [54, 36] (some (54, Flapjack.WordLangProgHOL.raise 54, 461, 107)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output1907_def : output1907 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some
      ([18],
        (Flapjack.Spt.bs
            (Flapjack.Spt.bs
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)))))
              PUnit.unit
              (Flapjack.Spt.bs
                (Flapjack.Spt.bs
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                PUnit.unit
                (Flapjack.Spt.bs (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit (Flapjack.Spt.ls PUnit.unit))
                  PUnit.unit
                  (Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit
                    (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))))))
            PUnit.unit Flapjack.Spt.ln,
          Flapjack.Spt.ln),
        Flapjack.WordLangProgHOL.skip, 461, 106))
    (some 178) [54, 36] (some (54, Flapjack.WordLangProgHOL.raise 54, 461, 107)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output1907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1908 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1907)).val
theorem output1908_def : output1908 = (output1907) := by
  unfold output1908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1909 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1909_def : output1909 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1910 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1909)).val
theorem output1910_def : output1910 = (output1909) := by
  unfold output1910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1911 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1908 output1910)).val
theorem output1911_def : output1911 = (.seq output1908 output1910) := by
  unfold output1911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1912 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1911)).val
theorem output1912_def : output1912 = (output1911) := by
  unfold output1912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1913 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1906 output1912)).val
theorem output1913_def : output1913 = (.seq output1906 output1912) := by
  unfold output1913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1914 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1913)).val
theorem output1914_def : output1914 = (output1913) := by
  unfold output1914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1915 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1904 output1914)).val
theorem output1915_def : output1915 = (.seq output1904 output1914) := by
  unfold output1915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1916 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1915)).val
theorem output1916_def : output1916 = (output1915) := by
  unfold output1916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1917 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1890 output1916)).val
theorem output1917_def : output1917 = (.seq output1890 output1916) := by
  unfold output1917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1918 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1917)).val
theorem output1918_def : output1918 = (output1917) := by
  unfold output1918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1919 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1890 output1918)).val
theorem output1919_def : output1919 = (.seq output1890 output1918) := by
  unfold output1919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

end InitECandidate.Proofs.FrontendStages.Word.Checkpoints397
