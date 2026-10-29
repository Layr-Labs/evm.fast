import InitECandidate.Proofs.LoopWordComputation
import InitECandidate.Proofs.FrontendStages.Word.Variables649
import InitECandidate.Proofs.WordStages.Source713
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints649.Data.Chunk020
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
@[irreducible, cbv_opaque] def output8064 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8057 output8063)).val
theorem output8064_def : output8064 = (.seq output8057 output8063) := by
  unfold output8064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8065 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8064)).val
theorem output8065_def : output8065 = (output8064) := by
  unfold output8065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8066 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8065)).val
theorem output8066_def : output8066 = (.seq output39 output8065) := by
  unfold output8066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8067 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8066)).val
theorem output8067_def : output8067 = (output8066) := by
  unfold output8067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8068 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8055 output8067)).val
theorem output8068_def : output8068 = (.seq output8055 output8067) := by
  unfold output8068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8069 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8068)).val
theorem output8069_def : output8069 = (output8068) := by
  unfold output8069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8070 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4920#64]))).val
theorem output8070_def : output8070 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4920#64])) := by
  unfold output8070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8071 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8070)).val
theorem output8071_def : output8071 = (output8070) := by
  unfold output8071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8072 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 582508994779039039#64))).val
theorem output8072_def : output8072 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 582508994779039039#64)) := by
  unfold output8072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8073 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8072)).val
theorem output8073_def : output8073 = (output8072) := by
  unfold output8073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8074 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8073 output87)).val
theorem output8074_def : output8074 = (.seq output8073 output87) := by
  unfold output8074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8075 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8074)).val
theorem output8075_def : output8075 = (output8074) := by
  unfold output8075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8076 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8075)).val
theorem output8076_def : output8076 = (.seq output39 output8075) := by
  unfold output8076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8077 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8076)).val
theorem output8077_def : output8077 = (output8076) := by
  unfold output8077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8078 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8071 output8077)).val
theorem output8078_def : output8078 = (.seq output8071 output8077) := by
  unfold output8078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8079 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8078)).val
theorem output8079_def : output8079 = (output8078) := by
  unfold output8079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8080 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8079)).val
theorem output8080_def : output8080 = (.seq output39 output8079) := by
  unfold output8080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8081 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8080)).val
theorem output8081_def : output8081 = (output8080) := by
  unfold output8081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8082 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8069 output8081)).val
theorem output8082_def : output8082 = (.seq output8069 output8081) := by
  unfold output8082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8083 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8082)).val
theorem output8083_def : output8083 = (output8082) := by
  unfold output8083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8084 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4928#64]))).val
theorem output8084_def : output8084 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4928#64])) := by
  unfold output8084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8085 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8084)).val
theorem output8085_def : output8085 = (output8084) := by
  unfold output8085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8086 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4491034961976738038#64))).val
theorem output8086_def : output8086 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4491034961976738038#64)) := by
  unfold output8086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8087 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8086)).val
theorem output8087_def : output8087 = (output8086) := by
  unfold output8087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8088 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8087 output87)).val
theorem output8088_def : output8088 = (.seq output8087 output87) := by
  unfold output8088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8089 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8088)).val
theorem output8089_def : output8089 = (output8088) := by
  unfold output8089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8090 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8089)).val
theorem output8090_def : output8090 = (.seq output39 output8089) := by
  unfold output8090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8091 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8090)).val
theorem output8091_def : output8091 = (output8090) := by
  unfold output8091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8092 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8085 output8091)).val
theorem output8092_def : output8092 = (.seq output8085 output8091) := by
  unfold output8092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8093 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8092)).val
theorem output8093_def : output8093 = (output8092) := by
  unfold output8093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8094 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8093)).val
theorem output8094_def : output8094 = (.seq output39 output8093) := by
  unfold output8094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8095 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8094)).val
theorem output8095_def : output8095 = (output8094) := by
  unfold output8095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8096 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8083 output8095)).val
theorem output8096_def : output8096 = (.seq output8083 output8095) := by
  unfold output8096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8097 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8096)).val
theorem output8097_def : output8097 = (output8096) := by
  unfold output8097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8098 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4936#64]))).val
theorem output8098_def : output8098 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4936#64])) := by
  unfold output8098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8099 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8098)).val
theorem output8099_def : output8099 = (output8098) := by
  unfold output8099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8100 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16704584376175373328#64))).val
theorem output8100_def : output8100 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16704584376175373328#64)) := by
  unfold output8100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8101 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8100)).val
theorem output8101_def : output8101 = (output8100) := by
  unfold output8101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8102 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8101 output87)).val
theorem output8102_def : output8102 = (.seq output8101 output87) := by
  unfold output8102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8103 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8102)).val
theorem output8103_def : output8103 = (output8102) := by
  unfold output8103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8104 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8103)).val
theorem output8104_def : output8104 = (.seq output39 output8103) := by
  unfold output8104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8105 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8104)).val
theorem output8105_def : output8105 = (output8104) := by
  unfold output8105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8106 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8099 output8105)).val
theorem output8106_def : output8106 = (.seq output8099 output8105) := by
  unfold output8106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8107 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8106)).val
theorem output8107_def : output8107 = (output8106) := by
  unfold output8107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8108 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8107)).val
theorem output8108_def : output8108 = (.seq output39 output8107) := by
  unfold output8108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8109 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8108)).val
theorem output8109_def : output8109 = (output8108) := by
  unfold output8109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8110 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8097 output8109)).val
theorem output8110_def : output8110 = (.seq output8097 output8109) := by
  unfold output8110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8111 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8110)).val
theorem output8111_def : output8111 = (output8110) := by
  unfold output8111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8112 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4944#64]))).val
theorem output8112_def : output8112 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4944#64])) := by
  unfold output8112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8113 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8112)).val
theorem output8113_def : output8113 = (output8112) := by
  unfold output8113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8114 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11324565353801852927#64))).val
theorem output8114_def : output8114 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11324565353801852927#64)) := by
  unfold output8114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8115 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8114)).val
theorem output8115_def : output8115 = (output8114) := by
  unfold output8115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8116 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8115 output87)).val
theorem output8116_def : output8116 = (.seq output8115 output87) := by
  unfold output8116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8117 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8116)).val
theorem output8117_def : output8117 = (output8116) := by
  unfold output8117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8118 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8117)).val
theorem output8118_def : output8118 = (.seq output39 output8117) := by
  unfold output8118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8119 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8118)).val
theorem output8119_def : output8119 = (output8118) := by
  unfold output8119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8120 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8113 output8119)).val
theorem output8120_def : output8120 = (.seq output8113 output8119) := by
  unfold output8120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8121 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8120)).val
theorem output8121_def : output8121 = (output8120) := by
  unfold output8121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8122 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8121)).val
theorem output8122_def : output8122 = (.seq output39 output8121) := by
  unfold output8122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8123 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8122)).val
theorem output8123_def : output8123 = (output8122) := by
  unfold output8123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8124 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8111 output8123)).val
theorem output8124_def : output8124 = (.seq output8111 output8123) := by
  unfold output8124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8125 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8124)).val
theorem output8125_def : output8125 = (output8124) := by
  unfold output8125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8126 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4952#64]))).val
theorem output8126_def : output8126 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4952#64])) := by
  unfold output8126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8127 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8126)).val
theorem output8127_def : output8127 = (output8126) := by
  unfold output8127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8128 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4320969437019325989#64))).val
theorem output8128_def : output8128 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4320969437019325989#64)) := by
  unfold output8128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8129 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8128)).val
theorem output8129_def : output8129 = (output8128) := by
  unfold output8129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8130 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8129 output87)).val
theorem output8130_def : output8130 = (.seq output8129 output87) := by
  unfold output8130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8131 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8130)).val
theorem output8131_def : output8131 = (output8130) := by
  unfold output8131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8132 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8131)).val
theorem output8132_def : output8132 = (.seq output39 output8131) := by
  unfold output8132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8133 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8132)).val
theorem output8133_def : output8133 = (output8132) := by
  unfold output8133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8134 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8127 output8133)).val
theorem output8134_def : output8134 = (.seq output8127 output8133) := by
  unfold output8134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8135 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8134)).val
theorem output8135_def : output8135 = (output8134) := by
  unfold output8135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8136 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8135)).val
theorem output8136_def : output8136 = (.seq output39 output8135) := by
  unfold output8136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8137 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8136)).val
theorem output8137_def : output8137 = (output8136) := by
  unfold output8137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8138 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8125 output8137)).val
theorem output8138_def : output8138 = (.seq output8125 output8137) := by
  unfold output8138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8139 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8138)).val
theorem output8139_def : output8139 = (output8138) := by
  unfold output8139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8140 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4960#64]))).val
theorem output8140_def : output8140 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4960#64])) := by
  unfold output8140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8141 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8140)).val
theorem output8141_def : output8141 = (output8140) := by
  unfold output8141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8142 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17098778598708503283#64))).val
theorem output8142_def : output8142 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17098778598708503283#64)) := by
  unfold output8142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8143 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8142)).val
theorem output8143_def : output8143 = (output8142) := by
  unfold output8143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8144 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8143 output87)).val
theorem output8144_def : output8144 = (.seq output8143 output87) := by
  unfold output8144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8145 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8144)).val
theorem output8145_def : output8145 = (output8144) := by
  unfold output8145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8146 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8145)).val
theorem output8146_def : output8146 = (.seq output39 output8145) := by
  unfold output8146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8147 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8146)).val
theorem output8147_def : output8147 = (output8146) := by
  unfold output8147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8148 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8141 output8147)).val
theorem output8148_def : output8148 = (.seq output8141 output8147) := by
  unfold output8148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8149 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8148)).val
theorem output8149_def : output8149 = (output8148) := by
  unfold output8149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8150 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8149)).val
theorem output8150_def : output8150 = (.seq output39 output8149) := by
  unfold output8150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8151 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8150)).val
theorem output8151_def : output8151 = (output8150) := by
  unfold output8151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8152 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8139 output8151)).val
theorem output8152_def : output8152 = (.seq output8139 output8151) := by
  unfold output8152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8153 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8152)).val
theorem output8153_def : output8153 = (output8152) := by
  unfold output8153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8154 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4968#64]))).val
theorem output8154_def : output8154 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4968#64])) := by
  unfold output8154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8155 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8154)).val
theorem output8155_def : output8155 = (output8154) := by
  unfold output8155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8156 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1291289622868500826#64))).val
theorem output8156_def : output8156 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1291289622868500826#64)) := by
  unfold output8156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8157 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8156)).val
theorem output8157_def : output8157 = (output8156) := by
  unfold output8157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8158 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8157 output87)).val
theorem output8158_def : output8158 = (.seq output8157 output87) := by
  unfold output8158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8159 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8158)).val
theorem output8159_def : output8159 = (output8158) := by
  unfold output8159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8160 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8159)).val
theorem output8160_def : output8160 = (.seq output39 output8159) := by
  unfold output8160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8161 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8160)).val
theorem output8161_def : output8161 = (output8160) := by
  unfold output8161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8162 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8155 output8161)).val
theorem output8162_def : output8162 = (.seq output8155 output8161) := by
  unfold output8162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8163 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8162)).val
theorem output8163_def : output8163 = (output8162) := by
  unfold output8163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8164 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8163)).val
theorem output8164_def : output8164 = (.seq output39 output8163) := by
  unfold output8164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8165 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8164)).val
theorem output8165_def : output8165 = (output8164) := by
  unfold output8165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8166 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8153 output8165)).val
theorem output8166_def : output8166 = (.seq output8153 output8165) := by
  unfold output8166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8167 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8166)).val
theorem output8167_def : output8167 = (output8166) := by
  unfold output8167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8168 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4976#64]))).val
theorem output8168_def : output8168 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4976#64])) := by
  unfold output8168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8169 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8168)).val
theorem output8169_def : output8169 = (output8168) := by
  unfold output8169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8170 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8169 output7923)).val
theorem output8170_def : output8170 = (.seq output8169 output7923) := by
  unfold output8170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8171 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8170)).val
theorem output8171_def : output8171 = (output8170) := by
  unfold output8171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8172 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8171)).val
theorem output8172_def : output8172 = (.seq output39 output8171) := by
  unfold output8172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8173 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8172)).val
theorem output8173_def : output8173 = (output8172) := by
  unfold output8173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8174 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8167 output8173)).val
theorem output8174_def : output8174 = (.seq output8167 output8173) := by
  unfold output8174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8175 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8174)).val
theorem output8175_def : output8175 = (output8174) := by
  unfold output8175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8176 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4984#64]))).val
theorem output8176_def : output8176 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4984#64])) := by
  unfold output8176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8177 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8176)).val
theorem output8177_def : output8177 = (output8176) := by
  unfold output8177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8178 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8177 output7937)).val
theorem output8178_def : output8178 = (.seq output8177 output7937) := by
  unfold output8178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8179 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8178)).val
theorem output8179_def : output8179 = (output8178) := by
  unfold output8179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8180 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8179)).val
theorem output8180_def : output8180 = (.seq output39 output8179) := by
  unfold output8180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8181 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8180)).val
theorem output8181_def : output8181 = (output8180) := by
  unfold output8181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8182 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8175 output8181)).val
theorem output8182_def : output8182 = (.seq output8175 output8181) := by
  unfold output8182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8183 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8182)).val
theorem output8183_def : output8183 = (output8182) := by
  unfold output8183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8184 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4992#64]))).val
theorem output8184_def : output8184 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 4992#64])) := by
  unfold output8184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8185 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8184)).val
theorem output8185_def : output8185 = (output8184) := by
  unfold output8185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8186 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8185 output7951)).val
theorem output8186_def : output8186 = (.seq output8185 output7951) := by
  unfold output8186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8187 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8186)).val
theorem output8187_def : output8187 = (output8186) := by
  unfold output8187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8188 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8187)).val
theorem output8188_def : output8188 = (.seq output39 output8187) := by
  unfold output8188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8189 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8188)).val
theorem output8189_def : output8189 = (output8188) := by
  unfold output8189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8190 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8183 output8189)).val
theorem output8190_def : output8190 = (.seq output8183 output8189) := by
  unfold output8190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8191 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8190)).val
theorem output8191_def : output8191 = (output8190) := by
  unfold output8191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8192 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5000#64]))).val
theorem output8192_def : output8192 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5000#64])) := by
  unfold output8192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8193 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8192)).val
theorem output8193_def : output8193 = (output8192) := by
  unfold output8193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8194 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8193 output7965)).val
theorem output8194_def : output8194 = (.seq output8193 output7965) := by
  unfold output8194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8195 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8194)).val
theorem output8195_def : output8195 = (output8194) := by
  unfold output8195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8196 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8195)).val
theorem output8196_def : output8196 = (.seq output39 output8195) := by
  unfold output8196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8197 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8196)).val
theorem output8197_def : output8197 = (output8196) := by
  unfold output8197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8198 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8191 output8197)).val
theorem output8198_def : output8198 = (.seq output8191 output8197) := by
  unfold output8198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8199 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8198)).val
theorem output8199_def : output8199 = (output8198) := by
  unfold output8199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8200 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5008#64]))).val
theorem output8200_def : output8200 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5008#64])) := by
  unfold output8200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8201 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8200)).val
theorem output8201_def : output8201 = (output8200) := by
  unfold output8201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8202 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8201 output7979)).val
theorem output8202_def : output8202 = (.seq output8201 output7979) := by
  unfold output8202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8203 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8202)).val
theorem output8203_def : output8203 = (output8202) := by
  unfold output8203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8204 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8203)).val
theorem output8204_def : output8204 = (.seq output39 output8203) := by
  unfold output8204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8205 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8204)).val
theorem output8205_def : output8205 = (output8204) := by
  unfold output8205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8206 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8199 output8205)).val
theorem output8206_def : output8206 = (.seq output8199 output8205) := by
  unfold output8206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8207 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8206)).val
theorem output8207_def : output8207 = (output8206) := by
  unfold output8207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8208 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5016#64]))).val
theorem output8208_def : output8208 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5016#64])) := by
  unfold output8208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8209 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8208)).val
theorem output8209_def : output8209 = (output8208) := by
  unfold output8209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8210 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8209 output7993)).val
theorem output8210_def : output8210 = (.seq output8209 output7993) := by
  unfold output8210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8211 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8210)).val
theorem output8211_def : output8211 = (output8210) := by
  unfold output8211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8212 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8211)).val
theorem output8212_def : output8212 = (.seq output39 output8211) := by
  unfold output8212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8213 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8212)).val
theorem output8213_def : output8213 = (output8212) := by
  unfold output8213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8214 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8207 output8213)).val
theorem output8214_def : output8214 = (.seq output8207 output8213) := by
  unfold output8214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8215 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8214)).val
theorem output8215_def : output8215 = (output8214) := by
  unfold output8215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8216 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5024#64]))).val
theorem output8216_def : output8216 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5024#64])) := by
  unfold output8216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8217 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8216)).val
theorem output8217_def : output8217 = (output8216) := by
  unfold output8217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8218 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1070667399020015127#64))).val
theorem output8218_def : output8218 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1070667399020015127#64)) := by
  unfold output8218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8219 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8218)).val
theorem output8219_def : output8219 = (output8218) := by
  unfold output8219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8220 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8219 output87)).val
theorem output8220_def : output8220 = (.seq output8219 output87) := by
  unfold output8220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8221 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8220)).val
theorem output8221_def : output8221 = (output8220) := by
  unfold output8221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8222 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8221)).val
theorem output8222_def : output8222 = (.seq output39 output8221) := by
  unfold output8222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8223 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8222)).val
theorem output8223_def : output8223 = (output8222) := by
  unfold output8223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8224 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8217 output8223)).val
theorem output8224_def : output8224 = (.seq output8217 output8223) := by
  unfold output8224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8225 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8224)).val
theorem output8225_def : output8225 = (output8224) := by
  unfold output8225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8226 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8225)).val
theorem output8226_def : output8226 = (.seq output39 output8225) := by
  unfold output8226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8227 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8226)).val
theorem output8227_def : output8227 = (output8226) := by
  unfold output8227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8228 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8215 output8227)).val
theorem output8228_def : output8228 = (.seq output8215 output8227) := by
  unfold output8228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8229 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8228)).val
theorem output8229_def : output8229 = (output8228) := by
  unfold output8229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8230 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5032#64]))).val
theorem output8230_def : output8230 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5032#64])) := by
  unfold output8230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8231 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8230)).val
theorem output8231_def : output8231 = (output8230) := by
  unfold output8231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8232 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5174364179546707956#64))).val
theorem output8232_def : output8232 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5174364179546707956#64)) := by
  unfold output8232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8233 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8232)).val
theorem output8233_def : output8233 = (output8232) := by
  unfold output8233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8234 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8233 output87)).val
theorem output8234_def : output8234 = (.seq output8233 output87) := by
  unfold output8234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8235 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8234)).val
theorem output8235_def : output8235 = (output8234) := by
  unfold output8235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8236 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8235)).val
theorem output8236_def : output8236 = (.seq output39 output8235) := by
  unfold output8236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8237 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8236)).val
theorem output8237_def : output8237 = (output8236) := by
  unfold output8237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8238 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8231 output8237)).val
theorem output8238_def : output8238 = (.seq output8231 output8237) := by
  unfold output8238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8239 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8238)).val
theorem output8239_def : output8239 = (output8238) := by
  unfold output8239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8240 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8239)).val
theorem output8240_def : output8240 = (.seq output39 output8239) := by
  unfold output8240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8241 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8240)).val
theorem output8241_def : output8241 = (output8240) := by
  unfold output8241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8242 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8229 output8241)).val
theorem output8242_def : output8242 = (.seq output8229 output8241) := by
  unfold output8242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8243 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8242)).val
theorem output8243_def : output8243 = (output8242) := by
  unfold output8243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8244 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5040#64]))).val
theorem output8244_def : output8244 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5040#64])) := by
  unfold output8244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8245 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8244)).val
theorem output8245_def : output8245 = (output8244) := by
  unfold output8245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8246 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12492638376110471938#64))).val
theorem output8246_def : output8246 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12492638376110471938#64)) := by
  unfold output8246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8247 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8246)).val
theorem output8247_def : output8247 = (output8246) := by
  unfold output8247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8248 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8247 output87)).val
theorem output8248_def : output8248 = (.seq output8247 output87) := by
  unfold output8248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8249 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8248)).val
theorem output8249_def : output8249 = (output8248) := by
  unfold output8249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8250 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8249)).val
theorem output8250_def : output8250 = (.seq output39 output8249) := by
  unfold output8250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8251 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8250)).val
theorem output8251_def : output8251 = (output8250) := by
  unfold output8251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8252 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8245 output8251)).val
theorem output8252_def : output8252 = (.seq output8245 output8251) := by
  unfold output8252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8253 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8252)).val
theorem output8253_def : output8253 = (output8252) := by
  unfold output8253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8254 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8253)).val
theorem output8254_def : output8254 = (.seq output39 output8253) := by
  unfold output8254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8255 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8254)).val
theorem output8255_def : output8255 = (output8254) := by
  unfold output8255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8256 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8243 output8255)).val
theorem output8256_def : output8256 = (.seq output8243 output8255) := by
  unfold output8256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8257 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8256)).val
theorem output8257_def : output8257 = (output8256) := by
  unfold output8257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8258 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5048#64]))).val
theorem output8258_def : output8258 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5048#64])) := by
  unfold output8258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8259 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8258)).val
theorem output8259_def : output8259 = (output8258) := by
  unfold output8259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8260 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4971224325420137563#64))).val
theorem output8260_def : output8260 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4971224325420137563#64)) := by
  unfold output8260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8261 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8260)).val
theorem output8261_def : output8261 = (output8260) := by
  unfold output8261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8262 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8261 output87)).val
theorem output8262_def : output8262 = (.seq output8261 output87) := by
  unfold output8262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8263 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8262)).val
theorem output8263_def : output8263 = (output8262) := by
  unfold output8263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8264 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8263)).val
theorem output8264_def : output8264 = (.seq output39 output8263) := by
  unfold output8264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8265 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8264)).val
theorem output8265_def : output8265 = (output8264) := by
  unfold output8265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8266 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8259 output8265)).val
theorem output8266_def : output8266 = (.seq output8259 output8265) := by
  unfold output8266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8267 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8266)).val
theorem output8267_def : output8267 = (output8266) := by
  unfold output8267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8268 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8267)).val
theorem output8268_def : output8268 = (.seq output39 output8267) := by
  unfold output8268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8269 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8268)).val
theorem output8269_def : output8269 = (output8268) := by
  unfold output8269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8270 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8257 output8269)).val
theorem output8270_def : output8270 = (.seq output8257 output8269) := by
  unfold output8270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8271 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8270)).val
theorem output8271_def : output8271 = (output8270) := by
  unfold output8271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8272 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5056#64]))).val
theorem output8272_def : output8272 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5056#64])) := by
  unfold output8272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8273 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8272)).val
theorem output8273_def : output8273 = (output8272) := by
  unfold output8273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8274 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11625236627901062048#64))).val
theorem output8274_def : output8274 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 11625236627901062048#64)) := by
  unfold output8274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8275 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8274)).val
theorem output8275_def : output8275 = (output8274) := by
  unfold output8275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8276 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8275 output87)).val
theorem output8276_def : output8276 = (.seq output8275 output87) := by
  unfold output8276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8277 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8276)).val
theorem output8277_def : output8277 = (output8276) := by
  unfold output8277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8278 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8277)).val
theorem output8278_def : output8278 = (.seq output39 output8277) := by
  unfold output8278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8279 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8278)).val
theorem output8279_def : output8279 = (output8278) := by
  unfold output8279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8280 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8273 output8279)).val
theorem output8280_def : output8280 = (.seq output8273 output8279) := by
  unfold output8280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8281 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8280)).val
theorem output8281_def : output8281 = (output8280) := by
  unfold output8281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8282 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8281)).val
theorem output8282_def : output8282 = (.seq output39 output8281) := by
  unfold output8282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8283 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8282)).val
theorem output8283_def : output8283 = (output8282) := by
  unfold output8283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8284 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8271 output8283)).val
theorem output8284_def : output8284 = (.seq output8271 output8283) := by
  unfold output8284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8285 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8284)).val
theorem output8285_def : output8285 = (output8284) := by
  unfold output8285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8286 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5064#64]))).val
theorem output8286_def : output8286 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5064#64])) := by
  unfold output8286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8287 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8286)).val
theorem output8287_def : output8287 = (output8286) := by
  unfold output8287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8288 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 770611415444366652#64))).val
theorem output8288_def : output8288 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 770611415444366652#64)) := by
  unfold output8288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8289 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8288)).val
theorem output8289_def : output8289 = (output8288) := by
  unfold output8289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8290 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8289 output87)).val
theorem output8290_def : output8290 = (.seq output8289 output87) := by
  unfold output8290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8291 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8290)).val
theorem output8291_def : output8291 = (output8290) := by
  unfold output8291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8292 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8291)).val
theorem output8292_def : output8292 = (.seq output39 output8291) := by
  unfold output8292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8293 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8292)).val
theorem output8293_def : output8293 = (output8292) := by
  unfold output8293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8294 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8287 output8293)).val
theorem output8294_def : output8294 = (.seq output8287 output8293) := by
  unfold output8294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8295 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8294)).val
theorem output8295_def : output8295 = (output8294) := by
  unfold output8295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8296 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8295)).val
theorem output8296_def : output8296 = (.seq output39 output8295) := by
  unfold output8296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8297 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8296)).val
theorem output8297_def : output8297 = (output8296) := by
  unfold output8297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8298 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8285 output8297)).val
theorem output8298_def : output8298 = (.seq output8285 output8297) := by
  unfold output8298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8299 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8298)).val
theorem output8299_def : output8299 = (output8298) := by
  unfold output8299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8300 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5072#64]))).val
theorem output8300_def : output8300 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5072#64])) := by
  unfold output8300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8301 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8300)).val
theorem output8301_def : output8301 = (output8300) := by
  unfold output8301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8302 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9781635320880533441#64))).val
theorem output8302_def : output8302 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 9781635320880533441#64)) := by
  unfold output8302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8303 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8302)).val
theorem output8303_def : output8303 = (output8302) := by
  unfold output8303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8304 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8303 output87)).val
theorem output8304_def : output8304 = (.seq output8303 output87) := by
  unfold output8304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8305 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8304)).val
theorem output8305_def : output8305 = (output8304) := by
  unfold output8305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8306 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8305)).val
theorem output8306_def : output8306 = (.seq output39 output8305) := by
  unfold output8306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8307 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8306)).val
theorem output8307_def : output8307 = (output8306) := by
  unfold output8307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8308 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8301 output8307)).val
theorem output8308_def : output8308 = (.seq output8301 output8307) := by
  unfold output8308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8309 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8308)).val
theorem output8309_def : output8309 = (output8308) := by
  unfold output8309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8310 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8309)).val
theorem output8310_def : output8310 = (.seq output39 output8309) := by
  unfold output8310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8311 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8310)).val
theorem output8311_def : output8311 = (output8310) := by
  unfold output8311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8312 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8299 output8311)).val
theorem output8312_def : output8312 = (.seq output8299 output8311) := by
  unfold output8312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8313 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8312)).val
theorem output8313_def : output8313 = (output8312) := by
  unfold output8313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8314 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5080#64]))).val
theorem output8314_def : output8314 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5080#64])) := by
  unfold output8314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8315 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8314)).val
theorem output8315_def : output8315 = (output8314) := by
  unfold output8315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8316 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 495239923557547522#64))).val
theorem output8316_def : output8316 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 495239923557547522#64)) := by
  unfold output8316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8317 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8316)).val
theorem output8317_def : output8317 = (output8316) := by
  unfold output8317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8318 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8317 output87)).val
theorem output8318_def : output8318 = (.seq output8317 output87) := by
  unfold output8318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8319 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8318)).val
theorem output8319_def : output8319 = (output8318) := by
  unfold output8319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8320 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8319)).val
theorem output8320_def : output8320 = (.seq output39 output8319) := by
  unfold output8320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8321 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8320)).val
theorem output8321_def : output8321 = (output8320) := by
  unfold output8321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8322 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8315 output8321)).val
theorem output8322_def : output8322 = (.seq output8315 output8321) := by
  unfold output8322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8323 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8322)).val
theorem output8323_def : output8323 = (output8322) := by
  unfold output8323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8324 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8323)).val
theorem output8324_def : output8324 = (.seq output39 output8323) := by
  unfold output8324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8325 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8324)).val
theorem output8325_def : output8325 = (output8324) := by
  unfold output8325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8326 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8313 output8325)).val
theorem output8326_def : output8326 = (.seq output8313 output8325) := by
  unfold output8326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8327 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8326)).val
theorem output8327_def : output8327 = (output8326) := by
  unfold output8327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8328 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5088#64]))).val
theorem output8328_def : output8328 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5088#64])) := by
  unfold output8328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8329 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8328)).val
theorem output8329_def : output8329 = (output8328) := by
  unfold output8329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8330 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8344105645226750432#64))).val
theorem output8330_def : output8330 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8344105645226750432#64)) := by
  unfold output8330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8331 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8330)).val
theorem output8331_def : output8331 = (output8330) := by
  unfold output8331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8332 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8331 output87)).val
theorem output8332_def : output8332 = (.seq output8331 output87) := by
  unfold output8332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8333 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8332)).val
theorem output8333_def : output8333 = (output8332) := by
  unfold output8333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8334 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8333)).val
theorem output8334_def : output8334 = (.seq output39 output8333) := by
  unfold output8334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8335 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8334)).val
theorem output8335_def : output8335 = (output8334) := by
  unfold output8335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8336 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8329 output8335)).val
theorem output8336_def : output8336 = (.seq output8329 output8335) := by
  unfold output8336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8337 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8336)).val
theorem output8337_def : output8337 = (output8336) := by
  unfold output8337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8338 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8337)).val
theorem output8338_def : output8338 = (.seq output39 output8337) := by
  unfold output8338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8339 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8338)).val
theorem output8339_def : output8339 = (output8338) := by
  unfold output8339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8340 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8327 output8339)).val
theorem output8340_def : output8340 = (.seq output8327 output8339) := by
  unfold output8340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8341 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8340)).val
theorem output8341_def : output8341 = (output8340) := by
  unfold output8341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8342 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5096#64]))).val
theorem output8342_def : output8342 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5096#64])) := by
  unfold output8342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8343 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8342)).val
theorem output8343_def : output8343 = (output8342) := by
  unfold output8343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8344 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12401057154751743096#64))).val
theorem output8344_def : output8344 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 12401057154751743096#64)) := by
  unfold output8344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8345 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8344)).val
theorem output8345_def : output8345 = (output8344) := by
  unfold output8345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8346 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8345 output87)).val
theorem output8346_def : output8346 = (.seq output8345 output87) := by
  unfold output8346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8347 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8346)).val
theorem output8347_def : output8347 = (output8346) := by
  unfold output8347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8348 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8347)).val
theorem output8348_def : output8348 = (.seq output39 output8347) := by
  unfold output8348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8349 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8348)).val
theorem output8349_def : output8349 = (output8348) := by
  unfold output8349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8350 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8343 output8349)).val
theorem output8350_def : output8350 = (.seq output8343 output8349) := by
  unfold output8350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8351 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8350)).val
theorem output8351_def : output8351 = (output8350) := by
  unfold output8351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8352 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8351)).val
theorem output8352_def : output8352 = (.seq output39 output8351) := by
  unfold output8352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8353 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8352)).val
theorem output8353_def : output8353 = (output8352) := by
  unfold output8353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8354 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8341 output8353)).val
theorem output8354_def : output8354 = (.seq output8341 output8353) := by
  unfold output8354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8355 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8354)).val
theorem output8355_def : output8355 = (output8354) := by
  unfold output8355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8356 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5104#64]))).val
theorem output8356_def : output8356 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5104#64])) := by
  unfold output8356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8357 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8356)).val
theorem output8357_def : output8357 = (output8356) := by
  unfold output8357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8358 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7226034973039055052#64))).val
theorem output8358_def : output8358 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7226034973039055052#64)) := by
  unfold output8358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8359 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8358)).val
theorem output8359_def : output8359 = (output8358) := by
  unfold output8359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8360 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8359 output87)).val
theorem output8360_def : output8360 = (.seq output8359 output87) := by
  unfold output8360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8361 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8360)).val
theorem output8361_def : output8361 = (output8360) := by
  unfold output8361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8362 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8361)).val
theorem output8362_def : output8362 = (.seq output39 output8361) := by
  unfold output8362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8363 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8362)).val
theorem output8363_def : output8363 = (output8362) := by
  unfold output8363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8364 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8357 output8363)).val
theorem output8364_def : output8364 = (.seq output8357 output8363) := by
  unfold output8364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8365 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8364)).val
theorem output8365_def : output8365 = (output8364) := by
  unfold output8365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8366 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8365)).val
theorem output8366_def : output8366 = (.seq output39 output8365) := by
  unfold output8366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8367 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8366)).val
theorem output8367_def : output8367 = (output8366) := by
  unfold output8367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8368 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8355 output8367)).val
theorem output8368_def : output8368 = (.seq output8355 output8367) := by
  unfold output8368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8369 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8368)).val
theorem output8369_def : output8369 = (output8368) := by
  unfold output8369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8370 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5112#64]))).val
theorem output8370_def : output8370 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5112#64])) := by
  unfold output8370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8371 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8370)).val
theorem output8371_def : output8371 = (output8370) := by
  unfold output8371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8372 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 766742811860431400#64))).val
theorem output8372_def : output8372 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 766742811860431400#64)) := by
  unfold output8372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8373 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8372)).val
theorem output8373_def : output8373 = (output8372) := by
  unfold output8373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8374 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8373 output87)).val
theorem output8374_def : output8374 = (.seq output8373 output87) := by
  unfold output8374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8375 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8374)).val
theorem output8375_def : output8375 = (output8374) := by
  unfold output8375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8376 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8375)).val
theorem output8376_def : output8376 = (.seq output39 output8375) := by
  unfold output8376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8377 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8376)).val
theorem output8377_def : output8377 = (output8376) := by
  unfold output8377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8378 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8371 output8377)).val
theorem output8378_def : output8378 = (.seq output8371 output8377) := by
  unfold output8378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8379 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8378)).val
theorem output8379_def : output8379 = (output8378) := by
  unfold output8379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8380 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8379)).val
theorem output8380_def : output8380 = (.seq output39 output8379) := by
  unfold output8380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8381 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8380)).val
theorem output8381_def : output8381 = (output8380) := by
  unfold output8381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8382 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8369 output8381)).val
theorem output8382_def : output8382 = (.seq output8369 output8381) := by
  unfold output8382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8383 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8382)).val
theorem output8383_def : output8383 = (output8382) := by
  unfold output8383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8384 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5120#64]))).val
theorem output8384_def : output8384 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5120#64])) := by
  unfold output8384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8385 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8384)).val
theorem output8385_def : output8385 = (output8384) := by
  unfold output8385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8386 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3620795695197330154#64))).val
theorem output8386_def : output8386 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3620795695197330154#64)) := by
  unfold output8386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8387 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8386)).val
theorem output8387_def : output8387 = (output8386) := by
  unfold output8387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8388 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8387 output87)).val
theorem output8388_def : output8388 = (.seq output8387 output87) := by
  unfold output8388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8389 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8388)).val
theorem output8389_def : output8389 = (output8388) := by
  unfold output8389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8390 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8389)).val
theorem output8390_def : output8390 = (.seq output39 output8389) := by
  unfold output8390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8391 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8390)).val
theorem output8391_def : output8391 = (output8390) := by
  unfold output8391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8392 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8385 output8391)).val
theorem output8392_def : output8392 = (.seq output8385 output8391) := by
  unfold output8392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8393 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8392)).val
theorem output8393_def : output8393 = (output8392) := by
  unfold output8393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8394 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8393)).val
theorem output8394_def : output8394 = (.seq output39 output8393) := by
  unfold output8394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8395 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8394)).val
theorem output8395_def : output8395 = (output8394) := by
  unfold output8395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8396 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8383 output8395)).val
theorem output8396_def : output8396 = (.seq output8383 output8395) := by
  unfold output8396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8397 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8396)).val
theorem output8397_def : output8397 = (output8396) := by
  unfold output8397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8398 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5128#64]))).val
theorem output8398_def : output8398 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5128#64])) := by
  unfold output8398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8399 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8398)).val
theorem output8399_def : output8399 = (output8398) := by
  unfold output8399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8400 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1714901587959661053#64))).val
theorem output8400_def : output8400 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1714901587959661053#64)) := by
  unfold output8400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8401 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8400)).val
theorem output8401_def : output8401 = (output8400) := by
  unfold output8401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8402 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8401 output87)).val
theorem output8402_def : output8402 = (.seq output8401 output87) := by
  unfold output8402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8403 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8402)).val
theorem output8403_def : output8403 = (output8402) := by
  unfold output8403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8404 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8403)).val
theorem output8404_def : output8404 = (.seq output39 output8403) := by
  unfold output8404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8405 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8404)).val
theorem output8405_def : output8405 = (output8404) := by
  unfold output8405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8406 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8399 output8405)).val
theorem output8406_def : output8406 = (.seq output8399 output8405) := by
  unfold output8406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8407 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8406)).val
theorem output8407_def : output8407 = (output8406) := by
  unfold output8407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8408 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8407)).val
theorem output8408_def : output8408 = (.seq output39 output8407) := by
  unfold output8408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8409 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8408)).val
theorem output8409_def : output8409 = (output8408) := by
  unfold output8409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8410 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8397 output8409)).val
theorem output8410_def : output8410 = (.seq output8397 output8409) := by
  unfold output8410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8411 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8410)).val
theorem output8411_def : output8411 = (output8410) := by
  unfold output8411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8412 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5136#64]))).val
theorem output8412_def : output8412 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5136#64])) := by
  unfold output8412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8413 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8412)).val
theorem output8413_def : output8413 = (output8412) := by
  unfold output8413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8414 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17538313002046882884#64))).val
theorem output8414_def : output8414 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17538313002046882884#64)) := by
  unfold output8414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8415 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8414)).val
theorem output8415_def : output8415 = (output8414) := by
  unfold output8415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8416 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8415 output87)).val
theorem output8416_def : output8416 = (.seq output8415 output87) := by
  unfold output8416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8417 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8416)).val
theorem output8417_def : output8417 = (output8416) := by
  unfold output8417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8418 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8417)).val
theorem output8418_def : output8418 = (.seq output39 output8417) := by
  unfold output8418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8419 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8418)).val
theorem output8419_def : output8419 = (output8418) := by
  unfold output8419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8420 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8413 output8419)).val
theorem output8420_def : output8420 = (.seq output8413 output8419) := by
  unfold output8420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8421 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8420)).val
theorem output8421_def : output8421 = (output8420) := by
  unfold output8421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8422 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8421)).val
theorem output8422_def : output8422 = (.seq output39 output8421) := by
  unfold output8422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8423 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8422)).val
theorem output8423_def : output8423 = (output8422) := by
  unfold output8423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8424 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8411 output8423)).val
theorem output8424_def : output8424 = (.seq output8411 output8423) := by
  unfold output8424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8425 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8424)).val
theorem output8425_def : output8425 = (output8424) := by
  unfold output8425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8426 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5144#64]))).val
theorem output8426_def : output8426 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5144#64])) := by
  unfold output8426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8427 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8426)).val
theorem output8427_def : output8427 = (output8426) := by
  unfold output8427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8428 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13285024879372521030#64))).val
theorem output8428_def : output8428 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13285024879372521030#64)) := by
  unfold output8428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8429 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8428)).val
theorem output8429_def : output8429 = (output8428) := by
  unfold output8429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8430 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8429 output87)).val
theorem output8430_def : output8430 = (.seq output8429 output87) := by
  unfold output8430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8431 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8430)).val
theorem output8431_def : output8431 = (output8430) := by
  unfold output8431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8432 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8431)).val
theorem output8432_def : output8432 = (.seq output39 output8431) := by
  unfold output8432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8433 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8432)).val
theorem output8433_def : output8433 = (output8432) := by
  unfold output8433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8434 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8427 output8433)).val
theorem output8434_def : output8434 = (.seq output8427 output8433) := by
  unfold output8434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8435 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8434)).val
theorem output8435_def : output8435 = (output8434) := by
  unfold output8435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8436 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8435)).val
theorem output8436_def : output8436 = (.seq output39 output8435) := by
  unfold output8436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8437 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8436)).val
theorem output8437_def : output8437 = (output8436) := by
  unfold output8437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8438 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8425 output8437)).val
theorem output8438_def : output8438 = (.seq output8425 output8437) := by
  unfold output8438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8439 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8438)).val
theorem output8439_def : output8439 = (output8438) := by
  unfold output8439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8440 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5152#64]))).val
theorem output8440_def : output8440 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 512#64]),
      Flapjack.WordLangExpHOL.const 5152#64])) := by
  unfold output8440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8441 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8440)).val
theorem output8441_def : output8441 = (output8440) := by
  unfold output8441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8442 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16632812879141198858#64))).val
theorem output8442_def : output8442 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 16632812879141198858#64)) := by
  unfold output8442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8443 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8442)).val
theorem output8443_def : output8443 = (output8442) := by
  unfold output8443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8444 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output8443 output87)).val
theorem output8444_def : output8444 = (.seq output8443 output87) := by
  unfold output8444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8445 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8444)).val
theorem output8445_def : output8445 = (output8444) := by
  unfold output8445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8446 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output39 output8445)).val
theorem output8446_def : output8446 = (.seq output39 output8445) := by
  unfold output8446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output8447 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output8446)).val
theorem output8447_def : output8447 = (output8446) := by
  unfold output8447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

end InitECandidate.Proofs.FrontendStages.Word.Checkpoints649
