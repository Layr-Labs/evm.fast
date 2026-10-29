import InitECandidate.Proofs.DeadStages597.Chunk000
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages597
@[irreducible, cbv_opaque] def input256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input256_def : input256 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output256_def : output256 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output256_skip : Flapjack.WordAlloc.isSkip output256 = false := by
  rw [output256_def]
  conv => lhs; cbv
  try rfl
theorem node256_eq : Flapjack.WordAlloc.removeDeadStructural input256 value54 value1 value2 = (output256, value54, value1) := by
  rw [input256_def, output256_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7173 1#64))).val
theorem input257_def : input257 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7173 1#64)) := by
  unfold input257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output257_def : output257 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output257_skip : Flapjack.WordAlloc.isSkip output257 = true := by
  rw [output257_def]
  conv => lhs; cbv
  try rfl
theorem node257_eq : Flapjack.WordAlloc.removeDeadStructural input257 value54 value1 value2 = (output257, value54, value1) := by
  rw [input257_def, output257_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input257 input256)).val
theorem input258_def : input258 = (.seq input257 input256) := by
  unfold input258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output256)).val
theorem output258_def : output258 = (output256) := by
  unfold output258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output258_skip : Flapjack.WordAlloc.isSkip output258 = false := by
  rw [output258_def]
  conv => lhs; cbv
  try rfl
theorem node258_eq : Flapjack.WordAlloc.removeDeadStructural input258 value54 value1 value2 = (output258, value54, value1) := by
  rw [input258_def, output258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node256_eq]
  try dsimp only
  rw [node257_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input258 input255)).val
theorem input259_def : input259 = (.seq input258 input255) := by
  unfold input259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output258)).val
theorem output259_def : output259 = (output258) := by
  unfold output259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output259_skip : Flapjack.WordAlloc.isSkip output259 = false := by
  rw [output259_def]
  conv => lhs; cbv
  try rfl
theorem node259_eq : Flapjack.WordAlloc.removeDeadStructural input259 value54 value1 value2 = (output259, value54, value1) := by
  rw [input259_def, output259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node255_eq]
  try dsimp only
  rw [node258_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input259 input254)).val
theorem input260_def : input260 = (.seq input259 input254) := by
  unfold input260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output259 output254)).val
theorem output260_def : output260 = (.seq output259 output254) := by
  unfold output260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output260_skip : Flapjack.WordAlloc.isSkip output260 = false := by
  rw [output260_def]
  conv => lhs; cbv
  try rfl
theorem node260_eq : Flapjack.WordAlloc.removeDeadStructural input260 value50 value1 value2 = (output260, value54, value1) := by
  rw [input260_def, output260_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node254_eq]
  try dsimp only
  rw [node259_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input260 input249)).val
theorem input261_def : input261 = (.seq input260 input249) := by
  unfold input261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output260 output249)).val
theorem output261_def : output261 = (.seq output260 output249) := by
  unfold output261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output261_skip : Flapjack.WordAlloc.isSkip output261 = false := by
  rw [output261_def]
  conv => lhs; cbv
  try rfl
theorem node261_eq : Flapjack.WordAlloc.removeDeadStructural input261 value50 value1 value2 = (output261, value54, value1) := by
  rw [input261_def, output261_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node249_eq]
  try dsimp only
  rw [node260_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input261 input248)).val
theorem input262_def : input262 = (.seq input261 input248) := by
  unfold input262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output261 output248)).val
theorem output262_def : output262 = (.seq output261 output248) := by
  unfold output262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output262_skip : Flapjack.WordAlloc.isSkip output262 = false := by
  rw [output262_def]
  conv => lhs; cbv
  try rfl
theorem node262_eq : Flapjack.WordAlloc.removeDeadStructural input262 value52 value1 value2 = (output262, value54, value1) := by
  rw [input262_def, output262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node248_eq]
  try dsimp only
  rw [node261_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input262 input247)).val
theorem input263_def : input263 = (.seq input262 input247) := by
  unfold input263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output262 output247)).val
theorem output263_def : output263 = (.seq output262 output247) := by
  unfold output263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output263_skip : Flapjack.WordAlloc.isSkip output263 = false := by
  rw [output263_def]
  conv => lhs; cbv
  try rfl
theorem node263_eq : Flapjack.WordAlloc.removeDeadStructural input263 value50 value1 value2 = (output263, value54, value1) := by
  rw [input263_def, output263_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node247_eq]
  try dsimp only
  rw [node262_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input263 input244)).val
theorem input264_def : input264 = (.seq input263 input244) := by
  unfold input264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output263 output244)).val
theorem output264_def : output264 = (.seq output263 output244) := by
  unfold output264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output264_skip : Flapjack.WordAlloc.isSkip output264 = false := by
  rw [output264_def]
  conv => lhs; cbv
  try rfl
theorem node264_eq : Flapjack.WordAlloc.removeDeadStructural input264 value49 value1 value2 = (output264, value54, value1) := by
  rw [input264_def, output264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node244_eq]
  try dsimp only
  rw [node263_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7237, 7153)])).val
theorem input265_def : input265 = (Flapjack.WordLangProgHOL.move 2 [(7237, 7153)]) := by
  unfold input265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output265_def : output265 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output265_skip : Flapjack.WordAlloc.isSkip output265 = true := by
  rw [output265_def]
  conv => lhs; cbv
  try rfl
theorem node265_eq : Flapjack.WordAlloc.removeDeadStructural input265 value49 value1 value2 = (output265, value49, value1) := by
  rw [input265_def, output265_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7233, 7161)])).val
theorem input266_def : input266 = (Flapjack.WordLangProgHOL.move 2 [(7233, 7161)]) := by
  unfold input266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output266_def : output266 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output266_skip : Flapjack.WordAlloc.isSkip output266 = true := by
  rw [output266_def]
  conv => lhs; cbv
  try rfl
theorem node266_eq : Flapjack.WordAlloc.removeDeadStructural input266 value49 value1 value2 = (output266, value49, value1) := by
  rw [input266_def, output266_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7229, 7169)])).val
theorem input267_def : input267 = (Flapjack.WordLangProgHOL.move 2 [(7229, 7169)]) := by
  unfold input267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output267_def : output267 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output267_skip : Flapjack.WordAlloc.isSkip output267 = true := by
  rw [output267_def]
  conv => lhs; cbv
  try rfl
theorem node267_eq : Flapjack.WordAlloc.removeDeadStructural input267 value49 value1 value2 = (output267, value49, value1) := by
  rw [input267_def, output267_def]
  try (conv => lhs; cbv)
  try rfl

def value55 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7225, 7165)])).val
theorem input268_def : input268 = (Flapjack.WordLangProgHOL.move 2 [(7225, 7165)]) := by
  unfold input268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7225, 7165)])).val
theorem output268_def : output268 = (Flapjack.WordLangProgHOL.move 2 [(7225, 7165)]) := by
  unfold output268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output268_skip : Flapjack.WordAlloc.isSkip output268 = false := by
  rw [output268_def]
  conv => lhs; cbv
  try rfl
theorem node268_eq : Flapjack.WordAlloc.removeDeadStructural input268 value49 value1 value2 = (output268, value55, value1) := by
  rw [input268_def, output268_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input269_def : input269 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output269_def : output269 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output269_skip : Flapjack.WordAlloc.isSkip output269 = true := by
  rw [output269_def]
  conv => lhs; cbv
  try rfl
theorem node269_eq : Flapjack.WordAlloc.removeDeadStructural input269 value55 value1 value2 = (output269, value55, value1) := by
  rw [input269_def, output269_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input269 input268)).val
theorem input270_def : input270 = (.seq input269 input268) := by
  unfold input270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output268)).val
theorem output270_def : output270 = (output268) := by
  unfold output270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output270_skip : Flapjack.WordAlloc.isSkip output270 = false := by
  rw [output270_def]
  conv => lhs; cbv
  try rfl
theorem node270_eq : Flapjack.WordAlloc.removeDeadStructural input270 value49 value1 value2 = (output270, value55, value1) := by
  rw [input270_def, output270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node268_eq]
  try dsimp only
  rw [node269_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input270 input267)).val
theorem input271_def : input271 = (.seq input270 input267) := by
  unfold input271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output270)).val
theorem output271_def : output271 = (output270) := by
  unfold output271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output271_skip : Flapjack.WordAlloc.isSkip output271 = false := by
  rw [output271_def]
  conv => lhs; cbv
  try rfl
theorem node271_eq : Flapjack.WordAlloc.removeDeadStructural input271 value49 value1 value2 = (output271, value55, value1) := by
  rw [input271_def, output271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node267_eq]
  try dsimp only
  rw [node270_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input271 input266)).val
theorem input272_def : input272 = (.seq input271 input266) := by
  unfold input272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output271)).val
theorem output272_def : output272 = (output271) := by
  unfold output272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output272_skip : Flapjack.WordAlloc.isSkip output272 = false := by
  rw [output272_def]
  conv => lhs; cbv
  try rfl
theorem node272_eq : Flapjack.WordAlloc.removeDeadStructural input272 value49 value1 value2 = (output272, value55, value1) := by
  rw [input272_def, output272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node266_eq]
  try dsimp only
  rw [node271_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input272 input265)).val
theorem input273_def : input273 = (.seq input272 input265) := by
  unfold input273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output272)).val
theorem output273_def : output273 = (output272) := by
  unfold output273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output273_skip : Flapjack.WordAlloc.isSkip output273 = false := by
  rw [output273_def]
  conv => lhs; cbv
  try rfl
theorem node273_eq : Flapjack.WordAlloc.removeDeadStructural input273 value49 value1 value2 = (output273, value55, value1) := by
  rw [input273_def, output273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node265_eq]
  try dsimp only
  rw [node272_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value56 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7221, 7137), (7217, 7165), (7213, 7129)])).val
theorem input274_def : input274 = (Flapjack.WordLangProgHOL.move 2 [(7221, 7137), (7217, 7165), (7213, 7129)]) := by
  unfold input274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7221, 7137)])).val
theorem output274_def : output274 = (Flapjack.WordLangProgHOL.move 2 [(7221, 7137)]) := by
  unfold output274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output274_skip : Flapjack.WordAlloc.isSkip output274 = false := by
  rw [output274_def]
  conv => lhs; cbv
  try rfl
theorem node274_eq : Flapjack.WordAlloc.removeDeadStructural input274 value55 value1 value2 = (output274, value56, value1) := by
  rw [input274_def, output274_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input274 input273)).val
theorem input275_def : input275 = (.seq input274 input273) := by
  unfold input275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output274 output273)).val
theorem output275_def : output275 = (.seq output274 output273) := by
  unfold output275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output275_skip : Flapjack.WordAlloc.isSkip output275 = false := by
  rw [output275_def]
  conv => lhs; cbv
  try rfl
theorem node275_eq : Flapjack.WordAlloc.removeDeadStructural input275 value49 value1 value2 = (output275, value56, value1) := by
  rw [input275_def, output275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node273_eq]
  try dsimp only
  rw [node274_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input276_def : input276 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output276_def : output276 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output276_skip : Flapjack.WordAlloc.isSkip output276 = true := by
  rw [output276_def]
  conv => lhs; cbv
  try rfl
theorem node276_eq : Flapjack.WordAlloc.removeDeadStructural input276 value56 value1 value2 = (output276, value56, value1) := by
  rw [input276_def, output276_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input276 input275)).val
theorem input277_def : input277 = (.seq input276 input275) := by
  unfold input277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output275)).val
theorem output277_def : output277 = (output275) := by
  unfold output277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output277_skip : Flapjack.WordAlloc.isSkip output277 = false := by
  rw [output277_def]
  conv => lhs; cbv
  try rfl
theorem node277_eq : Flapjack.WordAlloc.removeDeadStructural input277 value49 value1 value2 = (output277, value56, value1) := by
  rw [input277_def, output277_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node275_eq]
  try dsimp only
  rw [node276_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value57 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 7169

def value58 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 7165 value57 input264 input277)).val
theorem input278_def : input278 = (.ite value15 7165 value57 input264 input277) := by
  unfold input278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 7165 value57 output264 output277)).val
theorem output278_def : output278 = (.ite value15 7165 value57 output264 output277) := by
  unfold output278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output278_skip : Flapjack.WordAlloc.isSkip output278 = false := by
  rw [output278_def]
  conv => lhs; cbv
  try rfl
theorem node278_eq : Flapjack.WordAlloc.removeDeadStructural input278 value49 value1 value2 = (output278, value58, value1) := by
  rw [input278_def, output278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node264_eq]
  try dsimp only
  rw [node277_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input278 input233)).val
theorem input279_def : input279 = (.seq input278 input233) := by
  unfold input279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output278 output233)).val
theorem output279_def : output279 = (.seq output278 output233) := by
  unfold output279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output279_skip : Flapjack.WordAlloc.isSkip output279 = false := by
  rw [output279_def]
  conv => lhs; cbv
  try rfl
theorem node279_eq : Flapjack.WordAlloc.removeDeadStructural input279 value49 value1 value2 = (output279, value58, value1) := by
  rw [input279_def, output279_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node233_eq]
  try dsimp only
  rw [node278_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7169 244#64))).val
theorem input280_def : input280 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7169 244#64)) := by
  unfold input280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7169 244#64))).val
theorem output280_def : output280 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7169 244#64)) := by
  unfold output280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output280_skip : Flapjack.WordAlloc.isSkip output280 = false := by
  rw [output280_def]
  conv => lhs; cbv
  try rfl
theorem node280_eq : Flapjack.WordAlloc.removeDeadStructural input280 value58 value1 value2 = (output280, value56, value1) := by
  rw [input280_def, output280_def]
  try (conv => lhs; cbv)
  try rfl

def value59 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7165, 7141)])).val
theorem input281_def : input281 = (Flapjack.WordLangProgHOL.move 0 [(7165, 7141)]) := by
  unfold input281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7165, 7141)])).val
theorem output281_def : output281 = (Flapjack.WordLangProgHOL.move 0 [(7165, 7141)]) := by
  unfold output281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output281_skip : Flapjack.WordAlloc.isSkip output281 = false := by
  rw [output281_def]
  conv => lhs; cbv
  try rfl
theorem node281_eq : Flapjack.WordAlloc.removeDeadStructural input281 value56 value1 value2 = (output281, value59, value1) := by
  rw [input281_def, output281_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input282_def : input282 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output282_def : output282 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output282_skip : Flapjack.WordAlloc.isSkip output282 = false := by
  rw [output282_def]
  conv => lhs; cbv
  try rfl
theorem node282_eq : Flapjack.WordAlloc.removeDeadStructural input282 value59 value1 value2 = (output282, value59, value1) := by
  rw [input282_def, output282_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7161 0#64))).val
theorem input283_def : input283 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7161 0#64)) := by
  unfold input283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output283_def : output283 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output283_skip : Flapjack.WordAlloc.isSkip output283 = true := by
  rw [output283_def]
  conv => lhs; cbv
  try rfl
theorem node283_eq : Flapjack.WordAlloc.removeDeadStructural input283 value59 value1 value2 = (output283, value59, value1) := by
  rw [input283_def, output283_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input284_def : input284 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output284_def : output284 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output284_skip : Flapjack.WordAlloc.isSkip output284 = false := by
  rw [output284_def]
  conv => lhs; cbv
  try rfl
theorem node284_eq : Flapjack.WordAlloc.removeDeadStructural input284 value59 value1 value2 = (output284, value59, value1) := by
  rw [input284_def, output284_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7157 0#64))).val
theorem input285_def : input285 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7157 0#64)) := by
  unfold input285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output285_def : output285 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output285_skip : Flapjack.WordAlloc.isSkip output285 = true := by
  rw [output285_def]
  conv => lhs; cbv
  try rfl
theorem node285_eq : Flapjack.WordAlloc.removeDeadStructural input285 value59 value1 value2 = (output285, value59, value1) := by
  rw [input285_def, output285_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input285 input284)).val
theorem input286_def : input286 = (.seq input285 input284) := by
  unfold input286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output284)).val
theorem output286_def : output286 = (output284) := by
  unfold output286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output286_skip : Flapjack.WordAlloc.isSkip output286 = false := by
  rw [output286_def]
  conv => lhs; cbv
  try rfl
theorem node286_eq : Flapjack.WordAlloc.removeDeadStructural input286 value59 value1 value2 = (output286, value59, value1) := by
  rw [input286_def, output286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node284_eq]
  try dsimp only
  rw [node285_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input286 input283)).val
theorem input287_def : input287 = (.seq input286 input283) := by
  unfold input287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output286)).val
theorem output287_def : output287 = (output286) := by
  unfold output287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output287_skip : Flapjack.WordAlloc.isSkip output287 = false := by
  rw [output287_def]
  conv => lhs; cbv
  try rfl
theorem node287_eq : Flapjack.WordAlloc.removeDeadStructural input287 value59 value1 value2 = (output287, value59, value1) := by
  rw [input287_def, output287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node283_eq]
  try dsimp only
  rw [node286_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7153 0#64))).val
theorem input288_def : input288 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7153 0#64)) := by
  unfold input288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output288_def : output288 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output288_skip : Flapjack.WordAlloc.isSkip output288 = true := by
  rw [output288_def]
  conv => lhs; cbv
  try rfl
theorem node288_eq : Flapjack.WordAlloc.removeDeadStructural input288 value59 value1 value2 = (output288, value59, value1) := by
  rw [input288_def, output288_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7149 0#64))).val
theorem input289_def : input289 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7149 0#64)) := by
  unfold input289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output289_def : output289 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output289_skip : Flapjack.WordAlloc.isSkip output289 = true := by
  rw [output289_def]
  conv => lhs; cbv
  try rfl
theorem node289_eq : Flapjack.WordAlloc.removeDeadStructural input289 value59 value1 value2 = (output289, value59, value1) := by
  rw [input289_def, output289_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7145 0#64))).val
theorem input290_def : input290 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7145 0#64)) := by
  unfold input290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output290_def : output290 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output290_skip : Flapjack.WordAlloc.isSkip output290 = true := by
  rw [output290_def]
  conv => lhs; cbv
  try rfl
theorem node290_eq : Flapjack.WordAlloc.removeDeadStructural input290 value59 value1 value2 = (output290, value59, value1) := by
  rw [input290_def, output290_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7141 0#64))).val
theorem input291_def : input291 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7141 0#64)) := by
  unfold input291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7141 0#64))).val
theorem output291_def : output291 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7141 0#64)) := by
  unfold output291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output291_skip : Flapjack.WordAlloc.isSkip output291 = false := by
  rw [output291_def]
  conv => lhs; cbv
  try rfl
theorem node291_eq : Flapjack.WordAlloc.removeDeadStructural input291 value59 value1 value2 = (output291, value54, value1) := by
  rw [input291_def, output291_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input292_def : input292 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output292_def : output292 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output292_skip : Flapjack.WordAlloc.isSkip output292 = true := by
  rw [output292_def]
  conv => lhs; cbv
  try rfl
theorem node292_eq : Flapjack.WordAlloc.removeDeadStructural input292 value54 value1 value2 = (output292, value54, value1) := by
  rw [input292_def, output292_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input292 input291)).val
theorem input293_def : input293 = (.seq input292 input291) := by
  unfold input293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output291)).val
theorem output293_def : output293 = (output291) := by
  unfold output293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output293_skip : Flapjack.WordAlloc.isSkip output293 = false := by
  rw [output293_def]
  conv => lhs; cbv
  try rfl
theorem node293_eq : Flapjack.WordAlloc.removeDeadStructural input293 value59 value1 value2 = (output293, value54, value1) := by
  rw [input293_def, output293_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node291_eq]
  try dsimp only
  rw [node292_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input293 input290)).val
theorem input294_def : input294 = (.seq input293 input290) := by
  unfold input294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output293)).val
theorem output294_def : output294 = (output293) := by
  unfold output294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output294_skip : Flapjack.WordAlloc.isSkip output294 = false := by
  rw [output294_def]
  conv => lhs; cbv
  try rfl
theorem node294_eq : Flapjack.WordAlloc.removeDeadStructural input294 value59 value1 value2 = (output294, value54, value1) := by
  rw [input294_def, output294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node290_eq]
  try dsimp only
  rw [node293_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input294 input289)).val
theorem input295_def : input295 = (.seq input294 input289) := by
  unfold input295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output294)).val
theorem output295_def : output295 = (output294) := by
  unfold output295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output295_skip : Flapjack.WordAlloc.isSkip output295 = false := by
  rw [output295_def]
  conv => lhs; cbv
  try rfl
theorem node295_eq : Flapjack.WordAlloc.removeDeadStructural input295 value59 value1 value2 = (output295, value54, value1) := by
  rw [input295_def, output295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node289_eq]
  try dsimp only
  rw [node294_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input295 input288)).val
theorem input296_def : input296 = (.seq input295 input288) := by
  unfold input296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output295)).val
theorem output296_def : output296 = (output295) := by
  unfold output296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output296_skip : Flapjack.WordAlloc.isSkip output296 = false := by
  rw [output296_def]
  conv => lhs; cbv
  try rfl
theorem node296_eq : Flapjack.WordAlloc.removeDeadStructural input296 value59 value1 value2 = (output296, value54, value1) := by
  rw [input296_def, output296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node288_eq]
  try dsimp only
  rw [node295_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value60 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(7137, 7105), (7133, 7121), (7129, 7125)])).val
theorem input297_def : input297 = (Flapjack.WordLangProgHOL.move 1 [(7137, 7105), (7133, 7121), (7129, 7125)]) := by
  unfold input297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(7137, 7105)])).val
theorem output297_def : output297 = (Flapjack.WordLangProgHOL.move 1 [(7137, 7105)]) := by
  unfold output297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output297_skip : Flapjack.WordAlloc.isSkip output297 = false := by
  rw [output297_def]
  conv => lhs; cbv
  try rfl
theorem node297_eq : Flapjack.WordAlloc.removeDeadStructural input297 value54 value1 value2 = (output297, value60, value1) := by
  rw [input297_def, output297_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input297 input296)).val
theorem input298_def : input298 = (.seq input297 input296) := by
  unfold input298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output297 output296)).val
theorem output298_def : output298 = (.seq output297 output296) := by
  unfold output298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output298_skip : Flapjack.WordAlloc.isSkip output298 = false := by
  rw [output298_def]
  conv => lhs; cbv
  try rfl
theorem node298_eq : Flapjack.WordAlloc.removeDeadStructural input298 value59 value1 value2 = (output298, value60, value1) := by
  rw [input298_def, output298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node296_eq]
  try dsimp only
  rw [node297_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value61 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 7105 [2])).val
theorem input299_def : input299 = (Flapjack.WordLangProgHOL.return 7105 [2]) := by
  unfold input299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 7105 [2])).val
theorem output299_def : output299 = (Flapjack.WordLangProgHOL.return 7105 [2]) := by
  unfold output299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output299_skip : Flapjack.WordAlloc.isSkip output299 = false := by
  rw [output299_def]
  conv => lhs; cbv
  try rfl
theorem node299_eq : Flapjack.WordAlloc.removeDeadStructural input299 value60 value1 value2 = (output299, value61, value1) := by
  rw [input299_def, output299_def]
  try (conv => lhs; cbv)
  try rfl

def value62 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 7125)])).val
theorem input300_def : input300 = (Flapjack.WordLangProgHOL.move 0 [(2, 7125)]) := by
  unfold input300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 7125)])).val
theorem output300_def : output300 = (Flapjack.WordLangProgHOL.move 0 [(2, 7125)]) := by
  unfold output300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output300_skip : Flapjack.WordAlloc.isSkip output300 = false := by
  rw [output300_def]
  conv => lhs; cbv
  try rfl
theorem node300_eq : Flapjack.WordAlloc.removeDeadStructural input300 value61 value1 value2 = (output300, value62, value1) := by
  rw [input300_def, output300_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input300 input299)).val
theorem input301_def : input301 = (.seq input300 input299) := by
  unfold input301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output300 output299)).val
theorem output301_def : output301 = (.seq output300 output299) := by
  unfold output301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output301_skip : Flapjack.WordAlloc.isSkip output301 = false := by
  rw [output301_def]
  conv => lhs; cbv
  try rfl
theorem node301_eq : Flapjack.WordAlloc.removeDeadStructural input301 value60 value1 value2 = (output301, value62, value1) := by
  rw [input301_def, output301_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node299_eq]
  try dsimp only
  rw [node300_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7125 0#64))).val
theorem input302_def : input302 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7125 0#64)) := by
  unfold input302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7125 0#64))).val
theorem output302_def : output302 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7125 0#64)) := by
  unfold output302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output302_skip : Flapjack.WordAlloc.isSkip output302 = false := by
  rw [output302_def]
  conv => lhs; cbv
  try rfl
theorem node302_eq : Flapjack.WordAlloc.removeDeadStructural input302 value62 value1 value2 = (output302, value60, value1) := by
  rw [input302_def, output302_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input303_def : input303 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output303_def : output303 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output303_skip : Flapjack.WordAlloc.isSkip output303 = false := by
  rw [output303_def]
  conv => lhs; cbv
  try rfl
theorem node303_eq : Flapjack.WordAlloc.removeDeadStructural input303 value60 value1 value2 = (output303, value60, value1) := by
  rw [input303_def, output303_def]
  try (conv => lhs; cbv)
  try rfl

def value63 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7105, 7099)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7109, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(7117, 7109)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7121 0#64)))),
      597, 166))
  (some 588) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7105, 7099)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7113, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 7113)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7117 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(7121, 7113)]))),
      597, 167)))).val
theorem input304_def : input304 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7105, 7099)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7109, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(7117, 7109)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7121 0#64)))),
      597, 166))
  (some 588) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7105, 7099)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7113, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 7113)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7117 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(7121, 7113)]))),
      597, 167))) := by
  unfold input304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(7105, 7099)], 597, 166))
  (some 588) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7105, 7099)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7113, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 7113)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 167)))).val
theorem output304_def : output304 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(7105, 7099)], 597, 166))
  (some 588) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7105, 7099)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7113, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 7113)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 167))) := by
  unfold output304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output304_skip : Flapjack.WordAlloc.isSkip output304 = false := by
  rw [output304_def]
  conv => lhs; cbv
  try rfl
theorem node304_eq : Flapjack.WordAlloc.removeDeadStructural input304 value60 value1 value2 = (output304, value63, value1) := by
  rw [input304_def, output304_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input305_def : input305 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output305_def : output305 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output305_skip : Flapjack.WordAlloc.isSkip output305 = true := by
  rw [output305_def]
  conv => lhs; cbv
  try rfl
theorem node305_eq : Flapjack.WordAlloc.removeDeadStructural input305 value63 value1 value2 = (output305, value63, value1) := by
  rw [input305_def, output305_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input305 input304)).val
theorem input306_def : input306 = (.seq input305 input304) := by
  unfold input306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output304)).val
theorem output306_def : output306 = (output304) := by
  unfold output306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output306_skip : Flapjack.WordAlloc.isSkip output306 = false := by
  rw [output306_def]
  conv => lhs; cbv
  try rfl
theorem node306_eq : Flapjack.WordAlloc.removeDeadStructural input306 value60 value1 value2 = (output306, value63, value1) := by
  rw [input306_def, output306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node304_eq]
  try dsimp only
  rw [node305_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value64 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7099, 7053)])).val
theorem input307_def : input307 = (Flapjack.WordLangProgHOL.move 0 [(7099, 7053)]) := by
  unfold input307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7099, 7053)])).val
theorem output307_def : output307 = (Flapjack.WordLangProgHOL.move 0 [(7099, 7053)]) := by
  unfold output307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output307_skip : Flapjack.WordAlloc.isSkip output307 = false := by
  rw [output307_def]
  conv => lhs; cbv
  try rfl
theorem node307_eq : Flapjack.WordAlloc.removeDeadStructural input307 value63 value1 value2 = (output307, value64, value1) := by
  rw [input307_def, output307_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input307 input306)).val
theorem input308_def : input308 = (.seq input307 input306) := by
  unfold input308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output307 output306)).val
theorem output308_def : output308 = (.seq output307 output306) := by
  unfold output308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output308_skip : Flapjack.WordAlloc.isSkip output308 = false := by
  rw [output308_def]
  conv => lhs; cbv
  try rfl
theorem node308_eq : Flapjack.WordAlloc.removeDeadStructural input308 value60 value1 value2 = (output308, value64, value1) := by
  rw [input308_def, output308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node306_eq]
  try dsimp only
  rw [node307_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7093 1#64))).val
theorem input309_def : input309 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7093 1#64)) := by
  unfold input309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output309_def : output309 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output309_skip : Flapjack.WordAlloc.isSkip output309 = true := by
  rw [output309_def]
  conv => lhs; cbv
  try rfl
theorem node309_eq : Flapjack.WordAlloc.removeDeadStructural input309 value64 value1 value2 = (output309, value64, value1) := by
  rw [input309_def, output309_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input310_def : input310 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output310_def : output310 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output310_skip : Flapjack.WordAlloc.isSkip output310 = false := by
  rw [output310_def]
  conv => lhs; cbv
  try rfl
theorem node310_eq : Flapjack.WordAlloc.removeDeadStructural input310 value64 value1 value2 = (output310, value64, value1) := by
  rw [input310_def, output310_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7089 1#64))).val
theorem input311_def : input311 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7089 1#64)) := by
  unfold input311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output311_def : output311 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output311_skip : Flapjack.WordAlloc.isSkip output311 = true := by
  rw [output311_def]
  conv => lhs; cbv
  try rfl
theorem node311_eq : Flapjack.WordAlloc.removeDeadStructural input311 value64 value1 value2 = (output311, value64, value1) := by
  rw [input311_def, output311_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input311 input310)).val
theorem input312_def : input312 = (.seq input311 input310) := by
  unfold input312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output310)).val
theorem output312_def : output312 = (output310) := by
  unfold output312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output312_skip : Flapjack.WordAlloc.isSkip output312 = false := by
  rw [output312_def]
  conv => lhs; cbv
  try rfl
theorem node312_eq : Flapjack.WordAlloc.removeDeadStructural input312 value64 value1 value2 = (output312, value64, value1) := by
  rw [input312_def, output312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node310_eq]
  try dsimp only
  rw [node311_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input312 input309)).val
theorem input313_def : input313 = (.seq input312 input309) := by
  unfold input313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output312)).val
theorem output313_def : output313 = (output312) := by
  unfold output313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output313_skip : Flapjack.WordAlloc.isSkip output313 = false := by
  rw [output313_def]
  conv => lhs; cbv
  try rfl
theorem node313_eq : Flapjack.WordAlloc.removeDeadStructural input313 value64 value1 value2 = (output313, value64, value1) := by
  rw [input313_def, output313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node309_eq]
  try dsimp only
  rw [node312_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input313 input308)).val
theorem input314_def : input314 = (.seq input313 input308) := by
  unfold input314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output313 output308)).val
theorem output314_def : output314 = (.seq output313 output308) := by
  unfold output314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output314_skip : Flapjack.WordAlloc.isSkip output314 = false := by
  rw [output314_def]
  conv => lhs; cbv
  try rfl
theorem node314_eq : Flapjack.WordAlloc.removeDeadStructural input314 value60 value1 value2 = (output314, value64, value1) := by
  rw [input314_def, output314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node308_eq]
  try dsimp only
  rw [node313_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input314 input303)).val
theorem input315_def : input315 = (.seq input314 input303) := by
  unfold input315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output314 output303)).val
theorem output315_def : output315 = (.seq output314 output303) := by
  unfold output315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output315_skip : Flapjack.WordAlloc.isSkip output315 = false := by
  rw [output315_def]
  conv => lhs; cbv
  try rfl
theorem node315_eq : Flapjack.WordAlloc.removeDeadStructural input315 value60 value1 value2 = (output315, value64, value1) := by
  rw [input315_def, output315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node303_eq]
  try dsimp only
  rw [node314_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input315 input302)).val
theorem input316_def : input316 = (.seq input315 input302) := by
  unfold input316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output315 output302)).val
theorem output316_def : output316 = (.seq output315 output302) := by
  unfold output316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output316_skip : Flapjack.WordAlloc.isSkip output316 = false := by
  rw [output316_def]
  conv => lhs; cbv
  try rfl
theorem node316_eq : Flapjack.WordAlloc.removeDeadStructural input316 value62 value1 value2 = (output316, value64, value1) := by
  rw [input316_def, output316_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node302_eq]
  try dsimp only
  rw [node315_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input316 input301)).val
theorem input317_def : input317 = (.seq input316 input301) := by
  unfold input317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output316 output301)).val
theorem output317_def : output317 = (.seq output316 output301) := by
  unfold output317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output317_skip : Flapjack.WordAlloc.isSkip output317 = false := by
  rw [output317_def]
  conv => lhs; cbv
  try rfl
theorem node317_eq : Flapjack.WordAlloc.removeDeadStructural input317 value60 value1 value2 = (output317, value64, value1) := by
  rw [input317_def, output317_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node301_eq]
  try dsimp only
  rw [node316_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input317 input298)).val
theorem input318_def : input318 = (.seq input317 input298) := by
  unfold input318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output317 output298)).val
theorem output318_def : output318 = (.seq output317 output298) := by
  unfold output318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output318_skip : Flapjack.WordAlloc.isSkip output318 = false := by
  rw [output318_def]
  conv => lhs; cbv
  try rfl
theorem node318_eq : Flapjack.WordAlloc.removeDeadStructural input318 value59 value1 value2 = (output318, value64, value1) := by
  rw [input318_def, output318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node298_eq]
  try dsimp only
  rw [node317_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7153, 7069)])).val
theorem input319_def : input319 = (Flapjack.WordLangProgHOL.move 2 [(7153, 7069)]) := by
  unfold input319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output319_def : output319 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output319_skip : Flapjack.WordAlloc.isSkip output319 = true := by
  rw [output319_def]
  conv => lhs; cbv
  try rfl
theorem node319_eq : Flapjack.WordAlloc.removeDeadStructural input319 value59 value1 value2 = (output319, value59, value1) := by
  rw [input319_def, output319_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7149, 7077)])).val
theorem input320_def : input320 = (Flapjack.WordLangProgHOL.move 2 [(7149, 7077)]) := by
  unfold input320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output320_def : output320 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output320_skip : Flapjack.WordAlloc.isSkip output320 = true := by
  rw [output320_def]
  conv => lhs; cbv
  try rfl
theorem node320_eq : Flapjack.WordAlloc.removeDeadStructural input320 value59 value1 value2 = (output320, value59, value1) := by
  rw [input320_def, output320_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7145, 7085)])).val
theorem input321_def : input321 = (Flapjack.WordLangProgHOL.move 2 [(7145, 7085)]) := by
  unfold input321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output321_def : output321 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output321_skip : Flapjack.WordAlloc.isSkip output321 = true := by
  rw [output321_def]
  conv => lhs; cbv
  try rfl
theorem node321_eq : Flapjack.WordAlloc.removeDeadStructural input321 value59 value1 value2 = (output321, value59, value1) := by
  rw [input321_def, output321_def]
  try (conv => lhs; cbv)
  try rfl

def value65 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7141, 7081)])).val
theorem input322_def : input322 = (Flapjack.WordLangProgHOL.move 2 [(7141, 7081)]) := by
  unfold input322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7141, 7081)])).val
theorem output322_def : output322 = (Flapjack.WordLangProgHOL.move 2 [(7141, 7081)]) := by
  unfold output322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output322_skip : Flapjack.WordAlloc.isSkip output322 = false := by
  rw [output322_def]
  conv => lhs; cbv
  try rfl
theorem node322_eq : Flapjack.WordAlloc.removeDeadStructural input322 value59 value1 value2 = (output322, value65, value1) := by
  rw [input322_def, output322_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input323_def : input323 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output323_def : output323 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output323_skip : Flapjack.WordAlloc.isSkip output323 = true := by
  rw [output323_def]
  conv => lhs; cbv
  try rfl
theorem node323_eq : Flapjack.WordAlloc.removeDeadStructural input323 value65 value1 value2 = (output323, value65, value1) := by
  rw [input323_def, output323_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input323 input322)).val
theorem input324_def : input324 = (.seq input323 input322) := by
  unfold input324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output322)).val
theorem output324_def : output324 = (output322) := by
  unfold output324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output324_skip : Flapjack.WordAlloc.isSkip output324 = false := by
  rw [output324_def]
  conv => lhs; cbv
  try rfl
theorem node324_eq : Flapjack.WordAlloc.removeDeadStructural input324 value59 value1 value2 = (output324, value65, value1) := by
  rw [input324_def, output324_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node322_eq]
  try dsimp only
  rw [node323_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input324 input321)).val
theorem input325_def : input325 = (.seq input324 input321) := by
  unfold input325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output324)).val
theorem output325_def : output325 = (output324) := by
  unfold output325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output325_skip : Flapjack.WordAlloc.isSkip output325 = false := by
  rw [output325_def]
  conv => lhs; cbv
  try rfl
theorem node325_eq : Flapjack.WordAlloc.removeDeadStructural input325 value59 value1 value2 = (output325, value65, value1) := by
  rw [input325_def, output325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node321_eq]
  try dsimp only
  rw [node324_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input325 input320)).val
theorem input326_def : input326 = (.seq input325 input320) := by
  unfold input326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output325)).val
theorem output326_def : output326 = (output325) := by
  unfold output326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output326_skip : Flapjack.WordAlloc.isSkip output326 = false := by
  rw [output326_def]
  conv => lhs; cbv
  try rfl
theorem node326_eq : Flapjack.WordAlloc.removeDeadStructural input326 value59 value1 value2 = (output326, value65, value1) := by
  rw [input326_def, output326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node320_eq]
  try dsimp only
  rw [node325_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input326 input319)).val
theorem input327_def : input327 = (.seq input326 input319) := by
  unfold input327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output326)).val
theorem output327_def : output327 = (output326) := by
  unfold output327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output327_skip : Flapjack.WordAlloc.isSkip output327 = false := by
  rw [output327_def]
  conv => lhs; cbv
  try rfl
theorem node327_eq : Flapjack.WordAlloc.removeDeadStructural input327 value59 value1 value2 = (output327, value65, value1) := by
  rw [input327_def, output327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node319_eq]
  try dsimp only
  rw [node326_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value66 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7137, 7053), (7133, 7081), (7129, 7045)])).val
theorem input328_def : input328 = (Flapjack.WordLangProgHOL.move 2 [(7137, 7053), (7133, 7081), (7129, 7045)]) := by
  unfold input328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7137, 7053)])).val
theorem output328_def : output328 = (Flapjack.WordLangProgHOL.move 2 [(7137, 7053)]) := by
  unfold output328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output328_skip : Flapjack.WordAlloc.isSkip output328 = false := by
  rw [output328_def]
  conv => lhs; cbv
  try rfl
theorem node328_eq : Flapjack.WordAlloc.removeDeadStructural input328 value65 value1 value2 = (output328, value66, value1) := by
  rw [input328_def, output328_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input328 input327)).val
theorem input329_def : input329 = (.seq input328 input327) := by
  unfold input329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output328 output327)).val
theorem output329_def : output329 = (.seq output328 output327) := by
  unfold output329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output329_skip : Flapjack.WordAlloc.isSkip output329 = false := by
  rw [output329_def]
  conv => lhs; cbv
  try rfl
theorem node329_eq : Flapjack.WordAlloc.removeDeadStructural input329 value59 value1 value2 = (output329, value66, value1) := by
  rw [input329_def, output329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node327_eq]
  try dsimp only
  rw [node328_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input330_def : input330 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output330_def : output330 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output330_skip : Flapjack.WordAlloc.isSkip output330 = true := by
  rw [output330_def]
  conv => lhs; cbv
  try rfl
theorem node330_eq : Flapjack.WordAlloc.removeDeadStructural input330 value66 value1 value2 = (output330, value66, value1) := by
  rw [input330_def, output330_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input330 input329)).val
theorem input331_def : input331 = (.seq input330 input329) := by
  unfold input331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output329)).val
theorem output331_def : output331 = (output329) := by
  unfold output331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output331_skip : Flapjack.WordAlloc.isSkip output331 = false := by
  rw [output331_def]
  conv => lhs; cbv
  try rfl
theorem node331_eq : Flapjack.WordAlloc.removeDeadStructural input331 value59 value1 value2 = (output331, value66, value1) := by
  rw [input331_def, output331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node329_eq]
  try dsimp only
  rw [node330_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value67 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 7085

def value68 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 7081 value67 input318 input331)).val
theorem input332_def : input332 = (.ite value15 7081 value67 input318 input331) := by
  unfold input332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 7081 value67 output318 output331)).val
theorem output332_def : output332 = (.ite value15 7081 value67 output318 output331) := by
  unfold output332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output332_skip : Flapjack.WordAlloc.isSkip output332 = false := by
  rw [output332_def]
  conv => lhs; cbv
  try rfl
theorem node332_eq : Flapjack.WordAlloc.removeDeadStructural input332 value59 value1 value2 = (output332, value68, value1) := by
  rw [input332_def, output332_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node318_eq]
  try dsimp only
  rw [node331_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input332 input287)).val
theorem input333_def : input333 = (.seq input332 input287) := by
  unfold input333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output332 output287)).val
theorem output333_def : output333 = (.seq output332 output287) := by
  unfold output333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output333_skip : Flapjack.WordAlloc.isSkip output333 = false := by
  rw [output333_def]
  conv => lhs; cbv
  try rfl
theorem node333_eq : Flapjack.WordAlloc.removeDeadStructural input333 value59 value1 value2 = (output333, value68, value1) := by
  rw [input333_def, output333_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node287_eq]
  try dsimp only
  rw [node332_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7085 243#64))).val
theorem input334_def : input334 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7085 243#64)) := by
  unfold input334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7085 243#64))).val
theorem output334_def : output334 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7085 243#64)) := by
  unfold output334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output334_skip : Flapjack.WordAlloc.isSkip output334 = false := by
  rw [output334_def]
  conv => lhs; cbv
  try rfl
theorem node334_eq : Flapjack.WordAlloc.removeDeadStructural input334 value68 value1 value2 = (output334, value66, value1) := by
  rw [input334_def, output334_def]
  try (conv => lhs; cbv)
  try rfl

def value69 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7081, 7057)])).val
theorem input335_def : input335 = (Flapjack.WordLangProgHOL.move 0 [(7081, 7057)]) := by
  unfold input335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7081, 7057)])).val
theorem output335_def : output335 = (Flapjack.WordLangProgHOL.move 0 [(7081, 7057)]) := by
  unfold output335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output335_skip : Flapjack.WordAlloc.isSkip output335 = false := by
  rw [output335_def]
  conv => lhs; cbv
  try rfl
theorem node335_eq : Flapjack.WordAlloc.removeDeadStructural input335 value66 value1 value2 = (output335, value69, value1) := by
  rw [input335_def, output335_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input336_def : input336 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output336_def : output336 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output336_skip : Flapjack.WordAlloc.isSkip output336 = false := by
  rw [output336_def]
  conv => lhs; cbv
  try rfl
theorem node336_eq : Flapjack.WordAlloc.removeDeadStructural input336 value69 value1 value2 = (output336, value69, value1) := by
  rw [input336_def, output336_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7077 0#64))).val
theorem input337_def : input337 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7077 0#64)) := by
  unfold input337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output337_def : output337 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output337_skip : Flapjack.WordAlloc.isSkip output337 = true := by
  rw [output337_def]
  conv => lhs; cbv
  try rfl
theorem node337_eq : Flapjack.WordAlloc.removeDeadStructural input337 value69 value1 value2 = (output337, value69, value1) := by
  rw [input337_def, output337_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input338_def : input338 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output338_def : output338 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output338_skip : Flapjack.WordAlloc.isSkip output338 = false := by
  rw [output338_def]
  conv => lhs; cbv
  try rfl
theorem node338_eq : Flapjack.WordAlloc.removeDeadStructural input338 value69 value1 value2 = (output338, value69, value1) := by
  rw [input338_def, output338_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7073 0#64))).val
theorem input339_def : input339 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7073 0#64)) := by
  unfold input339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output339_def : output339 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output339_skip : Flapjack.WordAlloc.isSkip output339 = true := by
  rw [output339_def]
  conv => lhs; cbv
  try rfl
theorem node339_eq : Flapjack.WordAlloc.removeDeadStructural input339 value69 value1 value2 = (output339, value69, value1) := by
  rw [input339_def, output339_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input339 input338)).val
theorem input340_def : input340 = (.seq input339 input338) := by
  unfold input340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output338)).val
theorem output340_def : output340 = (output338) := by
  unfold output340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output340_skip : Flapjack.WordAlloc.isSkip output340 = false := by
  rw [output340_def]
  conv => lhs; cbv
  try rfl
theorem node340_eq : Flapjack.WordAlloc.removeDeadStructural input340 value69 value1 value2 = (output340, value69, value1) := by
  rw [input340_def, output340_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node338_eq]
  try dsimp only
  rw [node339_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input340 input337)).val
theorem input341_def : input341 = (.seq input340 input337) := by
  unfold input341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output340)).val
theorem output341_def : output341 = (output340) := by
  unfold output341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output341_skip : Flapjack.WordAlloc.isSkip output341 = false := by
  rw [output341_def]
  conv => lhs; cbv
  try rfl
theorem node341_eq : Flapjack.WordAlloc.removeDeadStructural input341 value69 value1 value2 = (output341, value69, value1) := by
  rw [input341_def, output341_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node337_eq]
  try dsimp only
  rw [node340_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7069 0#64))).val
theorem input342_def : input342 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7069 0#64)) := by
  unfold input342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output342_def : output342 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output342_skip : Flapjack.WordAlloc.isSkip output342 = true := by
  rw [output342_def]
  conv => lhs; cbv
  try rfl
theorem node342_eq : Flapjack.WordAlloc.removeDeadStructural input342 value69 value1 value2 = (output342, value69, value1) := by
  rw [input342_def, output342_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7065 0#64))).val
theorem input343_def : input343 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7065 0#64)) := by
  unfold input343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output343_def : output343 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output343_skip : Flapjack.WordAlloc.isSkip output343 = true := by
  rw [output343_def]
  conv => lhs; cbv
  try rfl
theorem node343_eq : Flapjack.WordAlloc.removeDeadStructural input343 value69 value1 value2 = (output343, value69, value1) := by
  rw [input343_def, output343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7061 0#64))).val
theorem input344_def : input344 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7061 0#64)) := by
  unfold input344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output344_def : output344 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output344_skip : Flapjack.WordAlloc.isSkip output344 = true := by
  rw [output344_def]
  conv => lhs; cbv
  try rfl
theorem node344_eq : Flapjack.WordAlloc.removeDeadStructural input344 value69 value1 value2 = (output344, value69, value1) := by
  rw [input344_def, output344_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7057 0#64))).val
theorem input345_def : input345 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7057 0#64)) := by
  unfold input345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7057 0#64))).val
theorem output345_def : output345 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7057 0#64)) := by
  unfold output345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output345_skip : Flapjack.WordAlloc.isSkip output345 = false := by
  rw [output345_def]
  conv => lhs; cbv
  try rfl
theorem node345_eq : Flapjack.WordAlloc.removeDeadStructural input345 value69 value1 value2 = (output345, value64, value1) := by
  rw [input345_def, output345_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input346_def : input346 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output346_def : output346 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output346_skip : Flapjack.WordAlloc.isSkip output346 = true := by
  rw [output346_def]
  conv => lhs; cbv
  try rfl
theorem node346_eq : Flapjack.WordAlloc.removeDeadStructural input346 value64 value1 value2 = (output346, value64, value1) := by
  rw [input346_def, output346_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input346 input345)).val
theorem input347_def : input347 = (.seq input346 input345) := by
  unfold input347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output345)).val
theorem output347_def : output347 = (output345) := by
  unfold output347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output347_skip : Flapjack.WordAlloc.isSkip output347 = false := by
  rw [output347_def]
  conv => lhs; cbv
  try rfl
theorem node347_eq : Flapjack.WordAlloc.removeDeadStructural input347 value69 value1 value2 = (output347, value64, value1) := by
  rw [input347_def, output347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node345_eq]
  try dsimp only
  rw [node346_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input347 input344)).val
theorem input348_def : input348 = (.seq input347 input344) := by
  unfold input348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output347)).val
theorem output348_def : output348 = (output347) := by
  unfold output348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output348_skip : Flapjack.WordAlloc.isSkip output348 = false := by
  rw [output348_def]
  conv => lhs; cbv
  try rfl
theorem node348_eq : Flapjack.WordAlloc.removeDeadStructural input348 value69 value1 value2 = (output348, value64, value1) := by
  rw [input348_def, output348_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node344_eq]
  try dsimp only
  rw [node347_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input348 input343)).val
theorem input349_def : input349 = (.seq input348 input343) := by
  unfold input349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output348)).val
theorem output349_def : output349 = (output348) := by
  unfold output349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output349_skip : Flapjack.WordAlloc.isSkip output349 = false := by
  rw [output349_def]
  conv => lhs; cbv
  try rfl
theorem node349_eq : Flapjack.WordAlloc.removeDeadStructural input349 value69 value1 value2 = (output349, value64, value1) := by
  rw [input349_def, output349_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node343_eq]
  try dsimp only
  rw [node348_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input349 input342)).val
theorem input350_def : input350 = (.seq input349 input342) := by
  unfold input350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output349)).val
theorem output350_def : output350 = (output349) := by
  unfold output350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output350_skip : Flapjack.WordAlloc.isSkip output350 = false := by
  rw [output350_def]
  conv => lhs; cbv
  try rfl
theorem node350_eq : Flapjack.WordAlloc.removeDeadStructural input350 value69 value1 value2 = (output350, value64, value1) := by
  rw [input350_def, output350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node342_eq]
  try dsimp only
  rw [node349_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value70 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(7053, 7021), (7049, 7037), (7045, 7041)])).val
theorem input351_def : input351 = (Flapjack.WordLangProgHOL.move 1 [(7053, 7021), (7049, 7037), (7045, 7041)]) := by
  unfold input351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(7053, 7021)])).val
theorem output351_def : output351 = (Flapjack.WordLangProgHOL.move 1 [(7053, 7021)]) := by
  unfold output351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output351_skip : Flapjack.WordAlloc.isSkip output351 = false := by
  rw [output351_def]
  conv => lhs; cbv
  try rfl
theorem node351_eq : Flapjack.WordAlloc.removeDeadStructural input351 value64 value1 value2 = (output351, value70, value1) := by
  rw [input351_def, output351_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input351 input350)).val
theorem input352_def : input352 = (.seq input351 input350) := by
  unfold input352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output351 output350)).val
theorem output352_def : output352 = (.seq output351 output350) := by
  unfold output352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output352_skip : Flapjack.WordAlloc.isSkip output352 = false := by
  rw [output352_def]
  conv => lhs; cbv
  try rfl
theorem node352_eq : Flapjack.WordAlloc.removeDeadStructural input352 value69 value1 value2 = (output352, value70, value1) := by
  rw [input352_def, output352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node350_eq]
  try dsimp only
  rw [node351_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value71 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 7021 [2])).val
theorem input353_def : input353 = (Flapjack.WordLangProgHOL.return 7021 [2]) := by
  unfold input353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 7021 [2])).val
theorem output353_def : output353 = (Flapjack.WordLangProgHOL.return 7021 [2]) := by
  unfold output353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output353_skip : Flapjack.WordAlloc.isSkip output353 = false := by
  rw [output353_def]
  conv => lhs; cbv
  try rfl
theorem node353_eq : Flapjack.WordAlloc.removeDeadStructural input353 value70 value1 value2 = (output353, value71, value1) := by
  rw [input353_def, output353_def]
  try (conv => lhs; cbv)
  try rfl

def value72 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 7041)])).val
theorem input354_def : input354 = (Flapjack.WordLangProgHOL.move 0 [(2, 7041)]) := by
  unfold input354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 7041)])).val
theorem output354_def : output354 = (Flapjack.WordLangProgHOL.move 0 [(2, 7041)]) := by
  unfold output354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output354_skip : Flapjack.WordAlloc.isSkip output354 = false := by
  rw [output354_def]
  conv => lhs; cbv
  try rfl
theorem node354_eq : Flapjack.WordAlloc.removeDeadStructural input354 value71 value1 value2 = (output354, value72, value1) := by
  rw [input354_def, output354_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input354 input353)).val
theorem input355_def : input355 = (.seq input354 input353) := by
  unfold input355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output354 output353)).val
theorem output355_def : output355 = (.seq output354 output353) := by
  unfold output355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output355_skip : Flapjack.WordAlloc.isSkip output355 = false := by
  rw [output355_def]
  conv => lhs; cbv
  try rfl
theorem node355_eq : Flapjack.WordAlloc.removeDeadStructural input355 value70 value1 value2 = (output355, value72, value1) := by
  rw [input355_def, output355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node353_eq]
  try dsimp only
  rw [node354_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7041 0#64))).val
theorem input356_def : input356 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7041 0#64)) := by
  unfold input356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7041 0#64))).val
theorem output356_def : output356 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7041 0#64)) := by
  unfold output356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output356_skip : Flapjack.WordAlloc.isSkip output356 = false := by
  rw [output356_def]
  conv => lhs; cbv
  try rfl
theorem node356_eq : Flapjack.WordAlloc.removeDeadStructural input356 value72 value1 value2 = (output356, value70, value1) := by
  rw [input356_def, output356_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input357_def : input357 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output357_def : output357 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output357_skip : Flapjack.WordAlloc.isSkip output357 = false := by
  rw [output357_def]
  conv => lhs; cbv
  try rfl
theorem node357_eq : Flapjack.WordAlloc.removeDeadStructural input357 value70 value1 value2 = (output357, value70, value1) := by
  rw [input357_def, output357_def]
  try (conv => lhs; cbv)
  try rfl

def value73 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7021, 7015)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7025, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(7033, 7025)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7037 0#64)))),
      597, 164))
  (some 624) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7021, 7015)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7029, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 7029)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7033 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(7037, 7029)]))),
      597, 165)))).val
theorem input358_def : input358 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7021, 7015)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7025, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(7033, 7025)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7037 0#64)))),
      597, 164))
  (some 624) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7021, 7015)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7029, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 7029)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7033 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(7037, 7029)]))),
      597, 165))) := by
  unfold input358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(7021, 7015)], 597, 164))
  (some 624) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7021, 7015)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7029, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 7029)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 165)))).val
theorem output358_def : output358 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(7021, 7015)], 597, 164))
  (some 624) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(7021, 7015)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(7029, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 7029)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 165))) := by
  unfold output358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output358_skip : Flapjack.WordAlloc.isSkip output358 = false := by
  rw [output358_def]
  conv => lhs; cbv
  try rfl
theorem node358_eq : Flapjack.WordAlloc.removeDeadStructural input358 value70 value1 value2 = (output358, value73, value1) := by
  rw [input358_def, output358_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input359_def : input359 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output359_def : output359 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output359_skip : Flapjack.WordAlloc.isSkip output359 = true := by
  rw [output359_def]
  conv => lhs; cbv
  try rfl
theorem node359_eq : Flapjack.WordAlloc.removeDeadStructural input359 value73 value1 value2 = (output359, value73, value1) := by
  rw [input359_def, output359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input359 input358)).val
theorem input360_def : input360 = (.seq input359 input358) := by
  unfold input360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output358)).val
theorem output360_def : output360 = (output358) := by
  unfold output360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output360_skip : Flapjack.WordAlloc.isSkip output360 = false := by
  rw [output360_def]
  conv => lhs; cbv
  try rfl
theorem node360_eq : Flapjack.WordAlloc.removeDeadStructural input360 value70 value1 value2 = (output360, value73, value1) := by
  rw [input360_def, output360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node358_eq]
  try dsimp only
  rw [node359_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value74 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7015, 6969)])).val
theorem input361_def : input361 = (Flapjack.WordLangProgHOL.move 0 [(7015, 6969)]) := by
  unfold input361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(7015, 6969)])).val
theorem output361_def : output361 = (Flapjack.WordLangProgHOL.move 0 [(7015, 6969)]) := by
  unfold output361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output361_skip : Flapjack.WordAlloc.isSkip output361 = false := by
  rw [output361_def]
  conv => lhs; cbv
  try rfl
theorem node361_eq : Flapjack.WordAlloc.removeDeadStructural input361 value73 value1 value2 = (output361, value74, value1) := by
  rw [input361_def, output361_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input361 input360)).val
theorem input362_def : input362 = (.seq input361 input360) := by
  unfold input362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output361 output360)).val
theorem output362_def : output362 = (.seq output361 output360) := by
  unfold output362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output362_skip : Flapjack.WordAlloc.isSkip output362 = false := by
  rw [output362_def]
  conv => lhs; cbv
  try rfl
theorem node362_eq : Flapjack.WordAlloc.removeDeadStructural input362 value70 value1 value2 = (output362, value74, value1) := by
  rw [input362_def, output362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node360_eq]
  try dsimp only
  rw [node361_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7009 1#64))).val
theorem input363_def : input363 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7009 1#64)) := by
  unfold input363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output363_def : output363 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output363_skip : Flapjack.WordAlloc.isSkip output363 = true := by
  rw [output363_def]
  conv => lhs; cbv
  try rfl
theorem node363_eq : Flapjack.WordAlloc.removeDeadStructural input363 value74 value1 value2 = (output363, value74, value1) := by
  rw [input363_def, output363_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input364_def : input364 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output364_def : output364 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output364_skip : Flapjack.WordAlloc.isSkip output364 = false := by
  rw [output364_def]
  conv => lhs; cbv
  try rfl
theorem node364_eq : Flapjack.WordAlloc.removeDeadStructural input364 value74 value1 value2 = (output364, value74, value1) := by
  rw [input364_def, output364_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7005 1#64))).val
theorem input365_def : input365 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7005 1#64)) := by
  unfold input365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output365_def : output365 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output365_skip : Flapjack.WordAlloc.isSkip output365 = true := by
  rw [output365_def]
  conv => lhs; cbv
  try rfl
theorem node365_eq : Flapjack.WordAlloc.removeDeadStructural input365 value74 value1 value2 = (output365, value74, value1) := by
  rw [input365_def, output365_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input365 input364)).val
theorem input366_def : input366 = (.seq input365 input364) := by
  unfold input366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output364)).val
theorem output366_def : output366 = (output364) := by
  unfold output366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output366_skip : Flapjack.WordAlloc.isSkip output366 = false := by
  rw [output366_def]
  conv => lhs; cbv
  try rfl
theorem node366_eq : Flapjack.WordAlloc.removeDeadStructural input366 value74 value1 value2 = (output366, value74, value1) := by
  rw [input366_def, output366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node364_eq]
  try dsimp only
  rw [node365_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input366 input363)).val
theorem input367_def : input367 = (.seq input366 input363) := by
  unfold input367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output366)).val
theorem output367_def : output367 = (output366) := by
  unfold output367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output367_skip : Flapjack.WordAlloc.isSkip output367 = false := by
  rw [output367_def]
  conv => lhs; cbv
  try rfl
theorem node367_eq : Flapjack.WordAlloc.removeDeadStructural input367 value74 value1 value2 = (output367, value74, value1) := by
  rw [input367_def, output367_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node363_eq]
  try dsimp only
  rw [node366_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input367 input362)).val
theorem input368_def : input368 = (.seq input367 input362) := by
  unfold input368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output367 output362)).val
theorem output368_def : output368 = (.seq output367 output362) := by
  unfold output368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output368_skip : Flapjack.WordAlloc.isSkip output368 = false := by
  rw [output368_def]
  conv => lhs; cbv
  try rfl
theorem node368_eq : Flapjack.WordAlloc.removeDeadStructural input368 value70 value1 value2 = (output368, value74, value1) := by
  rw [input368_def, output368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node362_eq]
  try dsimp only
  rw [node367_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input368 input357)).val
theorem input369_def : input369 = (.seq input368 input357) := by
  unfold input369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output368 output357)).val
theorem output369_def : output369 = (.seq output368 output357) := by
  unfold output369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output369_skip : Flapjack.WordAlloc.isSkip output369 = false := by
  rw [output369_def]
  conv => lhs; cbv
  try rfl
theorem node369_eq : Flapjack.WordAlloc.removeDeadStructural input369 value70 value1 value2 = (output369, value74, value1) := by
  rw [input369_def, output369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node357_eq]
  try dsimp only
  rw [node368_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input369 input356)).val
theorem input370_def : input370 = (.seq input369 input356) := by
  unfold input370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output369 output356)).val
theorem output370_def : output370 = (.seq output369 output356) := by
  unfold output370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output370_skip : Flapjack.WordAlloc.isSkip output370 = false := by
  rw [output370_def]
  conv => lhs; cbv
  try rfl
theorem node370_eq : Flapjack.WordAlloc.removeDeadStructural input370 value72 value1 value2 = (output370, value74, value1) := by
  rw [input370_def, output370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node356_eq]
  try dsimp only
  rw [node369_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input370 input355)).val
theorem input371_def : input371 = (.seq input370 input355) := by
  unfold input371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output370 output355)).val
theorem output371_def : output371 = (.seq output370 output355) := by
  unfold output371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output371_skip : Flapjack.WordAlloc.isSkip output371 = false := by
  rw [output371_def]
  conv => lhs; cbv
  try rfl
theorem node371_eq : Flapjack.WordAlloc.removeDeadStructural input371 value70 value1 value2 = (output371, value74, value1) := by
  rw [input371_def, output371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node355_eq]
  try dsimp only
  rw [node370_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input371 input352)).val
theorem input372_def : input372 = (.seq input371 input352) := by
  unfold input372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output371 output352)).val
theorem output372_def : output372 = (.seq output371 output352) := by
  unfold output372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output372_skip : Flapjack.WordAlloc.isSkip output372 = false := by
  rw [output372_def]
  conv => lhs; cbv
  try rfl
theorem node372_eq : Flapjack.WordAlloc.removeDeadStructural input372 value69 value1 value2 = (output372, value74, value1) := by
  rw [input372_def, output372_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node352_eq]
  try dsimp only
  rw [node371_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7069, 6985)])).val
theorem input373_def : input373 = (Flapjack.WordLangProgHOL.move 2 [(7069, 6985)]) := by
  unfold input373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output373_def : output373 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output373_skip : Flapjack.WordAlloc.isSkip output373 = true := by
  rw [output373_def]
  conv => lhs; cbv
  try rfl
theorem node373_eq : Flapjack.WordAlloc.removeDeadStructural input373 value69 value1 value2 = (output373, value69, value1) := by
  rw [input373_def, output373_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7065, 6993)])).val
theorem input374_def : input374 = (Flapjack.WordLangProgHOL.move 2 [(7065, 6993)]) := by
  unfold input374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output374_def : output374 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output374_skip : Flapjack.WordAlloc.isSkip output374 = true := by
  rw [output374_def]
  conv => lhs; cbv
  try rfl
theorem node374_eq : Flapjack.WordAlloc.removeDeadStructural input374 value69 value1 value2 = (output374, value69, value1) := by
  rw [input374_def, output374_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7061, 7001)])).val
theorem input375_def : input375 = (Flapjack.WordLangProgHOL.move 2 [(7061, 7001)]) := by
  unfold input375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output375_def : output375 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output375_skip : Flapjack.WordAlloc.isSkip output375 = true := by
  rw [output375_def]
  conv => lhs; cbv
  try rfl
theorem node375_eq : Flapjack.WordAlloc.removeDeadStructural input375 value69 value1 value2 = (output375, value69, value1) := by
  rw [input375_def, output375_def]
  try (conv => lhs; cbv)
  try rfl

def value75 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7057, 6997)])).val
theorem input376_def : input376 = (Flapjack.WordLangProgHOL.move 2 [(7057, 6997)]) := by
  unfold input376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7057, 6997)])).val
theorem output376_def : output376 = (Flapjack.WordLangProgHOL.move 2 [(7057, 6997)]) := by
  unfold output376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output376_skip : Flapjack.WordAlloc.isSkip output376 = false := by
  rw [output376_def]
  conv => lhs; cbv
  try rfl
theorem node376_eq : Flapjack.WordAlloc.removeDeadStructural input376 value69 value1 value2 = (output376, value75, value1) := by
  rw [input376_def, output376_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input377_def : input377 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output377_def : output377 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output377_skip : Flapjack.WordAlloc.isSkip output377 = true := by
  rw [output377_def]
  conv => lhs; cbv
  try rfl
theorem node377_eq : Flapjack.WordAlloc.removeDeadStructural input377 value75 value1 value2 = (output377, value75, value1) := by
  rw [input377_def, output377_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input377 input376)).val
theorem input378_def : input378 = (.seq input377 input376) := by
  unfold input378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output376)).val
theorem output378_def : output378 = (output376) := by
  unfold output378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output378_skip : Flapjack.WordAlloc.isSkip output378 = false := by
  rw [output378_def]
  conv => lhs; cbv
  try rfl
theorem node378_eq : Flapjack.WordAlloc.removeDeadStructural input378 value69 value1 value2 = (output378, value75, value1) := by
  rw [input378_def, output378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node376_eq]
  try dsimp only
  rw [node377_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input378 input375)).val
theorem input379_def : input379 = (.seq input378 input375) := by
  unfold input379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output378)).val
theorem output379_def : output379 = (output378) := by
  unfold output379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output379_skip : Flapjack.WordAlloc.isSkip output379 = false := by
  rw [output379_def]
  conv => lhs; cbv
  try rfl
theorem node379_eq : Flapjack.WordAlloc.removeDeadStructural input379 value69 value1 value2 = (output379, value75, value1) := by
  rw [input379_def, output379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node375_eq]
  try dsimp only
  rw [node378_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input379 input374)).val
theorem input380_def : input380 = (.seq input379 input374) := by
  unfold input380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output379)).val
theorem output380_def : output380 = (output379) := by
  unfold output380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output380_skip : Flapjack.WordAlloc.isSkip output380 = false := by
  rw [output380_def]
  conv => lhs; cbv
  try rfl
theorem node380_eq : Flapjack.WordAlloc.removeDeadStructural input380 value69 value1 value2 = (output380, value75, value1) := by
  rw [input380_def, output380_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node374_eq]
  try dsimp only
  rw [node379_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input380 input373)).val
theorem input381_def : input381 = (.seq input380 input373) := by
  unfold input381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output380)).val
theorem output381_def : output381 = (output380) := by
  unfold output381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output381_skip : Flapjack.WordAlloc.isSkip output381 = false := by
  rw [output381_def]
  conv => lhs; cbv
  try rfl
theorem node381_eq : Flapjack.WordAlloc.removeDeadStructural input381 value69 value1 value2 = (output381, value75, value1) := by
  rw [input381_def, output381_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node373_eq]
  try dsimp only
  rw [node380_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value76 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7053, 6969), (7049, 6997), (7045, 6961)])).val
theorem input382_def : input382 = (Flapjack.WordLangProgHOL.move 2 [(7053, 6969), (7049, 6997), (7045, 6961)]) := by
  unfold input382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(7053, 6969)])).val
theorem output382_def : output382 = (Flapjack.WordLangProgHOL.move 2 [(7053, 6969)]) := by
  unfold output382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output382_skip : Flapjack.WordAlloc.isSkip output382 = false := by
  rw [output382_def]
  conv => lhs; cbv
  try rfl
theorem node382_eq : Flapjack.WordAlloc.removeDeadStructural input382 value75 value1 value2 = (output382, value76, value1) := by
  rw [input382_def, output382_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input382 input381)).val
theorem input383_def : input383 = (.seq input382 input381) := by
  unfold input383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output382 output381)).val
theorem output383_def : output383 = (.seq output382 output381) := by
  unfold output383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output383_skip : Flapjack.WordAlloc.isSkip output383 = false := by
  rw [output383_def]
  conv => lhs; cbv
  try rfl
theorem node383_eq : Flapjack.WordAlloc.removeDeadStructural input383 value69 value1 value2 = (output383, value76, value1) := by
  rw [input383_def, output383_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node381_eq]
  try dsimp only
  rw [node382_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input384_def : input384 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output384_def : output384 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output384_skip : Flapjack.WordAlloc.isSkip output384 = true := by
  rw [output384_def]
  conv => lhs; cbv
  try rfl
theorem node384_eq : Flapjack.WordAlloc.removeDeadStructural input384 value76 value1 value2 = (output384, value76, value1) := by
  rw [input384_def, output384_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input384 input383)).val
theorem input385_def : input385 = (.seq input384 input383) := by
  unfold input385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output383)).val
theorem output385_def : output385 = (output383) := by
  unfold output385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output385_skip : Flapjack.WordAlloc.isSkip output385 = false := by
  rw [output385_def]
  conv => lhs; cbv
  try rfl
theorem node385_eq : Flapjack.WordAlloc.removeDeadStructural input385 value69 value1 value2 = (output385, value76, value1) := by
  rw [input385_def, output385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node383_eq]
  try dsimp only
  rw [node384_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value77 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 7001

def value78 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6997 value77 input372 input385)).val
theorem input386_def : input386 = (.ite value15 6997 value77 input372 input385) := by
  unfold input386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6997 value77 output372 output385)).val
theorem output386_def : output386 = (.ite value15 6997 value77 output372 output385) := by
  unfold output386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output386_skip : Flapjack.WordAlloc.isSkip output386 = false := by
  rw [output386_def]
  conv => lhs; cbv
  try rfl
theorem node386_eq : Flapjack.WordAlloc.removeDeadStructural input386 value69 value1 value2 = (output386, value78, value1) := by
  rw [input386_def, output386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node372_eq]
  try dsimp only
  rw [node385_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input386 input341)).val
theorem input387_def : input387 = (.seq input386 input341) := by
  unfold input387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output386 output341)).val
theorem output387_def : output387 = (.seq output386 output341) := by
  unfold output387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output387_skip : Flapjack.WordAlloc.isSkip output387 = false := by
  rw [output387_def]
  conv => lhs; cbv
  try rfl
theorem node387_eq : Flapjack.WordAlloc.removeDeadStructural input387 value69 value1 value2 = (output387, value78, value1) := by
  rw [input387_def, output387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node341_eq]
  try dsimp only
  rw [node386_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7001 242#64))).val
theorem input388_def : input388 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7001 242#64)) := by
  unfold input388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7001 242#64))).val
theorem output388_def : output388 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 7001 242#64)) := by
  unfold output388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output388_skip : Flapjack.WordAlloc.isSkip output388 = false := by
  rw [output388_def]
  conv => lhs; cbv
  try rfl
theorem node388_eq : Flapjack.WordAlloc.removeDeadStructural input388 value78 value1 value2 = (output388, value76, value1) := by
  rw [input388_def, output388_def]
  try (conv => lhs; cbv)
  try rfl

def value79 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6997, 6973)])).val
theorem input389_def : input389 = (Flapjack.WordLangProgHOL.move 0 [(6997, 6973)]) := by
  unfold input389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6997, 6973)])).val
theorem output389_def : output389 = (Flapjack.WordLangProgHOL.move 0 [(6997, 6973)]) := by
  unfold output389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output389_skip : Flapjack.WordAlloc.isSkip output389 = false := by
  rw [output389_def]
  conv => lhs; cbv
  try rfl
theorem node389_eq : Flapjack.WordAlloc.removeDeadStructural input389 value76 value1 value2 = (output389, value79, value1) := by
  rw [input389_def, output389_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input390_def : input390 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output390_def : output390 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output390_skip : Flapjack.WordAlloc.isSkip output390 = false := by
  rw [output390_def]
  conv => lhs; cbv
  try rfl
theorem node390_eq : Flapjack.WordAlloc.removeDeadStructural input390 value79 value1 value2 = (output390, value79, value1) := by
  rw [input390_def, output390_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6993 0#64))).val
theorem input391_def : input391 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6993 0#64)) := by
  unfold input391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output391_def : output391 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output391_skip : Flapjack.WordAlloc.isSkip output391 = true := by
  rw [output391_def]
  conv => lhs; cbv
  try rfl
theorem node391_eq : Flapjack.WordAlloc.removeDeadStructural input391 value79 value1 value2 = (output391, value79, value1) := by
  rw [input391_def, output391_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input392_def : input392 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output392_def : output392 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output392_skip : Flapjack.WordAlloc.isSkip output392 = false := by
  rw [output392_def]
  conv => lhs; cbv
  try rfl
theorem node392_eq : Flapjack.WordAlloc.removeDeadStructural input392 value79 value1 value2 = (output392, value79, value1) := by
  rw [input392_def, output392_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6989 0#64))).val
theorem input393_def : input393 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6989 0#64)) := by
  unfold input393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output393_def : output393 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output393_skip : Flapjack.WordAlloc.isSkip output393 = true := by
  rw [output393_def]
  conv => lhs; cbv
  try rfl
theorem node393_eq : Flapjack.WordAlloc.removeDeadStructural input393 value79 value1 value2 = (output393, value79, value1) := by
  rw [input393_def, output393_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input393 input392)).val
theorem input394_def : input394 = (.seq input393 input392) := by
  unfold input394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output392)).val
theorem output394_def : output394 = (output392) := by
  unfold output394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output394_skip : Flapjack.WordAlloc.isSkip output394 = false := by
  rw [output394_def]
  conv => lhs; cbv
  try rfl
theorem node394_eq : Flapjack.WordAlloc.removeDeadStructural input394 value79 value1 value2 = (output394, value79, value1) := by
  rw [input394_def, output394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node392_eq]
  try dsimp only
  rw [node393_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input394 input391)).val
theorem input395_def : input395 = (.seq input394 input391) := by
  unfold input395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output394)).val
theorem output395_def : output395 = (output394) := by
  unfold output395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output395_skip : Flapjack.WordAlloc.isSkip output395 = false := by
  rw [output395_def]
  conv => lhs; cbv
  try rfl
theorem node395_eq : Flapjack.WordAlloc.removeDeadStructural input395 value79 value1 value2 = (output395, value79, value1) := by
  rw [input395_def, output395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node391_eq]
  try dsimp only
  rw [node394_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6985 0#64))).val
theorem input396_def : input396 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6985 0#64)) := by
  unfold input396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output396_def : output396 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output396_skip : Flapjack.WordAlloc.isSkip output396 = true := by
  rw [output396_def]
  conv => lhs; cbv
  try rfl
theorem node396_eq : Flapjack.WordAlloc.removeDeadStructural input396 value79 value1 value2 = (output396, value79, value1) := by
  rw [input396_def, output396_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6981 0#64))).val
theorem input397_def : input397 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6981 0#64)) := by
  unfold input397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output397_def : output397 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output397_skip : Flapjack.WordAlloc.isSkip output397 = true := by
  rw [output397_def]
  conv => lhs; cbv
  try rfl
theorem node397_eq : Flapjack.WordAlloc.removeDeadStructural input397 value79 value1 value2 = (output397, value79, value1) := by
  rw [input397_def, output397_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6977 0#64))).val
theorem input398_def : input398 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6977 0#64)) := by
  unfold input398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output398_def : output398 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output398_skip : Flapjack.WordAlloc.isSkip output398 = true := by
  rw [output398_def]
  conv => lhs; cbv
  try rfl
theorem node398_eq : Flapjack.WordAlloc.removeDeadStructural input398 value79 value1 value2 = (output398, value79, value1) := by
  rw [input398_def, output398_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6973 0#64))).val
theorem input399_def : input399 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6973 0#64)) := by
  unfold input399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6973 0#64))).val
theorem output399_def : output399 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6973 0#64)) := by
  unfold output399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output399_skip : Flapjack.WordAlloc.isSkip output399 = false := by
  rw [output399_def]
  conv => lhs; cbv
  try rfl
theorem node399_eq : Flapjack.WordAlloc.removeDeadStructural input399 value79 value1 value2 = (output399, value74, value1) := by
  rw [input399_def, output399_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input400_def : input400 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output400_def : output400 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output400_skip : Flapjack.WordAlloc.isSkip output400 = true := by
  rw [output400_def]
  conv => lhs; cbv
  try rfl
theorem node400_eq : Flapjack.WordAlloc.removeDeadStructural input400 value74 value1 value2 = (output400, value74, value1) := by
  rw [input400_def, output400_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input400 input399)).val
theorem input401_def : input401 = (.seq input400 input399) := by
  unfold input401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output399)).val
theorem output401_def : output401 = (output399) := by
  unfold output401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output401_skip : Flapjack.WordAlloc.isSkip output401 = false := by
  rw [output401_def]
  conv => lhs; cbv
  try rfl
theorem node401_eq : Flapjack.WordAlloc.removeDeadStructural input401 value79 value1 value2 = (output401, value74, value1) := by
  rw [input401_def, output401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node399_eq]
  try dsimp only
  rw [node400_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input401 input398)).val
theorem input402_def : input402 = (.seq input401 input398) := by
  unfold input402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output401)).val
theorem output402_def : output402 = (output401) := by
  unfold output402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output402_skip : Flapjack.WordAlloc.isSkip output402 = false := by
  rw [output402_def]
  conv => lhs; cbv
  try rfl
theorem node402_eq : Flapjack.WordAlloc.removeDeadStructural input402 value79 value1 value2 = (output402, value74, value1) := by
  rw [input402_def, output402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node398_eq]
  try dsimp only
  rw [node401_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input402 input397)).val
theorem input403_def : input403 = (.seq input402 input397) := by
  unfold input403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output402)).val
theorem output403_def : output403 = (output402) := by
  unfold output403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output403_skip : Flapjack.WordAlloc.isSkip output403 = false := by
  rw [output403_def]
  conv => lhs; cbv
  try rfl
theorem node403_eq : Flapjack.WordAlloc.removeDeadStructural input403 value79 value1 value2 = (output403, value74, value1) := by
  rw [input403_def, output403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node397_eq]
  try dsimp only
  rw [node402_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input403 input396)).val
theorem input404_def : input404 = (.seq input403 input396) := by
  unfold input404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output403)).val
theorem output404_def : output404 = (output403) := by
  unfold output404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output404_skip : Flapjack.WordAlloc.isSkip output404 = false := by
  rw [output404_def]
  conv => lhs; cbv
  try rfl
theorem node404_eq : Flapjack.WordAlloc.removeDeadStructural input404 value79 value1 value2 = (output404, value74, value1) := by
  rw [input404_def, output404_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node396_eq]
  try dsimp only
  rw [node403_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value80 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6969, 6937), (6965, 6953), (6961, 6957)])).val
theorem input405_def : input405 = (Flapjack.WordLangProgHOL.move 1 [(6969, 6937), (6965, 6953), (6961, 6957)]) := by
  unfold input405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6969, 6937)])).val
theorem output405_def : output405 = (Flapjack.WordLangProgHOL.move 1 [(6969, 6937)]) := by
  unfold output405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output405_skip : Flapjack.WordAlloc.isSkip output405 = false := by
  rw [output405_def]
  conv => lhs; cbv
  try rfl
theorem node405_eq : Flapjack.WordAlloc.removeDeadStructural input405 value74 value1 value2 = (output405, value80, value1) := by
  rw [input405_def, output405_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input405 input404)).val
theorem input406_def : input406 = (.seq input405 input404) := by
  unfold input406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output405 output404)).val
theorem output406_def : output406 = (.seq output405 output404) := by
  unfold output406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output406_skip : Flapjack.WordAlloc.isSkip output406 = false := by
  rw [output406_def]
  conv => lhs; cbv
  try rfl
theorem node406_eq : Flapjack.WordAlloc.removeDeadStructural input406 value79 value1 value2 = (output406, value80, value1) := by
  rw [input406_def, output406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node404_eq]
  try dsimp only
  rw [node405_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value81 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6937 [2])).val
theorem input407_def : input407 = (Flapjack.WordLangProgHOL.return 6937 [2]) := by
  unfold input407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6937 [2])).val
theorem output407_def : output407 = (Flapjack.WordLangProgHOL.return 6937 [2]) := by
  unfold output407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output407_skip : Flapjack.WordAlloc.isSkip output407 = false := by
  rw [output407_def]
  conv => lhs; cbv
  try rfl
theorem node407_eq : Flapjack.WordAlloc.removeDeadStructural input407 value80 value1 value2 = (output407, value81, value1) := by
  rw [input407_def, output407_def]
  try (conv => lhs; cbv)
  try rfl

def value82 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6957)])).val
theorem input408_def : input408 = (Flapjack.WordLangProgHOL.move 0 [(2, 6957)]) := by
  unfold input408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6957)])).val
theorem output408_def : output408 = (Flapjack.WordLangProgHOL.move 0 [(2, 6957)]) := by
  unfold output408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output408_skip : Flapjack.WordAlloc.isSkip output408 = false := by
  rw [output408_def]
  conv => lhs; cbv
  try rfl
theorem node408_eq : Flapjack.WordAlloc.removeDeadStructural input408 value81 value1 value2 = (output408, value82, value1) := by
  rw [input408_def, output408_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input408 input407)).val
theorem input409_def : input409 = (.seq input408 input407) := by
  unfold input409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output408 output407)).val
theorem output409_def : output409 = (.seq output408 output407) := by
  unfold output409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output409_skip : Flapjack.WordAlloc.isSkip output409 = false := by
  rw [output409_def]
  conv => lhs; cbv
  try rfl
theorem node409_eq : Flapjack.WordAlloc.removeDeadStructural input409 value80 value1 value2 = (output409, value82, value1) := by
  rw [input409_def, output409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node407_eq]
  try dsimp only
  rw [node408_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6957 0#64))).val
theorem input410_def : input410 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6957 0#64)) := by
  unfold input410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6957 0#64))).val
theorem output410_def : output410 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6957 0#64)) := by
  unfold output410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output410_skip : Flapjack.WordAlloc.isSkip output410 = false := by
  rw [output410_def]
  conv => lhs; cbv
  try rfl
theorem node410_eq : Flapjack.WordAlloc.removeDeadStructural input410 value82 value1 value2 = (output410, value80, value1) := by
  rw [input410_def, output410_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input411_def : input411 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output411_def : output411 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output411_skip : Flapjack.WordAlloc.isSkip output411 = false := by
  rw [output411_def]
  conv => lhs; cbv
  try rfl
theorem node411_eq : Flapjack.WordAlloc.removeDeadStructural input411 value80 value1 value2 = (output411, value80, value1) := by
  rw [input411_def, output411_def]
  try (conv => lhs; cbv)
  try rfl

def value83 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6937, 6931)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6941, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6949, 6941)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6953 0#64)))),
      597, 162))
  (some 623) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6937, 6931)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6945, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6945)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6949 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6953, 6945)]))),
      597, 163)))).val
theorem input412_def : input412 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6937, 6931)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6941, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6949, 6941)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6953 0#64)))),
      597, 162))
  (some 623) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6937, 6931)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6945, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6945)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6949 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6953, 6945)]))),
      597, 163))) := by
  unfold input412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6937, 6931)], 597, 162))
  (some 623) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6937, 6931)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6945, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6945)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 163)))).val
theorem output412_def : output412 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6937, 6931)], 597, 162))
  (some 623) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6937, 6931)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6945, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6945)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 163))) := by
  unfold output412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output412_skip : Flapjack.WordAlloc.isSkip output412 = false := by
  rw [output412_def]
  conv => lhs; cbv
  try rfl
theorem node412_eq : Flapjack.WordAlloc.removeDeadStructural input412 value80 value1 value2 = (output412, value83, value1) := by
  rw [input412_def, output412_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input413_def : input413 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output413_def : output413 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output413_skip : Flapjack.WordAlloc.isSkip output413 = true := by
  rw [output413_def]
  conv => lhs; cbv
  try rfl
theorem node413_eq : Flapjack.WordAlloc.removeDeadStructural input413 value83 value1 value2 = (output413, value83, value1) := by
  rw [input413_def, output413_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input413 input412)).val
theorem input414_def : input414 = (.seq input413 input412) := by
  unfold input414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output412)).val
theorem output414_def : output414 = (output412) := by
  unfold output414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output414_skip : Flapjack.WordAlloc.isSkip output414 = false := by
  rw [output414_def]
  conv => lhs; cbv
  try rfl
theorem node414_eq : Flapjack.WordAlloc.removeDeadStructural input414 value80 value1 value2 = (output414, value83, value1) := by
  rw [input414_def, output414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node412_eq]
  try dsimp only
  rw [node413_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value84 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6931, 6885)])).val
theorem input415_def : input415 = (Flapjack.WordLangProgHOL.move 0 [(6931, 6885)]) := by
  unfold input415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6931, 6885)])).val
theorem output415_def : output415 = (Flapjack.WordLangProgHOL.move 0 [(6931, 6885)]) := by
  unfold output415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output415_skip : Flapjack.WordAlloc.isSkip output415 = false := by
  rw [output415_def]
  conv => lhs; cbv
  try rfl
theorem node415_eq : Flapjack.WordAlloc.removeDeadStructural input415 value83 value1 value2 = (output415, value84, value1) := by
  rw [input415_def, output415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input415 input414)).val
theorem input416_def : input416 = (.seq input415 input414) := by
  unfold input416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output415 output414)).val
theorem output416_def : output416 = (.seq output415 output414) := by
  unfold output416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output416_skip : Flapjack.WordAlloc.isSkip output416 = false := by
  rw [output416_def]
  conv => lhs; cbv
  try rfl
theorem node416_eq : Flapjack.WordAlloc.removeDeadStructural input416 value80 value1 value2 = (output416, value84, value1) := by
  rw [input416_def, output416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node414_eq]
  try dsimp only
  rw [node415_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6925 1#64))).val
theorem input417_def : input417 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6925 1#64)) := by
  unfold input417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output417_def : output417 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output417_skip : Flapjack.WordAlloc.isSkip output417 = true := by
  rw [output417_def]
  conv => lhs; cbv
  try rfl
theorem node417_eq : Flapjack.WordAlloc.removeDeadStructural input417 value84 value1 value2 = (output417, value84, value1) := by
  rw [input417_def, output417_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input418_def : input418 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output418_def : output418 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output418_skip : Flapjack.WordAlloc.isSkip output418 = false := by
  rw [output418_def]
  conv => lhs; cbv
  try rfl
theorem node418_eq : Flapjack.WordAlloc.removeDeadStructural input418 value84 value1 value2 = (output418, value84, value1) := by
  rw [input418_def, output418_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6921 1#64))).val
theorem input419_def : input419 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6921 1#64)) := by
  unfold input419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output419_def : output419 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output419_skip : Flapjack.WordAlloc.isSkip output419 = true := by
  rw [output419_def]
  conv => lhs; cbv
  try rfl
theorem node419_eq : Flapjack.WordAlloc.removeDeadStructural input419 value84 value1 value2 = (output419, value84, value1) := by
  rw [input419_def, output419_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input419 input418)).val
theorem input420_def : input420 = (.seq input419 input418) := by
  unfold input420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output418)).val
theorem output420_def : output420 = (output418) := by
  unfold output420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output420_skip : Flapjack.WordAlloc.isSkip output420 = false := by
  rw [output420_def]
  conv => lhs; cbv
  try rfl
theorem node420_eq : Flapjack.WordAlloc.removeDeadStructural input420 value84 value1 value2 = (output420, value84, value1) := by
  rw [input420_def, output420_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node418_eq]
  try dsimp only
  rw [node419_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input420 input417)).val
theorem input421_def : input421 = (.seq input420 input417) := by
  unfold input421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output420)).val
theorem output421_def : output421 = (output420) := by
  unfold output421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output421_skip : Flapjack.WordAlloc.isSkip output421 = false := by
  rw [output421_def]
  conv => lhs; cbv
  try rfl
theorem node421_eq : Flapjack.WordAlloc.removeDeadStructural input421 value84 value1 value2 = (output421, value84, value1) := by
  rw [input421_def, output421_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node417_eq]
  try dsimp only
  rw [node420_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input421 input416)).val
theorem input422_def : input422 = (.seq input421 input416) := by
  unfold input422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output421 output416)).val
theorem output422_def : output422 = (.seq output421 output416) := by
  unfold output422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output422_skip : Flapjack.WordAlloc.isSkip output422 = false := by
  rw [output422_def]
  conv => lhs; cbv
  try rfl
theorem node422_eq : Flapjack.WordAlloc.removeDeadStructural input422 value80 value1 value2 = (output422, value84, value1) := by
  rw [input422_def, output422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node416_eq]
  try dsimp only
  rw [node421_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input422 input411)).val
theorem input423_def : input423 = (.seq input422 input411) := by
  unfold input423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output422 output411)).val
theorem output423_def : output423 = (.seq output422 output411) := by
  unfold output423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output423_skip : Flapjack.WordAlloc.isSkip output423 = false := by
  rw [output423_def]
  conv => lhs; cbv
  try rfl
theorem node423_eq : Flapjack.WordAlloc.removeDeadStructural input423 value80 value1 value2 = (output423, value84, value1) := by
  rw [input423_def, output423_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node411_eq]
  try dsimp only
  rw [node422_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input423 input410)).val
theorem input424_def : input424 = (.seq input423 input410) := by
  unfold input424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output423 output410)).val
theorem output424_def : output424 = (.seq output423 output410) := by
  unfold output424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output424_skip : Flapjack.WordAlloc.isSkip output424 = false := by
  rw [output424_def]
  conv => lhs; cbv
  try rfl
theorem node424_eq : Flapjack.WordAlloc.removeDeadStructural input424 value82 value1 value2 = (output424, value84, value1) := by
  rw [input424_def, output424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node410_eq]
  try dsimp only
  rw [node423_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input424 input409)).val
theorem input425_def : input425 = (.seq input424 input409) := by
  unfold input425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output424 output409)).val
theorem output425_def : output425 = (.seq output424 output409) := by
  unfold output425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output425_skip : Flapjack.WordAlloc.isSkip output425 = false := by
  rw [output425_def]
  conv => lhs; cbv
  try rfl
theorem node425_eq : Flapjack.WordAlloc.removeDeadStructural input425 value80 value1 value2 = (output425, value84, value1) := by
  rw [input425_def, output425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node409_eq]
  try dsimp only
  rw [node424_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input425 input406)).val
theorem input426_def : input426 = (.seq input425 input406) := by
  unfold input426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output425 output406)).val
theorem output426_def : output426 = (.seq output425 output406) := by
  unfold output426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output426_skip : Flapjack.WordAlloc.isSkip output426 = false := by
  rw [output426_def]
  conv => lhs; cbv
  try rfl
theorem node426_eq : Flapjack.WordAlloc.removeDeadStructural input426 value79 value1 value2 = (output426, value84, value1) := by
  rw [input426_def, output426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node406_eq]
  try dsimp only
  rw [node425_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6985, 6901)])).val
theorem input427_def : input427 = (Flapjack.WordLangProgHOL.move 2 [(6985, 6901)]) := by
  unfold input427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output427_def : output427 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output427_skip : Flapjack.WordAlloc.isSkip output427 = true := by
  rw [output427_def]
  conv => lhs; cbv
  try rfl
theorem node427_eq : Flapjack.WordAlloc.removeDeadStructural input427 value79 value1 value2 = (output427, value79, value1) := by
  rw [input427_def, output427_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6981, 6909)])).val
theorem input428_def : input428 = (Flapjack.WordLangProgHOL.move 2 [(6981, 6909)]) := by
  unfold input428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output428_def : output428 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output428_skip : Flapjack.WordAlloc.isSkip output428 = true := by
  rw [output428_def]
  conv => lhs; cbv
  try rfl
theorem node428_eq : Flapjack.WordAlloc.removeDeadStructural input428 value79 value1 value2 = (output428, value79, value1) := by
  rw [input428_def, output428_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6977, 6917)])).val
theorem input429_def : input429 = (Flapjack.WordLangProgHOL.move 2 [(6977, 6917)]) := by
  unfold input429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output429_def : output429 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output429_skip : Flapjack.WordAlloc.isSkip output429 = true := by
  rw [output429_def]
  conv => lhs; cbv
  try rfl
theorem node429_eq : Flapjack.WordAlloc.removeDeadStructural input429 value79 value1 value2 = (output429, value79, value1) := by
  rw [input429_def, output429_def]
  try (conv => lhs; cbv)
  try rfl

def value85 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6973, 6913)])).val
theorem input430_def : input430 = (Flapjack.WordLangProgHOL.move 2 [(6973, 6913)]) := by
  unfold input430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6973, 6913)])).val
theorem output430_def : output430 = (Flapjack.WordLangProgHOL.move 2 [(6973, 6913)]) := by
  unfold output430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output430_skip : Flapjack.WordAlloc.isSkip output430 = false := by
  rw [output430_def]
  conv => lhs; cbv
  try rfl
theorem node430_eq : Flapjack.WordAlloc.removeDeadStructural input430 value79 value1 value2 = (output430, value85, value1) := by
  rw [input430_def, output430_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input431_def : input431 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output431_def : output431 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output431_skip : Flapjack.WordAlloc.isSkip output431 = true := by
  rw [output431_def]
  conv => lhs; cbv
  try rfl
theorem node431_eq : Flapjack.WordAlloc.removeDeadStructural input431 value85 value1 value2 = (output431, value85, value1) := by
  rw [input431_def, output431_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input431 input430)).val
theorem input432_def : input432 = (.seq input431 input430) := by
  unfold input432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output430)).val
theorem output432_def : output432 = (output430) := by
  unfold output432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output432_skip : Flapjack.WordAlloc.isSkip output432 = false := by
  rw [output432_def]
  conv => lhs; cbv
  try rfl
theorem node432_eq : Flapjack.WordAlloc.removeDeadStructural input432 value79 value1 value2 = (output432, value85, value1) := by
  rw [input432_def, output432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node430_eq]
  try dsimp only
  rw [node431_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input432 input429)).val
theorem input433_def : input433 = (.seq input432 input429) := by
  unfold input433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output432)).val
theorem output433_def : output433 = (output432) := by
  unfold output433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output433_skip : Flapjack.WordAlloc.isSkip output433 = false := by
  rw [output433_def]
  conv => lhs; cbv
  try rfl
theorem node433_eq : Flapjack.WordAlloc.removeDeadStructural input433 value79 value1 value2 = (output433, value85, value1) := by
  rw [input433_def, output433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node429_eq]
  try dsimp only
  rw [node432_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input433 input428)).val
theorem input434_def : input434 = (.seq input433 input428) := by
  unfold input434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output433)).val
theorem output434_def : output434 = (output433) := by
  unfold output434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output434_skip : Flapjack.WordAlloc.isSkip output434 = false := by
  rw [output434_def]
  conv => lhs; cbv
  try rfl
theorem node434_eq : Flapjack.WordAlloc.removeDeadStructural input434 value79 value1 value2 = (output434, value85, value1) := by
  rw [input434_def, output434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node428_eq]
  try dsimp only
  rw [node433_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input434 input427)).val
theorem input435_def : input435 = (.seq input434 input427) := by
  unfold input435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output434)).val
theorem output435_def : output435 = (output434) := by
  unfold output435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output435_skip : Flapjack.WordAlloc.isSkip output435 = false := by
  rw [output435_def]
  conv => lhs; cbv
  try rfl
theorem node435_eq : Flapjack.WordAlloc.removeDeadStructural input435 value79 value1 value2 = (output435, value85, value1) := by
  rw [input435_def, output435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node427_eq]
  try dsimp only
  rw [node434_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value86 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6969, 6885), (6965, 6913), (6961, 6877)])).val
theorem input436_def : input436 = (Flapjack.WordLangProgHOL.move 2 [(6969, 6885), (6965, 6913), (6961, 6877)]) := by
  unfold input436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6969, 6885)])).val
theorem output436_def : output436 = (Flapjack.WordLangProgHOL.move 2 [(6969, 6885)]) := by
  unfold output436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output436_skip : Flapjack.WordAlloc.isSkip output436 = false := by
  rw [output436_def]
  conv => lhs; cbv
  try rfl
theorem node436_eq : Flapjack.WordAlloc.removeDeadStructural input436 value85 value1 value2 = (output436, value86, value1) := by
  rw [input436_def, output436_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input436 input435)).val
theorem input437_def : input437 = (.seq input436 input435) := by
  unfold input437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output436 output435)).val
theorem output437_def : output437 = (.seq output436 output435) := by
  unfold output437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output437_skip : Flapjack.WordAlloc.isSkip output437 = false := by
  rw [output437_def]
  conv => lhs; cbv
  try rfl
theorem node437_eq : Flapjack.WordAlloc.removeDeadStructural input437 value79 value1 value2 = (output437, value86, value1) := by
  rw [input437_def, output437_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node435_eq]
  try dsimp only
  rw [node436_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input438_def : input438 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output438_def : output438 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output438_skip : Flapjack.WordAlloc.isSkip output438 = true := by
  rw [output438_def]
  conv => lhs; cbv
  try rfl
theorem node438_eq : Flapjack.WordAlloc.removeDeadStructural input438 value86 value1 value2 = (output438, value86, value1) := by
  rw [input438_def, output438_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input438 input437)).val
theorem input439_def : input439 = (.seq input438 input437) := by
  unfold input439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output437)).val
theorem output439_def : output439 = (output437) := by
  unfold output439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output439_skip : Flapjack.WordAlloc.isSkip output439 = false := by
  rw [output439_def]
  conv => lhs; cbv
  try rfl
theorem node439_eq : Flapjack.WordAlloc.removeDeadStructural input439 value79 value1 value2 = (output439, value86, value1) := by
  rw [input439_def, output439_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node437_eq]
  try dsimp only
  rw [node438_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value87 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 6917

def value88 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6913 value87 input426 input439)).val
theorem input440_def : input440 = (.ite value15 6913 value87 input426 input439) := by
  unfold input440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6913 value87 output426 output439)).val
theorem output440_def : output440 = (.ite value15 6913 value87 output426 output439) := by
  unfold output440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output440_skip : Flapjack.WordAlloc.isSkip output440 = false := by
  rw [output440_def]
  conv => lhs; cbv
  try rfl
theorem node440_eq : Flapjack.WordAlloc.removeDeadStructural input440 value79 value1 value2 = (output440, value88, value1) := by
  rw [input440_def, output440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node426_eq]
  try dsimp only
  rw [node439_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input440 input395)).val
theorem input441_def : input441 = (.seq input440 input395) := by
  unfold input441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output440 output395)).val
theorem output441_def : output441 = (.seq output440 output395) := by
  unfold output441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output441_skip : Flapjack.WordAlloc.isSkip output441 = false := by
  rw [output441_def]
  conv => lhs; cbv
  try rfl
theorem node441_eq : Flapjack.WordAlloc.removeDeadStructural input441 value79 value1 value2 = (output441, value88, value1) := by
  rw [input441_def, output441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node395_eq]
  try dsimp only
  rw [node440_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6917 241#64))).val
theorem input442_def : input442 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6917 241#64)) := by
  unfold input442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6917 241#64))).val
theorem output442_def : output442 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6917 241#64)) := by
  unfold output442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output442_skip : Flapjack.WordAlloc.isSkip output442 = false := by
  rw [output442_def]
  conv => lhs; cbv
  try rfl
theorem node442_eq : Flapjack.WordAlloc.removeDeadStructural input442 value88 value1 value2 = (output442, value86, value1) := by
  rw [input442_def, output442_def]
  try (conv => lhs; cbv)
  try rfl

def value89 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6913, 6889)])).val
theorem input443_def : input443 = (Flapjack.WordLangProgHOL.move 0 [(6913, 6889)]) := by
  unfold input443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6913, 6889)])).val
theorem output443_def : output443 = (Flapjack.WordLangProgHOL.move 0 [(6913, 6889)]) := by
  unfold output443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output443_skip : Flapjack.WordAlloc.isSkip output443 = false := by
  rw [output443_def]
  conv => lhs; cbv
  try rfl
theorem node443_eq : Flapjack.WordAlloc.removeDeadStructural input443 value86 value1 value2 = (output443, value89, value1) := by
  rw [input443_def, output443_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input444_def : input444 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output444_def : output444 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output444_skip : Flapjack.WordAlloc.isSkip output444 = false := by
  rw [output444_def]
  conv => lhs; cbv
  try rfl
theorem node444_eq : Flapjack.WordAlloc.removeDeadStructural input444 value89 value1 value2 = (output444, value89, value1) := by
  rw [input444_def, output444_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6909 0#64))).val
theorem input445_def : input445 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6909 0#64)) := by
  unfold input445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output445_def : output445 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output445_skip : Flapjack.WordAlloc.isSkip output445 = true := by
  rw [output445_def]
  conv => lhs; cbv
  try rfl
theorem node445_eq : Flapjack.WordAlloc.removeDeadStructural input445 value89 value1 value2 = (output445, value89, value1) := by
  rw [input445_def, output445_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input446_def : input446 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output446_def : output446 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output446_skip : Flapjack.WordAlloc.isSkip output446 = false := by
  rw [output446_def]
  conv => lhs; cbv
  try rfl
theorem node446_eq : Flapjack.WordAlloc.removeDeadStructural input446 value89 value1 value2 = (output446, value89, value1) := by
  rw [input446_def, output446_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6905 0#64))).val
theorem input447_def : input447 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6905 0#64)) := by
  unfold input447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output447_def : output447 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output447_skip : Flapjack.WordAlloc.isSkip output447 = true := by
  rw [output447_def]
  conv => lhs; cbv
  try rfl
theorem node447_eq : Flapjack.WordAlloc.removeDeadStructural input447 value89 value1 value2 = (output447, value89, value1) := by
  rw [input447_def, output447_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input447 input446)).val
theorem input448_def : input448 = (.seq input447 input446) := by
  unfold input448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output446)).val
theorem output448_def : output448 = (output446) := by
  unfold output448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output448_skip : Flapjack.WordAlloc.isSkip output448 = false := by
  rw [output448_def]
  conv => lhs; cbv
  try rfl
theorem node448_eq : Flapjack.WordAlloc.removeDeadStructural input448 value89 value1 value2 = (output448, value89, value1) := by
  rw [input448_def, output448_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node446_eq]
  try dsimp only
  rw [node447_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input448 input445)).val
theorem input449_def : input449 = (.seq input448 input445) := by
  unfold input449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output448)).val
theorem output449_def : output449 = (output448) := by
  unfold output449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output449_skip : Flapjack.WordAlloc.isSkip output449 = false := by
  rw [output449_def]
  conv => lhs; cbv
  try rfl
theorem node449_eq : Flapjack.WordAlloc.removeDeadStructural input449 value89 value1 value2 = (output449, value89, value1) := by
  rw [input449_def, output449_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node445_eq]
  try dsimp only
  rw [node448_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6901 0#64))).val
theorem input450_def : input450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6901 0#64)) := by
  unfold input450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output450_def : output450 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output450_skip : Flapjack.WordAlloc.isSkip output450 = true := by
  rw [output450_def]
  conv => lhs; cbv
  try rfl
theorem node450_eq : Flapjack.WordAlloc.removeDeadStructural input450 value89 value1 value2 = (output450, value89, value1) := by
  rw [input450_def, output450_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6897 0#64))).val
theorem input451_def : input451 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6897 0#64)) := by
  unfold input451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output451_def : output451 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output451_skip : Flapjack.WordAlloc.isSkip output451 = true := by
  rw [output451_def]
  conv => lhs; cbv
  try rfl
theorem node451_eq : Flapjack.WordAlloc.removeDeadStructural input451 value89 value1 value2 = (output451, value89, value1) := by
  rw [input451_def, output451_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6893 0#64))).val
theorem input452_def : input452 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6893 0#64)) := by
  unfold input452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output452_def : output452 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output452_skip : Flapjack.WordAlloc.isSkip output452 = true := by
  rw [output452_def]
  conv => lhs; cbv
  try rfl
theorem node452_eq : Flapjack.WordAlloc.removeDeadStructural input452 value89 value1 value2 = (output452, value89, value1) := by
  rw [input452_def, output452_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6889 0#64))).val
theorem input453_def : input453 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6889 0#64)) := by
  unfold input453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6889 0#64))).val
theorem output453_def : output453 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6889 0#64)) := by
  unfold output453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output453_skip : Flapjack.WordAlloc.isSkip output453 = false := by
  rw [output453_def]
  conv => lhs; cbv
  try rfl
theorem node453_eq : Flapjack.WordAlloc.removeDeadStructural input453 value89 value1 value2 = (output453, value84, value1) := by
  rw [input453_def, output453_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input454_def : input454 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output454_def : output454 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output454_skip : Flapjack.WordAlloc.isSkip output454 = true := by
  rw [output454_def]
  conv => lhs; cbv
  try rfl
theorem node454_eq : Flapjack.WordAlloc.removeDeadStructural input454 value84 value1 value2 = (output454, value84, value1) := by
  rw [input454_def, output454_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input454 input453)).val
theorem input455_def : input455 = (.seq input454 input453) := by
  unfold input455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output453)).val
theorem output455_def : output455 = (output453) := by
  unfold output455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output455_skip : Flapjack.WordAlloc.isSkip output455 = false := by
  rw [output455_def]
  conv => lhs; cbv
  try rfl
theorem node455_eq : Flapjack.WordAlloc.removeDeadStructural input455 value89 value1 value2 = (output455, value84, value1) := by
  rw [input455_def, output455_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node453_eq]
  try dsimp only
  rw [node454_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input455 input452)).val
theorem input456_def : input456 = (.seq input455 input452) := by
  unfold input456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output455)).val
theorem output456_def : output456 = (output455) := by
  unfold output456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output456_skip : Flapjack.WordAlloc.isSkip output456 = false := by
  rw [output456_def]
  conv => lhs; cbv
  try rfl
theorem node456_eq : Flapjack.WordAlloc.removeDeadStructural input456 value89 value1 value2 = (output456, value84, value1) := by
  rw [input456_def, output456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node452_eq]
  try dsimp only
  rw [node455_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input456 input451)).val
theorem input457_def : input457 = (.seq input456 input451) := by
  unfold input457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output456)).val
theorem output457_def : output457 = (output456) := by
  unfold output457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output457_skip : Flapjack.WordAlloc.isSkip output457 = false := by
  rw [output457_def]
  conv => lhs; cbv
  try rfl
theorem node457_eq : Flapjack.WordAlloc.removeDeadStructural input457 value89 value1 value2 = (output457, value84, value1) := by
  rw [input457_def, output457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node451_eq]
  try dsimp only
  rw [node456_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input457 input450)).val
theorem input458_def : input458 = (.seq input457 input450) := by
  unfold input458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output457)).val
theorem output458_def : output458 = (output457) := by
  unfold output458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output458_skip : Flapjack.WordAlloc.isSkip output458 = false := by
  rw [output458_def]
  conv => lhs; cbv
  try rfl
theorem node458_eq : Flapjack.WordAlloc.removeDeadStructural input458 value89 value1 value2 = (output458, value84, value1) := by
  rw [input458_def, output458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node450_eq]
  try dsimp only
  rw [node457_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value90 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6885, 6853), (6881, 6869), (6877, 6873)])).val
theorem input459_def : input459 = (Flapjack.WordLangProgHOL.move 1 [(6885, 6853), (6881, 6869), (6877, 6873)]) := by
  unfold input459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(6885, 6853)])).val
theorem output459_def : output459 = (Flapjack.WordLangProgHOL.move 1 [(6885, 6853)]) := by
  unfold output459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output459_skip : Flapjack.WordAlloc.isSkip output459 = false := by
  rw [output459_def]
  conv => lhs; cbv
  try rfl
theorem node459_eq : Flapjack.WordAlloc.removeDeadStructural input459 value84 value1 value2 = (output459, value90, value1) := by
  rw [input459_def, output459_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input459 input458)).val
theorem input460_def : input460 = (.seq input459 input458) := by
  unfold input460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output459 output458)).val
theorem output460_def : output460 = (.seq output459 output458) := by
  unfold output460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output460_skip : Flapjack.WordAlloc.isSkip output460 = false := by
  rw [output460_def]
  conv => lhs; cbv
  try rfl
theorem node460_eq : Flapjack.WordAlloc.removeDeadStructural input460 value89 value1 value2 = (output460, value90, value1) := by
  rw [input460_def, output460_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node458_eq]
  try dsimp only
  rw [node459_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value91 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6853 [2])).val
theorem input461_def : input461 = (Flapjack.WordLangProgHOL.return 6853 [2]) := by
  unfold input461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 6853 [2])).val
theorem output461_def : output461 = (Flapjack.WordLangProgHOL.return 6853 [2]) := by
  unfold output461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output461_skip : Flapjack.WordAlloc.isSkip output461 = false := by
  rw [output461_def]
  conv => lhs; cbv
  try rfl
theorem node461_eq : Flapjack.WordAlloc.removeDeadStructural input461 value90 value1 value2 = (output461, value91, value1) := by
  rw [input461_def, output461_def]
  try (conv => lhs; cbv)
  try rfl

def value92 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6873)])).val
theorem input462_def : input462 = (Flapjack.WordLangProgHOL.move 0 [(2, 6873)]) := by
  unfold input462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 6873)])).val
theorem output462_def : output462 = (Flapjack.WordLangProgHOL.move 0 [(2, 6873)]) := by
  unfold output462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output462_skip : Flapjack.WordAlloc.isSkip output462 = false := by
  rw [output462_def]
  conv => lhs; cbv
  try rfl
theorem node462_eq : Flapjack.WordAlloc.removeDeadStructural input462 value91 value1 value2 = (output462, value92, value1) := by
  rw [input462_def, output462_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input462 input461)).val
theorem input463_def : input463 = (.seq input462 input461) := by
  unfold input463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output462 output461)).val
theorem output463_def : output463 = (.seq output462 output461) := by
  unfold output463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output463_skip : Flapjack.WordAlloc.isSkip output463 = false := by
  rw [output463_def]
  conv => lhs; cbv
  try rfl
theorem node463_eq : Flapjack.WordAlloc.removeDeadStructural input463 value90 value1 value2 = (output463, value92, value1) := by
  rw [input463_def, output463_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node461_eq]
  try dsimp only
  rw [node462_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6873 0#64))).val
theorem input464_def : input464 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6873 0#64)) := by
  unfold input464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6873 0#64))).val
theorem output464_def : output464 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6873 0#64)) := by
  unfold output464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output464_skip : Flapjack.WordAlloc.isSkip output464 = false := by
  rw [output464_def]
  conv => lhs; cbv
  try rfl
theorem node464_eq : Flapjack.WordAlloc.removeDeadStructural input464 value92 value1 value2 = (output464, value90, value1) := by
  rw [input464_def, output464_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input465_def : input465 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output465_def : output465 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output465_skip : Flapjack.WordAlloc.isSkip output465 = false := by
  rw [output465_def]
  conv => lhs; cbv
  try rfl
theorem node465_eq : Flapjack.WordAlloc.removeDeadStructural input465 value90 value1 value2 = (output465, value90, value1) := by
  rw [input465_def, output465_def]
  try (conv => lhs; cbv)
  try rfl

def value93 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))

@[irreducible, cbv_opaque] def input466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6853, 6847)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6857, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6865, 6857)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6869 0#64)))),
      597, 160))
  (some 619) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6853, 6847)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6861, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6861)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6865 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6869, 6861)]))),
      597, 161)))).val
theorem input466_def : input466 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6853, 6847)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6857, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(6865, 6857)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6869 0#64)))),
      597, 160))
  (some 619) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6853, 6847)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6861, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6861)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6865 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(6869, 6861)]))),
      597, 161))) := by
  unfold input466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6853, 6847)], 597, 160))
  (some 619) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6853, 6847)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6861, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6861)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 161)))).val
theorem output466_def : output466 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                            Flapjack.Spt.ln))
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(6853, 6847)], 597, 160))
  (some 619) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(6853, 6847)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(6861, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 6861)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 161))) := by
  unfold output466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output466_skip : Flapjack.WordAlloc.isSkip output466 = false := by
  rw [output466_def]
  conv => lhs; cbv
  try rfl
theorem node466_eq : Flapjack.WordAlloc.removeDeadStructural input466 value90 value1 value2 = (output466, value93, value1) := by
  rw [input466_def, output466_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input467_def : input467 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output467_def : output467 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output467_skip : Flapjack.WordAlloc.isSkip output467 = true := by
  rw [output467_def]
  conv => lhs; cbv
  try rfl
theorem node467_eq : Flapjack.WordAlloc.removeDeadStructural input467 value93 value1 value2 = (output467, value93, value1) := by
  rw [input467_def, output467_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input467 input466)).val
theorem input468_def : input468 = (.seq input467 input466) := by
  unfold input468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output466)).val
theorem output468_def : output468 = (output466) := by
  unfold output468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output468_skip : Flapjack.WordAlloc.isSkip output468 = false := by
  rw [output468_def]
  conv => lhs; cbv
  try rfl
theorem node468_eq : Flapjack.WordAlloc.removeDeadStructural input468 value90 value1 value2 = (output468, value93, value1) := by
  rw [input468_def, output468_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node466_eq]
  try dsimp only
  rw [node467_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value94 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6847, 6801)])).val
theorem input469_def : input469 = (Flapjack.WordLangProgHOL.move 0 [(6847, 6801)]) := by
  unfold input469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6847, 6801)])).val
theorem output469_def : output469 = (Flapjack.WordLangProgHOL.move 0 [(6847, 6801)]) := by
  unfold output469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output469_skip : Flapjack.WordAlloc.isSkip output469 = false := by
  rw [output469_def]
  conv => lhs; cbv
  try rfl
theorem node469_eq : Flapjack.WordAlloc.removeDeadStructural input469 value93 value1 value2 = (output469, value94, value1) := by
  rw [input469_def, output469_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input469 input468)).val
theorem input470_def : input470 = (.seq input469 input468) := by
  unfold input470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output469 output468)).val
theorem output470_def : output470 = (.seq output469 output468) := by
  unfold output470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output470_skip : Flapjack.WordAlloc.isSkip output470 = false := by
  rw [output470_def]
  conv => lhs; cbv
  try rfl
theorem node470_eq : Flapjack.WordAlloc.removeDeadStructural input470 value90 value1 value2 = (output470, value94, value1) := by
  rw [input470_def, output470_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node468_eq]
  try dsimp only
  rw [node469_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6841 1#64))).val
theorem input471_def : input471 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6841 1#64)) := by
  unfold input471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output471_def : output471 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output471_skip : Flapjack.WordAlloc.isSkip output471 = true := by
  rw [output471_def]
  conv => lhs; cbv
  try rfl
theorem node471_eq : Flapjack.WordAlloc.removeDeadStructural input471 value94 value1 value2 = (output471, value94, value1) := by
  rw [input471_def, output471_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input472_def : input472 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output472 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output472_def : output472 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output472
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output472_skip : Flapjack.WordAlloc.isSkip output472 = false := by
  rw [output472_def]
  conv => lhs; cbv
  try rfl
theorem node472_eq : Flapjack.WordAlloc.removeDeadStructural input472 value94 value1 value2 = (output472, value94, value1) := by
  rw [input472_def, output472_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6837 1#64))).val
theorem input473_def : input473 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6837 1#64)) := by
  unfold input473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output473 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output473_def : output473 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output473
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output473_skip : Flapjack.WordAlloc.isSkip output473 = true := by
  rw [output473_def]
  conv => lhs; cbv
  try rfl
theorem node473_eq : Flapjack.WordAlloc.removeDeadStructural input473 value94 value1 value2 = (output473, value94, value1) := by
  rw [input473_def, output473_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input473 input472)).val
theorem input474_def : input474 = (.seq input473 input472) := by
  unfold input474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output474 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output472)).val
theorem output474_def : output474 = (output472) := by
  unfold output474
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output474_skip : Flapjack.WordAlloc.isSkip output474 = false := by
  rw [output474_def]
  conv => lhs; cbv
  try rfl
theorem node474_eq : Flapjack.WordAlloc.removeDeadStructural input474 value94 value1 value2 = (output474, value94, value1) := by
  rw [input474_def, output474_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node472_eq]
  try dsimp only
  rw [node473_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input474 input471)).val
theorem input475_def : input475 = (.seq input474 input471) := by
  unfold input475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output475 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output474)).val
theorem output475_def : output475 = (output474) := by
  unfold output475
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output475_skip : Flapjack.WordAlloc.isSkip output475 = false := by
  rw [output475_def]
  conv => lhs; cbv
  try rfl
theorem node475_eq : Flapjack.WordAlloc.removeDeadStructural input475 value94 value1 value2 = (output475, value94, value1) := by
  rw [input475_def, output475_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node471_eq]
  try dsimp only
  rw [node474_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input475 input470)).val
theorem input476_def : input476 = (.seq input475 input470) := by
  unfold input476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output476 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output475 output470)).val
theorem output476_def : output476 = (.seq output475 output470) := by
  unfold output476
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output476_skip : Flapjack.WordAlloc.isSkip output476 = false := by
  rw [output476_def]
  conv => lhs; cbv
  try rfl
theorem node476_eq : Flapjack.WordAlloc.removeDeadStructural input476 value90 value1 value2 = (output476, value94, value1) := by
  rw [input476_def, output476_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node470_eq]
  try dsimp only
  rw [node475_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input476 input465)).val
theorem input477_def : input477 = (.seq input476 input465) := by
  unfold input477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output477 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output476 output465)).val
theorem output477_def : output477 = (.seq output476 output465) := by
  unfold output477
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output477_skip : Flapjack.WordAlloc.isSkip output477 = false := by
  rw [output477_def]
  conv => lhs; cbv
  try rfl
theorem node477_eq : Flapjack.WordAlloc.removeDeadStructural input477 value90 value1 value2 = (output477, value94, value1) := by
  rw [input477_def, output477_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node465_eq]
  try dsimp only
  rw [node476_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input477 input464)).val
theorem input478_def : input478 = (.seq input477 input464) := by
  unfold input478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output478 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output477 output464)).val
theorem output478_def : output478 = (.seq output477 output464) := by
  unfold output478
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output478_skip : Flapjack.WordAlloc.isSkip output478 = false := by
  rw [output478_def]
  conv => lhs; cbv
  try rfl
theorem node478_eq : Flapjack.WordAlloc.removeDeadStructural input478 value92 value1 value2 = (output478, value94, value1) := by
  rw [input478_def, output478_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node464_eq]
  try dsimp only
  rw [node477_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input478 input463)).val
theorem input479_def : input479 = (.seq input478 input463) := by
  unfold input479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output479 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output478 output463)).val
theorem output479_def : output479 = (.seq output478 output463) := by
  unfold output479
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output479_skip : Flapjack.WordAlloc.isSkip output479 = false := by
  rw [output479_def]
  conv => lhs; cbv
  try rfl
theorem node479_eq : Flapjack.WordAlloc.removeDeadStructural input479 value90 value1 value2 = (output479, value94, value1) := by
  rw [input479_def, output479_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node463_eq]
  try dsimp only
  rw [node478_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input479 input460)).val
theorem input480_def : input480 = (.seq input479 input460) := by
  unfold input480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output480 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output479 output460)).val
theorem output480_def : output480 = (.seq output479 output460) := by
  unfold output480
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output480_skip : Flapjack.WordAlloc.isSkip output480 = false := by
  rw [output480_def]
  conv => lhs; cbv
  try rfl
theorem node480_eq : Flapjack.WordAlloc.removeDeadStructural input480 value89 value1 value2 = (output480, value94, value1) := by
  rw [input480_def, output480_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node460_eq]
  try dsimp only
  rw [node479_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6901, 6817)])).val
theorem input481_def : input481 = (Flapjack.WordLangProgHOL.move 2 [(6901, 6817)]) := by
  unfold input481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output481 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output481_def : output481 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output481
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output481_skip : Flapjack.WordAlloc.isSkip output481 = true := by
  rw [output481_def]
  conv => lhs; cbv
  try rfl
theorem node481_eq : Flapjack.WordAlloc.removeDeadStructural input481 value89 value1 value2 = (output481, value89, value1) := by
  rw [input481_def, output481_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6897, 6825)])).val
theorem input482_def : input482 = (Flapjack.WordLangProgHOL.move 2 [(6897, 6825)]) := by
  unfold input482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output482 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output482_def : output482 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output482
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output482_skip : Flapjack.WordAlloc.isSkip output482 = true := by
  rw [output482_def]
  conv => lhs; cbv
  try rfl
theorem node482_eq : Flapjack.WordAlloc.removeDeadStructural input482 value89 value1 value2 = (output482, value89, value1) := by
  rw [input482_def, output482_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6893, 6833)])).val
theorem input483_def : input483 = (Flapjack.WordLangProgHOL.move 2 [(6893, 6833)]) := by
  unfold input483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output483 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output483_def : output483 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output483
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output483_skip : Flapjack.WordAlloc.isSkip output483 = true := by
  rw [output483_def]
  conv => lhs; cbv
  try rfl
theorem node483_eq : Flapjack.WordAlloc.removeDeadStructural input483 value89 value1 value2 = (output483, value89, value1) := by
  rw [input483_def, output483_def]
  try (conv => lhs; cbv)
  try rfl

def value95 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6889, 6829)])).val
theorem input484_def : input484 = (Flapjack.WordLangProgHOL.move 2 [(6889, 6829)]) := by
  unfold input484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output484 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6889, 6829)])).val
theorem output484_def : output484 = (Flapjack.WordLangProgHOL.move 2 [(6889, 6829)]) := by
  unfold output484
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output484_skip : Flapjack.WordAlloc.isSkip output484 = false := by
  rw [output484_def]
  conv => lhs; cbv
  try rfl
theorem node484_eq : Flapjack.WordAlloc.removeDeadStructural input484 value89 value1 value2 = (output484, value95, value1) := by
  rw [input484_def, output484_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input485_def : input485 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output485 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output485_def : output485 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output485
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output485_skip : Flapjack.WordAlloc.isSkip output485 = true := by
  rw [output485_def]
  conv => lhs; cbv
  try rfl
theorem node485_eq : Flapjack.WordAlloc.removeDeadStructural input485 value95 value1 value2 = (output485, value95, value1) := by
  rw [input485_def, output485_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input485 input484)).val
theorem input486_def : input486 = (.seq input485 input484) := by
  unfold input486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output486 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output484)).val
theorem output486_def : output486 = (output484) := by
  unfold output486
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output486_skip : Flapjack.WordAlloc.isSkip output486 = false := by
  rw [output486_def]
  conv => lhs; cbv
  try rfl
theorem node486_eq : Flapjack.WordAlloc.removeDeadStructural input486 value89 value1 value2 = (output486, value95, value1) := by
  rw [input486_def, output486_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node484_eq]
  try dsimp only
  rw [node485_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input486 input483)).val
theorem input487_def : input487 = (.seq input486 input483) := by
  unfold input487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output487 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output486)).val
theorem output487_def : output487 = (output486) := by
  unfold output487
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output487_skip : Flapjack.WordAlloc.isSkip output487 = false := by
  rw [output487_def]
  conv => lhs; cbv
  try rfl
theorem node487_eq : Flapjack.WordAlloc.removeDeadStructural input487 value89 value1 value2 = (output487, value95, value1) := by
  rw [input487_def, output487_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node483_eq]
  try dsimp only
  rw [node486_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input487 input482)).val
theorem input488_def : input488 = (.seq input487 input482) := by
  unfold input488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output488 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output487)).val
theorem output488_def : output488 = (output487) := by
  unfold output488
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output488_skip : Flapjack.WordAlloc.isSkip output488 = false := by
  rw [output488_def]
  conv => lhs; cbv
  try rfl
theorem node488_eq : Flapjack.WordAlloc.removeDeadStructural input488 value89 value1 value2 = (output488, value95, value1) := by
  rw [input488_def, output488_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node482_eq]
  try dsimp only
  rw [node487_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input488 input481)).val
theorem input489_def : input489 = (.seq input488 input481) := by
  unfold input489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output489 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output488)).val
theorem output489_def : output489 = (output488) := by
  unfold output489
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output489_skip : Flapjack.WordAlloc.isSkip output489 = false := by
  rw [output489_def]
  conv => lhs; cbv
  try rfl
theorem node489_eq : Flapjack.WordAlloc.removeDeadStructural input489 value89 value1 value2 = (output489, value95, value1) := by
  rw [input489_def, output489_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node481_eq]
  try dsimp only
  rw [node488_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value96 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6885, 6801), (6881, 6829), (6877, 6793)])).val
theorem input490_def : input490 = (Flapjack.WordLangProgHOL.move 2 [(6885, 6801), (6881, 6829), (6877, 6793)]) := by
  unfold input490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output490 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(6885, 6801)])).val
theorem output490_def : output490 = (Flapjack.WordLangProgHOL.move 2 [(6885, 6801)]) := by
  unfold output490
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output490_skip : Flapjack.WordAlloc.isSkip output490 = false := by
  rw [output490_def]
  conv => lhs; cbv
  try rfl
theorem node490_eq : Flapjack.WordAlloc.removeDeadStructural input490 value95 value1 value2 = (output490, value96, value1) := by
  rw [input490_def, output490_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input490 input489)).val
theorem input491_def : input491 = (.seq input490 input489) := by
  unfold input491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output491 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output490 output489)).val
theorem output491_def : output491 = (.seq output490 output489) := by
  unfold output491
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output491_skip : Flapjack.WordAlloc.isSkip output491 = false := by
  rw [output491_def]
  conv => lhs; cbv
  try rfl
theorem node491_eq : Flapjack.WordAlloc.removeDeadStructural input491 value89 value1 value2 = (output491, value96, value1) := by
  rw [input491_def, output491_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node489_eq]
  try dsimp only
  rw [node490_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input492_def : input492 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output492 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output492_def : output492 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output492
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output492_skip : Flapjack.WordAlloc.isSkip output492 = true := by
  rw [output492_def]
  conv => lhs; cbv
  try rfl
theorem node492_eq : Flapjack.WordAlloc.removeDeadStructural input492 value96 value1 value2 = (output492, value96, value1) := by
  rw [input492_def, output492_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input492 input491)).val
theorem input493_def : input493 = (.seq input492 input491) := by
  unfold input493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output493 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output491)).val
theorem output493_def : output493 = (output491) := by
  unfold output493
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output493_skip : Flapjack.WordAlloc.isSkip output493 = false := by
  rw [output493_def]
  conv => lhs; cbv
  try rfl
theorem node493_eq : Flapjack.WordAlloc.removeDeadStructural input493 value89 value1 value2 = (output493, value96, value1) := by
  rw [input493_def, output493_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node491_eq]
  try dsimp only
  rw [node492_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value97 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 6833

def value98 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6829 value97 input480 input493)).val
theorem input494_def : input494 = (.ite value15 6829 value97 input480 input493) := by
  unfold input494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output494 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 6829 value97 output480 output493)).val
theorem output494_def : output494 = (.ite value15 6829 value97 output480 output493) := by
  unfold output494
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output494_skip : Flapjack.WordAlloc.isSkip output494 = false := by
  rw [output494_def]
  conv => lhs; cbv
  try rfl
theorem node494_eq : Flapjack.WordAlloc.removeDeadStructural input494 value89 value1 value2 = (output494, value98, value1) := by
  rw [input494_def, output494_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node480_eq]
  try dsimp only
  rw [node493_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input494 input449)).val
theorem input495_def : input495 = (.seq input494 input449) := by
  unfold input495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output495 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output494 output449)).val
theorem output495_def : output495 = (.seq output494 output449) := by
  unfold output495
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output495_skip : Flapjack.WordAlloc.isSkip output495 = false := by
  rw [output495_def]
  conv => lhs; cbv
  try rfl
theorem node495_eq : Flapjack.WordAlloc.removeDeadStructural input495 value89 value1 value2 = (output495, value98, value1) := by
  rw [input495_def, output495_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node449_eq]
  try dsimp only
  rw [node494_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6833 240#64))).val
theorem input496_def : input496 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6833 240#64)) := by
  unfold input496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output496 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6833 240#64))).val
theorem output496_def : output496 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6833 240#64)) := by
  unfold output496
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output496_skip : Flapjack.WordAlloc.isSkip output496 = false := by
  rw [output496_def]
  conv => lhs; cbv
  try rfl
theorem node496_eq : Flapjack.WordAlloc.removeDeadStructural input496 value98 value1 value2 = (output496, value96, value1) := by
  rw [input496_def, output496_def]
  try (conv => lhs; cbv)
  try rfl

def value99 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6829, 6805)])).val
theorem input497_def : input497 = (Flapjack.WordLangProgHOL.move 0 [(6829, 6805)]) := by
  unfold input497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output497 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(6829, 6805)])).val
theorem output497_def : output497 = (Flapjack.WordLangProgHOL.move 0 [(6829, 6805)]) := by
  unfold output497
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output497_skip : Flapjack.WordAlloc.isSkip output497 = false := by
  rw [output497_def]
  conv => lhs; cbv
  try rfl
theorem node497_eq : Flapjack.WordAlloc.removeDeadStructural input497 value96 value1 value2 = (output497, value99, value1) := by
  rw [input497_def, output497_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input498_def : input498 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output498 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output498_def : output498 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output498
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output498_skip : Flapjack.WordAlloc.isSkip output498 = false := by
  rw [output498_def]
  conv => lhs; cbv
  try rfl
theorem node498_eq : Flapjack.WordAlloc.removeDeadStructural input498 value99 value1 value2 = (output498, value99, value1) := by
  rw [input498_def, output498_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6825 0#64))).val
theorem input499_def : input499 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6825 0#64)) := by
  unfold input499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output499 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output499_def : output499 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output499
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output499_skip : Flapjack.WordAlloc.isSkip output499 = true := by
  rw [output499_def]
  conv => lhs; cbv
  try rfl
theorem node499_eq : Flapjack.WordAlloc.removeDeadStructural input499 value99 value1 value2 = (output499, value99, value1) := by
  rw [input499_def, output499_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input500_def : input500 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output500 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output500_def : output500 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output500
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output500_skip : Flapjack.WordAlloc.isSkip output500 = false := by
  rw [output500_def]
  conv => lhs; cbv
  try rfl
theorem node500_eq : Flapjack.WordAlloc.removeDeadStructural input500 value99 value1 value2 = (output500, value99, value1) := by
  rw [input500_def, output500_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6821 0#64))).val
theorem input501_def : input501 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6821 0#64)) := by
  unfold input501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output501 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output501_def : output501 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output501
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output501_skip : Flapjack.WordAlloc.isSkip output501 = true := by
  rw [output501_def]
  conv => lhs; cbv
  try rfl
theorem node501_eq : Flapjack.WordAlloc.removeDeadStructural input501 value99 value1 value2 = (output501, value99, value1) := by
  rw [input501_def, output501_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input501 input500)).val
theorem input502_def : input502 = (.seq input501 input500) := by
  unfold input502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output502 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output500)).val
theorem output502_def : output502 = (output500) := by
  unfold output502
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output502_skip : Flapjack.WordAlloc.isSkip output502 = false := by
  rw [output502_def]
  conv => lhs; cbv
  try rfl
theorem node502_eq : Flapjack.WordAlloc.removeDeadStructural input502 value99 value1 value2 = (output502, value99, value1) := by
  rw [input502_def, output502_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node500_eq]
  try dsimp only
  rw [node501_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input502 input499)).val
theorem input503_def : input503 = (.seq input502 input499) := by
  unfold input503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output503 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output502)).val
theorem output503_def : output503 = (output502) := by
  unfold output503
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output503_skip : Flapjack.WordAlloc.isSkip output503 = false := by
  rw [output503_def]
  conv => lhs; cbv
  try rfl
theorem node503_eq : Flapjack.WordAlloc.removeDeadStructural input503 value99 value1 value2 = (output503, value99, value1) := by
  rw [input503_def, output503_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node499_eq]
  try dsimp only
  rw [node502_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6817 0#64))).val
theorem input504_def : input504 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6817 0#64)) := by
  unfold input504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output504 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output504_def : output504 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output504
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output504_skip : Flapjack.WordAlloc.isSkip output504 = true := by
  rw [output504_def]
  conv => lhs; cbv
  try rfl
theorem node504_eq : Flapjack.WordAlloc.removeDeadStructural input504 value99 value1 value2 = (output504, value99, value1) := by
  rw [input504_def, output504_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6813 0#64))).val
theorem input505_def : input505 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6813 0#64)) := by
  unfold input505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output505 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output505_def : output505 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output505
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output505_skip : Flapjack.WordAlloc.isSkip output505 = true := by
  rw [output505_def]
  conv => lhs; cbv
  try rfl
theorem node505_eq : Flapjack.WordAlloc.removeDeadStructural input505 value99 value1 value2 = (output505, value99, value1) := by
  rw [input505_def, output505_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6809 0#64))).val
theorem input506_def : input506 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6809 0#64)) := by
  unfold input506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output506 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output506_def : output506 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output506
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output506_skip : Flapjack.WordAlloc.isSkip output506 = true := by
  rw [output506_def]
  conv => lhs; cbv
  try rfl
theorem node506_eq : Flapjack.WordAlloc.removeDeadStructural input506 value99 value1 value2 = (output506, value99, value1) := by
  rw [input506_def, output506_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6805 0#64))).val
theorem input507_def : input507 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6805 0#64)) := by
  unfold input507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output507 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6805 0#64))).val
theorem output507_def : output507 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 6805 0#64)) := by
  unfold output507
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output507_skip : Flapjack.WordAlloc.isSkip output507 = false := by
  rw [output507_def]
  conv => lhs; cbv
  try rfl
theorem node507_eq : Flapjack.WordAlloc.removeDeadStructural input507 value99 value1 value2 = (output507, value94, value1) := by
  rw [input507_def, output507_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input508_def : input508 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output508 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output508_def : output508 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output508
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output508_skip : Flapjack.WordAlloc.isSkip output508 = true := by
  rw [output508_def]
  conv => lhs; cbv
  try rfl
theorem node508_eq : Flapjack.WordAlloc.removeDeadStructural input508 value94 value1 value2 = (output508, value94, value1) := by
  rw [input508_def, output508_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input508 input507)).val
theorem input509_def : input509 = (.seq input508 input507) := by
  unfold input509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output509 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output507)).val
theorem output509_def : output509 = (output507) := by
  unfold output509
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output509_skip : Flapjack.WordAlloc.isSkip output509 = false := by
  rw [output509_def]
  conv => lhs; cbv
  try rfl
theorem node509_eq : Flapjack.WordAlloc.removeDeadStructural input509 value99 value1 value2 = (output509, value94, value1) := by
  rw [input509_def, output509_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node507_eq]
  try dsimp only
  rw [node508_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input509 input506)).val
theorem input510_def : input510 = (.seq input509 input506) := by
  unfold input510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output510 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output509)).val
theorem output510_def : output510 = (output509) := by
  unfold output510
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output510_skip : Flapjack.WordAlloc.isSkip output510 = false := by
  rw [output510_def]
  conv => lhs; cbv
  try rfl
theorem node510_eq : Flapjack.WordAlloc.removeDeadStructural input510 value99 value1 value2 = (output510, value94, value1) := by
  rw [input510_def, output510_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node506_eq]
  try dsimp only
  rw [node509_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input510 input505)).val
theorem input511_def : input511 = (.seq input510 input505) := by
  unfold input511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output511 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output510)).val
theorem output511_def : output511 = (output510) := by
  unfold output511
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output511_skip : Flapjack.WordAlloc.isSkip output511 = false := by
  rw [output511_def]
  conv => lhs; cbv
  try rfl
theorem node511_eq : Flapjack.WordAlloc.removeDeadStructural input511 value99 value1 value2 = (output511, value94, value1) := by
  rw [input511_def, output511_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node505_eq]
  try dsimp only
  rw [node510_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node511_eq
end InitECandidate.Proofs.DeadStages597
