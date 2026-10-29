import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk019
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages597.Parallel
@[irreducible, cbv_opaque] def input5120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 32#64))).val
theorem input5120_def : input5120 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 32#64)) := by
  unfold input5120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 32#64))).val
theorem output5120_def : output5120 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 25 32#64)) := by
  unfold output5120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5120_skip : Flapjack.WordAlloc.isSkip output5120 = false := by
  rw [output5120_def]
  kernel_rfl


def value929 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21, 17)])).val
theorem input5121_def : input5121 = (Flapjack.WordLangProgHOL.move 0 [(21, 17)]) := by
  unfold input5121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(21, 17)])).val
theorem output5121_def : output5121 = (Flapjack.WordLangProgHOL.move 0 [(21, 17)]) := by
  unfold output5121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5121_skip : Flapjack.WordAlloc.isSkip output5121 = false := by
  rw [output5121_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5121 input5120)).val
theorem input5122_def : input5122 = (.seq input5121 input5120) := by
  unfold input5122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5121 output5120)).val
theorem output5122_def : output5122 = (.seq output5121 output5120) := by
  unfold output5122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5122_skip : Flapjack.WordAlloc.isSkip output5122 = false := by
  rw [output5122_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5122 input5119)).val
theorem input5123_def : input5123 = (.seq input5122 input5119) := by
  unfold input5123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5122 output5119)).val
theorem output5123_def : output5123 = (.seq output5122 output5119) := by
  unfold output5123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5123_skip : Flapjack.WordAlloc.isSkip output5123 = false := by
  rw [output5123_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5123 input3582)).val
theorem input5124_def : input5124 = (.seq input5123 input3582) := by
  unfold input5124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5123 output3582)).val
theorem output5124_def : output5124 = (.seq output5123 output3582) := by
  unfold output5124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5124_skip : Flapjack.WordAlloc.isSkip output5124 = false := by
  rw [output5124_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5124 input3581)).val
theorem input5125_def : input5125 = (.seq input5124 input3581) := by
  unfold input5125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5124 output3581)).val
theorem output5125_def : output5125 = (.seq output5124 output3581) := by
  unfold output5125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5125_skip : Flapjack.WordAlloc.isSkip output5125 = false := by
  rw [output5125_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5125 input3580)).val
theorem input5126_def : input5126 = (.seq input5125 input3580) := by
  unfold input5126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5125 output3580)).val
theorem output5126_def : output5126 = (.seq output5125 output3580) := by
  unfold output5126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5126_skip : Flapjack.WordAlloc.isSkip output5126 = false := by
  rw [output5126_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5126 input3579)).val
theorem input5127_def : input5127 = (.seq input5126 input3579) := by
  unfold input5127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5126 output3579)).val
theorem output5127_def : output5127 = (.seq output5126 output3579) := by
  unfold output5127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5127_skip : Flapjack.WordAlloc.isSkip output5127 = false := by
  rw [output5127_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5127 input900)).val
theorem input5128_def : input5128 = (.seq input5127 input900) := by
  unfold input5128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5127 output900)).val
theorem output5128_def : output5128 = (.seq output5127 output900) := by
  unfold output5128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5128_skip : Flapjack.WordAlloc.isSkip output5128 = false := by
  rw [output5128_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5128 input899)).val
theorem input5129_def : input5129 = (.seq input5128 input899) := by
  unfold input5129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5128 output899)).val
theorem output5129_def : output5129 = (.seq output5128 output899) := by
  unfold output5129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5129_skip : Flapjack.WordAlloc.isSkip output5129 = false := by
  rw [output5129_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5129 input898)).val
theorem input5130_def : input5130 = (.seq input5129 input898) := by
  unfold input5130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5129 output898)).val
theorem output5130_def : output5130 = (.seq output5129 output898) := by
  unfold output5130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5130_skip : Flapjack.WordAlloc.isSkip output5130 = false := by
  rw [output5130_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5130 input897)).val
theorem input5131_def : input5131 = (.seq input5130 input897) := by
  unfold input5131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5130 output897)).val
theorem output5131_def : output5131 = (.seq output5130 output897) := by
  unfold output5131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5131_skip : Flapjack.WordAlloc.isSkip output5131 = false := by
  rw [output5131_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5131 input718)).val
theorem input5132_def : input5132 = (.seq input5131 input718) := by
  unfold input5132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5131 output718)).val
theorem output5132_def : output5132 = (.seq output5131 output718) := by
  unfold output5132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5132_skip : Flapjack.WordAlloc.isSkip output5132 = false := by
  rw [output5132_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5132 input717)).val
theorem input5133_def : input5133 = (.seq input5132 input717) := by
  unfold input5133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5132 output717)).val
theorem output5133_def : output5133 = (.seq output5132 output717) := by
  unfold output5133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5133_skip : Flapjack.WordAlloc.isSkip output5133 = false := by
  rw [output5133_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5133 input716)).val
theorem input5134_def : input5134 = (.seq input5133 input716) := by
  unfold input5134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5133 output716)).val
theorem output5134_def : output5134 = (.seq output5133 output716) := by
  unfold output5134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5134_skip : Flapjack.WordAlloc.isSkip output5134 = false := by
  rw [output5134_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5134 input715)).val
theorem input5135_def : input5135 = (.seq input5134 input715) := by
  unfold input5135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5134 output715)).val
theorem output5135_def : output5135 = (.seq output5134 output715) := by
  unfold output5135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5135_skip : Flapjack.WordAlloc.isSkip output5135 = false := by
  rw [output5135_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5135 input660)).val
theorem input5136_def : input5136 = (.seq input5135 input660) := by
  unfold input5136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5135 output660)).val
theorem output5136_def : output5136 = (.seq output5135 output660) := by
  unfold output5136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5136_skip : Flapjack.WordAlloc.isSkip output5136 = false := by
  rw [output5136_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5136 input659)).val
theorem input5137_def : input5137 = (.seq input5136 input659) := by
  unfold input5137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5136 output659)).val
theorem output5137_def : output5137 = (.seq output5136 output659) := by
  unfold output5137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5137_skip : Flapjack.WordAlloc.isSkip output5137 = false := by
  rw [output5137_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5137 input658)).val
theorem input5138_def : input5138 = (.seq input5137 input658) := by
  unfold input5138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5137 output658)).val
theorem output5138_def : output5138 = (.seq output5137 output658) := by
  unfold output5138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5138_skip : Flapjack.WordAlloc.isSkip output5138 = false := by
  rw [output5138_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5138 input657)).val
theorem input5139_def : input5139 = (.seq input5138 input657) := by
  unfold input5139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5138 output657)).val
theorem output5139_def : output5139 = (.seq output5138 output657) := by
  unfold output5139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5139_skip : Flapjack.WordAlloc.isSkip output5139 = false := by
  rw [output5139_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5139 input606)).val
theorem input5140_def : input5140 = (.seq input5139 input606) := by
  unfold input5140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5139 output606)).val
theorem output5140_def : output5140 = (.seq output5139 output606) := by
  unfold output5140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5140_skip : Flapjack.WordAlloc.isSkip output5140 = false := by
  rw [output5140_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5140 input605)).val
theorem input5141_def : input5141 = (.seq input5140 input605) := by
  unfold input5141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5140 output605)).val
theorem output5141_def : output5141 = (.seq output5140 output605) := by
  unfold output5141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5141_skip : Flapjack.WordAlloc.isSkip output5141 = false := by
  rw [output5141_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5141 input604)).val
theorem input5142_def : input5142 = (.seq input5141 input604) := by
  unfold input5142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5141 output604)).val
theorem output5142_def : output5142 = (.seq output5141 output604) := by
  unfold output5142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5142_skip : Flapjack.WordAlloc.isSkip output5142 = false := by
  rw [output5142_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5142 input603)).val
theorem input5143_def : input5143 = (.seq input5142 input603) := by
  unfold input5143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5142 output603)).val
theorem output5143_def : output5143 = (.seq output5142 output603) := by
  unfold output5143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5143_skip : Flapjack.WordAlloc.isSkip output5143 = false := by
  rw [output5143_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5143 input552)).val
theorem input5144_def : input5144 = (.seq input5143 input552) := by
  unfold input5144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5143 output552)).val
theorem output5144_def : output5144 = (.seq output5143 output552) := by
  unfold output5144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5144_skip : Flapjack.WordAlloc.isSkip output5144 = false := by
  rw [output5144_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5144 input551)).val
theorem input5145_def : input5145 = (.seq input5144 input551) := by
  unfold input5145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5144 output551)).val
theorem output5145_def : output5145 = (.seq output5144 output551) := by
  unfold output5145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5145_skip : Flapjack.WordAlloc.isSkip output5145 = false := by
  rw [output5145_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5145 input550)).val
theorem input5146_def : input5146 = (.seq input5145 input550) := by
  unfold input5146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5145 output550)).val
theorem output5146_def : output5146 = (.seq output5145 output550) := by
  unfold output5146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5146_skip : Flapjack.WordAlloc.isSkip output5146 = false := by
  rw [output5146_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5146 input549)).val
theorem input5147_def : input5147 = (.seq input5146 input549) := by
  unfold input5147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5146 output549)).val
theorem output5147_def : output5147 = (.seq output5146 output549) := by
  unfold output5147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5147_skip : Flapjack.WordAlloc.isSkip output5147 = false := by
  rw [output5147_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5147 input498)).val
theorem input5148_def : input5148 = (.seq input5147 input498) := by
  unfold input5148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5147 output498)).val
theorem output5148_def : output5148 = (.seq output5147 output498) := by
  unfold output5148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5148_skip : Flapjack.WordAlloc.isSkip output5148 = false := by
  rw [output5148_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5148 input497)).val
theorem input5149_def : input5149 = (.seq input5148 input497) := by
  unfold input5149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5148 output497)).val
theorem output5149_def : output5149 = (.seq output5148 output497) := by
  unfold output5149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5149_skip : Flapjack.WordAlloc.isSkip output5149 = false := by
  rw [output5149_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5149 input496)).val
theorem input5150_def : input5150 = (.seq input5149 input496) := by
  unfold input5150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5149 output496)).val
theorem output5150_def : output5150 = (.seq output5149 output496) := by
  unfold output5150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5150_skip : Flapjack.WordAlloc.isSkip output5150 = false := by
  rw [output5150_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5150 input495)).val
theorem input5151_def : input5151 = (.seq input5150 input495) := by
  unfold input5151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5150 output495)).val
theorem output5151_def : output5151 = (.seq output5150 output495) := by
  unfold output5151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5151_skip : Flapjack.WordAlloc.isSkip output5151 = false := by
  rw [output5151_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5151 input444)).val
theorem input5152_def : input5152 = (.seq input5151 input444) := by
  unfold input5152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5151 output444)).val
theorem output5152_def : output5152 = (.seq output5151 output444) := by
  unfold output5152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5152_skip : Flapjack.WordAlloc.isSkip output5152 = false := by
  rw [output5152_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5152 input443)).val
theorem input5153_def : input5153 = (.seq input5152 input443) := by
  unfold input5153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5152 output443)).val
theorem output5153_def : output5153 = (.seq output5152 output443) := by
  unfold output5153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5153_skip : Flapjack.WordAlloc.isSkip output5153 = false := by
  rw [output5153_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5153 input442)).val
theorem input5154_def : input5154 = (.seq input5153 input442) := by
  unfold input5154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5153 output442)).val
theorem output5154_def : output5154 = (.seq output5153 output442) := by
  unfold output5154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5154_skip : Flapjack.WordAlloc.isSkip output5154 = false := by
  rw [output5154_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5154 input441)).val
theorem input5155_def : input5155 = (.seq input5154 input441) := by
  unfold input5155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5154 output441)).val
theorem output5155_def : output5155 = (.seq output5154 output441) := by
  unfold output5155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5155_skip : Flapjack.WordAlloc.isSkip output5155 = false := by
  rw [output5155_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5155 input390)).val
theorem input5156_def : input5156 = (.seq input5155 input390) := by
  unfold input5156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5155 output390)).val
theorem output5156_def : output5156 = (.seq output5155 output390) := by
  unfold output5156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5156_skip : Flapjack.WordAlloc.isSkip output5156 = false := by
  rw [output5156_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5156 input389)).val
theorem input5157_def : input5157 = (.seq input5156 input389) := by
  unfold input5157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5156 output389)).val
theorem output5157_def : output5157 = (.seq output5156 output389) := by
  unfold output5157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5157_skip : Flapjack.WordAlloc.isSkip output5157 = false := by
  rw [output5157_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5157 input388)).val
theorem input5158_def : input5158 = (.seq input5157 input388) := by
  unfold input5158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5157 output388)).val
theorem output5158_def : output5158 = (.seq output5157 output388) := by
  unfold output5158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5158_skip : Flapjack.WordAlloc.isSkip output5158 = false := by
  rw [output5158_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5158 input387)).val
theorem input5159_def : input5159 = (.seq input5158 input387) := by
  unfold input5159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5158 output387)).val
theorem output5159_def : output5159 = (.seq output5158 output387) := by
  unfold output5159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5159_skip : Flapjack.WordAlloc.isSkip output5159 = false := by
  rw [output5159_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5159 input336)).val
theorem input5160_def : input5160 = (.seq input5159 input336) := by
  unfold input5160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5159 output336)).val
theorem output5160_def : output5160 = (.seq output5159 output336) := by
  unfold output5160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5160_skip : Flapjack.WordAlloc.isSkip output5160 = false := by
  rw [output5160_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5160 input335)).val
theorem input5161_def : input5161 = (.seq input5160 input335) := by
  unfold input5161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5160 output335)).val
theorem output5161_def : output5161 = (.seq output5160 output335) := by
  unfold output5161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5161_skip : Flapjack.WordAlloc.isSkip output5161 = false := by
  rw [output5161_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5161 input334)).val
theorem input5162_def : input5162 = (.seq input5161 input334) := by
  unfold input5162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5161 output334)).val
theorem output5162_def : output5162 = (.seq output5161 output334) := by
  unfold output5162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5162_skip : Flapjack.WordAlloc.isSkip output5162 = false := by
  rw [output5162_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5162 input333)).val
theorem input5163_def : input5163 = (.seq input5162 input333) := by
  unfold input5163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5162 output333)).val
theorem output5163_def : output5163 = (.seq output5162 output333) := by
  unfold output5163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5163_skip : Flapjack.WordAlloc.isSkip output5163 = false := by
  rw [output5163_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5163 input282)).val
theorem input5164_def : input5164 = (.seq input5163 input282) := by
  unfold input5164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5163 output282)).val
theorem output5164_def : output5164 = (.seq output5163 output282) := by
  unfold output5164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5164_skip : Flapjack.WordAlloc.isSkip output5164 = false := by
  rw [output5164_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5164 input281)).val
theorem input5165_def : input5165 = (.seq input5164 input281) := by
  unfold input5165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5164 output281)).val
theorem output5165_def : output5165 = (.seq output5164 output281) := by
  unfold output5165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5165_skip : Flapjack.WordAlloc.isSkip output5165 = false := by
  rw [output5165_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5165 input280)).val
theorem input5166_def : input5166 = (.seq input5165 input280) := by
  unfold input5166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5165 output280)).val
theorem output5166_def : output5166 = (.seq output5165 output280) := by
  unfold output5166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5166_skip : Flapjack.WordAlloc.isSkip output5166 = false := by
  rw [output5166_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5166 input279)).val
theorem input5167_def : input5167 = (.seq input5166 input279) := by
  unfold input5167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5166 output279)).val
theorem output5167_def : output5167 = (.seq output5166 output279) := by
  unfold output5167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5167_skip : Flapjack.WordAlloc.isSkip output5167 = false := by
  rw [output5167_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5167 input228)).val
theorem input5168_def : input5168 = (.seq input5167 input228) := by
  unfold input5168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5167 output228)).val
theorem output5168_def : output5168 = (.seq output5167 output228) := by
  unfold output5168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5168_skip : Flapjack.WordAlloc.isSkip output5168 = false := by
  rw [output5168_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5168 input227)).val
theorem input5169_def : input5169 = (.seq input5168 input227) := by
  unfold input5169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5168 output227)).val
theorem output5169_def : output5169 = (.seq output5168 output227) := by
  unfold output5169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5169_skip : Flapjack.WordAlloc.isSkip output5169 = false := by
  rw [output5169_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5169 input226)).val
theorem input5170_def : input5170 = (.seq input5169 input226) := by
  unfold input5170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5169 output226)).val
theorem output5170_def : output5170 = (.seq output5169 output226) := by
  unfold output5170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5170_skip : Flapjack.WordAlloc.isSkip output5170 = false := by
  rw [output5170_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5170 input225)).val
theorem input5171_def : input5171 = (.seq input5170 input225) := by
  unfold input5171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5170 output225)).val
theorem output5171_def : output5171 = (.seq output5170 output225) := by
  unfold output5171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5171_skip : Flapjack.WordAlloc.isSkip output5171 = false := by
  rw [output5171_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5171 input174)).val
theorem input5172_def : input5172 = (.seq input5171 input174) := by
  unfold input5172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5171 output174)).val
theorem output5172_def : output5172 = (.seq output5171 output174) := by
  unfold output5172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5172_skip : Flapjack.WordAlloc.isSkip output5172 = false := by
  rw [output5172_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5172 input173)).val
theorem input5173_def : input5173 = (.seq input5172 input173) := by
  unfold input5173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5172 output173)).val
theorem output5173_def : output5173 = (.seq output5172 output173) := by
  unfold output5173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5173_skip : Flapjack.WordAlloc.isSkip output5173 = false := by
  rw [output5173_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5173 input172)).val
theorem input5174_def : input5174 = (.seq input5173 input172) := by
  unfold input5174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5173 output172)).val
theorem output5174_def : output5174 = (.seq output5173 output172) := by
  unfold output5174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5174_skip : Flapjack.WordAlloc.isSkip output5174 = false := by
  rw [output5174_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5174 input171)).val
theorem input5175_def : input5175 = (.seq input5174 input171) := by
  unfold input5175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5174 output171)).val
theorem output5175_def : output5175 = (.seq output5174 output171) := by
  unfold output5175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5175_skip : Flapjack.WordAlloc.isSkip output5175 = false := by
  rw [output5175_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5175 input120)).val
theorem input5176_def : input5176 = (.seq input5175 input120) := by
  unfold input5176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5175 output120)).val
theorem output5176_def : output5176 = (.seq output5175 output120) := by
  unfold output5176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5176_skip : Flapjack.WordAlloc.isSkip output5176 = false := by
  rw [output5176_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5176 input119)).val
theorem input5177_def : input5177 = (.seq input5176 input119) := by
  unfold input5177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5176 output119)).val
theorem output5177_def : output5177 = (.seq output5176 output119) := by
  unfold output5177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5177_skip : Flapjack.WordAlloc.isSkip output5177 = false := by
  rw [output5177_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5177 input118)).val
theorem input5178_def : input5178 = (.seq input5177 input118) := by
  unfold input5178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5177 output118)).val
theorem output5178_def : output5178 = (.seq output5177 output118) := by
  unfold output5178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5178_skip : Flapjack.WordAlloc.isSkip output5178 = false := by
  rw [output5178_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5178 input117)).val
theorem input5179_def : input5179 = (.seq input5178 input117) := by
  unfold input5179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5178 output117)).val
theorem output5179_def : output5179 = (.seq output5178 output117) := by
  unfold output5179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5179_skip : Flapjack.WordAlloc.isSkip output5179 = false := by
  rw [output5179_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5179 input66)).val
theorem input5180_def : input5180 = (.seq input5179 input66) := by
  unfold input5180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5179 output66)).val
theorem output5180_def : output5180 = (.seq output5179 output66) := by
  unfold output5180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5180_skip : Flapjack.WordAlloc.isSkip output5180 = false := by
  rw [output5180_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5180 input65)).val
theorem input5181_def : input5181 = (.seq input5180 input65) := by
  unfold input5181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5180 output65)).val
theorem output5181_def : output5181 = (.seq output5180 output65) := by
  unfold output5181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5181_skip : Flapjack.WordAlloc.isSkip output5181 = false := by
  rw [output5181_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5181 input64)).val
theorem input5182_def : input5182 = (.seq input5181 input64) := by
  unfold input5182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5181 output64)).val
theorem output5182_def : output5182 = (.seq output5181 output64) := by
  unfold output5182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5182_skip : Flapjack.WordAlloc.isSkip output5182 = false := by
  rw [output5182_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5182 input63)).val
theorem input5183_def : input5183 = (.seq input5182 input63) := by
  unfold input5183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5182 output63)).val
theorem output5183_def : output5183 = (.seq output5182 output63) := by
  unfold output5183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5183_skip : Flapjack.WordAlloc.isSkip output5183 = false := by
  rw [output5183_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5183 input12)).val
theorem input5184_def : input5184 = (.seq input5183 input12) := by
  unfold input5184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5183 output12)).val
theorem output5184_def : output5184 = (.seq output5183 output12) := by
  unfold output5184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5184_skip : Flapjack.WordAlloc.isSkip output5184 = false := by
  rw [output5184_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5184 input11)).val
theorem input5185_def : input5185 = (.seq input5184 input11) := by
  unfold input5185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5184 output11)).val
theorem output5185_def : output5185 = (.seq output5184 output11) := by
  unfold output5185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5185_skip : Flapjack.WordAlloc.isSkip output5185 = false := by
  rw [output5185_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5185 input10)).val
theorem input5186_def : input5186 = (.seq input5185 input10) := by
  unfold input5186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5185 output10)).val
theorem output5186_def : output5186 = (.seq output5185 output10) := by
  unfold output5186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5186_skip : Flapjack.WordAlloc.isSkip output5186 = false := by
  rw [output5186_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5186 input7)).val
theorem input5187_def : input5187 = (.seq input5186 input7) := by
  unfold input5187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5186 output7)).val
theorem output5187_def : output5187 = (.seq output5186 output7) := by
  unfold output5187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5187_skip : Flapjack.WordAlloc.isSkip output5187 = false := by
  rw [output5187_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5187 input6)).val
theorem input5188_def : input5188 = (.seq input5187 input6) := by
  unfold input5188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5187 output6)).val
theorem output5188_def : output5188 = (.seq output5187 output6) := by
  unfold output5188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5188_skip : Flapjack.WordAlloc.isSkip output5188 = false := by
  rw [output5188_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5188 input3)).val
theorem input5189_def : input5189 = (.seq input5188 input3) := by
  unfold input5189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5188 output3)).val
theorem output5189_def : output5189 = (.seq output5188 output3) := by
  unfold output5189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5189_skip : Flapjack.WordAlloc.isSkip output5189 = false := by
  rw [output5189_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5189 input2)).val
theorem input5190_def : input5190 = (.seq input5189 input2) := by
  unfold input5190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5189 output2)).val
theorem output5190_def : output5190 = (.seq output5189 output2) := by
  unfold output5190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5190_skip : Flapjack.WordAlloc.isSkip output5190 = false := by
  rw [output5190_def]
  kernel_rfl


def value930 : Flapjack.NumSet :=
Flapjack.Spt.bs (Flapjack.Spt.ls PUnit.unit) PUnit.unit Flapjack.Spt.ln

@[irreducible, cbv_opaque] def input5191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)])).val
theorem input5191_def : input5191 = (Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]) := by
  unfold input5191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)])).val
theorem output5191_def : output5191 = (Flapjack.WordLangProgHOL.move 1 [(13, 0), (17, 2)]) := by
  unfold output5191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5191_skip : Flapjack.WordAlloc.isSkip output5191 = false := by
  rw [output5191_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5191 input5190)).val
theorem input5192_def : input5192 = (.seq input5191 input5190) := by
  unfold input5192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5191 output5190)).val
theorem output5192_def : output5192 = (.seq output5191 output5190) := by
  unfold output5192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5192_skip : Flapjack.WordAlloc.isSkip output5192 = false := by
  rw [output5192_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages597.Parallel
