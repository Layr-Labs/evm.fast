import InitECandidate.Solver.MemSafe.SeqCost.Reads
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
def scaledAddr (B : ExpHOL 64) (i : MlS) (k : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Option (BitVec 64) :=
  match baseVal s B,wordLocal s i with
  | some b,some v => some (b+v*k)
  | _,_ => none

theorem scaledAddr_step {B : ExpHOL 64} {i : MlS} {s t : PanSemStateFiniteExact 64 σ}
    {k w v d : BitVec 64} (hw : scaledAddr B i k s = some w)
    (hv : s.locals.lookup i = some (.val (.word v)))
    (ht : t.locals.lookup i = some (.val (.word (v+d)))) (hB : baseVal t B = baseVal s B) :
    scaledAddr B i k t = some (w+d*k) := by
  unfold scaledAddr at hw ⊢
  rw [hB]
  have hv' : wordLocal s i = some v := by simp [wordLocal,hv]
  have ht' : wordLocal t i = some (v+d) := by simp [wordLocal,ht]
  rw [hv'] at hw
  rw [ht']
  cases hb : baseVal s B with
  | none => rw [hb] at hw; cases hw
  | some b =>
      rw [hb] at hw
      simp only [Option.some.injEq] at hw ⊢
      rw [← hw,BitVec.add_mul,BitVec.add_assoc]
theorem eval_scaledAddr {s : PanSemStateFiniteExact 64 σ} (inst : DecidablePred s.toExact.memaddrs)
    {i : MlS} {B : ExpHOL 64} {k w : BitVec 64} (hB : isBase i B = true)
    (h : @evalHOLExact 64 σ _ s.toExact inst (.op .add [B,.panop .mul [.var .local i,.const k]]) =
      some (.val (.word w))) : scaledAddr B i k s = some w := by
  unfold isBase at hB
  split at hB
  · rename_i c
    cases hi : s.locals.lookup i with
    | none => simp [evalHOLExact,evalListHOLExact,hi] at h
    | some vi =>
      rcases vi with ⟨⟨v⟩⟩ | _ | _ <;>
        simp [evalHOLExact,evalListHOLExact,hi,valueIsWord,valueWord,wordOpHOL,wordOp,panOpHOL] at h
      simp [scaledAddr,baseVal,wordLocal,hi,h]
  · rename_i b
    cases hb : s.locals.lookup b with
    | none => simp [evalHOLExact,evalListHOLExact,hb] at h
    | some vb =>
      cases hi : s.locals.lookup i with
      | none => simp [evalHOLExact,evalListHOLExact,hb,hi] at h
      | some vi =>
        rcases vb with ⟨⟨x⟩⟩ | _ | _ <;> rcases vi with ⟨⟨v⟩⟩ | _ | _ <;>
          simp [evalHOLExact,evalListHOLExact,hb,hi,valueIsWord,valueWord,wordOpHOL,wordOp,panOpHOL] at h
        simp [scaledAddr,baseVal,wordLocal,hb,hi,h]
  · cases hB
#print axioms eval_scaledAddr
#print axioms scaledAddr_step
end InitECandidate.Solver.MemSafe.PairCost.Read
