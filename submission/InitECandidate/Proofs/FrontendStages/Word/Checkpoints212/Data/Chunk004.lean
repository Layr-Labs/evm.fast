import InitECandidate.Proofs.LoopWordComputation
import InitECandidate.Proofs.FrontendStages.Word.Variables212
import InitECandidate.Proofs.WordStages.Source276
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints212.Data.Chunk003
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints212
@[irreducible, cbv_opaque] def output1536 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1 output1535)).val
theorem output1536_def : output1536 = (.seq output1 output1535) := by
  unfold output1536
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1537 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1536)).val
theorem output1537_def : output1537 = (output1536) := by
  unfold output1537
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1538 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1 output1537)).val
theorem output1538_def : output1538 = (.seq output1 output1537) := by
  unfold output1538
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1539 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1538)).val
theorem output1539_def : output1539 = (output1538) := by
  unfold output1539
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1540 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1 output1539)).val
theorem output1540_def : output1540 = (.seq output1 output1539) := by
  unfold output1540
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1541 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1540)).val
theorem output1541_def : output1541 = (output1540) := by
  unfold output1541
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1542 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output1 output1541)).val
theorem output1542_def : output1542 = (.seq output1 output1541) := by
  unfold output1542
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output1543 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output1542)).val
theorem output1543_def : output1543 = (output1542) := by
  unfold output1543
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

end InitECandidate.Proofs.FrontendStages.Word.Checkpoints212
