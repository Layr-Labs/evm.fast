import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk058
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713.Parallel
@[irreducible, cbv_opaque] def input15104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15103 input9206)).val
theorem input15104_def : input15104 = (.seq input15103 input9206) := by
  unfold input15104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15103 output9206)).val
theorem output15104_def : output15104 = (.seq output15103 output9206) := by
  unfold output15104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15104_skip : Flapjack.WordAlloc.isSkip output15104 = false := by
  rw [output15104_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15104 input9203)).val
theorem input15105_def : input15105 = (.seq input15104 input9203) := by
  unfold input15105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15104 output9203)).val
theorem output15105_def : output15105 = (.seq output15104 output9203) := by
  unfold output15105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15105_skip : Flapjack.WordAlloc.isSkip output15105 = false := by
  rw [output15105_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15105 input9192)).val
theorem input15106_def : input15106 = (.seq input15105 input9192) := by
  unfold input15106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15105)).val
theorem output15106_def : output15106 = (output15105) := by
  unfold output15106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15106_skip : Flapjack.WordAlloc.isSkip output15106 = false := by
  rw [output15106_def]
  exact output15105_skip


@[irreducible, cbv_opaque] def input15107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15106 input9191)).val
theorem input15107_def : input15107 = (.seq input15106 input9191) := by
  unfold input15107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15106 output9191)).val
theorem output15107_def : output15107 = (.seq output15106 output9191) := by
  unfold output15107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15107_skip : Flapjack.WordAlloc.isSkip output15107 = false := by
  rw [output15107_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15107 input9190)).val
theorem input15108_def : input15108 = (.seq input15107 input9190) := by
  unfold input15108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15107 output9190)).val
theorem output15108_def : output15108 = (.seq output15107 output9190) := by
  unfold output15108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15108_skip : Flapjack.WordAlloc.isSkip output15108 = false := by
  rw [output15108_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15108 input9187)).val
theorem input15109_def : input15109 = (.seq input15108 input9187) := by
  unfold input15109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15108 output9187)).val
theorem output15109_def : output15109 = (.seq output15108 output9187) := by
  unfold output15109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15109_skip : Flapjack.WordAlloc.isSkip output15109 = false := by
  rw [output15109_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15109 input9176)).val
theorem input15110_def : input15110 = (.seq input15109 input9176) := by
  unfold input15110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15109)).val
theorem output15110_def : output15110 = (output15109) := by
  unfold output15110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15110_skip : Flapjack.WordAlloc.isSkip output15110 = false := by
  rw [output15110_def]
  exact output15109_skip


@[irreducible, cbv_opaque] def input15111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15110 input9175)).val
theorem input15111_def : input15111 = (.seq input15110 input9175) := by
  unfold input15111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15110 output9175)).val
theorem output15111_def : output15111 = (.seq output15110 output9175) := by
  unfold output15111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15111_skip : Flapjack.WordAlloc.isSkip output15111 = false := by
  rw [output15111_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15111 input9174)).val
theorem input15112_def : input15112 = (.seq input15111 input9174) := by
  unfold input15112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15111 output9174)).val
theorem output15112_def : output15112 = (.seq output15111 output9174) := by
  unfold output15112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15112_skip : Flapjack.WordAlloc.isSkip output15112 = false := by
  rw [output15112_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15112 input9171)).val
theorem input15113_def : input15113 = (.seq input15112 input9171) := by
  unfold input15113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15112 output9171)).val
theorem output15113_def : output15113 = (.seq output15112 output9171) := by
  unfold output15113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15113_skip : Flapjack.WordAlloc.isSkip output15113 = false := by
  rw [output15113_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15113 input9160)).val
theorem input15114_def : input15114 = (.seq input15113 input9160) := by
  unfold input15114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15113)).val
theorem output15114_def : output15114 = (output15113) := by
  unfold output15114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15114_skip : Flapjack.WordAlloc.isSkip output15114 = false := by
  rw [output15114_def]
  exact output15113_skip


@[irreducible, cbv_opaque] def input15115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15114 input9159)).val
theorem input15115_def : input15115 = (.seq input15114 input9159) := by
  unfold input15115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15114 output9159)).val
theorem output15115_def : output15115 = (.seq output15114 output9159) := by
  unfold output15115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15115_skip : Flapjack.WordAlloc.isSkip output15115 = false := by
  rw [output15115_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15115 input9158)).val
theorem input15116_def : input15116 = (.seq input15115 input9158) := by
  unfold input15116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15115 output9158)).val
theorem output15116_def : output15116 = (.seq output15115 output9158) := by
  unfold output15116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15116_skip : Flapjack.WordAlloc.isSkip output15116 = false := by
  rw [output15116_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15116 input9155)).val
theorem input15117_def : input15117 = (.seq input15116 input9155) := by
  unfold input15117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15116 output9155)).val
theorem output15117_def : output15117 = (.seq output15116 output9155) := by
  unfold output15117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15117_skip : Flapjack.WordAlloc.isSkip output15117 = false := by
  rw [output15117_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15117 input9144)).val
theorem input15118_def : input15118 = (.seq input15117 input9144) := by
  unfold input15118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15117)).val
theorem output15118_def : output15118 = (output15117) := by
  unfold output15118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15118_skip : Flapjack.WordAlloc.isSkip output15118 = false := by
  rw [output15118_def]
  exact output15117_skip


@[irreducible, cbv_opaque] def input15119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15118 input9143)).val
theorem input15119_def : input15119 = (.seq input15118 input9143) := by
  unfold input15119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15118 output9143)).val
theorem output15119_def : output15119 = (.seq output15118 output9143) := by
  unfold output15119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15119_skip : Flapjack.WordAlloc.isSkip output15119 = false := by
  rw [output15119_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15119 input9142)).val
theorem input15120_def : input15120 = (.seq input15119 input9142) := by
  unfold input15120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15119 output9142)).val
theorem output15120_def : output15120 = (.seq output15119 output9142) := by
  unfold output15120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15120_skip : Flapjack.WordAlloc.isSkip output15120 = false := by
  rw [output15120_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15120 input9139)).val
theorem input15121_def : input15121 = (.seq input15120 input9139) := by
  unfold input15121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15120 output9139)).val
theorem output15121_def : output15121 = (.seq output15120 output9139) := by
  unfold output15121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15121_skip : Flapjack.WordAlloc.isSkip output15121 = false := by
  rw [output15121_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15121 input9128)).val
theorem input15122_def : input15122 = (.seq input15121 input9128) := by
  unfold input15122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15121)).val
theorem output15122_def : output15122 = (output15121) := by
  unfold output15122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15122_skip : Flapjack.WordAlloc.isSkip output15122 = false := by
  rw [output15122_def]
  exact output15121_skip


@[irreducible, cbv_opaque] def input15123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15122 input9127)).val
theorem input15123_def : input15123 = (.seq input15122 input9127) := by
  unfold input15123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15122 output9127)).val
theorem output15123_def : output15123 = (.seq output15122 output9127) := by
  unfold output15123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15123_skip : Flapjack.WordAlloc.isSkip output15123 = false := by
  rw [output15123_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15123 input9126)).val
theorem input15124_def : input15124 = (.seq input15123 input9126) := by
  unfold input15124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15123 output9126)).val
theorem output15124_def : output15124 = (.seq output15123 output9126) := by
  unfold output15124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15124_skip : Flapjack.WordAlloc.isSkip output15124 = false := by
  rw [output15124_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15124 input9123)).val
theorem input15125_def : input15125 = (.seq input15124 input9123) := by
  unfold input15125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15124 output9123)).val
theorem output15125_def : output15125 = (.seq output15124 output9123) := by
  unfold output15125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15125_skip : Flapjack.WordAlloc.isSkip output15125 = false := by
  rw [output15125_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15125 input9112)).val
theorem input15126_def : input15126 = (.seq input15125 input9112) := by
  unfold input15126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15125)).val
theorem output15126_def : output15126 = (output15125) := by
  unfold output15126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15126_skip : Flapjack.WordAlloc.isSkip output15126 = false := by
  rw [output15126_def]
  exact output15125_skip


@[irreducible, cbv_opaque] def input15127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15126 input9111)).val
theorem input15127_def : input15127 = (.seq input15126 input9111) := by
  unfold input15127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15126 output9111)).val
theorem output15127_def : output15127 = (.seq output15126 output9111) := by
  unfold output15127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15127_skip : Flapjack.WordAlloc.isSkip output15127 = false := by
  rw [output15127_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15127 input9110)).val
theorem input15128_def : input15128 = (.seq input15127 input9110) := by
  unfold input15128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15127 output9110)).val
theorem output15128_def : output15128 = (.seq output15127 output9110) := by
  unfold output15128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15128_skip : Flapjack.WordAlloc.isSkip output15128 = false := by
  rw [output15128_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15128 input9107)).val
theorem input15129_def : input15129 = (.seq input15128 input9107) := by
  unfold input15129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15128 output9107)).val
theorem output15129_def : output15129 = (.seq output15128 output9107) := by
  unfold output15129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15129_skip : Flapjack.WordAlloc.isSkip output15129 = false := by
  rw [output15129_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15129 input9096)).val
theorem input15130_def : input15130 = (.seq input15129 input9096) := by
  unfold input15130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15129)).val
theorem output15130_def : output15130 = (output15129) := by
  unfold output15130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15130_skip : Flapjack.WordAlloc.isSkip output15130 = false := by
  rw [output15130_def]
  exact output15129_skip


@[irreducible, cbv_opaque] def input15131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15130 input9095)).val
theorem input15131_def : input15131 = (.seq input15130 input9095) := by
  unfold input15131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15130 output9095)).val
theorem output15131_def : output15131 = (.seq output15130 output9095) := by
  unfold output15131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15131_skip : Flapjack.WordAlloc.isSkip output15131 = false := by
  rw [output15131_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15131 input9094)).val
theorem input15132_def : input15132 = (.seq input15131 input9094) := by
  unfold input15132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15131 output9094)).val
theorem output15132_def : output15132 = (.seq output15131 output9094) := by
  unfold output15132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15132_skip : Flapjack.WordAlloc.isSkip output15132 = false := by
  rw [output15132_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15132 input9091)).val
theorem input15133_def : input15133 = (.seq input15132 input9091) := by
  unfold input15133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15132 output9091)).val
theorem output15133_def : output15133 = (.seq output15132 output9091) := by
  unfold output15133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15133_skip : Flapjack.WordAlloc.isSkip output15133 = false := by
  rw [output15133_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15133 input9080)).val
theorem input15134_def : input15134 = (.seq input15133 input9080) := by
  unfold input15134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15133)).val
theorem output15134_def : output15134 = (output15133) := by
  unfold output15134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15134_skip : Flapjack.WordAlloc.isSkip output15134 = false := by
  rw [output15134_def]
  exact output15133_skip


@[irreducible, cbv_opaque] def input15135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15134 input9079)).val
theorem input15135_def : input15135 = (.seq input15134 input9079) := by
  unfold input15135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15134 output9079)).val
theorem output15135_def : output15135 = (.seq output15134 output9079) := by
  unfold output15135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15135_skip : Flapjack.WordAlloc.isSkip output15135 = false := by
  rw [output15135_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15135 input9078)).val
theorem input15136_def : input15136 = (.seq input15135 input9078) := by
  unfold input15136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15135 output9078)).val
theorem output15136_def : output15136 = (.seq output15135 output9078) := by
  unfold output15136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15136_skip : Flapjack.WordAlloc.isSkip output15136 = false := by
  rw [output15136_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15136 input9075)).val
theorem input15137_def : input15137 = (.seq input15136 input9075) := by
  unfold input15137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15136 output9075)).val
theorem output15137_def : output15137 = (.seq output15136 output9075) := by
  unfold output15137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15137_skip : Flapjack.WordAlloc.isSkip output15137 = false := by
  rw [output15137_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15137 input9064)).val
theorem input15138_def : input15138 = (.seq input15137 input9064) := by
  unfold input15138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15137)).val
theorem output15138_def : output15138 = (output15137) := by
  unfold output15138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15138_skip : Flapjack.WordAlloc.isSkip output15138 = false := by
  rw [output15138_def]
  exact output15137_skip


@[irreducible, cbv_opaque] def input15139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15138 input9063)).val
theorem input15139_def : input15139 = (.seq input15138 input9063) := by
  unfold input15139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15138 output9063)).val
theorem output15139_def : output15139 = (.seq output15138 output9063) := by
  unfold output15139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15139_skip : Flapjack.WordAlloc.isSkip output15139 = false := by
  rw [output15139_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15139 input9062)).val
theorem input15140_def : input15140 = (.seq input15139 input9062) := by
  unfold input15140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15139 output9062)).val
theorem output15140_def : output15140 = (.seq output15139 output9062) := by
  unfold output15140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15140_skip : Flapjack.WordAlloc.isSkip output15140 = false := by
  rw [output15140_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15140 input9059)).val
theorem input15141_def : input15141 = (.seq input15140 input9059) := by
  unfold input15141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15140 output9059)).val
theorem output15141_def : output15141 = (.seq output15140 output9059) := by
  unfold output15141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15141_skip : Flapjack.WordAlloc.isSkip output15141 = false := by
  rw [output15141_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15141 input9048)).val
theorem input15142_def : input15142 = (.seq input15141 input9048) := by
  unfold input15142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15141)).val
theorem output15142_def : output15142 = (output15141) := by
  unfold output15142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15142_skip : Flapjack.WordAlloc.isSkip output15142 = false := by
  rw [output15142_def]
  exact output15141_skip


@[irreducible, cbv_opaque] def input15143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15142 input9047)).val
theorem input15143_def : input15143 = (.seq input15142 input9047) := by
  unfold input15143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15142 output9047)).val
theorem output15143_def : output15143 = (.seq output15142 output9047) := by
  unfold output15143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15143_skip : Flapjack.WordAlloc.isSkip output15143 = false := by
  rw [output15143_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15143 input9046)).val
theorem input15144_def : input15144 = (.seq input15143 input9046) := by
  unfold input15144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15143 output9046)).val
theorem output15144_def : output15144 = (.seq output15143 output9046) := by
  unfold output15144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15144_skip : Flapjack.WordAlloc.isSkip output15144 = false := by
  rw [output15144_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15144 input9043)).val
theorem input15145_def : input15145 = (.seq input15144 input9043) := by
  unfold input15145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15144 output9043)).val
theorem output15145_def : output15145 = (.seq output15144 output9043) := by
  unfold output15145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15145_skip : Flapjack.WordAlloc.isSkip output15145 = false := by
  rw [output15145_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15145 input9032)).val
theorem input15146_def : input15146 = (.seq input15145 input9032) := by
  unfold input15146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15145)).val
theorem output15146_def : output15146 = (output15145) := by
  unfold output15146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15146_skip : Flapjack.WordAlloc.isSkip output15146 = false := by
  rw [output15146_def]
  exact output15145_skip


@[irreducible, cbv_opaque] def input15147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15146 input9031)).val
theorem input15147_def : input15147 = (.seq input15146 input9031) := by
  unfold input15147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15146 output9031)).val
theorem output15147_def : output15147 = (.seq output15146 output9031) := by
  unfold output15147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15147_skip : Flapjack.WordAlloc.isSkip output15147 = false := by
  rw [output15147_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15147 input9030)).val
theorem input15148_def : input15148 = (.seq input15147 input9030) := by
  unfold input15148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15147 output9030)).val
theorem output15148_def : output15148 = (.seq output15147 output9030) := by
  unfold output15148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15148_skip : Flapjack.WordAlloc.isSkip output15148 = false := by
  rw [output15148_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15148 input9027)).val
theorem input15149_def : input15149 = (.seq input15148 input9027) := by
  unfold input15149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15148 output9027)).val
theorem output15149_def : output15149 = (.seq output15148 output9027) := by
  unfold output15149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15149_skip : Flapjack.WordAlloc.isSkip output15149 = false := by
  rw [output15149_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15149 input9016)).val
theorem input15150_def : input15150 = (.seq input15149 input9016) := by
  unfold input15150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15149)).val
theorem output15150_def : output15150 = (output15149) := by
  unfold output15150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15150_skip : Flapjack.WordAlloc.isSkip output15150 = false := by
  rw [output15150_def]
  exact output15149_skip


@[irreducible, cbv_opaque] def input15151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15150 input9015)).val
theorem input15151_def : input15151 = (.seq input15150 input9015) := by
  unfold input15151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15150 output9015)).val
theorem output15151_def : output15151 = (.seq output15150 output9015) := by
  unfold output15151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15151_skip : Flapjack.WordAlloc.isSkip output15151 = false := by
  rw [output15151_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15151 input9014)).val
theorem input15152_def : input15152 = (.seq input15151 input9014) := by
  unfold input15152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15151 output9014)).val
theorem output15152_def : output15152 = (.seq output15151 output9014) := by
  unfold output15152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15152_skip : Flapjack.WordAlloc.isSkip output15152 = false := by
  rw [output15152_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15152 input9011)).val
theorem input15153_def : input15153 = (.seq input15152 input9011) := by
  unfold input15153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15152 output9011)).val
theorem output15153_def : output15153 = (.seq output15152 output9011) := by
  unfold output15153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15153_skip : Flapjack.WordAlloc.isSkip output15153 = false := by
  rw [output15153_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15153 input9000)).val
theorem input15154_def : input15154 = (.seq input15153 input9000) := by
  unfold input15154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15153)).val
theorem output15154_def : output15154 = (output15153) := by
  unfold output15154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15154_skip : Flapjack.WordAlloc.isSkip output15154 = false := by
  rw [output15154_def]
  exact output15153_skip


@[irreducible, cbv_opaque] def input15155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15154 input8999)).val
theorem input15155_def : input15155 = (.seq input15154 input8999) := by
  unfold input15155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15154 output8999)).val
theorem output15155_def : output15155 = (.seq output15154 output8999) := by
  unfold output15155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15155_skip : Flapjack.WordAlloc.isSkip output15155 = false := by
  rw [output15155_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15155 input8998)).val
theorem input15156_def : input15156 = (.seq input15155 input8998) := by
  unfold input15156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15155 output8998)).val
theorem output15156_def : output15156 = (.seq output15155 output8998) := by
  unfold output15156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15156_skip : Flapjack.WordAlloc.isSkip output15156 = false := by
  rw [output15156_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15156 input8995)).val
theorem input15157_def : input15157 = (.seq input15156 input8995) := by
  unfold input15157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15156 output8995)).val
theorem output15157_def : output15157 = (.seq output15156 output8995) := by
  unfold output15157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15157_skip : Flapjack.WordAlloc.isSkip output15157 = false := by
  rw [output15157_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15157 input8984)).val
theorem input15158_def : input15158 = (.seq input15157 input8984) := by
  unfold input15158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15157)).val
theorem output15158_def : output15158 = (output15157) := by
  unfold output15158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15158_skip : Flapjack.WordAlloc.isSkip output15158 = false := by
  rw [output15158_def]
  exact output15157_skip


@[irreducible, cbv_opaque] def input15159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15158 input8983)).val
theorem input15159_def : input15159 = (.seq input15158 input8983) := by
  unfold input15159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15158 output8983)).val
theorem output15159_def : output15159 = (.seq output15158 output8983) := by
  unfold output15159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15159_skip : Flapjack.WordAlloc.isSkip output15159 = false := by
  rw [output15159_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15159 input8982)).val
theorem input15160_def : input15160 = (.seq input15159 input8982) := by
  unfold input15160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15159 output8982)).val
theorem output15160_def : output15160 = (.seq output15159 output8982) := by
  unfold output15160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15160_skip : Flapjack.WordAlloc.isSkip output15160 = false := by
  rw [output15160_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15160 input8979)).val
theorem input15161_def : input15161 = (.seq input15160 input8979) := by
  unfold input15161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15160 output8979)).val
theorem output15161_def : output15161 = (.seq output15160 output8979) := by
  unfold output15161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15161_skip : Flapjack.WordAlloc.isSkip output15161 = false := by
  rw [output15161_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15161 input8968)).val
theorem input15162_def : input15162 = (.seq input15161 input8968) := by
  unfold input15162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15161)).val
theorem output15162_def : output15162 = (output15161) := by
  unfold output15162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15162_skip : Flapjack.WordAlloc.isSkip output15162 = false := by
  rw [output15162_def]
  exact output15161_skip


@[irreducible, cbv_opaque] def input15163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15162 input8967)).val
theorem input15163_def : input15163 = (.seq input15162 input8967) := by
  unfold input15163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15162 output8967)).val
theorem output15163_def : output15163 = (.seq output15162 output8967) := by
  unfold output15163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15163_skip : Flapjack.WordAlloc.isSkip output15163 = false := by
  rw [output15163_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15163 input8966)).val
theorem input15164_def : input15164 = (.seq input15163 input8966) := by
  unfold input15164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15163 output8966)).val
theorem output15164_def : output15164 = (.seq output15163 output8966) := by
  unfold output15164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15164_skip : Flapjack.WordAlloc.isSkip output15164 = false := by
  rw [output15164_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15164 input8963)).val
theorem input15165_def : input15165 = (.seq input15164 input8963) := by
  unfold input15165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15164 output8963)).val
theorem output15165_def : output15165 = (.seq output15164 output8963) := by
  unfold output15165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15165_skip : Flapjack.WordAlloc.isSkip output15165 = false := by
  rw [output15165_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15165 input8952)).val
theorem input15166_def : input15166 = (.seq input15165 input8952) := by
  unfold input15166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15165)).val
theorem output15166_def : output15166 = (output15165) := by
  unfold output15166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15166_skip : Flapjack.WordAlloc.isSkip output15166 = false := by
  rw [output15166_def]
  exact output15165_skip


@[irreducible, cbv_opaque] def input15167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15166 input8951)).val
theorem input15167_def : input15167 = (.seq input15166 input8951) := by
  unfold input15167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15166 output8951)).val
theorem output15167_def : output15167 = (.seq output15166 output8951) := by
  unfold output15167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15167_skip : Flapjack.WordAlloc.isSkip output15167 = false := by
  rw [output15167_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15167 input8950)).val
theorem input15168_def : input15168 = (.seq input15167 input8950) := by
  unfold input15168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15167 output8950)).val
theorem output15168_def : output15168 = (.seq output15167 output8950) := by
  unfold output15168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15168_skip : Flapjack.WordAlloc.isSkip output15168 = false := by
  rw [output15168_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15168 input8947)).val
theorem input15169_def : input15169 = (.seq input15168 input8947) := by
  unfold input15169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15168 output8947)).val
theorem output15169_def : output15169 = (.seq output15168 output8947) := by
  unfold output15169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15169_skip : Flapjack.WordAlloc.isSkip output15169 = false := by
  rw [output15169_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15169 input8936)).val
theorem input15170_def : input15170 = (.seq input15169 input8936) := by
  unfold input15170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15169)).val
theorem output15170_def : output15170 = (output15169) := by
  unfold output15170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15170_skip : Flapjack.WordAlloc.isSkip output15170 = false := by
  rw [output15170_def]
  exact output15169_skip


@[irreducible, cbv_opaque] def input15171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15170 input8935)).val
theorem input15171_def : input15171 = (.seq input15170 input8935) := by
  unfold input15171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15170 output8935)).val
theorem output15171_def : output15171 = (.seq output15170 output8935) := by
  unfold output15171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15171_skip : Flapjack.WordAlloc.isSkip output15171 = false := by
  rw [output15171_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15171 input8934)).val
theorem input15172_def : input15172 = (.seq input15171 input8934) := by
  unfold input15172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15171 output8934)).val
theorem output15172_def : output15172 = (.seq output15171 output8934) := by
  unfold output15172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15172_skip : Flapjack.WordAlloc.isSkip output15172 = false := by
  rw [output15172_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15172 input8931)).val
theorem input15173_def : input15173 = (.seq input15172 input8931) := by
  unfold input15173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15172 output8931)).val
theorem output15173_def : output15173 = (.seq output15172 output8931) := by
  unfold output15173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15173_skip : Flapjack.WordAlloc.isSkip output15173 = false := by
  rw [output15173_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15173 input8920)).val
theorem input15174_def : input15174 = (.seq input15173 input8920) := by
  unfold input15174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15173)).val
theorem output15174_def : output15174 = (output15173) := by
  unfold output15174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15174_skip : Flapjack.WordAlloc.isSkip output15174 = false := by
  rw [output15174_def]
  exact output15173_skip


@[irreducible, cbv_opaque] def input15175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15174 input8919)).val
theorem input15175_def : input15175 = (.seq input15174 input8919) := by
  unfold input15175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15174 output8919)).val
theorem output15175_def : output15175 = (.seq output15174 output8919) := by
  unfold output15175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15175_skip : Flapjack.WordAlloc.isSkip output15175 = false := by
  rw [output15175_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15175 input8918)).val
theorem input15176_def : input15176 = (.seq input15175 input8918) := by
  unfold input15176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15175 output8918)).val
theorem output15176_def : output15176 = (.seq output15175 output8918) := by
  unfold output15176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15176_skip : Flapjack.WordAlloc.isSkip output15176 = false := by
  rw [output15176_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15176 input8915)).val
theorem input15177_def : input15177 = (.seq input15176 input8915) := by
  unfold input15177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15176 output8915)).val
theorem output15177_def : output15177 = (.seq output15176 output8915) := by
  unfold output15177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15177_skip : Flapjack.WordAlloc.isSkip output15177 = false := by
  rw [output15177_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15177 input8904)).val
theorem input15178_def : input15178 = (.seq input15177 input8904) := by
  unfold input15178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15177)).val
theorem output15178_def : output15178 = (output15177) := by
  unfold output15178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15178_skip : Flapjack.WordAlloc.isSkip output15178 = false := by
  rw [output15178_def]
  exact output15177_skip


@[irreducible, cbv_opaque] def input15179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15178 input8903)).val
theorem input15179_def : input15179 = (.seq input15178 input8903) := by
  unfold input15179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15178 output8903)).val
theorem output15179_def : output15179 = (.seq output15178 output8903) := by
  unfold output15179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15179_skip : Flapjack.WordAlloc.isSkip output15179 = false := by
  rw [output15179_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15179 input8902)).val
theorem input15180_def : input15180 = (.seq input15179 input8902) := by
  unfold input15180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15179 output8902)).val
theorem output15180_def : output15180 = (.seq output15179 output8902) := by
  unfold output15180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15180_skip : Flapjack.WordAlloc.isSkip output15180 = false := by
  rw [output15180_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15180 input8899)).val
theorem input15181_def : input15181 = (.seq input15180 input8899) := by
  unfold input15181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15180 output8899)).val
theorem output15181_def : output15181 = (.seq output15180 output8899) := by
  unfold output15181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15181_skip : Flapjack.WordAlloc.isSkip output15181 = false := by
  rw [output15181_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15181 input8888)).val
theorem input15182_def : input15182 = (.seq input15181 input8888) := by
  unfold input15182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15181)).val
theorem output15182_def : output15182 = (output15181) := by
  unfold output15182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15182_skip : Flapjack.WordAlloc.isSkip output15182 = false := by
  rw [output15182_def]
  exact output15181_skip


@[irreducible, cbv_opaque] def input15183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15182 input8887)).val
theorem input15183_def : input15183 = (.seq input15182 input8887) := by
  unfold input15183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15182 output8887)).val
theorem output15183_def : output15183 = (.seq output15182 output8887) := by
  unfold output15183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15183_skip : Flapjack.WordAlloc.isSkip output15183 = false := by
  rw [output15183_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15183 input8886)).val
theorem input15184_def : input15184 = (.seq input15183 input8886) := by
  unfold input15184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15183 output8886)).val
theorem output15184_def : output15184 = (.seq output15183 output8886) := by
  unfold output15184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15184_skip : Flapjack.WordAlloc.isSkip output15184 = false := by
  rw [output15184_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15184 input8883)).val
theorem input15185_def : input15185 = (.seq input15184 input8883) := by
  unfold input15185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15184 output8883)).val
theorem output15185_def : output15185 = (.seq output15184 output8883) := by
  unfold output15185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15185_skip : Flapjack.WordAlloc.isSkip output15185 = false := by
  rw [output15185_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15185 input8872)).val
theorem input15186_def : input15186 = (.seq input15185 input8872) := by
  unfold input15186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15185)).val
theorem output15186_def : output15186 = (output15185) := by
  unfold output15186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15186_skip : Flapjack.WordAlloc.isSkip output15186 = false := by
  rw [output15186_def]
  exact output15185_skip


@[irreducible, cbv_opaque] def input15187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15186 input8871)).val
theorem input15187_def : input15187 = (.seq input15186 input8871) := by
  unfold input15187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15186 output8871)).val
theorem output15187_def : output15187 = (.seq output15186 output8871) := by
  unfold output15187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15187_skip : Flapjack.WordAlloc.isSkip output15187 = false := by
  rw [output15187_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15187 input8870)).val
theorem input15188_def : input15188 = (.seq input15187 input8870) := by
  unfold input15188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15187 output8870)).val
theorem output15188_def : output15188 = (.seq output15187 output8870) := by
  unfold output15188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15188_skip : Flapjack.WordAlloc.isSkip output15188 = false := by
  rw [output15188_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15188 input8867)).val
theorem input15189_def : input15189 = (.seq input15188 input8867) := by
  unfold input15189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15188 output8867)).val
theorem output15189_def : output15189 = (.seq output15188 output8867) := by
  unfold output15189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15189_skip : Flapjack.WordAlloc.isSkip output15189 = false := by
  rw [output15189_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15189 input8856)).val
theorem input15190_def : input15190 = (.seq input15189 input8856) := by
  unfold input15190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15189)).val
theorem output15190_def : output15190 = (output15189) := by
  unfold output15190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15190_skip : Flapjack.WordAlloc.isSkip output15190 = false := by
  rw [output15190_def]
  exact output15189_skip


@[irreducible, cbv_opaque] def input15191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15190 input8855)).val
theorem input15191_def : input15191 = (.seq input15190 input8855) := by
  unfold input15191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15190 output8855)).val
theorem output15191_def : output15191 = (.seq output15190 output8855) := by
  unfold output15191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15191_skip : Flapjack.WordAlloc.isSkip output15191 = false := by
  rw [output15191_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15191 input8854)).val
theorem input15192_def : input15192 = (.seq input15191 input8854) := by
  unfold input15192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15191 output8854)).val
theorem output15192_def : output15192 = (.seq output15191 output8854) := by
  unfold output15192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15192_skip : Flapjack.WordAlloc.isSkip output15192 = false := by
  rw [output15192_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15192 input8851)).val
theorem input15193_def : input15193 = (.seq input15192 input8851) := by
  unfold input15193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15192 output8851)).val
theorem output15193_def : output15193 = (.seq output15192 output8851) := by
  unfold output15193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15193_skip : Flapjack.WordAlloc.isSkip output15193 = false := by
  rw [output15193_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15193 input8840)).val
theorem input15194_def : input15194 = (.seq input15193 input8840) := by
  unfold input15194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15193)).val
theorem output15194_def : output15194 = (output15193) := by
  unfold output15194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15194_skip : Flapjack.WordAlloc.isSkip output15194 = false := by
  rw [output15194_def]
  exact output15193_skip


@[irreducible, cbv_opaque] def input15195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15194 input8839)).val
theorem input15195_def : input15195 = (.seq input15194 input8839) := by
  unfold input15195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15194 output8839)).val
theorem output15195_def : output15195 = (.seq output15194 output8839) := by
  unfold output15195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15195_skip : Flapjack.WordAlloc.isSkip output15195 = false := by
  rw [output15195_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15195 input8838)).val
theorem input15196_def : input15196 = (.seq input15195 input8838) := by
  unfold input15196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15195 output8838)).val
theorem output15196_def : output15196 = (.seq output15195 output8838) := by
  unfold output15196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15196_skip : Flapjack.WordAlloc.isSkip output15196 = false := by
  rw [output15196_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15196 input8835)).val
theorem input15197_def : input15197 = (.seq input15196 input8835) := by
  unfold input15197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15196 output8835)).val
theorem output15197_def : output15197 = (.seq output15196 output8835) := by
  unfold output15197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15197_skip : Flapjack.WordAlloc.isSkip output15197 = false := by
  rw [output15197_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15197 input8824)).val
theorem input15198_def : input15198 = (.seq input15197 input8824) := by
  unfold input15198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15197)).val
theorem output15198_def : output15198 = (output15197) := by
  unfold output15198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15198_skip : Flapjack.WordAlloc.isSkip output15198 = false := by
  rw [output15198_def]
  exact output15197_skip


@[irreducible, cbv_opaque] def input15199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15198 input8823)).val
theorem input15199_def : input15199 = (.seq input15198 input8823) := by
  unfold input15199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15198 output8823)).val
theorem output15199_def : output15199 = (.seq output15198 output8823) := by
  unfold output15199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15199_skip : Flapjack.WordAlloc.isSkip output15199 = false := by
  rw [output15199_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15199 input8822)).val
theorem input15200_def : input15200 = (.seq input15199 input8822) := by
  unfold input15200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15199 output8822)).val
theorem output15200_def : output15200 = (.seq output15199 output8822) := by
  unfold output15200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15200_skip : Flapjack.WordAlloc.isSkip output15200 = false := by
  rw [output15200_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15200 input8819)).val
theorem input15201_def : input15201 = (.seq input15200 input8819) := by
  unfold input15201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15200 output8819)).val
theorem output15201_def : output15201 = (.seq output15200 output8819) := by
  unfold output15201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15201_skip : Flapjack.WordAlloc.isSkip output15201 = false := by
  rw [output15201_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15201 input8808)).val
theorem input15202_def : input15202 = (.seq input15201 input8808) := by
  unfold input15202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15201)).val
theorem output15202_def : output15202 = (output15201) := by
  unfold output15202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15202_skip : Flapjack.WordAlloc.isSkip output15202 = false := by
  rw [output15202_def]
  exact output15201_skip


@[irreducible, cbv_opaque] def input15203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15202 input8807)).val
theorem input15203_def : input15203 = (.seq input15202 input8807) := by
  unfold input15203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15202 output8807)).val
theorem output15203_def : output15203 = (.seq output15202 output8807) := by
  unfold output15203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15203_skip : Flapjack.WordAlloc.isSkip output15203 = false := by
  rw [output15203_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15203 input8806)).val
theorem input15204_def : input15204 = (.seq input15203 input8806) := by
  unfold input15204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15203 output8806)).val
theorem output15204_def : output15204 = (.seq output15203 output8806) := by
  unfold output15204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15204_skip : Flapjack.WordAlloc.isSkip output15204 = false := by
  rw [output15204_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15204 input8803)).val
theorem input15205_def : input15205 = (.seq input15204 input8803) := by
  unfold input15205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15204 output8803)).val
theorem output15205_def : output15205 = (.seq output15204 output8803) := by
  unfold output15205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15205_skip : Flapjack.WordAlloc.isSkip output15205 = false := by
  rw [output15205_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15205 input8792)).val
theorem input15206_def : input15206 = (.seq input15205 input8792) := by
  unfold input15206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15205)).val
theorem output15206_def : output15206 = (output15205) := by
  unfold output15206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15206_skip : Flapjack.WordAlloc.isSkip output15206 = false := by
  rw [output15206_def]
  exact output15205_skip


@[irreducible, cbv_opaque] def input15207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15206 input8791)).val
theorem input15207_def : input15207 = (.seq input15206 input8791) := by
  unfold input15207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15206 output8791)).val
theorem output15207_def : output15207 = (.seq output15206 output8791) := by
  unfold output15207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15207_skip : Flapjack.WordAlloc.isSkip output15207 = false := by
  rw [output15207_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15207 input8790)).val
theorem input15208_def : input15208 = (.seq input15207 input8790) := by
  unfold input15208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15207 output8790)).val
theorem output15208_def : output15208 = (.seq output15207 output8790) := by
  unfold output15208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15208_skip : Flapjack.WordAlloc.isSkip output15208 = false := by
  rw [output15208_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15208 input8787)).val
theorem input15209_def : input15209 = (.seq input15208 input8787) := by
  unfold input15209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15208 output8787)).val
theorem output15209_def : output15209 = (.seq output15208 output8787) := by
  unfold output15209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15209_skip : Flapjack.WordAlloc.isSkip output15209 = false := by
  rw [output15209_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15209 input8776)).val
theorem input15210_def : input15210 = (.seq input15209 input8776) := by
  unfold input15210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15209)).val
theorem output15210_def : output15210 = (output15209) := by
  unfold output15210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15210_skip : Flapjack.WordAlloc.isSkip output15210 = false := by
  rw [output15210_def]
  exact output15209_skip


@[irreducible, cbv_opaque] def input15211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15210 input8775)).val
theorem input15211_def : input15211 = (.seq input15210 input8775) := by
  unfold input15211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15210 output8775)).val
theorem output15211_def : output15211 = (.seq output15210 output8775) := by
  unfold output15211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15211_skip : Flapjack.WordAlloc.isSkip output15211 = false := by
  rw [output15211_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15211 input8774)).val
theorem input15212_def : input15212 = (.seq input15211 input8774) := by
  unfold input15212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15211 output8774)).val
theorem output15212_def : output15212 = (.seq output15211 output8774) := by
  unfold output15212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15212_skip : Flapjack.WordAlloc.isSkip output15212 = false := by
  rw [output15212_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15212 input8771)).val
theorem input15213_def : input15213 = (.seq input15212 input8771) := by
  unfold input15213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15212 output8771)).val
theorem output15213_def : output15213 = (.seq output15212 output8771) := by
  unfold output15213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15213_skip : Flapjack.WordAlloc.isSkip output15213 = false := by
  rw [output15213_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15213 input8760)).val
theorem input15214_def : input15214 = (.seq input15213 input8760) := by
  unfold input15214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15213)).val
theorem output15214_def : output15214 = (output15213) := by
  unfold output15214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15214_skip : Flapjack.WordAlloc.isSkip output15214 = false := by
  rw [output15214_def]
  exact output15213_skip


@[irreducible, cbv_opaque] def input15215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15214 input8759)).val
theorem input15215_def : input15215 = (.seq input15214 input8759) := by
  unfold input15215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15214 output8759)).val
theorem output15215_def : output15215 = (.seq output15214 output8759) := by
  unfold output15215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15215_skip : Flapjack.WordAlloc.isSkip output15215 = false := by
  rw [output15215_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15215 input8758)).val
theorem input15216_def : input15216 = (.seq input15215 input8758) := by
  unfold input15216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15215 output8758)).val
theorem output15216_def : output15216 = (.seq output15215 output8758) := by
  unfold output15216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15216_skip : Flapjack.WordAlloc.isSkip output15216 = false := by
  rw [output15216_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15216 input8755)).val
theorem input15217_def : input15217 = (.seq input15216 input8755) := by
  unfold input15217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15216 output8755)).val
theorem output15217_def : output15217 = (.seq output15216 output8755) := by
  unfold output15217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15217_skip : Flapjack.WordAlloc.isSkip output15217 = false := by
  rw [output15217_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15217 input8744)).val
theorem input15218_def : input15218 = (.seq input15217 input8744) := by
  unfold input15218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15217)).val
theorem output15218_def : output15218 = (output15217) := by
  unfold output15218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15218_skip : Flapjack.WordAlloc.isSkip output15218 = false := by
  rw [output15218_def]
  exact output15217_skip


@[irreducible, cbv_opaque] def input15219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15218 input8743)).val
theorem input15219_def : input15219 = (.seq input15218 input8743) := by
  unfold input15219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15218 output8743)).val
theorem output15219_def : output15219 = (.seq output15218 output8743) := by
  unfold output15219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15219_skip : Flapjack.WordAlloc.isSkip output15219 = false := by
  rw [output15219_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15219 input8742)).val
theorem input15220_def : input15220 = (.seq input15219 input8742) := by
  unfold input15220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15219 output8742)).val
theorem output15220_def : output15220 = (.seq output15219 output8742) := by
  unfold output15220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15220_skip : Flapjack.WordAlloc.isSkip output15220 = false := by
  rw [output15220_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15220 input8739)).val
theorem input15221_def : input15221 = (.seq input15220 input8739) := by
  unfold input15221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15220 output8739)).val
theorem output15221_def : output15221 = (.seq output15220 output8739) := by
  unfold output15221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15221_skip : Flapjack.WordAlloc.isSkip output15221 = false := by
  rw [output15221_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15221 input8728)).val
theorem input15222_def : input15222 = (.seq input15221 input8728) := by
  unfold input15222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15221)).val
theorem output15222_def : output15222 = (output15221) := by
  unfold output15222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15222_skip : Flapjack.WordAlloc.isSkip output15222 = false := by
  rw [output15222_def]
  exact output15221_skip


@[irreducible, cbv_opaque] def input15223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15222 input8727)).val
theorem input15223_def : input15223 = (.seq input15222 input8727) := by
  unfold input15223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15222 output8727)).val
theorem output15223_def : output15223 = (.seq output15222 output8727) := by
  unfold output15223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15223_skip : Flapjack.WordAlloc.isSkip output15223 = false := by
  rw [output15223_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15223 input8726)).val
theorem input15224_def : input15224 = (.seq input15223 input8726) := by
  unfold input15224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15223 output8726)).val
theorem output15224_def : output15224 = (.seq output15223 output8726) := by
  unfold output15224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15224_skip : Flapjack.WordAlloc.isSkip output15224 = false := by
  rw [output15224_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15224 input8723)).val
theorem input15225_def : input15225 = (.seq input15224 input8723) := by
  unfold input15225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15224 output8723)).val
theorem output15225_def : output15225 = (.seq output15224 output8723) := by
  unfold output15225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15225_skip : Flapjack.WordAlloc.isSkip output15225 = false := by
  rw [output15225_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15225 input8712)).val
theorem input15226_def : input15226 = (.seq input15225 input8712) := by
  unfold input15226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15225)).val
theorem output15226_def : output15226 = (output15225) := by
  unfold output15226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15226_skip : Flapjack.WordAlloc.isSkip output15226 = false := by
  rw [output15226_def]
  exact output15225_skip


@[irreducible, cbv_opaque] def input15227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15226 input8711)).val
theorem input15227_def : input15227 = (.seq input15226 input8711) := by
  unfold input15227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15226 output8711)).val
theorem output15227_def : output15227 = (.seq output15226 output8711) := by
  unfold output15227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15227_skip : Flapjack.WordAlloc.isSkip output15227 = false := by
  rw [output15227_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15227 input8710)).val
theorem input15228_def : input15228 = (.seq input15227 input8710) := by
  unfold input15228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15227 output8710)).val
theorem output15228_def : output15228 = (.seq output15227 output8710) := by
  unfold output15228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15228_skip : Flapjack.WordAlloc.isSkip output15228 = false := by
  rw [output15228_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15228 input8707)).val
theorem input15229_def : input15229 = (.seq input15228 input8707) := by
  unfold input15229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15228 output8707)).val
theorem output15229_def : output15229 = (.seq output15228 output8707) := by
  unfold output15229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15229_skip : Flapjack.WordAlloc.isSkip output15229 = false := by
  rw [output15229_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15229 input8696)).val
theorem input15230_def : input15230 = (.seq input15229 input8696) := by
  unfold input15230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15229)).val
theorem output15230_def : output15230 = (output15229) := by
  unfold output15230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15230_skip : Flapjack.WordAlloc.isSkip output15230 = false := by
  rw [output15230_def]
  exact output15229_skip


@[irreducible, cbv_opaque] def input15231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15230 input8695)).val
theorem input15231_def : input15231 = (.seq input15230 input8695) := by
  unfold input15231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15230 output8695)).val
theorem output15231_def : output15231 = (.seq output15230 output8695) := by
  unfold output15231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15231_skip : Flapjack.WordAlloc.isSkip output15231 = false := by
  rw [output15231_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15231 input8694)).val
theorem input15232_def : input15232 = (.seq input15231 input8694) := by
  unfold input15232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15231 output8694)).val
theorem output15232_def : output15232 = (.seq output15231 output8694) := by
  unfold output15232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15232_skip : Flapjack.WordAlloc.isSkip output15232 = false := by
  rw [output15232_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15232 input8691)).val
theorem input15233_def : input15233 = (.seq input15232 input8691) := by
  unfold input15233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15232 output8691)).val
theorem output15233_def : output15233 = (.seq output15232 output8691) := by
  unfold output15233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15233_skip : Flapjack.WordAlloc.isSkip output15233 = false := by
  rw [output15233_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15233 input8680)).val
theorem input15234_def : input15234 = (.seq input15233 input8680) := by
  unfold input15234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15233)).val
theorem output15234_def : output15234 = (output15233) := by
  unfold output15234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15234_skip : Flapjack.WordAlloc.isSkip output15234 = false := by
  rw [output15234_def]
  exact output15233_skip


@[irreducible, cbv_opaque] def input15235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15234 input8679)).val
theorem input15235_def : input15235 = (.seq input15234 input8679) := by
  unfold input15235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15234 output8679)).val
theorem output15235_def : output15235 = (.seq output15234 output8679) := by
  unfold output15235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15235_skip : Flapjack.WordAlloc.isSkip output15235 = false := by
  rw [output15235_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15235 input8678)).val
theorem input15236_def : input15236 = (.seq input15235 input8678) := by
  unfold input15236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15235 output8678)).val
theorem output15236_def : output15236 = (.seq output15235 output8678) := by
  unfold output15236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15236_skip : Flapjack.WordAlloc.isSkip output15236 = false := by
  rw [output15236_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15236 input8675)).val
theorem input15237_def : input15237 = (.seq input15236 input8675) := by
  unfold input15237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15236 output8675)).val
theorem output15237_def : output15237 = (.seq output15236 output8675) := by
  unfold output15237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15237_skip : Flapjack.WordAlloc.isSkip output15237 = false := by
  rw [output15237_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15237 input8664)).val
theorem input15238_def : input15238 = (.seq input15237 input8664) := by
  unfold input15238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15237)).val
theorem output15238_def : output15238 = (output15237) := by
  unfold output15238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15238_skip : Flapjack.WordAlloc.isSkip output15238 = false := by
  rw [output15238_def]
  exact output15237_skip


@[irreducible, cbv_opaque] def input15239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15238 input8663)).val
theorem input15239_def : input15239 = (.seq input15238 input8663) := by
  unfold input15239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15238 output8663)).val
theorem output15239_def : output15239 = (.seq output15238 output8663) := by
  unfold output15239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15239_skip : Flapjack.WordAlloc.isSkip output15239 = false := by
  rw [output15239_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15239 input8662)).val
theorem input15240_def : input15240 = (.seq input15239 input8662) := by
  unfold input15240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15239 output8662)).val
theorem output15240_def : output15240 = (.seq output15239 output8662) := by
  unfold output15240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15240_skip : Flapjack.WordAlloc.isSkip output15240 = false := by
  rw [output15240_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15240 input8659)).val
theorem input15241_def : input15241 = (.seq input15240 input8659) := by
  unfold input15241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15240 output8659)).val
theorem output15241_def : output15241 = (.seq output15240 output8659) := by
  unfold output15241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15241_skip : Flapjack.WordAlloc.isSkip output15241 = false := by
  rw [output15241_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15241 input8648)).val
theorem input15242_def : input15242 = (.seq input15241 input8648) := by
  unfold input15242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15241)).val
theorem output15242_def : output15242 = (output15241) := by
  unfold output15242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15242_skip : Flapjack.WordAlloc.isSkip output15242 = false := by
  rw [output15242_def]
  exact output15241_skip


@[irreducible, cbv_opaque] def input15243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15242 input8647)).val
theorem input15243_def : input15243 = (.seq input15242 input8647) := by
  unfold input15243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15242 output8647)).val
theorem output15243_def : output15243 = (.seq output15242 output8647) := by
  unfold output15243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15243_skip : Flapjack.WordAlloc.isSkip output15243 = false := by
  rw [output15243_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15243 input8646)).val
theorem input15244_def : input15244 = (.seq input15243 input8646) := by
  unfold input15244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15243 output8646)).val
theorem output15244_def : output15244 = (.seq output15243 output8646) := by
  unfold output15244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15244_skip : Flapjack.WordAlloc.isSkip output15244 = false := by
  rw [output15244_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15244 input8643)).val
theorem input15245_def : input15245 = (.seq input15244 input8643) := by
  unfold input15245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15244 output8643)).val
theorem output15245_def : output15245 = (.seq output15244 output8643) := by
  unfold output15245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15245_skip : Flapjack.WordAlloc.isSkip output15245 = false := by
  rw [output15245_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15245 input8632)).val
theorem input15246_def : input15246 = (.seq input15245 input8632) := by
  unfold input15246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15245)).val
theorem output15246_def : output15246 = (output15245) := by
  unfold output15246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15246_skip : Flapjack.WordAlloc.isSkip output15246 = false := by
  rw [output15246_def]
  exact output15245_skip


@[irreducible, cbv_opaque] def input15247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15246 input8631)).val
theorem input15247_def : input15247 = (.seq input15246 input8631) := by
  unfold input15247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15246 output8631)).val
theorem output15247_def : output15247 = (.seq output15246 output8631) := by
  unfold output15247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15247_skip : Flapjack.WordAlloc.isSkip output15247 = false := by
  rw [output15247_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15247 input8630)).val
theorem input15248_def : input15248 = (.seq input15247 input8630) := by
  unfold input15248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15247 output8630)).val
theorem output15248_def : output15248 = (.seq output15247 output8630) := by
  unfold output15248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15248_skip : Flapjack.WordAlloc.isSkip output15248 = false := by
  rw [output15248_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15248 input8627)).val
theorem input15249_def : input15249 = (.seq input15248 input8627) := by
  unfold input15249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15248 output8627)).val
theorem output15249_def : output15249 = (.seq output15248 output8627) := by
  unfold output15249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15249_skip : Flapjack.WordAlloc.isSkip output15249 = false := by
  rw [output15249_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15249 input8616)).val
theorem input15250_def : input15250 = (.seq input15249 input8616) := by
  unfold input15250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15249)).val
theorem output15250_def : output15250 = (output15249) := by
  unfold output15250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15250_skip : Flapjack.WordAlloc.isSkip output15250 = false := by
  rw [output15250_def]
  exact output15249_skip


@[irreducible, cbv_opaque] def input15251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15250 input8615)).val
theorem input15251_def : input15251 = (.seq input15250 input8615) := by
  unfold input15251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15250 output8615)).val
theorem output15251_def : output15251 = (.seq output15250 output8615) := by
  unfold output15251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15251_skip : Flapjack.WordAlloc.isSkip output15251 = false := by
  rw [output15251_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15251 input8614)).val
theorem input15252_def : input15252 = (.seq input15251 input8614) := by
  unfold input15252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15251 output8614)).val
theorem output15252_def : output15252 = (.seq output15251 output8614) := by
  unfold output15252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15252_skip : Flapjack.WordAlloc.isSkip output15252 = false := by
  rw [output15252_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15252 input8611)).val
theorem input15253_def : input15253 = (.seq input15252 input8611) := by
  unfold input15253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15252 output8611)).val
theorem output15253_def : output15253 = (.seq output15252 output8611) := by
  unfold output15253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15253_skip : Flapjack.WordAlloc.isSkip output15253 = false := by
  rw [output15253_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15253 input8600)).val
theorem input15254_def : input15254 = (.seq input15253 input8600) := by
  unfold input15254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15253)).val
theorem output15254_def : output15254 = (output15253) := by
  unfold output15254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15254_skip : Flapjack.WordAlloc.isSkip output15254 = false := by
  rw [output15254_def]
  exact output15253_skip


@[irreducible, cbv_opaque] def input15255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15254 input8599)).val
theorem input15255_def : input15255 = (.seq input15254 input8599) := by
  unfold input15255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15254 output8599)).val
theorem output15255_def : output15255 = (.seq output15254 output8599) := by
  unfold output15255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15255_skip : Flapjack.WordAlloc.isSkip output15255 = false := by
  rw [output15255_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15255 input8598)).val
theorem input15256_def : input15256 = (.seq input15255 input8598) := by
  unfold input15256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15255 output8598)).val
theorem output15256_def : output15256 = (.seq output15255 output8598) := by
  unfold output15256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15256_skip : Flapjack.WordAlloc.isSkip output15256 = false := by
  rw [output15256_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15256 input8595)).val
theorem input15257_def : input15257 = (.seq input15256 input8595) := by
  unfold input15257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15256 output8595)).val
theorem output15257_def : output15257 = (.seq output15256 output8595) := by
  unfold output15257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15257_skip : Flapjack.WordAlloc.isSkip output15257 = false := by
  rw [output15257_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15257 input8584)).val
theorem input15258_def : input15258 = (.seq input15257 input8584) := by
  unfold input15258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15257)).val
theorem output15258_def : output15258 = (output15257) := by
  unfold output15258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15258_skip : Flapjack.WordAlloc.isSkip output15258 = false := by
  rw [output15258_def]
  exact output15257_skip


@[irreducible, cbv_opaque] def input15259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15258 input8583)).val
theorem input15259_def : input15259 = (.seq input15258 input8583) := by
  unfold input15259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15258 output8583)).val
theorem output15259_def : output15259 = (.seq output15258 output8583) := by
  unfold output15259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15259_skip : Flapjack.WordAlloc.isSkip output15259 = false := by
  rw [output15259_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15259 input8582)).val
theorem input15260_def : input15260 = (.seq input15259 input8582) := by
  unfold input15260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15259 output8582)).val
theorem output15260_def : output15260 = (.seq output15259 output8582) := by
  unfold output15260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15260_skip : Flapjack.WordAlloc.isSkip output15260 = false := by
  rw [output15260_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15260 input8579)).val
theorem input15261_def : input15261 = (.seq input15260 input8579) := by
  unfold input15261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15260 output8579)).val
theorem output15261_def : output15261 = (.seq output15260 output8579) := by
  unfold output15261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15261_skip : Flapjack.WordAlloc.isSkip output15261 = false := by
  rw [output15261_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15261 input8568)).val
theorem input15262_def : input15262 = (.seq input15261 input8568) := by
  unfold input15262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15261)).val
theorem output15262_def : output15262 = (output15261) := by
  unfold output15262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15262_skip : Flapjack.WordAlloc.isSkip output15262 = false := by
  rw [output15262_def]
  exact output15261_skip


@[irreducible, cbv_opaque] def input15263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15262 input8567)).val
theorem input15263_def : input15263 = (.seq input15262 input8567) := by
  unfold input15263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15262 output8567)).val
theorem output15263_def : output15263 = (.seq output15262 output8567) := by
  unfold output15263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15263_skip : Flapjack.WordAlloc.isSkip output15263 = false := by
  rw [output15263_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15263 input8566)).val
theorem input15264_def : input15264 = (.seq input15263 input8566) := by
  unfold input15264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15263 output8566)).val
theorem output15264_def : output15264 = (.seq output15263 output8566) := by
  unfold output15264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15264_skip : Flapjack.WordAlloc.isSkip output15264 = false := by
  rw [output15264_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15264 input8563)).val
theorem input15265_def : input15265 = (.seq input15264 input8563) := by
  unfold input15265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15264 output8563)).val
theorem output15265_def : output15265 = (.seq output15264 output8563) := by
  unfold output15265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15265_skip : Flapjack.WordAlloc.isSkip output15265 = false := by
  rw [output15265_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15265 input8552)).val
theorem input15266_def : input15266 = (.seq input15265 input8552) := by
  unfold input15266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15265)).val
theorem output15266_def : output15266 = (output15265) := by
  unfold output15266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15266_skip : Flapjack.WordAlloc.isSkip output15266 = false := by
  rw [output15266_def]
  exact output15265_skip


@[irreducible, cbv_opaque] def input15267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15266 input8551)).val
theorem input15267_def : input15267 = (.seq input15266 input8551) := by
  unfold input15267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15266 output8551)).val
theorem output15267_def : output15267 = (.seq output15266 output8551) := by
  unfold output15267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15267_skip : Flapjack.WordAlloc.isSkip output15267 = false := by
  rw [output15267_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15267 input8550)).val
theorem input15268_def : input15268 = (.seq input15267 input8550) := by
  unfold input15268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15267 output8550)).val
theorem output15268_def : output15268 = (.seq output15267 output8550) := by
  unfold output15268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15268_skip : Flapjack.WordAlloc.isSkip output15268 = false := by
  rw [output15268_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15268 input8547)).val
theorem input15269_def : input15269 = (.seq input15268 input8547) := by
  unfold input15269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15268 output8547)).val
theorem output15269_def : output15269 = (.seq output15268 output8547) := by
  unfold output15269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15269_skip : Flapjack.WordAlloc.isSkip output15269 = false := by
  rw [output15269_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15269 input8536)).val
theorem input15270_def : input15270 = (.seq input15269 input8536) := by
  unfold input15270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15269)).val
theorem output15270_def : output15270 = (output15269) := by
  unfold output15270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15270_skip : Flapjack.WordAlloc.isSkip output15270 = false := by
  rw [output15270_def]
  exact output15269_skip


@[irreducible, cbv_opaque] def input15271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15270 input8535)).val
theorem input15271_def : input15271 = (.seq input15270 input8535) := by
  unfold input15271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15270 output8535)).val
theorem output15271_def : output15271 = (.seq output15270 output8535) := by
  unfold output15271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15271_skip : Flapjack.WordAlloc.isSkip output15271 = false := by
  rw [output15271_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15271 input8534)).val
theorem input15272_def : input15272 = (.seq input15271 input8534) := by
  unfold input15272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15271 output8534)).val
theorem output15272_def : output15272 = (.seq output15271 output8534) := by
  unfold output15272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15272_skip : Flapjack.WordAlloc.isSkip output15272 = false := by
  rw [output15272_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15272 input8531)).val
theorem input15273_def : input15273 = (.seq input15272 input8531) := by
  unfold input15273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15272 output8531)).val
theorem output15273_def : output15273 = (.seq output15272 output8531) := by
  unfold output15273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15273_skip : Flapjack.WordAlloc.isSkip output15273 = false := by
  rw [output15273_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15273 input8520)).val
theorem input15274_def : input15274 = (.seq input15273 input8520) := by
  unfold input15274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15273)).val
theorem output15274_def : output15274 = (output15273) := by
  unfold output15274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15274_skip : Flapjack.WordAlloc.isSkip output15274 = false := by
  rw [output15274_def]
  exact output15273_skip


@[irreducible, cbv_opaque] def input15275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15274 input8519)).val
theorem input15275_def : input15275 = (.seq input15274 input8519) := by
  unfold input15275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15274 output8519)).val
theorem output15275_def : output15275 = (.seq output15274 output8519) := by
  unfold output15275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15275_skip : Flapjack.WordAlloc.isSkip output15275 = false := by
  rw [output15275_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15275 input8518)).val
theorem input15276_def : input15276 = (.seq input15275 input8518) := by
  unfold input15276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15275 output8518)).val
theorem output15276_def : output15276 = (.seq output15275 output8518) := by
  unfold output15276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15276_skip : Flapjack.WordAlloc.isSkip output15276 = false := by
  rw [output15276_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15276 input8515)).val
theorem input15277_def : input15277 = (.seq input15276 input8515) := by
  unfold input15277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15276 output8515)).val
theorem output15277_def : output15277 = (.seq output15276 output8515) := by
  unfold output15277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15277_skip : Flapjack.WordAlloc.isSkip output15277 = false := by
  rw [output15277_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15277 input8504)).val
theorem input15278_def : input15278 = (.seq input15277 input8504) := by
  unfold input15278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15277)).val
theorem output15278_def : output15278 = (output15277) := by
  unfold output15278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15278_skip : Flapjack.WordAlloc.isSkip output15278 = false := by
  rw [output15278_def]
  exact output15277_skip


@[irreducible, cbv_opaque] def input15279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15278 input8503)).val
theorem input15279_def : input15279 = (.seq input15278 input8503) := by
  unfold input15279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15278 output8503)).val
theorem output15279_def : output15279 = (.seq output15278 output8503) := by
  unfold output15279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15279_skip : Flapjack.WordAlloc.isSkip output15279 = false := by
  rw [output15279_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15279 input8502)).val
theorem input15280_def : input15280 = (.seq input15279 input8502) := by
  unfold input15280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15279 output8502)).val
theorem output15280_def : output15280 = (.seq output15279 output8502) := by
  unfold output15280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15280_skip : Flapjack.WordAlloc.isSkip output15280 = false := by
  rw [output15280_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15280 input8499)).val
theorem input15281_def : input15281 = (.seq input15280 input8499) := by
  unfold input15281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15280 output8499)).val
theorem output15281_def : output15281 = (.seq output15280 output8499) := by
  unfold output15281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15281_skip : Flapjack.WordAlloc.isSkip output15281 = false := by
  rw [output15281_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15281 input8488)).val
theorem input15282_def : input15282 = (.seq input15281 input8488) := by
  unfold input15282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15281)).val
theorem output15282_def : output15282 = (output15281) := by
  unfold output15282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15282_skip : Flapjack.WordAlloc.isSkip output15282 = false := by
  rw [output15282_def]
  exact output15281_skip


@[irreducible, cbv_opaque] def input15283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15282 input8487)).val
theorem input15283_def : input15283 = (.seq input15282 input8487) := by
  unfold input15283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15282 output8487)).val
theorem output15283_def : output15283 = (.seq output15282 output8487) := by
  unfold output15283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15283_skip : Flapjack.WordAlloc.isSkip output15283 = false := by
  rw [output15283_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15283 input8486)).val
theorem input15284_def : input15284 = (.seq input15283 input8486) := by
  unfold input15284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15283 output8486)).val
theorem output15284_def : output15284 = (.seq output15283 output8486) := by
  unfold output15284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15284_skip : Flapjack.WordAlloc.isSkip output15284 = false := by
  rw [output15284_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15284 input8483)).val
theorem input15285_def : input15285 = (.seq input15284 input8483) := by
  unfold input15285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15284 output8483)).val
theorem output15285_def : output15285 = (.seq output15284 output8483) := by
  unfold output15285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15285_skip : Flapjack.WordAlloc.isSkip output15285 = false := by
  rw [output15285_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15285 input8472)).val
theorem input15286_def : input15286 = (.seq input15285 input8472) := by
  unfold input15286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15285)).val
theorem output15286_def : output15286 = (output15285) := by
  unfold output15286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15286_skip : Flapjack.WordAlloc.isSkip output15286 = false := by
  rw [output15286_def]
  exact output15285_skip


@[irreducible, cbv_opaque] def input15287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15286 input8471)).val
theorem input15287_def : input15287 = (.seq input15286 input8471) := by
  unfold input15287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15286 output8471)).val
theorem output15287_def : output15287 = (.seq output15286 output8471) := by
  unfold output15287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15287_skip : Flapjack.WordAlloc.isSkip output15287 = false := by
  rw [output15287_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15287 input8470)).val
theorem input15288_def : input15288 = (.seq input15287 input8470) := by
  unfold input15288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15287 output8470)).val
theorem output15288_def : output15288 = (.seq output15287 output8470) := by
  unfold output15288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15288_skip : Flapjack.WordAlloc.isSkip output15288 = false := by
  rw [output15288_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15288 input8467)).val
theorem input15289_def : input15289 = (.seq input15288 input8467) := by
  unfold input15289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15288 output8467)).val
theorem output15289_def : output15289 = (.seq output15288 output8467) := by
  unfold output15289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15289_skip : Flapjack.WordAlloc.isSkip output15289 = false := by
  rw [output15289_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15289 input8456)).val
theorem input15290_def : input15290 = (.seq input15289 input8456) := by
  unfold input15290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15289)).val
theorem output15290_def : output15290 = (output15289) := by
  unfold output15290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15290_skip : Flapjack.WordAlloc.isSkip output15290 = false := by
  rw [output15290_def]
  exact output15289_skip


@[irreducible, cbv_opaque] def input15291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15290 input8455)).val
theorem input15291_def : input15291 = (.seq input15290 input8455) := by
  unfold input15291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15290 output8455)).val
theorem output15291_def : output15291 = (.seq output15290 output8455) := by
  unfold output15291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15291_skip : Flapjack.WordAlloc.isSkip output15291 = false := by
  rw [output15291_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15291 input8454)).val
theorem input15292_def : input15292 = (.seq input15291 input8454) := by
  unfold input15292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15291 output8454)).val
theorem output15292_def : output15292 = (.seq output15291 output8454) := by
  unfold output15292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15292_skip : Flapjack.WordAlloc.isSkip output15292 = false := by
  rw [output15292_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15292 input8451)).val
theorem input15293_def : input15293 = (.seq input15292 input8451) := by
  unfold input15293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15292 output8451)).val
theorem output15293_def : output15293 = (.seq output15292 output8451) := by
  unfold output15293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15293_skip : Flapjack.WordAlloc.isSkip output15293 = false := by
  rw [output15293_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15293 input8440)).val
theorem input15294_def : input15294 = (.seq input15293 input8440) := by
  unfold input15294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15293)).val
theorem output15294_def : output15294 = (output15293) := by
  unfold output15294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15294_skip : Flapjack.WordAlloc.isSkip output15294 = false := by
  rw [output15294_def]
  exact output15293_skip


@[irreducible, cbv_opaque] def input15295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15294 input8439)).val
theorem input15295_def : input15295 = (.seq input15294 input8439) := by
  unfold input15295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15294 output8439)).val
theorem output15295_def : output15295 = (.seq output15294 output8439) := by
  unfold output15295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15295_skip : Flapjack.WordAlloc.isSkip output15295 = false := by
  rw [output15295_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15295 input8438)).val
theorem input15296_def : input15296 = (.seq input15295 input8438) := by
  unfold input15296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15295 output8438)).val
theorem output15296_def : output15296 = (.seq output15295 output8438) := by
  unfold output15296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15296_skip : Flapjack.WordAlloc.isSkip output15296 = false := by
  rw [output15296_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15296 input8435)).val
theorem input15297_def : input15297 = (.seq input15296 input8435) := by
  unfold input15297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15296 output8435)).val
theorem output15297_def : output15297 = (.seq output15296 output8435) := by
  unfold output15297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15297_skip : Flapjack.WordAlloc.isSkip output15297 = false := by
  rw [output15297_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15297 input8424)).val
theorem input15298_def : input15298 = (.seq input15297 input8424) := by
  unfold input15298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15297)).val
theorem output15298_def : output15298 = (output15297) := by
  unfold output15298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15298_skip : Flapjack.WordAlloc.isSkip output15298 = false := by
  rw [output15298_def]
  exact output15297_skip


@[irreducible, cbv_opaque] def input15299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15298 input8423)).val
theorem input15299_def : input15299 = (.seq input15298 input8423) := by
  unfold input15299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15298 output8423)).val
theorem output15299_def : output15299 = (.seq output15298 output8423) := by
  unfold output15299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15299_skip : Flapjack.WordAlloc.isSkip output15299 = false := by
  rw [output15299_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15299 input8422)).val
theorem input15300_def : input15300 = (.seq input15299 input8422) := by
  unfold input15300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15299 output8422)).val
theorem output15300_def : output15300 = (.seq output15299 output8422) := by
  unfold output15300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15300_skip : Flapjack.WordAlloc.isSkip output15300 = false := by
  rw [output15300_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15300 input8419)).val
theorem input15301_def : input15301 = (.seq input15300 input8419) := by
  unfold input15301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15300 output8419)).val
theorem output15301_def : output15301 = (.seq output15300 output8419) := by
  unfold output15301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15301_skip : Flapjack.WordAlloc.isSkip output15301 = false := by
  rw [output15301_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15301 input8408)).val
theorem input15302_def : input15302 = (.seq input15301 input8408) := by
  unfold input15302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15301)).val
theorem output15302_def : output15302 = (output15301) := by
  unfold output15302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15302_skip : Flapjack.WordAlloc.isSkip output15302 = false := by
  rw [output15302_def]
  exact output15301_skip


@[irreducible, cbv_opaque] def input15303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15302 input8407)).val
theorem input15303_def : input15303 = (.seq input15302 input8407) := by
  unfold input15303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15302 output8407)).val
theorem output15303_def : output15303 = (.seq output15302 output8407) := by
  unfold output15303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15303_skip : Flapjack.WordAlloc.isSkip output15303 = false := by
  rw [output15303_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15303 input8406)).val
theorem input15304_def : input15304 = (.seq input15303 input8406) := by
  unfold input15304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15303 output8406)).val
theorem output15304_def : output15304 = (.seq output15303 output8406) := by
  unfold output15304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15304_skip : Flapjack.WordAlloc.isSkip output15304 = false := by
  rw [output15304_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15304 input8403)).val
theorem input15305_def : input15305 = (.seq input15304 input8403) := by
  unfold input15305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15304 output8403)).val
theorem output15305_def : output15305 = (.seq output15304 output8403) := by
  unfold output15305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15305_skip : Flapjack.WordAlloc.isSkip output15305 = false := by
  rw [output15305_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15305 input8392)).val
theorem input15306_def : input15306 = (.seq input15305 input8392) := by
  unfold input15306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15305)).val
theorem output15306_def : output15306 = (output15305) := by
  unfold output15306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15306_skip : Flapjack.WordAlloc.isSkip output15306 = false := by
  rw [output15306_def]
  exact output15305_skip


@[irreducible, cbv_opaque] def input15307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15306 input8391)).val
theorem input15307_def : input15307 = (.seq input15306 input8391) := by
  unfold input15307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15306 output8391)).val
theorem output15307_def : output15307 = (.seq output15306 output8391) := by
  unfold output15307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15307_skip : Flapjack.WordAlloc.isSkip output15307 = false := by
  rw [output15307_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15307 input8390)).val
theorem input15308_def : input15308 = (.seq input15307 input8390) := by
  unfold input15308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15307 output8390)).val
theorem output15308_def : output15308 = (.seq output15307 output8390) := by
  unfold output15308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15308_skip : Flapjack.WordAlloc.isSkip output15308 = false := by
  rw [output15308_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15308 input8387)).val
theorem input15309_def : input15309 = (.seq input15308 input8387) := by
  unfold input15309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15308 output8387)).val
theorem output15309_def : output15309 = (.seq output15308 output8387) := by
  unfold output15309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15309_skip : Flapjack.WordAlloc.isSkip output15309 = false := by
  rw [output15309_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15309 input8376)).val
theorem input15310_def : input15310 = (.seq input15309 input8376) := by
  unfold input15310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15309)).val
theorem output15310_def : output15310 = (output15309) := by
  unfold output15310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15310_skip : Flapjack.WordAlloc.isSkip output15310 = false := by
  rw [output15310_def]
  exact output15309_skip


@[irreducible, cbv_opaque] def input15311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15310 input8375)).val
theorem input15311_def : input15311 = (.seq input15310 input8375) := by
  unfold input15311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15310 output8375)).val
theorem output15311_def : output15311 = (.seq output15310 output8375) := by
  unfold output15311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15311_skip : Flapjack.WordAlloc.isSkip output15311 = false := by
  rw [output15311_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15311 input8374)).val
theorem input15312_def : input15312 = (.seq input15311 input8374) := by
  unfold input15312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15311 output8374)).val
theorem output15312_def : output15312 = (.seq output15311 output8374) := by
  unfold output15312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15312_skip : Flapjack.WordAlloc.isSkip output15312 = false := by
  rw [output15312_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15312 input8371)).val
theorem input15313_def : input15313 = (.seq input15312 input8371) := by
  unfold input15313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15312 output8371)).val
theorem output15313_def : output15313 = (.seq output15312 output8371) := by
  unfold output15313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15313_skip : Flapjack.WordAlloc.isSkip output15313 = false := by
  rw [output15313_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15313 input8360)).val
theorem input15314_def : input15314 = (.seq input15313 input8360) := by
  unfold input15314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15313)).val
theorem output15314_def : output15314 = (output15313) := by
  unfold output15314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15314_skip : Flapjack.WordAlloc.isSkip output15314 = false := by
  rw [output15314_def]
  exact output15313_skip


@[irreducible, cbv_opaque] def input15315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15314 input8359)).val
theorem input15315_def : input15315 = (.seq input15314 input8359) := by
  unfold input15315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15314 output8359)).val
theorem output15315_def : output15315 = (.seq output15314 output8359) := by
  unfold output15315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15315_skip : Flapjack.WordAlloc.isSkip output15315 = false := by
  rw [output15315_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15315 input8358)).val
theorem input15316_def : input15316 = (.seq input15315 input8358) := by
  unfold input15316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15315 output8358)).val
theorem output15316_def : output15316 = (.seq output15315 output8358) := by
  unfold output15316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15316_skip : Flapjack.WordAlloc.isSkip output15316 = false := by
  rw [output15316_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15316 input8355)).val
theorem input15317_def : input15317 = (.seq input15316 input8355) := by
  unfold input15317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15316 output8355)).val
theorem output15317_def : output15317 = (.seq output15316 output8355) := by
  unfold output15317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15317_skip : Flapjack.WordAlloc.isSkip output15317 = false := by
  rw [output15317_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15317 input8344)).val
theorem input15318_def : input15318 = (.seq input15317 input8344) := by
  unfold input15318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15317)).val
theorem output15318_def : output15318 = (output15317) := by
  unfold output15318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15318_skip : Flapjack.WordAlloc.isSkip output15318 = false := by
  rw [output15318_def]
  exact output15317_skip


@[irreducible, cbv_opaque] def input15319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15318 input8343)).val
theorem input15319_def : input15319 = (.seq input15318 input8343) := by
  unfold input15319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15318 output8343)).val
theorem output15319_def : output15319 = (.seq output15318 output8343) := by
  unfold output15319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15319_skip : Flapjack.WordAlloc.isSkip output15319 = false := by
  rw [output15319_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15319 input8342)).val
theorem input15320_def : input15320 = (.seq input15319 input8342) := by
  unfold input15320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15319 output8342)).val
theorem output15320_def : output15320 = (.seq output15319 output8342) := by
  unfold output15320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15320_skip : Flapjack.WordAlloc.isSkip output15320 = false := by
  rw [output15320_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15320 input8339)).val
theorem input15321_def : input15321 = (.seq input15320 input8339) := by
  unfold input15321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15320 output8339)).val
theorem output15321_def : output15321 = (.seq output15320 output8339) := by
  unfold output15321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15321_skip : Flapjack.WordAlloc.isSkip output15321 = false := by
  rw [output15321_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15321 input8328)).val
theorem input15322_def : input15322 = (.seq input15321 input8328) := by
  unfold input15322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15321)).val
theorem output15322_def : output15322 = (output15321) := by
  unfold output15322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15322_skip : Flapjack.WordAlloc.isSkip output15322 = false := by
  rw [output15322_def]
  exact output15321_skip


@[irreducible, cbv_opaque] def input15323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15322 input8327)).val
theorem input15323_def : input15323 = (.seq input15322 input8327) := by
  unfold input15323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15322 output8327)).val
theorem output15323_def : output15323 = (.seq output15322 output8327) := by
  unfold output15323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15323_skip : Flapjack.WordAlloc.isSkip output15323 = false := by
  rw [output15323_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15323 input8326)).val
theorem input15324_def : input15324 = (.seq input15323 input8326) := by
  unfold input15324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15323 output8326)).val
theorem output15324_def : output15324 = (.seq output15323 output8326) := by
  unfold output15324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15324_skip : Flapjack.WordAlloc.isSkip output15324 = false := by
  rw [output15324_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15324 input8323)).val
theorem input15325_def : input15325 = (.seq input15324 input8323) := by
  unfold input15325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15324 output8323)).val
theorem output15325_def : output15325 = (.seq output15324 output8323) := by
  unfold output15325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15325_skip : Flapjack.WordAlloc.isSkip output15325 = false := by
  rw [output15325_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15325 input8312)).val
theorem input15326_def : input15326 = (.seq input15325 input8312) := by
  unfold input15326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15325)).val
theorem output15326_def : output15326 = (output15325) := by
  unfold output15326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15326_skip : Flapjack.WordAlloc.isSkip output15326 = false := by
  rw [output15326_def]
  exact output15325_skip


@[irreducible, cbv_opaque] def input15327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15326 input8311)).val
theorem input15327_def : input15327 = (.seq input15326 input8311) := by
  unfold input15327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15326 output8311)).val
theorem output15327_def : output15327 = (.seq output15326 output8311) := by
  unfold output15327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15327_skip : Flapjack.WordAlloc.isSkip output15327 = false := by
  rw [output15327_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15327 input8310)).val
theorem input15328_def : input15328 = (.seq input15327 input8310) := by
  unfold input15328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15327 output8310)).val
theorem output15328_def : output15328 = (.seq output15327 output8310) := by
  unfold output15328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15328_skip : Flapjack.WordAlloc.isSkip output15328 = false := by
  rw [output15328_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15328 input8307)).val
theorem input15329_def : input15329 = (.seq input15328 input8307) := by
  unfold input15329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15328 output8307)).val
theorem output15329_def : output15329 = (.seq output15328 output8307) := by
  unfold output15329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15329_skip : Flapjack.WordAlloc.isSkip output15329 = false := by
  rw [output15329_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15329 input8296)).val
theorem input15330_def : input15330 = (.seq input15329 input8296) := by
  unfold input15330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15329)).val
theorem output15330_def : output15330 = (output15329) := by
  unfold output15330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15330_skip : Flapjack.WordAlloc.isSkip output15330 = false := by
  rw [output15330_def]
  exact output15329_skip


@[irreducible, cbv_opaque] def input15331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15330 input8295)).val
theorem input15331_def : input15331 = (.seq input15330 input8295) := by
  unfold input15331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15330 output8295)).val
theorem output15331_def : output15331 = (.seq output15330 output8295) := by
  unfold output15331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15331_skip : Flapjack.WordAlloc.isSkip output15331 = false := by
  rw [output15331_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15331 input8294)).val
theorem input15332_def : input15332 = (.seq input15331 input8294) := by
  unfold input15332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15331 output8294)).val
theorem output15332_def : output15332 = (.seq output15331 output8294) := by
  unfold output15332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15332_skip : Flapjack.WordAlloc.isSkip output15332 = false := by
  rw [output15332_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15332 input8291)).val
theorem input15333_def : input15333 = (.seq input15332 input8291) := by
  unfold input15333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15332 output8291)).val
theorem output15333_def : output15333 = (.seq output15332 output8291) := by
  unfold output15333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15333_skip : Flapjack.WordAlloc.isSkip output15333 = false := by
  rw [output15333_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15333 input8280)).val
theorem input15334_def : input15334 = (.seq input15333 input8280) := by
  unfold input15334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15333)).val
theorem output15334_def : output15334 = (output15333) := by
  unfold output15334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15334_skip : Flapjack.WordAlloc.isSkip output15334 = false := by
  rw [output15334_def]
  exact output15333_skip


@[irreducible, cbv_opaque] def input15335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15334 input8279)).val
theorem input15335_def : input15335 = (.seq input15334 input8279) := by
  unfold input15335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15334 output8279)).val
theorem output15335_def : output15335 = (.seq output15334 output8279) := by
  unfold output15335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15335_skip : Flapjack.WordAlloc.isSkip output15335 = false := by
  rw [output15335_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15335 input8278)).val
theorem input15336_def : input15336 = (.seq input15335 input8278) := by
  unfold input15336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15335 output8278)).val
theorem output15336_def : output15336 = (.seq output15335 output8278) := by
  unfold output15336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15336_skip : Flapjack.WordAlloc.isSkip output15336 = false := by
  rw [output15336_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15336 input8275)).val
theorem input15337_def : input15337 = (.seq input15336 input8275) := by
  unfold input15337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15336 output8275)).val
theorem output15337_def : output15337 = (.seq output15336 output8275) := by
  unfold output15337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15337_skip : Flapjack.WordAlloc.isSkip output15337 = false := by
  rw [output15337_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15337 input8264)).val
theorem input15338_def : input15338 = (.seq input15337 input8264) := by
  unfold input15338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15337)).val
theorem output15338_def : output15338 = (output15337) := by
  unfold output15338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15338_skip : Flapjack.WordAlloc.isSkip output15338 = false := by
  rw [output15338_def]
  exact output15337_skip


@[irreducible, cbv_opaque] def input15339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15338 input8263)).val
theorem input15339_def : input15339 = (.seq input15338 input8263) := by
  unfold input15339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15338 output8263)).val
theorem output15339_def : output15339 = (.seq output15338 output8263) := by
  unfold output15339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15339_skip : Flapjack.WordAlloc.isSkip output15339 = false := by
  rw [output15339_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15339 input8262)).val
theorem input15340_def : input15340 = (.seq input15339 input8262) := by
  unfold input15340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15339 output8262)).val
theorem output15340_def : output15340 = (.seq output15339 output8262) := by
  unfold output15340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15340_skip : Flapjack.WordAlloc.isSkip output15340 = false := by
  rw [output15340_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15340 input8259)).val
theorem input15341_def : input15341 = (.seq input15340 input8259) := by
  unfold input15341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15340 output8259)).val
theorem output15341_def : output15341 = (.seq output15340 output8259) := by
  unfold output15341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15341_skip : Flapjack.WordAlloc.isSkip output15341 = false := by
  rw [output15341_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15341 input8248)).val
theorem input15342_def : input15342 = (.seq input15341 input8248) := by
  unfold input15342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15341)).val
theorem output15342_def : output15342 = (output15341) := by
  unfold output15342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15342_skip : Flapjack.WordAlloc.isSkip output15342 = false := by
  rw [output15342_def]
  exact output15341_skip


@[irreducible, cbv_opaque] def input15343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15342 input8247)).val
theorem input15343_def : input15343 = (.seq input15342 input8247) := by
  unfold input15343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15342 output8247)).val
theorem output15343_def : output15343 = (.seq output15342 output8247) := by
  unfold output15343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15343_skip : Flapjack.WordAlloc.isSkip output15343 = false := by
  rw [output15343_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15343 input8246)).val
theorem input15344_def : input15344 = (.seq input15343 input8246) := by
  unfold input15344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15343 output8246)).val
theorem output15344_def : output15344 = (.seq output15343 output8246) := by
  unfold output15344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15344_skip : Flapjack.WordAlloc.isSkip output15344 = false := by
  rw [output15344_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15344 input8243)).val
theorem input15345_def : input15345 = (.seq input15344 input8243) := by
  unfold input15345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15344 output8243)).val
theorem output15345_def : output15345 = (.seq output15344 output8243) := by
  unfold output15345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15345_skip : Flapjack.WordAlloc.isSkip output15345 = false := by
  rw [output15345_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15345 input8232)).val
theorem input15346_def : input15346 = (.seq input15345 input8232) := by
  unfold input15346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15345)).val
theorem output15346_def : output15346 = (output15345) := by
  unfold output15346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15346_skip : Flapjack.WordAlloc.isSkip output15346 = false := by
  rw [output15346_def]
  exact output15345_skip


@[irreducible, cbv_opaque] def input15347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15346 input8231)).val
theorem input15347_def : input15347 = (.seq input15346 input8231) := by
  unfold input15347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15346 output8231)).val
theorem output15347_def : output15347 = (.seq output15346 output8231) := by
  unfold output15347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15347_skip : Flapjack.WordAlloc.isSkip output15347 = false := by
  rw [output15347_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15347 input8230)).val
theorem input15348_def : input15348 = (.seq input15347 input8230) := by
  unfold input15348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15347 output8230)).val
theorem output15348_def : output15348 = (.seq output15347 output8230) := by
  unfold output15348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15348_skip : Flapjack.WordAlloc.isSkip output15348 = false := by
  rw [output15348_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15348 input8227)).val
theorem input15349_def : input15349 = (.seq input15348 input8227) := by
  unfold input15349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15348 output8227)).val
theorem output15349_def : output15349 = (.seq output15348 output8227) := by
  unfold output15349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15349_skip : Flapjack.WordAlloc.isSkip output15349 = false := by
  rw [output15349_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15349 input8216)).val
theorem input15350_def : input15350 = (.seq input15349 input8216) := by
  unfold input15350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15349)).val
theorem output15350_def : output15350 = (output15349) := by
  unfold output15350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15350_skip : Flapjack.WordAlloc.isSkip output15350 = false := by
  rw [output15350_def]
  exact output15349_skip


@[irreducible, cbv_opaque] def input15351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15350 input8215)).val
theorem input15351_def : input15351 = (.seq input15350 input8215) := by
  unfold input15351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15350 output8215)).val
theorem output15351_def : output15351 = (.seq output15350 output8215) := by
  unfold output15351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15351_skip : Flapjack.WordAlloc.isSkip output15351 = false := by
  rw [output15351_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15351 input8214)).val
theorem input15352_def : input15352 = (.seq input15351 input8214) := by
  unfold input15352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15351 output8214)).val
theorem output15352_def : output15352 = (.seq output15351 output8214) := by
  unfold output15352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15352_skip : Flapjack.WordAlloc.isSkip output15352 = false := by
  rw [output15352_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15352 input8211)).val
theorem input15353_def : input15353 = (.seq input15352 input8211) := by
  unfold input15353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15352 output8211)).val
theorem output15353_def : output15353 = (.seq output15352 output8211) := by
  unfold output15353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15353_skip : Flapjack.WordAlloc.isSkip output15353 = false := by
  rw [output15353_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15353 input8200)).val
theorem input15354_def : input15354 = (.seq input15353 input8200) := by
  unfold input15354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15353)).val
theorem output15354_def : output15354 = (output15353) := by
  unfold output15354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15354_skip : Flapjack.WordAlloc.isSkip output15354 = false := by
  rw [output15354_def]
  exact output15353_skip


@[irreducible, cbv_opaque] def input15355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15354 input8199)).val
theorem input15355_def : input15355 = (.seq input15354 input8199) := by
  unfold input15355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15354 output8199)).val
theorem output15355_def : output15355 = (.seq output15354 output8199) := by
  unfold output15355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15355_skip : Flapjack.WordAlloc.isSkip output15355 = false := by
  rw [output15355_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15355 input8198)).val
theorem input15356_def : input15356 = (.seq input15355 input8198) := by
  unfold input15356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15355 output8198)).val
theorem output15356_def : output15356 = (.seq output15355 output8198) := by
  unfold output15356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15356_skip : Flapjack.WordAlloc.isSkip output15356 = false := by
  rw [output15356_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15356 input8195)).val
theorem input15357_def : input15357 = (.seq input15356 input8195) := by
  unfold input15357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15356 output8195)).val
theorem output15357_def : output15357 = (.seq output15356 output8195) := by
  unfold output15357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15357_skip : Flapjack.WordAlloc.isSkip output15357 = false := by
  rw [output15357_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15357 input8184)).val
theorem input15358_def : input15358 = (.seq input15357 input8184) := by
  unfold input15358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15357)).val
theorem output15358_def : output15358 = (output15357) := by
  unfold output15358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15358_skip : Flapjack.WordAlloc.isSkip output15358 = false := by
  rw [output15358_def]
  exact output15357_skip


@[irreducible, cbv_opaque] def input15359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15358 input8183)).val
theorem input15359_def : input15359 = (.seq input15358 input8183) := by
  unfold input15359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15358 output8183)).val
theorem output15359_def : output15359 = (.seq output15358 output8183) := by
  unfold output15359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15359_skip : Flapjack.WordAlloc.isSkip output15359 = false := by
  rw [output15359_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages713.Parallel
