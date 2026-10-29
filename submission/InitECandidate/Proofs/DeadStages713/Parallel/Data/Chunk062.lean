import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk061
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713.Parallel
@[irreducible, cbv_opaque] def input15872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15871 input6134)).val
theorem input15872_def : input15872 = (.seq input15871 input6134) := by
  unfold input15872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15871 output6134)).val
theorem output15872_def : output15872 = (.seq output15871 output6134) := by
  unfold output15872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15872_skip : Flapjack.WordAlloc.isSkip output15872 = false := by
  rw [output15872_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15872 input6131)).val
theorem input15873_def : input15873 = (.seq input15872 input6131) := by
  unfold input15873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15872 output6131)).val
theorem output15873_def : output15873 = (.seq output15872 output6131) := by
  unfold output15873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15873_skip : Flapjack.WordAlloc.isSkip output15873 = false := by
  rw [output15873_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15873 input6120)).val
theorem input15874_def : input15874 = (.seq input15873 input6120) := by
  unfold input15874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15873)).val
theorem output15874_def : output15874 = (output15873) := by
  unfold output15874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15874_skip : Flapjack.WordAlloc.isSkip output15874 = false := by
  rw [output15874_def]
  exact output15873_skip


@[irreducible, cbv_opaque] def input15875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15874 input6119)).val
theorem input15875_def : input15875 = (.seq input15874 input6119) := by
  unfold input15875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15874 output6119)).val
theorem output15875_def : output15875 = (.seq output15874 output6119) := by
  unfold output15875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15875_skip : Flapjack.WordAlloc.isSkip output15875 = false := by
  rw [output15875_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15875 input6118)).val
theorem input15876_def : input15876 = (.seq input15875 input6118) := by
  unfold input15876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15875 output6118)).val
theorem output15876_def : output15876 = (.seq output15875 output6118) := by
  unfold output15876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15876_skip : Flapjack.WordAlloc.isSkip output15876 = false := by
  rw [output15876_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15876 input6115)).val
theorem input15877_def : input15877 = (.seq input15876 input6115) := by
  unfold input15877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15876 output6115)).val
theorem output15877_def : output15877 = (.seq output15876 output6115) := by
  unfold output15877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15877_skip : Flapjack.WordAlloc.isSkip output15877 = false := by
  rw [output15877_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15877 input6104)).val
theorem input15878_def : input15878 = (.seq input15877 input6104) := by
  unfold input15878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15877)).val
theorem output15878_def : output15878 = (output15877) := by
  unfold output15878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15878_skip : Flapjack.WordAlloc.isSkip output15878 = false := by
  rw [output15878_def]
  exact output15877_skip


@[irreducible, cbv_opaque] def input15879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15878 input6103)).val
theorem input15879_def : input15879 = (.seq input15878 input6103) := by
  unfold input15879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15878 output6103)).val
theorem output15879_def : output15879 = (.seq output15878 output6103) := by
  unfold output15879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15879_skip : Flapjack.WordAlloc.isSkip output15879 = false := by
  rw [output15879_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15879 input6102)).val
theorem input15880_def : input15880 = (.seq input15879 input6102) := by
  unfold input15880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15879 output6102)).val
theorem output15880_def : output15880 = (.seq output15879 output6102) := by
  unfold output15880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15880_skip : Flapjack.WordAlloc.isSkip output15880 = false := by
  rw [output15880_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15880 input6099)).val
theorem input15881_def : input15881 = (.seq input15880 input6099) := by
  unfold input15881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15880 output6099)).val
theorem output15881_def : output15881 = (.seq output15880 output6099) := by
  unfold output15881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15881_skip : Flapjack.WordAlloc.isSkip output15881 = false := by
  rw [output15881_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15881 input6088)).val
theorem input15882_def : input15882 = (.seq input15881 input6088) := by
  unfold input15882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15881)).val
theorem output15882_def : output15882 = (output15881) := by
  unfold output15882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15882_skip : Flapjack.WordAlloc.isSkip output15882 = false := by
  rw [output15882_def]
  exact output15881_skip


@[irreducible, cbv_opaque] def input15883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15882 input6087)).val
theorem input15883_def : input15883 = (.seq input15882 input6087) := by
  unfold input15883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15882 output6087)).val
theorem output15883_def : output15883 = (.seq output15882 output6087) := by
  unfold output15883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15883_skip : Flapjack.WordAlloc.isSkip output15883 = false := by
  rw [output15883_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15883 input6086)).val
theorem input15884_def : input15884 = (.seq input15883 input6086) := by
  unfold input15884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15883 output6086)).val
theorem output15884_def : output15884 = (.seq output15883 output6086) := by
  unfold output15884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15884_skip : Flapjack.WordAlloc.isSkip output15884 = false := by
  rw [output15884_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15884 input6083)).val
theorem input15885_def : input15885 = (.seq input15884 input6083) := by
  unfold input15885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15884 output6083)).val
theorem output15885_def : output15885 = (.seq output15884 output6083) := by
  unfold output15885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15885_skip : Flapjack.WordAlloc.isSkip output15885 = false := by
  rw [output15885_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15885 input6072)).val
theorem input15886_def : input15886 = (.seq input15885 input6072) := by
  unfold input15886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15885)).val
theorem output15886_def : output15886 = (output15885) := by
  unfold output15886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15886_skip : Flapjack.WordAlloc.isSkip output15886 = false := by
  rw [output15886_def]
  exact output15885_skip


@[irreducible, cbv_opaque] def input15887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15886 input6071)).val
theorem input15887_def : input15887 = (.seq input15886 input6071) := by
  unfold input15887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15886 output6071)).val
theorem output15887_def : output15887 = (.seq output15886 output6071) := by
  unfold output15887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15887_skip : Flapjack.WordAlloc.isSkip output15887 = false := by
  rw [output15887_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15887 input6070)).val
theorem input15888_def : input15888 = (.seq input15887 input6070) := by
  unfold input15888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15887 output6070)).val
theorem output15888_def : output15888 = (.seq output15887 output6070) := by
  unfold output15888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15888_skip : Flapjack.WordAlloc.isSkip output15888 = false := by
  rw [output15888_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15888 input6067)).val
theorem input15889_def : input15889 = (.seq input15888 input6067) := by
  unfold input15889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15888 output6067)).val
theorem output15889_def : output15889 = (.seq output15888 output6067) := by
  unfold output15889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15889_skip : Flapjack.WordAlloc.isSkip output15889 = false := by
  rw [output15889_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15889 input6056)).val
theorem input15890_def : input15890 = (.seq input15889 input6056) := by
  unfold input15890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15889)).val
theorem output15890_def : output15890 = (output15889) := by
  unfold output15890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15890_skip : Flapjack.WordAlloc.isSkip output15890 = false := by
  rw [output15890_def]
  exact output15889_skip


@[irreducible, cbv_opaque] def input15891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15890 input6055)).val
theorem input15891_def : input15891 = (.seq input15890 input6055) := by
  unfold input15891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15890 output6055)).val
theorem output15891_def : output15891 = (.seq output15890 output6055) := by
  unfold output15891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15891_skip : Flapjack.WordAlloc.isSkip output15891 = false := by
  rw [output15891_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15891 input6054)).val
theorem input15892_def : input15892 = (.seq input15891 input6054) := by
  unfold input15892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15891 output6054)).val
theorem output15892_def : output15892 = (.seq output15891 output6054) := by
  unfold output15892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15892_skip : Flapjack.WordAlloc.isSkip output15892 = false := by
  rw [output15892_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15892 input6051)).val
theorem input15893_def : input15893 = (.seq input15892 input6051) := by
  unfold input15893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15892 output6051)).val
theorem output15893_def : output15893 = (.seq output15892 output6051) := by
  unfold output15893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15893_skip : Flapjack.WordAlloc.isSkip output15893 = false := by
  rw [output15893_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15893 input6040)).val
theorem input15894_def : input15894 = (.seq input15893 input6040) := by
  unfold input15894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15893)).val
theorem output15894_def : output15894 = (output15893) := by
  unfold output15894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15894_skip : Flapjack.WordAlloc.isSkip output15894 = false := by
  rw [output15894_def]
  exact output15893_skip


@[irreducible, cbv_opaque] def input15895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15894 input6039)).val
theorem input15895_def : input15895 = (.seq input15894 input6039) := by
  unfold input15895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15894 output6039)).val
theorem output15895_def : output15895 = (.seq output15894 output6039) := by
  unfold output15895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15895_skip : Flapjack.WordAlloc.isSkip output15895 = false := by
  rw [output15895_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15895 input6038)).val
theorem input15896_def : input15896 = (.seq input15895 input6038) := by
  unfold input15896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15895 output6038)).val
theorem output15896_def : output15896 = (.seq output15895 output6038) := by
  unfold output15896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15896_skip : Flapjack.WordAlloc.isSkip output15896 = false := by
  rw [output15896_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15896 input6035)).val
theorem input15897_def : input15897 = (.seq input15896 input6035) := by
  unfold input15897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15896 output6035)).val
theorem output15897_def : output15897 = (.seq output15896 output6035) := by
  unfold output15897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15897_skip : Flapjack.WordAlloc.isSkip output15897 = false := by
  rw [output15897_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15897 input6024)).val
theorem input15898_def : input15898 = (.seq input15897 input6024) := by
  unfold input15898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15897)).val
theorem output15898_def : output15898 = (output15897) := by
  unfold output15898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15898_skip : Flapjack.WordAlloc.isSkip output15898 = false := by
  rw [output15898_def]
  exact output15897_skip


@[irreducible, cbv_opaque] def input15899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15898 input6023)).val
theorem input15899_def : input15899 = (.seq input15898 input6023) := by
  unfold input15899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15898 output6023)).val
theorem output15899_def : output15899 = (.seq output15898 output6023) := by
  unfold output15899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15899_skip : Flapjack.WordAlloc.isSkip output15899 = false := by
  rw [output15899_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15899 input6022)).val
theorem input15900_def : input15900 = (.seq input15899 input6022) := by
  unfold input15900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15899 output6022)).val
theorem output15900_def : output15900 = (.seq output15899 output6022) := by
  unfold output15900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15900_skip : Flapjack.WordAlloc.isSkip output15900 = false := by
  rw [output15900_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15900 input6019)).val
theorem input15901_def : input15901 = (.seq input15900 input6019) := by
  unfold input15901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15900 output6019)).val
theorem output15901_def : output15901 = (.seq output15900 output6019) := by
  unfold output15901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15901_skip : Flapjack.WordAlloc.isSkip output15901 = false := by
  rw [output15901_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15901 input6008)).val
theorem input15902_def : input15902 = (.seq input15901 input6008) := by
  unfold input15902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15901)).val
theorem output15902_def : output15902 = (output15901) := by
  unfold output15902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15902_skip : Flapjack.WordAlloc.isSkip output15902 = false := by
  rw [output15902_def]
  exact output15901_skip


@[irreducible, cbv_opaque] def input15903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15902 input6007)).val
theorem input15903_def : input15903 = (.seq input15902 input6007) := by
  unfold input15903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15902 output6007)).val
theorem output15903_def : output15903 = (.seq output15902 output6007) := by
  unfold output15903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15903_skip : Flapjack.WordAlloc.isSkip output15903 = false := by
  rw [output15903_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15903 input6006)).val
theorem input15904_def : input15904 = (.seq input15903 input6006) := by
  unfold input15904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15903 output6006)).val
theorem output15904_def : output15904 = (.seq output15903 output6006) := by
  unfold output15904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15904_skip : Flapjack.WordAlloc.isSkip output15904 = false := by
  rw [output15904_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15904 input6003)).val
theorem input15905_def : input15905 = (.seq input15904 input6003) := by
  unfold input15905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15904 output6003)).val
theorem output15905_def : output15905 = (.seq output15904 output6003) := by
  unfold output15905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15905_skip : Flapjack.WordAlloc.isSkip output15905 = false := by
  rw [output15905_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15905 input5992)).val
theorem input15906_def : input15906 = (.seq input15905 input5992) := by
  unfold input15906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15905)).val
theorem output15906_def : output15906 = (output15905) := by
  unfold output15906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15906_skip : Flapjack.WordAlloc.isSkip output15906 = false := by
  rw [output15906_def]
  exact output15905_skip


@[irreducible, cbv_opaque] def input15907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15906 input5991)).val
theorem input15907_def : input15907 = (.seq input15906 input5991) := by
  unfold input15907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15906 output5991)).val
theorem output15907_def : output15907 = (.seq output15906 output5991) := by
  unfold output15907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15907_skip : Flapjack.WordAlloc.isSkip output15907 = false := by
  rw [output15907_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15907 input5990)).val
theorem input15908_def : input15908 = (.seq input15907 input5990) := by
  unfold input15908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15907 output5990)).val
theorem output15908_def : output15908 = (.seq output15907 output5990) := by
  unfold output15908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15908_skip : Flapjack.WordAlloc.isSkip output15908 = false := by
  rw [output15908_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15908 input5987)).val
theorem input15909_def : input15909 = (.seq input15908 input5987) := by
  unfold input15909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15908 output5987)).val
theorem output15909_def : output15909 = (.seq output15908 output5987) := by
  unfold output15909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15909_skip : Flapjack.WordAlloc.isSkip output15909 = false := by
  rw [output15909_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15909 input5976)).val
theorem input15910_def : input15910 = (.seq input15909 input5976) := by
  unfold input15910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15909)).val
theorem output15910_def : output15910 = (output15909) := by
  unfold output15910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15910_skip : Flapjack.WordAlloc.isSkip output15910 = false := by
  rw [output15910_def]
  exact output15909_skip


@[irreducible, cbv_opaque] def input15911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15910 input5975)).val
theorem input15911_def : input15911 = (.seq input15910 input5975) := by
  unfold input15911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15910 output5975)).val
theorem output15911_def : output15911 = (.seq output15910 output5975) := by
  unfold output15911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15911_skip : Flapjack.WordAlloc.isSkip output15911 = false := by
  rw [output15911_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15911 input5974)).val
theorem input15912_def : input15912 = (.seq input15911 input5974) := by
  unfold input15912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15911 output5974)).val
theorem output15912_def : output15912 = (.seq output15911 output5974) := by
  unfold output15912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15912_skip : Flapjack.WordAlloc.isSkip output15912 = false := by
  rw [output15912_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15912 input5971)).val
theorem input15913_def : input15913 = (.seq input15912 input5971) := by
  unfold input15913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15912 output5971)).val
theorem output15913_def : output15913 = (.seq output15912 output5971) := by
  unfold output15913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15913_skip : Flapjack.WordAlloc.isSkip output15913 = false := by
  rw [output15913_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15913 input5960)).val
theorem input15914_def : input15914 = (.seq input15913 input5960) := by
  unfold input15914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15913)).val
theorem output15914_def : output15914 = (output15913) := by
  unfold output15914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15914_skip : Flapjack.WordAlloc.isSkip output15914 = false := by
  rw [output15914_def]
  exact output15913_skip


@[irreducible, cbv_opaque] def input15915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15914 input5959)).val
theorem input15915_def : input15915 = (.seq input15914 input5959) := by
  unfold input15915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15914 output5959)).val
theorem output15915_def : output15915 = (.seq output15914 output5959) := by
  unfold output15915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15915_skip : Flapjack.WordAlloc.isSkip output15915 = false := by
  rw [output15915_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15915 input5958)).val
theorem input15916_def : input15916 = (.seq input15915 input5958) := by
  unfold input15916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15915 output5958)).val
theorem output15916_def : output15916 = (.seq output15915 output5958) := by
  unfold output15916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15916_skip : Flapjack.WordAlloc.isSkip output15916 = false := by
  rw [output15916_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15916 input5955)).val
theorem input15917_def : input15917 = (.seq input15916 input5955) := by
  unfold input15917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15916 output5955)).val
theorem output15917_def : output15917 = (.seq output15916 output5955) := by
  unfold output15917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15917_skip : Flapjack.WordAlloc.isSkip output15917 = false := by
  rw [output15917_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15917 input5944)).val
theorem input15918_def : input15918 = (.seq input15917 input5944) := by
  unfold input15918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15917)).val
theorem output15918_def : output15918 = (output15917) := by
  unfold output15918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15918_skip : Flapjack.WordAlloc.isSkip output15918 = false := by
  rw [output15918_def]
  exact output15917_skip


@[irreducible, cbv_opaque] def input15919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15918 input5943)).val
theorem input15919_def : input15919 = (.seq input15918 input5943) := by
  unfold input15919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15918 output5943)).val
theorem output15919_def : output15919 = (.seq output15918 output5943) := by
  unfold output15919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15919_skip : Flapjack.WordAlloc.isSkip output15919 = false := by
  rw [output15919_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15919 input5942)).val
theorem input15920_def : input15920 = (.seq input15919 input5942) := by
  unfold input15920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15919 output5942)).val
theorem output15920_def : output15920 = (.seq output15919 output5942) := by
  unfold output15920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15920_skip : Flapjack.WordAlloc.isSkip output15920 = false := by
  rw [output15920_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15920 input5939)).val
theorem input15921_def : input15921 = (.seq input15920 input5939) := by
  unfold input15921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15920 output5939)).val
theorem output15921_def : output15921 = (.seq output15920 output5939) := by
  unfold output15921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15921_skip : Flapjack.WordAlloc.isSkip output15921 = false := by
  rw [output15921_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15921 input5928)).val
theorem input15922_def : input15922 = (.seq input15921 input5928) := by
  unfold input15922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15921)).val
theorem output15922_def : output15922 = (output15921) := by
  unfold output15922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15922_skip : Flapjack.WordAlloc.isSkip output15922 = false := by
  rw [output15922_def]
  exact output15921_skip


@[irreducible, cbv_opaque] def input15923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15922 input5927)).val
theorem input15923_def : input15923 = (.seq input15922 input5927) := by
  unfold input15923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15922 output5927)).val
theorem output15923_def : output15923 = (.seq output15922 output5927) := by
  unfold output15923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15923_skip : Flapjack.WordAlloc.isSkip output15923 = false := by
  rw [output15923_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15923 input5926)).val
theorem input15924_def : input15924 = (.seq input15923 input5926) := by
  unfold input15924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15923 output5926)).val
theorem output15924_def : output15924 = (.seq output15923 output5926) := by
  unfold output15924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15924_skip : Flapjack.WordAlloc.isSkip output15924 = false := by
  rw [output15924_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15924 input5923)).val
theorem input15925_def : input15925 = (.seq input15924 input5923) := by
  unfold input15925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15924 output5923)).val
theorem output15925_def : output15925 = (.seq output15924 output5923) := by
  unfold output15925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15925_skip : Flapjack.WordAlloc.isSkip output15925 = false := by
  rw [output15925_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15925 input5912)).val
theorem input15926_def : input15926 = (.seq input15925 input5912) := by
  unfold input15926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15925)).val
theorem output15926_def : output15926 = (output15925) := by
  unfold output15926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15926_skip : Flapjack.WordAlloc.isSkip output15926 = false := by
  rw [output15926_def]
  exact output15925_skip


@[irreducible, cbv_opaque] def input15927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15926 input5911)).val
theorem input15927_def : input15927 = (.seq input15926 input5911) := by
  unfold input15927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15926 output5911)).val
theorem output15927_def : output15927 = (.seq output15926 output5911) := by
  unfold output15927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15927_skip : Flapjack.WordAlloc.isSkip output15927 = false := by
  rw [output15927_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15927 input5910)).val
theorem input15928_def : input15928 = (.seq input15927 input5910) := by
  unfold input15928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15927 output5910)).val
theorem output15928_def : output15928 = (.seq output15927 output5910) := by
  unfold output15928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15928_skip : Flapjack.WordAlloc.isSkip output15928 = false := by
  rw [output15928_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15928 input5907)).val
theorem input15929_def : input15929 = (.seq input15928 input5907) := by
  unfold input15929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15928 output5907)).val
theorem output15929_def : output15929 = (.seq output15928 output5907) := by
  unfold output15929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15929_skip : Flapjack.WordAlloc.isSkip output15929 = false := by
  rw [output15929_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15929 input5896)).val
theorem input15930_def : input15930 = (.seq input15929 input5896) := by
  unfold input15930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15929)).val
theorem output15930_def : output15930 = (output15929) := by
  unfold output15930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15930_skip : Flapjack.WordAlloc.isSkip output15930 = false := by
  rw [output15930_def]
  exact output15929_skip


@[irreducible, cbv_opaque] def input15931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15930 input5895)).val
theorem input15931_def : input15931 = (.seq input15930 input5895) := by
  unfold input15931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15930 output5895)).val
theorem output15931_def : output15931 = (.seq output15930 output5895) := by
  unfold output15931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15931_skip : Flapjack.WordAlloc.isSkip output15931 = false := by
  rw [output15931_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15931 input5894)).val
theorem input15932_def : input15932 = (.seq input15931 input5894) := by
  unfold input15932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15931 output5894)).val
theorem output15932_def : output15932 = (.seq output15931 output5894) := by
  unfold output15932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15932_skip : Flapjack.WordAlloc.isSkip output15932 = false := by
  rw [output15932_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15932 input5891)).val
theorem input15933_def : input15933 = (.seq input15932 input5891) := by
  unfold input15933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15932 output5891)).val
theorem output15933_def : output15933 = (.seq output15932 output5891) := by
  unfold output15933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15933_skip : Flapjack.WordAlloc.isSkip output15933 = false := by
  rw [output15933_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15933 input5880)).val
theorem input15934_def : input15934 = (.seq input15933 input5880) := by
  unfold input15934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15933)).val
theorem output15934_def : output15934 = (output15933) := by
  unfold output15934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15934_skip : Flapjack.WordAlloc.isSkip output15934 = false := by
  rw [output15934_def]
  exact output15933_skip


@[irreducible, cbv_opaque] def input15935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15934 input5879)).val
theorem input15935_def : input15935 = (.seq input15934 input5879) := by
  unfold input15935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15934 output5879)).val
theorem output15935_def : output15935 = (.seq output15934 output5879) := by
  unfold output15935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15935_skip : Flapjack.WordAlloc.isSkip output15935 = false := by
  rw [output15935_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15935 input5878)).val
theorem input15936_def : input15936 = (.seq input15935 input5878) := by
  unfold input15936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15935 output5878)).val
theorem output15936_def : output15936 = (.seq output15935 output5878) := by
  unfold output15936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15936_skip : Flapjack.WordAlloc.isSkip output15936 = false := by
  rw [output15936_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15936 input5875)).val
theorem input15937_def : input15937 = (.seq input15936 input5875) := by
  unfold input15937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15936 output5875)).val
theorem output15937_def : output15937 = (.seq output15936 output5875) := by
  unfold output15937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15937_skip : Flapjack.WordAlloc.isSkip output15937 = false := by
  rw [output15937_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15937 input5864)).val
theorem input15938_def : input15938 = (.seq input15937 input5864) := by
  unfold input15938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15937)).val
theorem output15938_def : output15938 = (output15937) := by
  unfold output15938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15938_skip : Flapjack.WordAlloc.isSkip output15938 = false := by
  rw [output15938_def]
  exact output15937_skip


@[irreducible, cbv_opaque] def input15939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15938 input5863)).val
theorem input15939_def : input15939 = (.seq input15938 input5863) := by
  unfold input15939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15938 output5863)).val
theorem output15939_def : output15939 = (.seq output15938 output5863) := by
  unfold output15939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15939_skip : Flapjack.WordAlloc.isSkip output15939 = false := by
  rw [output15939_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15939 input5862)).val
theorem input15940_def : input15940 = (.seq input15939 input5862) := by
  unfold input15940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15939 output5862)).val
theorem output15940_def : output15940 = (.seq output15939 output5862) := by
  unfold output15940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15940_skip : Flapjack.WordAlloc.isSkip output15940 = false := by
  rw [output15940_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15940 input5859)).val
theorem input15941_def : input15941 = (.seq input15940 input5859) := by
  unfold input15941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15940 output5859)).val
theorem output15941_def : output15941 = (.seq output15940 output5859) := by
  unfold output15941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15941_skip : Flapjack.WordAlloc.isSkip output15941 = false := by
  rw [output15941_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15941 input5848)).val
theorem input15942_def : input15942 = (.seq input15941 input5848) := by
  unfold input15942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15941)).val
theorem output15942_def : output15942 = (output15941) := by
  unfold output15942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15942_skip : Flapjack.WordAlloc.isSkip output15942 = false := by
  rw [output15942_def]
  exact output15941_skip


@[irreducible, cbv_opaque] def input15943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15942 input5847)).val
theorem input15943_def : input15943 = (.seq input15942 input5847) := by
  unfold input15943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15942 output5847)).val
theorem output15943_def : output15943 = (.seq output15942 output5847) := by
  unfold output15943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15943_skip : Flapjack.WordAlloc.isSkip output15943 = false := by
  rw [output15943_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15943 input5846)).val
theorem input15944_def : input15944 = (.seq input15943 input5846) := by
  unfold input15944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15943 output5846)).val
theorem output15944_def : output15944 = (.seq output15943 output5846) := by
  unfold output15944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15944_skip : Flapjack.WordAlloc.isSkip output15944 = false := by
  rw [output15944_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15944 input5843)).val
theorem input15945_def : input15945 = (.seq input15944 input5843) := by
  unfold input15945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15944 output5843)).val
theorem output15945_def : output15945 = (.seq output15944 output5843) := by
  unfold output15945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15945_skip : Flapjack.WordAlloc.isSkip output15945 = false := by
  rw [output15945_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15945 input5832)).val
theorem input15946_def : input15946 = (.seq input15945 input5832) := by
  unfold input15946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15945)).val
theorem output15946_def : output15946 = (output15945) := by
  unfold output15946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15946_skip : Flapjack.WordAlloc.isSkip output15946 = false := by
  rw [output15946_def]
  exact output15945_skip


@[irreducible, cbv_opaque] def input15947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15946 input5831)).val
theorem input15947_def : input15947 = (.seq input15946 input5831) := by
  unfold input15947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15946 output5831)).val
theorem output15947_def : output15947 = (.seq output15946 output5831) := by
  unfold output15947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15947_skip : Flapjack.WordAlloc.isSkip output15947 = false := by
  rw [output15947_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15947 input5830)).val
theorem input15948_def : input15948 = (.seq input15947 input5830) := by
  unfold input15948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15947 output5830)).val
theorem output15948_def : output15948 = (.seq output15947 output5830) := by
  unfold output15948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15948_skip : Flapjack.WordAlloc.isSkip output15948 = false := by
  rw [output15948_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15948 input5827)).val
theorem input15949_def : input15949 = (.seq input15948 input5827) := by
  unfold input15949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15948 output5827)).val
theorem output15949_def : output15949 = (.seq output15948 output5827) := by
  unfold output15949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15949_skip : Flapjack.WordAlloc.isSkip output15949 = false := by
  rw [output15949_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15949 input5816)).val
theorem input15950_def : input15950 = (.seq input15949 input5816) := by
  unfold input15950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15949)).val
theorem output15950_def : output15950 = (output15949) := by
  unfold output15950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15950_skip : Flapjack.WordAlloc.isSkip output15950 = false := by
  rw [output15950_def]
  exact output15949_skip


@[irreducible, cbv_opaque] def input15951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15950 input5815)).val
theorem input15951_def : input15951 = (.seq input15950 input5815) := by
  unfold input15951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15950 output5815)).val
theorem output15951_def : output15951 = (.seq output15950 output5815) := by
  unfold output15951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15951_skip : Flapjack.WordAlloc.isSkip output15951 = false := by
  rw [output15951_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15951 input5814)).val
theorem input15952_def : input15952 = (.seq input15951 input5814) := by
  unfold input15952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15951 output5814)).val
theorem output15952_def : output15952 = (.seq output15951 output5814) := by
  unfold output15952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15952_skip : Flapjack.WordAlloc.isSkip output15952 = false := by
  rw [output15952_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15952 input5811)).val
theorem input15953_def : input15953 = (.seq input15952 input5811) := by
  unfold input15953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15952 output5811)).val
theorem output15953_def : output15953 = (.seq output15952 output5811) := by
  unfold output15953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15953_skip : Flapjack.WordAlloc.isSkip output15953 = false := by
  rw [output15953_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15953 input5800)).val
theorem input15954_def : input15954 = (.seq input15953 input5800) := by
  unfold input15954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15953)).val
theorem output15954_def : output15954 = (output15953) := by
  unfold output15954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15954_skip : Flapjack.WordAlloc.isSkip output15954 = false := by
  rw [output15954_def]
  exact output15953_skip


@[irreducible, cbv_opaque] def input15955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15954 input5799)).val
theorem input15955_def : input15955 = (.seq input15954 input5799) := by
  unfold input15955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15954 output5799)).val
theorem output15955_def : output15955 = (.seq output15954 output5799) := by
  unfold output15955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15955_skip : Flapjack.WordAlloc.isSkip output15955 = false := by
  rw [output15955_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15955 input5798)).val
theorem input15956_def : input15956 = (.seq input15955 input5798) := by
  unfold input15956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15955 output5798)).val
theorem output15956_def : output15956 = (.seq output15955 output5798) := by
  unfold output15956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15956_skip : Flapjack.WordAlloc.isSkip output15956 = false := by
  rw [output15956_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15956 input5795)).val
theorem input15957_def : input15957 = (.seq input15956 input5795) := by
  unfold input15957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15956 output5795)).val
theorem output15957_def : output15957 = (.seq output15956 output5795) := by
  unfold output15957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15957_skip : Flapjack.WordAlloc.isSkip output15957 = false := by
  rw [output15957_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15957 input5784)).val
theorem input15958_def : input15958 = (.seq input15957 input5784) := by
  unfold input15958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15957)).val
theorem output15958_def : output15958 = (output15957) := by
  unfold output15958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15958_skip : Flapjack.WordAlloc.isSkip output15958 = false := by
  rw [output15958_def]
  exact output15957_skip


@[irreducible, cbv_opaque] def input15959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15958 input5783)).val
theorem input15959_def : input15959 = (.seq input15958 input5783) := by
  unfold input15959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15958 output5783)).val
theorem output15959_def : output15959 = (.seq output15958 output5783) := by
  unfold output15959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15959_skip : Flapjack.WordAlloc.isSkip output15959 = false := by
  rw [output15959_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15959 input5782)).val
theorem input15960_def : input15960 = (.seq input15959 input5782) := by
  unfold input15960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15959 output5782)).val
theorem output15960_def : output15960 = (.seq output15959 output5782) := by
  unfold output15960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15960_skip : Flapjack.WordAlloc.isSkip output15960 = false := by
  rw [output15960_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15960 input5779)).val
theorem input15961_def : input15961 = (.seq input15960 input5779) := by
  unfold input15961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15960 output5779)).val
theorem output15961_def : output15961 = (.seq output15960 output5779) := by
  unfold output15961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15961_skip : Flapjack.WordAlloc.isSkip output15961 = false := by
  rw [output15961_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15961 input5768)).val
theorem input15962_def : input15962 = (.seq input15961 input5768) := by
  unfold input15962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15961)).val
theorem output15962_def : output15962 = (output15961) := by
  unfold output15962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15962_skip : Flapjack.WordAlloc.isSkip output15962 = false := by
  rw [output15962_def]
  exact output15961_skip


@[irreducible, cbv_opaque] def input15963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15962 input5767)).val
theorem input15963_def : input15963 = (.seq input15962 input5767) := by
  unfold input15963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15962 output5767)).val
theorem output15963_def : output15963 = (.seq output15962 output5767) := by
  unfold output15963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15963_skip : Flapjack.WordAlloc.isSkip output15963 = false := by
  rw [output15963_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15963 input5766)).val
theorem input15964_def : input15964 = (.seq input15963 input5766) := by
  unfold input15964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15963 output5766)).val
theorem output15964_def : output15964 = (.seq output15963 output5766) := by
  unfold output15964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15964_skip : Flapjack.WordAlloc.isSkip output15964 = false := by
  rw [output15964_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15964 input5763)).val
theorem input15965_def : input15965 = (.seq input15964 input5763) := by
  unfold input15965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15964 output5763)).val
theorem output15965_def : output15965 = (.seq output15964 output5763) := by
  unfold output15965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15965_skip : Flapjack.WordAlloc.isSkip output15965 = false := by
  rw [output15965_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15965 input5752)).val
theorem input15966_def : input15966 = (.seq input15965 input5752) := by
  unfold input15966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15965)).val
theorem output15966_def : output15966 = (output15965) := by
  unfold output15966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15966_skip : Flapjack.WordAlloc.isSkip output15966 = false := by
  rw [output15966_def]
  exact output15965_skip


@[irreducible, cbv_opaque] def input15967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15966 input5751)).val
theorem input15967_def : input15967 = (.seq input15966 input5751) := by
  unfold input15967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15966 output5751)).val
theorem output15967_def : output15967 = (.seq output15966 output5751) := by
  unfold output15967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15967_skip : Flapjack.WordAlloc.isSkip output15967 = false := by
  rw [output15967_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15967 input5750)).val
theorem input15968_def : input15968 = (.seq input15967 input5750) := by
  unfold input15968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15967 output5750)).val
theorem output15968_def : output15968 = (.seq output15967 output5750) := by
  unfold output15968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15968_skip : Flapjack.WordAlloc.isSkip output15968 = false := by
  rw [output15968_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15968 input5747)).val
theorem input15969_def : input15969 = (.seq input15968 input5747) := by
  unfold input15969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15968 output5747)).val
theorem output15969_def : output15969 = (.seq output15968 output5747) := by
  unfold output15969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15969_skip : Flapjack.WordAlloc.isSkip output15969 = false := by
  rw [output15969_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15969 input5736)).val
theorem input15970_def : input15970 = (.seq input15969 input5736) := by
  unfold input15970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15969)).val
theorem output15970_def : output15970 = (output15969) := by
  unfold output15970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15970_skip : Flapjack.WordAlloc.isSkip output15970 = false := by
  rw [output15970_def]
  exact output15969_skip


@[irreducible, cbv_opaque] def input15971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15970 input5735)).val
theorem input15971_def : input15971 = (.seq input15970 input5735) := by
  unfold input15971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15970 output5735)).val
theorem output15971_def : output15971 = (.seq output15970 output5735) := by
  unfold output15971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15971_skip : Flapjack.WordAlloc.isSkip output15971 = false := by
  rw [output15971_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15971 input5734)).val
theorem input15972_def : input15972 = (.seq input15971 input5734) := by
  unfold input15972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15971 output5734)).val
theorem output15972_def : output15972 = (.seq output15971 output5734) := by
  unfold output15972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15972_skip : Flapjack.WordAlloc.isSkip output15972 = false := by
  rw [output15972_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15972 input5731)).val
theorem input15973_def : input15973 = (.seq input15972 input5731) := by
  unfold input15973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15972 output5731)).val
theorem output15973_def : output15973 = (.seq output15972 output5731) := by
  unfold output15973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15973_skip : Flapjack.WordAlloc.isSkip output15973 = false := by
  rw [output15973_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15973 input5720)).val
theorem input15974_def : input15974 = (.seq input15973 input5720) := by
  unfold input15974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15973)).val
theorem output15974_def : output15974 = (output15973) := by
  unfold output15974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15974_skip : Flapjack.WordAlloc.isSkip output15974 = false := by
  rw [output15974_def]
  exact output15973_skip


@[irreducible, cbv_opaque] def input15975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15974 input5719)).val
theorem input15975_def : input15975 = (.seq input15974 input5719) := by
  unfold input15975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15974 output5719)).val
theorem output15975_def : output15975 = (.seq output15974 output5719) := by
  unfold output15975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15975_skip : Flapjack.WordAlloc.isSkip output15975 = false := by
  rw [output15975_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15975 input5718)).val
theorem input15976_def : input15976 = (.seq input15975 input5718) := by
  unfold input15976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15975 output5718)).val
theorem output15976_def : output15976 = (.seq output15975 output5718) := by
  unfold output15976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15976_skip : Flapjack.WordAlloc.isSkip output15976 = false := by
  rw [output15976_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15976 input5715)).val
theorem input15977_def : input15977 = (.seq input15976 input5715) := by
  unfold input15977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15976 output5715)).val
theorem output15977_def : output15977 = (.seq output15976 output5715) := by
  unfold output15977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15977_skip : Flapjack.WordAlloc.isSkip output15977 = false := by
  rw [output15977_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15977 input5704)).val
theorem input15978_def : input15978 = (.seq input15977 input5704) := by
  unfold input15978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15977)).val
theorem output15978_def : output15978 = (output15977) := by
  unfold output15978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15978_skip : Flapjack.WordAlloc.isSkip output15978 = false := by
  rw [output15978_def]
  exact output15977_skip


@[irreducible, cbv_opaque] def input15979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15978 input5703)).val
theorem input15979_def : input15979 = (.seq input15978 input5703) := by
  unfold input15979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15978 output5703)).val
theorem output15979_def : output15979 = (.seq output15978 output5703) := by
  unfold output15979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15979_skip : Flapjack.WordAlloc.isSkip output15979 = false := by
  rw [output15979_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15979 input5702)).val
theorem input15980_def : input15980 = (.seq input15979 input5702) := by
  unfold input15980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15979 output5702)).val
theorem output15980_def : output15980 = (.seq output15979 output5702) := by
  unfold output15980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15980_skip : Flapjack.WordAlloc.isSkip output15980 = false := by
  rw [output15980_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15980 input5699)).val
theorem input15981_def : input15981 = (.seq input15980 input5699) := by
  unfold input15981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15980 output5699)).val
theorem output15981_def : output15981 = (.seq output15980 output5699) := by
  unfold output15981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15981_skip : Flapjack.WordAlloc.isSkip output15981 = false := by
  rw [output15981_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15981 input5688)).val
theorem input15982_def : input15982 = (.seq input15981 input5688) := by
  unfold input15982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15981)).val
theorem output15982_def : output15982 = (output15981) := by
  unfold output15982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15982_skip : Flapjack.WordAlloc.isSkip output15982 = false := by
  rw [output15982_def]
  exact output15981_skip


@[irreducible, cbv_opaque] def input15983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15982 input5687)).val
theorem input15983_def : input15983 = (.seq input15982 input5687) := by
  unfold input15983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15982 output5687)).val
theorem output15983_def : output15983 = (.seq output15982 output5687) := by
  unfold output15983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15983_skip : Flapjack.WordAlloc.isSkip output15983 = false := by
  rw [output15983_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15983 input5686)).val
theorem input15984_def : input15984 = (.seq input15983 input5686) := by
  unfold input15984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15983 output5686)).val
theorem output15984_def : output15984 = (.seq output15983 output5686) := by
  unfold output15984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15984_skip : Flapjack.WordAlloc.isSkip output15984 = false := by
  rw [output15984_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15984 input5683)).val
theorem input15985_def : input15985 = (.seq input15984 input5683) := by
  unfold input15985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15984 output5683)).val
theorem output15985_def : output15985 = (.seq output15984 output5683) := by
  unfold output15985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15985_skip : Flapjack.WordAlloc.isSkip output15985 = false := by
  rw [output15985_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15985 input5672)).val
theorem input15986_def : input15986 = (.seq input15985 input5672) := by
  unfold input15986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15985)).val
theorem output15986_def : output15986 = (output15985) := by
  unfold output15986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15986_skip : Flapjack.WordAlloc.isSkip output15986 = false := by
  rw [output15986_def]
  exact output15985_skip


@[irreducible, cbv_opaque] def input15987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15986 input5671)).val
theorem input15987_def : input15987 = (.seq input15986 input5671) := by
  unfold input15987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15986 output5671)).val
theorem output15987_def : output15987 = (.seq output15986 output5671) := by
  unfold output15987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15987_skip : Flapjack.WordAlloc.isSkip output15987 = false := by
  rw [output15987_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15987 input5670)).val
theorem input15988_def : input15988 = (.seq input15987 input5670) := by
  unfold input15988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15987 output5670)).val
theorem output15988_def : output15988 = (.seq output15987 output5670) := by
  unfold output15988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15988_skip : Flapjack.WordAlloc.isSkip output15988 = false := by
  rw [output15988_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15988 input5667)).val
theorem input15989_def : input15989 = (.seq input15988 input5667) := by
  unfold input15989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15988 output5667)).val
theorem output15989_def : output15989 = (.seq output15988 output5667) := by
  unfold output15989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15989_skip : Flapjack.WordAlloc.isSkip output15989 = false := by
  rw [output15989_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15989 input5656)).val
theorem input15990_def : input15990 = (.seq input15989 input5656) := by
  unfold input15990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15989)).val
theorem output15990_def : output15990 = (output15989) := by
  unfold output15990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15990_skip : Flapjack.WordAlloc.isSkip output15990 = false := by
  rw [output15990_def]
  exact output15989_skip


@[irreducible, cbv_opaque] def input15991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15990 input5655)).val
theorem input15991_def : input15991 = (.seq input15990 input5655) := by
  unfold input15991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15990 output5655)).val
theorem output15991_def : output15991 = (.seq output15990 output5655) := by
  unfold output15991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15991_skip : Flapjack.WordAlloc.isSkip output15991 = false := by
  rw [output15991_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15991 input5654)).val
theorem input15992_def : input15992 = (.seq input15991 input5654) := by
  unfold input15992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15991 output5654)).val
theorem output15992_def : output15992 = (.seq output15991 output5654) := by
  unfold output15992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15992_skip : Flapjack.WordAlloc.isSkip output15992 = false := by
  rw [output15992_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15992 input5651)).val
theorem input15993_def : input15993 = (.seq input15992 input5651) := by
  unfold input15993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15992 output5651)).val
theorem output15993_def : output15993 = (.seq output15992 output5651) := by
  unfold output15993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15993_skip : Flapjack.WordAlloc.isSkip output15993 = false := by
  rw [output15993_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15993 input5640)).val
theorem input15994_def : input15994 = (.seq input15993 input5640) := by
  unfold input15994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15993)).val
theorem output15994_def : output15994 = (output15993) := by
  unfold output15994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15994_skip : Flapjack.WordAlloc.isSkip output15994 = false := by
  rw [output15994_def]
  exact output15993_skip


@[irreducible, cbv_opaque] def input15995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15994 input5639)).val
theorem input15995_def : input15995 = (.seq input15994 input5639) := by
  unfold input15995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15994 output5639)).val
theorem output15995_def : output15995 = (.seq output15994 output5639) := by
  unfold output15995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15995_skip : Flapjack.WordAlloc.isSkip output15995 = false := by
  rw [output15995_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15995 input5638)).val
theorem input15996_def : input15996 = (.seq input15995 input5638) := by
  unfold input15996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15995 output5638)).val
theorem output15996_def : output15996 = (.seq output15995 output5638) := by
  unfold output15996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15996_skip : Flapjack.WordAlloc.isSkip output15996 = false := by
  rw [output15996_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15996 input5635)).val
theorem input15997_def : input15997 = (.seq input15996 input5635) := by
  unfold input15997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15996 output5635)).val
theorem output15997_def : output15997 = (.seq output15996 output5635) := by
  unfold output15997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15997_skip : Flapjack.WordAlloc.isSkip output15997 = false := by
  rw [output15997_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input15998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15997 input5624)).val
theorem input15998_def : input15998 = (.seq input15997 input5624) := by
  unfold input15998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output15997)).val
theorem output15998_def : output15998 = (output15997) := by
  unfold output15998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15998_skip : Flapjack.WordAlloc.isSkip output15998 = false := by
  rw [output15998_def]
  exact output15997_skip


@[irreducible, cbv_opaque] def input15999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15998 input5623)).val
theorem input15999_def : input15999 = (.seq input15998 input5623) := by
  unfold input15999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output15999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15998 output5623)).val
theorem output15999_def : output15999 = (.seq output15998 output5623) := by
  unfold output15999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output15999_skip : Flapjack.WordAlloc.isSkip output15999 = false := by
  rw [output15999_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input15999 input5622)).val
theorem input16000_def : input16000 = (.seq input15999 input5622) := by
  unfold input16000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output15999 output5622)).val
theorem output16000_def : output16000 = (.seq output15999 output5622) := by
  unfold output16000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16000_skip : Flapjack.WordAlloc.isSkip output16000 = false := by
  rw [output16000_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16000 input5619)).val
theorem input16001_def : input16001 = (.seq input16000 input5619) := by
  unfold input16001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16000 output5619)).val
theorem output16001_def : output16001 = (.seq output16000 output5619) := by
  unfold output16001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16001_skip : Flapjack.WordAlloc.isSkip output16001 = false := by
  rw [output16001_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16001 input5608)).val
theorem input16002_def : input16002 = (.seq input16001 input5608) := by
  unfold input16002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16001)).val
theorem output16002_def : output16002 = (output16001) := by
  unfold output16002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16002_skip : Flapjack.WordAlloc.isSkip output16002 = false := by
  rw [output16002_def]
  exact output16001_skip


@[irreducible, cbv_opaque] def input16003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16002 input5607)).val
theorem input16003_def : input16003 = (.seq input16002 input5607) := by
  unfold input16003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16002 output5607)).val
theorem output16003_def : output16003 = (.seq output16002 output5607) := by
  unfold output16003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16003_skip : Flapjack.WordAlloc.isSkip output16003 = false := by
  rw [output16003_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16003 input5606)).val
theorem input16004_def : input16004 = (.seq input16003 input5606) := by
  unfold input16004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16003 output5606)).val
theorem output16004_def : output16004 = (.seq output16003 output5606) := by
  unfold output16004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16004_skip : Flapjack.WordAlloc.isSkip output16004 = false := by
  rw [output16004_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16004 input5603)).val
theorem input16005_def : input16005 = (.seq input16004 input5603) := by
  unfold input16005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16004 output5603)).val
theorem output16005_def : output16005 = (.seq output16004 output5603) := by
  unfold output16005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16005_skip : Flapjack.WordAlloc.isSkip output16005 = false := by
  rw [output16005_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16005 input5592)).val
theorem input16006_def : input16006 = (.seq input16005 input5592) := by
  unfold input16006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16005)).val
theorem output16006_def : output16006 = (output16005) := by
  unfold output16006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16006_skip : Flapjack.WordAlloc.isSkip output16006 = false := by
  rw [output16006_def]
  exact output16005_skip


@[irreducible, cbv_opaque] def input16007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16006 input5591)).val
theorem input16007_def : input16007 = (.seq input16006 input5591) := by
  unfold input16007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16006 output5591)).val
theorem output16007_def : output16007 = (.seq output16006 output5591) := by
  unfold output16007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16007_skip : Flapjack.WordAlloc.isSkip output16007 = false := by
  rw [output16007_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16007 input5590)).val
theorem input16008_def : input16008 = (.seq input16007 input5590) := by
  unfold input16008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16007 output5590)).val
theorem output16008_def : output16008 = (.seq output16007 output5590) := by
  unfold output16008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16008_skip : Flapjack.WordAlloc.isSkip output16008 = false := by
  rw [output16008_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16008 input5587)).val
theorem input16009_def : input16009 = (.seq input16008 input5587) := by
  unfold input16009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16008 output5587)).val
theorem output16009_def : output16009 = (.seq output16008 output5587) := by
  unfold output16009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16009_skip : Flapjack.WordAlloc.isSkip output16009 = false := by
  rw [output16009_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16009 input5576)).val
theorem input16010_def : input16010 = (.seq input16009 input5576) := by
  unfold input16010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16009)).val
theorem output16010_def : output16010 = (output16009) := by
  unfold output16010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16010_skip : Flapjack.WordAlloc.isSkip output16010 = false := by
  rw [output16010_def]
  exact output16009_skip


@[irreducible, cbv_opaque] def input16011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16010 input5575)).val
theorem input16011_def : input16011 = (.seq input16010 input5575) := by
  unfold input16011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16010 output5575)).val
theorem output16011_def : output16011 = (.seq output16010 output5575) := by
  unfold output16011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16011_skip : Flapjack.WordAlloc.isSkip output16011 = false := by
  rw [output16011_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16011 input5574)).val
theorem input16012_def : input16012 = (.seq input16011 input5574) := by
  unfold input16012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16011 output5574)).val
theorem output16012_def : output16012 = (.seq output16011 output5574) := by
  unfold output16012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16012_skip : Flapjack.WordAlloc.isSkip output16012 = false := by
  rw [output16012_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16012 input5571)).val
theorem input16013_def : input16013 = (.seq input16012 input5571) := by
  unfold input16013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16012 output5571)).val
theorem output16013_def : output16013 = (.seq output16012 output5571) := by
  unfold output16013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16013_skip : Flapjack.WordAlloc.isSkip output16013 = false := by
  rw [output16013_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16013 input5560)).val
theorem input16014_def : input16014 = (.seq input16013 input5560) := by
  unfold input16014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16013)).val
theorem output16014_def : output16014 = (output16013) := by
  unfold output16014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16014_skip : Flapjack.WordAlloc.isSkip output16014 = false := by
  rw [output16014_def]
  exact output16013_skip


@[irreducible, cbv_opaque] def input16015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16014 input5559)).val
theorem input16015_def : input16015 = (.seq input16014 input5559) := by
  unfold input16015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16014 output5559)).val
theorem output16015_def : output16015 = (.seq output16014 output5559) := by
  unfold output16015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16015_skip : Flapjack.WordAlloc.isSkip output16015 = false := by
  rw [output16015_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16015 input5558)).val
theorem input16016_def : input16016 = (.seq input16015 input5558) := by
  unfold input16016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16015 output5558)).val
theorem output16016_def : output16016 = (.seq output16015 output5558) := by
  unfold output16016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16016_skip : Flapjack.WordAlloc.isSkip output16016 = false := by
  rw [output16016_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16016 input5555)).val
theorem input16017_def : input16017 = (.seq input16016 input5555) := by
  unfold input16017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16016 output5555)).val
theorem output16017_def : output16017 = (.seq output16016 output5555) := by
  unfold output16017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16017_skip : Flapjack.WordAlloc.isSkip output16017 = false := by
  rw [output16017_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16017 input5544)).val
theorem input16018_def : input16018 = (.seq input16017 input5544) := by
  unfold input16018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16017)).val
theorem output16018_def : output16018 = (output16017) := by
  unfold output16018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16018_skip : Flapjack.WordAlloc.isSkip output16018 = false := by
  rw [output16018_def]
  exact output16017_skip


@[irreducible, cbv_opaque] def input16019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16018 input5543)).val
theorem input16019_def : input16019 = (.seq input16018 input5543) := by
  unfold input16019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16018 output5543)).val
theorem output16019_def : output16019 = (.seq output16018 output5543) := by
  unfold output16019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16019_skip : Flapjack.WordAlloc.isSkip output16019 = false := by
  rw [output16019_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16019 input5542)).val
theorem input16020_def : input16020 = (.seq input16019 input5542) := by
  unfold input16020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16019 output5542)).val
theorem output16020_def : output16020 = (.seq output16019 output5542) := by
  unfold output16020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16020_skip : Flapjack.WordAlloc.isSkip output16020 = false := by
  rw [output16020_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16020 input5539)).val
theorem input16021_def : input16021 = (.seq input16020 input5539) := by
  unfold input16021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16020 output5539)).val
theorem output16021_def : output16021 = (.seq output16020 output5539) := by
  unfold output16021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16021_skip : Flapjack.WordAlloc.isSkip output16021 = false := by
  rw [output16021_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16021 input5528)).val
theorem input16022_def : input16022 = (.seq input16021 input5528) := by
  unfold input16022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16021)).val
theorem output16022_def : output16022 = (output16021) := by
  unfold output16022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16022_skip : Flapjack.WordAlloc.isSkip output16022 = false := by
  rw [output16022_def]
  exact output16021_skip


@[irreducible, cbv_opaque] def input16023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16022 input5527)).val
theorem input16023_def : input16023 = (.seq input16022 input5527) := by
  unfold input16023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16022 output5527)).val
theorem output16023_def : output16023 = (.seq output16022 output5527) := by
  unfold output16023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16023_skip : Flapjack.WordAlloc.isSkip output16023 = false := by
  rw [output16023_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16023 input5526)).val
theorem input16024_def : input16024 = (.seq input16023 input5526) := by
  unfold input16024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16023 output5526)).val
theorem output16024_def : output16024 = (.seq output16023 output5526) := by
  unfold output16024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16024_skip : Flapjack.WordAlloc.isSkip output16024 = false := by
  rw [output16024_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16024 input5523)).val
theorem input16025_def : input16025 = (.seq input16024 input5523) := by
  unfold input16025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16024 output5523)).val
theorem output16025_def : output16025 = (.seq output16024 output5523) := by
  unfold output16025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16025_skip : Flapjack.WordAlloc.isSkip output16025 = false := by
  rw [output16025_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16025 input5512)).val
theorem input16026_def : input16026 = (.seq input16025 input5512) := by
  unfold input16026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16025)).val
theorem output16026_def : output16026 = (output16025) := by
  unfold output16026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16026_skip : Flapjack.WordAlloc.isSkip output16026 = false := by
  rw [output16026_def]
  exact output16025_skip


@[irreducible, cbv_opaque] def input16027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16026 input5511)).val
theorem input16027_def : input16027 = (.seq input16026 input5511) := by
  unfold input16027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16026 output5511)).val
theorem output16027_def : output16027 = (.seq output16026 output5511) := by
  unfold output16027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16027_skip : Flapjack.WordAlloc.isSkip output16027 = false := by
  rw [output16027_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16027 input5510)).val
theorem input16028_def : input16028 = (.seq input16027 input5510) := by
  unfold input16028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16027 output5510)).val
theorem output16028_def : output16028 = (.seq output16027 output5510) := by
  unfold output16028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16028_skip : Flapjack.WordAlloc.isSkip output16028 = false := by
  rw [output16028_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16028 input5507)).val
theorem input16029_def : input16029 = (.seq input16028 input5507) := by
  unfold input16029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16028 output5507)).val
theorem output16029_def : output16029 = (.seq output16028 output5507) := by
  unfold output16029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16029_skip : Flapjack.WordAlloc.isSkip output16029 = false := by
  rw [output16029_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16029 input5496)).val
theorem input16030_def : input16030 = (.seq input16029 input5496) := by
  unfold input16030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16029)).val
theorem output16030_def : output16030 = (output16029) := by
  unfold output16030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16030_skip : Flapjack.WordAlloc.isSkip output16030 = false := by
  rw [output16030_def]
  exact output16029_skip


@[irreducible, cbv_opaque] def input16031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16030 input5495)).val
theorem input16031_def : input16031 = (.seq input16030 input5495) := by
  unfold input16031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16030 output5495)).val
theorem output16031_def : output16031 = (.seq output16030 output5495) := by
  unfold output16031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16031_skip : Flapjack.WordAlloc.isSkip output16031 = false := by
  rw [output16031_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16031 input5494)).val
theorem input16032_def : input16032 = (.seq input16031 input5494) := by
  unfold input16032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16031 output5494)).val
theorem output16032_def : output16032 = (.seq output16031 output5494) := by
  unfold output16032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16032_skip : Flapjack.WordAlloc.isSkip output16032 = false := by
  rw [output16032_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16032 input5491)).val
theorem input16033_def : input16033 = (.seq input16032 input5491) := by
  unfold input16033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16032 output5491)).val
theorem output16033_def : output16033 = (.seq output16032 output5491) := by
  unfold output16033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16033_skip : Flapjack.WordAlloc.isSkip output16033 = false := by
  rw [output16033_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16033 input5480)).val
theorem input16034_def : input16034 = (.seq input16033 input5480) := by
  unfold input16034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16033)).val
theorem output16034_def : output16034 = (output16033) := by
  unfold output16034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16034_skip : Flapjack.WordAlloc.isSkip output16034 = false := by
  rw [output16034_def]
  exact output16033_skip


@[irreducible, cbv_opaque] def input16035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16034 input5479)).val
theorem input16035_def : input16035 = (.seq input16034 input5479) := by
  unfold input16035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16034 output5479)).val
theorem output16035_def : output16035 = (.seq output16034 output5479) := by
  unfold output16035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16035_skip : Flapjack.WordAlloc.isSkip output16035 = false := by
  rw [output16035_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16035 input5478)).val
theorem input16036_def : input16036 = (.seq input16035 input5478) := by
  unfold input16036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16035 output5478)).val
theorem output16036_def : output16036 = (.seq output16035 output5478) := by
  unfold output16036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16036_skip : Flapjack.WordAlloc.isSkip output16036 = false := by
  rw [output16036_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16036 input5475)).val
theorem input16037_def : input16037 = (.seq input16036 input5475) := by
  unfold input16037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16036 output5475)).val
theorem output16037_def : output16037 = (.seq output16036 output5475) := by
  unfold output16037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16037_skip : Flapjack.WordAlloc.isSkip output16037 = false := by
  rw [output16037_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16037 input5464)).val
theorem input16038_def : input16038 = (.seq input16037 input5464) := by
  unfold input16038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16037)).val
theorem output16038_def : output16038 = (output16037) := by
  unfold output16038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16038_skip : Flapjack.WordAlloc.isSkip output16038 = false := by
  rw [output16038_def]
  exact output16037_skip


@[irreducible, cbv_opaque] def input16039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16038 input5463)).val
theorem input16039_def : input16039 = (.seq input16038 input5463) := by
  unfold input16039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16038 output5463)).val
theorem output16039_def : output16039 = (.seq output16038 output5463) := by
  unfold output16039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16039_skip : Flapjack.WordAlloc.isSkip output16039 = false := by
  rw [output16039_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16039 input5462)).val
theorem input16040_def : input16040 = (.seq input16039 input5462) := by
  unfold input16040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16039 output5462)).val
theorem output16040_def : output16040 = (.seq output16039 output5462) := by
  unfold output16040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16040_skip : Flapjack.WordAlloc.isSkip output16040 = false := by
  rw [output16040_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16040 input5459)).val
theorem input16041_def : input16041 = (.seq input16040 input5459) := by
  unfold input16041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16040 output5459)).val
theorem output16041_def : output16041 = (.seq output16040 output5459) := by
  unfold output16041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16041_skip : Flapjack.WordAlloc.isSkip output16041 = false := by
  rw [output16041_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16041 input5448)).val
theorem input16042_def : input16042 = (.seq input16041 input5448) := by
  unfold input16042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16041)).val
theorem output16042_def : output16042 = (output16041) := by
  unfold output16042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16042_skip : Flapjack.WordAlloc.isSkip output16042 = false := by
  rw [output16042_def]
  exact output16041_skip


@[irreducible, cbv_opaque] def input16043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16042 input5447)).val
theorem input16043_def : input16043 = (.seq input16042 input5447) := by
  unfold input16043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16042 output5447)).val
theorem output16043_def : output16043 = (.seq output16042 output5447) := by
  unfold output16043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16043_skip : Flapjack.WordAlloc.isSkip output16043 = false := by
  rw [output16043_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16043 input5446)).val
theorem input16044_def : input16044 = (.seq input16043 input5446) := by
  unfold input16044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16043 output5446)).val
theorem output16044_def : output16044 = (.seq output16043 output5446) := by
  unfold output16044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16044_skip : Flapjack.WordAlloc.isSkip output16044 = false := by
  rw [output16044_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16044 input5443)).val
theorem input16045_def : input16045 = (.seq input16044 input5443) := by
  unfold input16045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16044 output5443)).val
theorem output16045_def : output16045 = (.seq output16044 output5443) := by
  unfold output16045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16045_skip : Flapjack.WordAlloc.isSkip output16045 = false := by
  rw [output16045_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16045 input5432)).val
theorem input16046_def : input16046 = (.seq input16045 input5432) := by
  unfold input16046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16045)).val
theorem output16046_def : output16046 = (output16045) := by
  unfold output16046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16046_skip : Flapjack.WordAlloc.isSkip output16046 = false := by
  rw [output16046_def]
  exact output16045_skip


@[irreducible, cbv_opaque] def input16047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16046 input5431)).val
theorem input16047_def : input16047 = (.seq input16046 input5431) := by
  unfold input16047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16046 output5431)).val
theorem output16047_def : output16047 = (.seq output16046 output5431) := by
  unfold output16047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16047_skip : Flapjack.WordAlloc.isSkip output16047 = false := by
  rw [output16047_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16047 input5430)).val
theorem input16048_def : input16048 = (.seq input16047 input5430) := by
  unfold input16048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16047 output5430)).val
theorem output16048_def : output16048 = (.seq output16047 output5430) := by
  unfold output16048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16048_skip : Flapjack.WordAlloc.isSkip output16048 = false := by
  rw [output16048_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16048 input5427)).val
theorem input16049_def : input16049 = (.seq input16048 input5427) := by
  unfold input16049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16048 output5427)).val
theorem output16049_def : output16049 = (.seq output16048 output5427) := by
  unfold output16049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16049_skip : Flapjack.WordAlloc.isSkip output16049 = false := by
  rw [output16049_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16049 input5416)).val
theorem input16050_def : input16050 = (.seq input16049 input5416) := by
  unfold input16050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16049)).val
theorem output16050_def : output16050 = (output16049) := by
  unfold output16050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16050_skip : Flapjack.WordAlloc.isSkip output16050 = false := by
  rw [output16050_def]
  exact output16049_skip


@[irreducible, cbv_opaque] def input16051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16050 input5415)).val
theorem input16051_def : input16051 = (.seq input16050 input5415) := by
  unfold input16051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16050 output5415)).val
theorem output16051_def : output16051 = (.seq output16050 output5415) := by
  unfold output16051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16051_skip : Flapjack.WordAlloc.isSkip output16051 = false := by
  rw [output16051_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16051 input5414)).val
theorem input16052_def : input16052 = (.seq input16051 input5414) := by
  unfold input16052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16051 output5414)).val
theorem output16052_def : output16052 = (.seq output16051 output5414) := by
  unfold output16052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16052_skip : Flapjack.WordAlloc.isSkip output16052 = false := by
  rw [output16052_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16052 input5411)).val
theorem input16053_def : input16053 = (.seq input16052 input5411) := by
  unfold input16053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16052 output5411)).val
theorem output16053_def : output16053 = (.seq output16052 output5411) := by
  unfold output16053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16053_skip : Flapjack.WordAlloc.isSkip output16053 = false := by
  rw [output16053_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16053 input5400)).val
theorem input16054_def : input16054 = (.seq input16053 input5400) := by
  unfold input16054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16053)).val
theorem output16054_def : output16054 = (output16053) := by
  unfold output16054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16054_skip : Flapjack.WordAlloc.isSkip output16054 = false := by
  rw [output16054_def]
  exact output16053_skip


@[irreducible, cbv_opaque] def input16055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16054 input5399)).val
theorem input16055_def : input16055 = (.seq input16054 input5399) := by
  unfold input16055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16054 output5399)).val
theorem output16055_def : output16055 = (.seq output16054 output5399) := by
  unfold output16055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16055_skip : Flapjack.WordAlloc.isSkip output16055 = false := by
  rw [output16055_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16055 input5398)).val
theorem input16056_def : input16056 = (.seq input16055 input5398) := by
  unfold input16056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16055 output5398)).val
theorem output16056_def : output16056 = (.seq output16055 output5398) := by
  unfold output16056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16056_skip : Flapjack.WordAlloc.isSkip output16056 = false := by
  rw [output16056_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16056 input5395)).val
theorem input16057_def : input16057 = (.seq input16056 input5395) := by
  unfold input16057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16056 output5395)).val
theorem output16057_def : output16057 = (.seq output16056 output5395) := by
  unfold output16057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16057_skip : Flapjack.WordAlloc.isSkip output16057 = false := by
  rw [output16057_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16057 input5384)).val
theorem input16058_def : input16058 = (.seq input16057 input5384) := by
  unfold input16058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16057)).val
theorem output16058_def : output16058 = (output16057) := by
  unfold output16058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16058_skip : Flapjack.WordAlloc.isSkip output16058 = false := by
  rw [output16058_def]
  exact output16057_skip


@[irreducible, cbv_opaque] def input16059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16058 input5383)).val
theorem input16059_def : input16059 = (.seq input16058 input5383) := by
  unfold input16059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16058 output5383)).val
theorem output16059_def : output16059 = (.seq output16058 output5383) := by
  unfold output16059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16059_skip : Flapjack.WordAlloc.isSkip output16059 = false := by
  rw [output16059_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16059 input5382)).val
theorem input16060_def : input16060 = (.seq input16059 input5382) := by
  unfold input16060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16059 output5382)).val
theorem output16060_def : output16060 = (.seq output16059 output5382) := by
  unfold output16060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16060_skip : Flapjack.WordAlloc.isSkip output16060 = false := by
  rw [output16060_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16060 input5379)).val
theorem input16061_def : input16061 = (.seq input16060 input5379) := by
  unfold input16061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16060 output5379)).val
theorem output16061_def : output16061 = (.seq output16060 output5379) := by
  unfold output16061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16061_skip : Flapjack.WordAlloc.isSkip output16061 = false := by
  rw [output16061_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16061 input5368)).val
theorem input16062_def : input16062 = (.seq input16061 input5368) := by
  unfold input16062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16061)).val
theorem output16062_def : output16062 = (output16061) := by
  unfold output16062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16062_skip : Flapjack.WordAlloc.isSkip output16062 = false := by
  rw [output16062_def]
  exact output16061_skip


@[irreducible, cbv_opaque] def input16063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16062 input5367)).val
theorem input16063_def : input16063 = (.seq input16062 input5367) := by
  unfold input16063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16062 output5367)).val
theorem output16063_def : output16063 = (.seq output16062 output5367) := by
  unfold output16063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16063_skip : Flapjack.WordAlloc.isSkip output16063 = false := by
  rw [output16063_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16063 input5366)).val
theorem input16064_def : input16064 = (.seq input16063 input5366) := by
  unfold input16064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16063 output5366)).val
theorem output16064_def : output16064 = (.seq output16063 output5366) := by
  unfold output16064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16064_skip : Flapjack.WordAlloc.isSkip output16064 = false := by
  rw [output16064_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16064 input5363)).val
theorem input16065_def : input16065 = (.seq input16064 input5363) := by
  unfold input16065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16064 output5363)).val
theorem output16065_def : output16065 = (.seq output16064 output5363) := by
  unfold output16065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16065_skip : Flapjack.WordAlloc.isSkip output16065 = false := by
  rw [output16065_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16065 input5352)).val
theorem input16066_def : input16066 = (.seq input16065 input5352) := by
  unfold input16066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16065)).val
theorem output16066_def : output16066 = (output16065) := by
  unfold output16066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16066_skip : Flapjack.WordAlloc.isSkip output16066 = false := by
  rw [output16066_def]
  exact output16065_skip


@[irreducible, cbv_opaque] def input16067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16066 input5351)).val
theorem input16067_def : input16067 = (.seq input16066 input5351) := by
  unfold input16067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16066 output5351)).val
theorem output16067_def : output16067 = (.seq output16066 output5351) := by
  unfold output16067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16067_skip : Flapjack.WordAlloc.isSkip output16067 = false := by
  rw [output16067_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16067 input5350)).val
theorem input16068_def : input16068 = (.seq input16067 input5350) := by
  unfold input16068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16067 output5350)).val
theorem output16068_def : output16068 = (.seq output16067 output5350) := by
  unfold output16068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16068_skip : Flapjack.WordAlloc.isSkip output16068 = false := by
  rw [output16068_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16068 input5347)).val
theorem input16069_def : input16069 = (.seq input16068 input5347) := by
  unfold input16069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16068 output5347)).val
theorem output16069_def : output16069 = (.seq output16068 output5347) := by
  unfold output16069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16069_skip : Flapjack.WordAlloc.isSkip output16069 = false := by
  rw [output16069_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16069 input5336)).val
theorem input16070_def : input16070 = (.seq input16069 input5336) := by
  unfold input16070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16069)).val
theorem output16070_def : output16070 = (output16069) := by
  unfold output16070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16070_skip : Flapjack.WordAlloc.isSkip output16070 = false := by
  rw [output16070_def]
  exact output16069_skip


@[irreducible, cbv_opaque] def input16071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16070 input5335)).val
theorem input16071_def : input16071 = (.seq input16070 input5335) := by
  unfold input16071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16070 output5335)).val
theorem output16071_def : output16071 = (.seq output16070 output5335) := by
  unfold output16071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16071_skip : Flapjack.WordAlloc.isSkip output16071 = false := by
  rw [output16071_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16071 input5334)).val
theorem input16072_def : input16072 = (.seq input16071 input5334) := by
  unfold input16072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16071 output5334)).val
theorem output16072_def : output16072 = (.seq output16071 output5334) := by
  unfold output16072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16072_skip : Flapjack.WordAlloc.isSkip output16072 = false := by
  rw [output16072_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16072 input5331)).val
theorem input16073_def : input16073 = (.seq input16072 input5331) := by
  unfold input16073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16072 output5331)).val
theorem output16073_def : output16073 = (.seq output16072 output5331) := by
  unfold output16073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16073_skip : Flapjack.WordAlloc.isSkip output16073 = false := by
  rw [output16073_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16073 input5320)).val
theorem input16074_def : input16074 = (.seq input16073 input5320) := by
  unfold input16074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16073)).val
theorem output16074_def : output16074 = (output16073) := by
  unfold output16074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16074_skip : Flapjack.WordAlloc.isSkip output16074 = false := by
  rw [output16074_def]
  exact output16073_skip


@[irreducible, cbv_opaque] def input16075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16074 input5319)).val
theorem input16075_def : input16075 = (.seq input16074 input5319) := by
  unfold input16075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16074 output5319)).val
theorem output16075_def : output16075 = (.seq output16074 output5319) := by
  unfold output16075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16075_skip : Flapjack.WordAlloc.isSkip output16075 = false := by
  rw [output16075_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16075 input5318)).val
theorem input16076_def : input16076 = (.seq input16075 input5318) := by
  unfold input16076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16075 output5318)).val
theorem output16076_def : output16076 = (.seq output16075 output5318) := by
  unfold output16076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16076_skip : Flapjack.WordAlloc.isSkip output16076 = false := by
  rw [output16076_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16076 input5315)).val
theorem input16077_def : input16077 = (.seq input16076 input5315) := by
  unfold input16077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16076 output5315)).val
theorem output16077_def : output16077 = (.seq output16076 output5315) := by
  unfold output16077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16077_skip : Flapjack.WordAlloc.isSkip output16077 = false := by
  rw [output16077_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16077 input5304)).val
theorem input16078_def : input16078 = (.seq input16077 input5304) := by
  unfold input16078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16077)).val
theorem output16078_def : output16078 = (output16077) := by
  unfold output16078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16078_skip : Flapjack.WordAlloc.isSkip output16078 = false := by
  rw [output16078_def]
  exact output16077_skip


@[irreducible, cbv_opaque] def input16079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16078 input5303)).val
theorem input16079_def : input16079 = (.seq input16078 input5303) := by
  unfold input16079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16078 output5303)).val
theorem output16079_def : output16079 = (.seq output16078 output5303) := by
  unfold output16079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16079_skip : Flapjack.WordAlloc.isSkip output16079 = false := by
  rw [output16079_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16079 input5302)).val
theorem input16080_def : input16080 = (.seq input16079 input5302) := by
  unfold input16080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16079 output5302)).val
theorem output16080_def : output16080 = (.seq output16079 output5302) := by
  unfold output16080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16080_skip : Flapjack.WordAlloc.isSkip output16080 = false := by
  rw [output16080_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16080 input5299)).val
theorem input16081_def : input16081 = (.seq input16080 input5299) := by
  unfold input16081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16080 output5299)).val
theorem output16081_def : output16081 = (.seq output16080 output5299) := by
  unfold output16081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16081_skip : Flapjack.WordAlloc.isSkip output16081 = false := by
  rw [output16081_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16081 input5288)).val
theorem input16082_def : input16082 = (.seq input16081 input5288) := by
  unfold input16082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16081)).val
theorem output16082_def : output16082 = (output16081) := by
  unfold output16082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16082_skip : Flapjack.WordAlloc.isSkip output16082 = false := by
  rw [output16082_def]
  exact output16081_skip


@[irreducible, cbv_opaque] def input16083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16082 input5287)).val
theorem input16083_def : input16083 = (.seq input16082 input5287) := by
  unfold input16083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16082 output5287)).val
theorem output16083_def : output16083 = (.seq output16082 output5287) := by
  unfold output16083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16083_skip : Flapjack.WordAlloc.isSkip output16083 = false := by
  rw [output16083_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16083 input5286)).val
theorem input16084_def : input16084 = (.seq input16083 input5286) := by
  unfold input16084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16083 output5286)).val
theorem output16084_def : output16084 = (.seq output16083 output5286) := by
  unfold output16084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16084_skip : Flapjack.WordAlloc.isSkip output16084 = false := by
  rw [output16084_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16084 input5283)).val
theorem input16085_def : input16085 = (.seq input16084 input5283) := by
  unfold input16085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16084 output5283)).val
theorem output16085_def : output16085 = (.seq output16084 output5283) := by
  unfold output16085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16085_skip : Flapjack.WordAlloc.isSkip output16085 = false := by
  rw [output16085_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16085 input5272)).val
theorem input16086_def : input16086 = (.seq input16085 input5272) := by
  unfold input16086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16085)).val
theorem output16086_def : output16086 = (output16085) := by
  unfold output16086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16086_skip : Flapjack.WordAlloc.isSkip output16086 = false := by
  rw [output16086_def]
  exact output16085_skip


@[irreducible, cbv_opaque] def input16087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16086 input5271)).val
theorem input16087_def : input16087 = (.seq input16086 input5271) := by
  unfold input16087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16086 output5271)).val
theorem output16087_def : output16087 = (.seq output16086 output5271) := by
  unfold output16087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16087_skip : Flapjack.WordAlloc.isSkip output16087 = false := by
  rw [output16087_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16087 input5270)).val
theorem input16088_def : input16088 = (.seq input16087 input5270) := by
  unfold input16088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16087 output5270)).val
theorem output16088_def : output16088 = (.seq output16087 output5270) := by
  unfold output16088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16088_skip : Flapjack.WordAlloc.isSkip output16088 = false := by
  rw [output16088_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16088 input5267)).val
theorem input16089_def : input16089 = (.seq input16088 input5267) := by
  unfold input16089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16088 output5267)).val
theorem output16089_def : output16089 = (.seq output16088 output5267) := by
  unfold output16089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16089_skip : Flapjack.WordAlloc.isSkip output16089 = false := by
  rw [output16089_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16089 input5256)).val
theorem input16090_def : input16090 = (.seq input16089 input5256) := by
  unfold input16090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16089)).val
theorem output16090_def : output16090 = (output16089) := by
  unfold output16090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16090_skip : Flapjack.WordAlloc.isSkip output16090 = false := by
  rw [output16090_def]
  exact output16089_skip


@[irreducible, cbv_opaque] def input16091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16090 input5255)).val
theorem input16091_def : input16091 = (.seq input16090 input5255) := by
  unfold input16091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16090 output5255)).val
theorem output16091_def : output16091 = (.seq output16090 output5255) := by
  unfold output16091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16091_skip : Flapjack.WordAlloc.isSkip output16091 = false := by
  rw [output16091_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16091 input5254)).val
theorem input16092_def : input16092 = (.seq input16091 input5254) := by
  unfold input16092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16091 output5254)).val
theorem output16092_def : output16092 = (.seq output16091 output5254) := by
  unfold output16092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16092_skip : Flapjack.WordAlloc.isSkip output16092 = false := by
  rw [output16092_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16092 input5251)).val
theorem input16093_def : input16093 = (.seq input16092 input5251) := by
  unfold input16093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16092 output5251)).val
theorem output16093_def : output16093 = (.seq output16092 output5251) := by
  unfold output16093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16093_skip : Flapjack.WordAlloc.isSkip output16093 = false := by
  rw [output16093_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16093 input5240)).val
theorem input16094_def : input16094 = (.seq input16093 input5240) := by
  unfold input16094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16093)).val
theorem output16094_def : output16094 = (output16093) := by
  unfold output16094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16094_skip : Flapjack.WordAlloc.isSkip output16094 = false := by
  rw [output16094_def]
  exact output16093_skip


@[irreducible, cbv_opaque] def input16095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16094 input5239)).val
theorem input16095_def : input16095 = (.seq input16094 input5239) := by
  unfold input16095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16094 output5239)).val
theorem output16095_def : output16095 = (.seq output16094 output5239) := by
  unfold output16095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16095_skip : Flapjack.WordAlloc.isSkip output16095 = false := by
  rw [output16095_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16095 input5238)).val
theorem input16096_def : input16096 = (.seq input16095 input5238) := by
  unfold input16096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16095 output5238)).val
theorem output16096_def : output16096 = (.seq output16095 output5238) := by
  unfold output16096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16096_skip : Flapjack.WordAlloc.isSkip output16096 = false := by
  rw [output16096_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16096 input5235)).val
theorem input16097_def : input16097 = (.seq input16096 input5235) := by
  unfold input16097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16096 output5235)).val
theorem output16097_def : output16097 = (.seq output16096 output5235) := by
  unfold output16097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16097_skip : Flapjack.WordAlloc.isSkip output16097 = false := by
  rw [output16097_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16097 input5224)).val
theorem input16098_def : input16098 = (.seq input16097 input5224) := by
  unfold input16098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16097)).val
theorem output16098_def : output16098 = (output16097) := by
  unfold output16098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16098_skip : Flapjack.WordAlloc.isSkip output16098 = false := by
  rw [output16098_def]
  exact output16097_skip


@[irreducible, cbv_opaque] def input16099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16098 input5223)).val
theorem input16099_def : input16099 = (.seq input16098 input5223) := by
  unfold input16099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16098 output5223)).val
theorem output16099_def : output16099 = (.seq output16098 output5223) := by
  unfold output16099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16099_skip : Flapjack.WordAlloc.isSkip output16099 = false := by
  rw [output16099_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16099 input5222)).val
theorem input16100_def : input16100 = (.seq input16099 input5222) := by
  unfold input16100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16099 output5222)).val
theorem output16100_def : output16100 = (.seq output16099 output5222) := by
  unfold output16100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16100_skip : Flapjack.WordAlloc.isSkip output16100 = false := by
  rw [output16100_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16100 input5219)).val
theorem input16101_def : input16101 = (.seq input16100 input5219) := by
  unfold input16101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16100 output5219)).val
theorem output16101_def : output16101 = (.seq output16100 output5219) := by
  unfold output16101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16101_skip : Flapjack.WordAlloc.isSkip output16101 = false := by
  rw [output16101_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16101 input5208)).val
theorem input16102_def : input16102 = (.seq input16101 input5208) := by
  unfold input16102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16101)).val
theorem output16102_def : output16102 = (output16101) := by
  unfold output16102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16102_skip : Flapjack.WordAlloc.isSkip output16102 = false := by
  rw [output16102_def]
  exact output16101_skip


@[irreducible, cbv_opaque] def input16103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16102 input5207)).val
theorem input16103_def : input16103 = (.seq input16102 input5207) := by
  unfold input16103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16102 output5207)).val
theorem output16103_def : output16103 = (.seq output16102 output5207) := by
  unfold output16103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16103_skip : Flapjack.WordAlloc.isSkip output16103 = false := by
  rw [output16103_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16103 input5206)).val
theorem input16104_def : input16104 = (.seq input16103 input5206) := by
  unfold input16104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16103 output5206)).val
theorem output16104_def : output16104 = (.seq output16103 output5206) := by
  unfold output16104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16104_skip : Flapjack.WordAlloc.isSkip output16104 = false := by
  rw [output16104_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16104 input5203)).val
theorem input16105_def : input16105 = (.seq input16104 input5203) := by
  unfold input16105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16104 output5203)).val
theorem output16105_def : output16105 = (.seq output16104 output5203) := by
  unfold output16105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16105_skip : Flapjack.WordAlloc.isSkip output16105 = false := by
  rw [output16105_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16105 input5192)).val
theorem input16106_def : input16106 = (.seq input16105 input5192) := by
  unfold input16106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16105)).val
theorem output16106_def : output16106 = (output16105) := by
  unfold output16106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16106_skip : Flapjack.WordAlloc.isSkip output16106 = false := by
  rw [output16106_def]
  exact output16105_skip


@[irreducible, cbv_opaque] def input16107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16106 input5191)).val
theorem input16107_def : input16107 = (.seq input16106 input5191) := by
  unfold input16107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16106 output5191)).val
theorem output16107_def : output16107 = (.seq output16106 output5191) := by
  unfold output16107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16107_skip : Flapjack.WordAlloc.isSkip output16107 = false := by
  rw [output16107_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16107 input5190)).val
theorem input16108_def : input16108 = (.seq input16107 input5190) := by
  unfold input16108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16107 output5190)).val
theorem output16108_def : output16108 = (.seq output16107 output5190) := by
  unfold output16108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16108_skip : Flapjack.WordAlloc.isSkip output16108 = false := by
  rw [output16108_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16108 input5187)).val
theorem input16109_def : input16109 = (.seq input16108 input5187) := by
  unfold input16109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16108 output5187)).val
theorem output16109_def : output16109 = (.seq output16108 output5187) := by
  unfold output16109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16109_skip : Flapjack.WordAlloc.isSkip output16109 = false := by
  rw [output16109_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16109 input5176)).val
theorem input16110_def : input16110 = (.seq input16109 input5176) := by
  unfold input16110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16109)).val
theorem output16110_def : output16110 = (output16109) := by
  unfold output16110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16110_skip : Flapjack.WordAlloc.isSkip output16110 = false := by
  rw [output16110_def]
  exact output16109_skip


@[irreducible, cbv_opaque] def input16111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16110 input5175)).val
theorem input16111_def : input16111 = (.seq input16110 input5175) := by
  unfold input16111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16110 output5175)).val
theorem output16111_def : output16111 = (.seq output16110 output5175) := by
  unfold output16111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16111_skip : Flapjack.WordAlloc.isSkip output16111 = false := by
  rw [output16111_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16111 input5174)).val
theorem input16112_def : input16112 = (.seq input16111 input5174) := by
  unfold input16112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16111 output5174)).val
theorem output16112_def : output16112 = (.seq output16111 output5174) := by
  unfold output16112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16112_skip : Flapjack.WordAlloc.isSkip output16112 = false := by
  rw [output16112_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16112 input5171)).val
theorem input16113_def : input16113 = (.seq input16112 input5171) := by
  unfold input16113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16112 output5171)).val
theorem output16113_def : output16113 = (.seq output16112 output5171) := by
  unfold output16113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16113_skip : Flapjack.WordAlloc.isSkip output16113 = false := by
  rw [output16113_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16113 input5160)).val
theorem input16114_def : input16114 = (.seq input16113 input5160) := by
  unfold input16114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16113)).val
theorem output16114_def : output16114 = (output16113) := by
  unfold output16114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16114_skip : Flapjack.WordAlloc.isSkip output16114 = false := by
  rw [output16114_def]
  exact output16113_skip


@[irreducible, cbv_opaque] def input16115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16114 input5159)).val
theorem input16115_def : input16115 = (.seq input16114 input5159) := by
  unfold input16115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16114 output5159)).val
theorem output16115_def : output16115 = (.seq output16114 output5159) := by
  unfold output16115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16115_skip : Flapjack.WordAlloc.isSkip output16115 = false := by
  rw [output16115_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16115 input5158)).val
theorem input16116_def : input16116 = (.seq input16115 input5158) := by
  unfold input16116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16115 output5158)).val
theorem output16116_def : output16116 = (.seq output16115 output5158) := by
  unfold output16116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16116_skip : Flapjack.WordAlloc.isSkip output16116 = false := by
  rw [output16116_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16116 input5155)).val
theorem input16117_def : input16117 = (.seq input16116 input5155) := by
  unfold input16117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16116 output5155)).val
theorem output16117_def : output16117 = (.seq output16116 output5155) := by
  unfold output16117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16117_skip : Flapjack.WordAlloc.isSkip output16117 = false := by
  rw [output16117_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16117 input5144)).val
theorem input16118_def : input16118 = (.seq input16117 input5144) := by
  unfold input16118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16117)).val
theorem output16118_def : output16118 = (output16117) := by
  unfold output16118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16118_skip : Flapjack.WordAlloc.isSkip output16118 = false := by
  rw [output16118_def]
  exact output16117_skip


@[irreducible, cbv_opaque] def input16119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16118 input5143)).val
theorem input16119_def : input16119 = (.seq input16118 input5143) := by
  unfold input16119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16118 output5143)).val
theorem output16119_def : output16119 = (.seq output16118 output5143) := by
  unfold output16119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16119_skip : Flapjack.WordAlloc.isSkip output16119 = false := by
  rw [output16119_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16119 input5142)).val
theorem input16120_def : input16120 = (.seq input16119 input5142) := by
  unfold input16120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16119 output5142)).val
theorem output16120_def : output16120 = (.seq output16119 output5142) := by
  unfold output16120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16120_skip : Flapjack.WordAlloc.isSkip output16120 = false := by
  rw [output16120_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16120 input5139)).val
theorem input16121_def : input16121 = (.seq input16120 input5139) := by
  unfold input16121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16120 output5139)).val
theorem output16121_def : output16121 = (.seq output16120 output5139) := by
  unfold output16121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16121_skip : Flapjack.WordAlloc.isSkip output16121 = false := by
  rw [output16121_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16121 input5128)).val
theorem input16122_def : input16122 = (.seq input16121 input5128) := by
  unfold input16122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16121)).val
theorem output16122_def : output16122 = (output16121) := by
  unfold output16122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16122_skip : Flapjack.WordAlloc.isSkip output16122 = false := by
  rw [output16122_def]
  exact output16121_skip


@[irreducible, cbv_opaque] def input16123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16122 input5127)).val
theorem input16123_def : input16123 = (.seq input16122 input5127) := by
  unfold input16123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16122 output5127)).val
theorem output16123_def : output16123 = (.seq output16122 output5127) := by
  unfold output16123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16123_skip : Flapjack.WordAlloc.isSkip output16123 = false := by
  rw [output16123_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16123 input5126)).val
theorem input16124_def : input16124 = (.seq input16123 input5126) := by
  unfold input16124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16123 output5126)).val
theorem output16124_def : output16124 = (.seq output16123 output5126) := by
  unfold output16124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16124_skip : Flapjack.WordAlloc.isSkip output16124 = false := by
  rw [output16124_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16124 input5123)).val
theorem input16125_def : input16125 = (.seq input16124 input5123) := by
  unfold input16125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16124 output5123)).val
theorem output16125_def : output16125 = (.seq output16124 output5123) := by
  unfold output16125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16125_skip : Flapjack.WordAlloc.isSkip output16125 = false := by
  rw [output16125_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input16126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16125 input5112)).val
theorem input16126_def : input16126 = (.seq input16125 input5112) := by
  unfold input16126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output16125)).val
theorem output16126_def : output16126 = (output16125) := by
  unfold output16126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16126_skip : Flapjack.WordAlloc.isSkip output16126 = false := by
  rw [output16126_def]
  exact output16125_skip


@[irreducible, cbv_opaque] def input16127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input16126 input5111)).val
theorem input16127_def : input16127 = (.seq input16126 input5111) := by
  unfold input16127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output16127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output16126 output5111)).val
theorem output16127_def : output16127 = (.seq output16126 output5111) := by
  unfold output16127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output16127_skip : Flapjack.WordAlloc.isSkip output16127 = false := by
  rw [output16127_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages713.Parallel
