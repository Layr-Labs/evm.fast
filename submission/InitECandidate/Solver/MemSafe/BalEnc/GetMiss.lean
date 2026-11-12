import InitECandidate.Solver.MemSafe.BalEnc.Defs
import InitECandidate.Solver.Spec.Mpt.Leaves.Nodedb
import InitECandidate.Solver.MemSafe.Bal.Get

set_option autoImplicit false

/-!
# `htab_get` on a miss returns `<0, 0>`

`funSpec_get_miss`: a returned pair with first word `0` has second word `0` (every `return` of
`htab_get` is `<0, 0>` or `<1, ...>`). With `Bal.funSpec_get_fits` this says that the second word
is a typed pointer when found and `0` otherwise.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

def HgMiss (v : ValueHOL 64) : Prop :=
  ∀ a b : BitVec 64, v = .rStruct [.val (.word a), .val (.word b)] → a = 0 → b = 0

theorem hgMiss_zero {t : State σ} {v : ValueHOL 64} (hv : ev t (.rstruct [cw 0, cw 0]) = some v) :
    HgMiss v := by
  intro a b hab ha
  rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil))] at hv
  rw [← Option.some.inj hv] at hab
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at hab
  exact hab.2.symm

theorem funSpec_get_miss (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_get") (fun vs s r _ => ∀ v, r = .returned v → HgMiss v) := by
  refine FunSpec.mono (R := fun vs s r _ => ∀ v, r = .returned v → HgMiss v)
    (funSpec_of_hoare (R := fun vs s v _ => HgMiss v) ?_) fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_htab_get (by decide) hl
  have keepD : ∀ {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64},
      Hoare σ X (fun _ => True) k (fun r _ => ∀ v, r = some (.returned v) → HgMiss v) →
      Hoare σ X (fun _ => True) (.dec x .one e k)
        (fun r _ => ∀ v, r = some (.returned v) → HgMiss v) := by
    intro x e k hk
    exact hoare_decL (fun _ _ _ h => h) fun u _ _ w _ _ => hoare_pre hk (fun _ _ _ => trivial)
  refine hoare_pre (P := fun _ => True) ?_ (fun _ _ _ => trivial)
  refine hoare_decCallL (funSpec_true _) (fun _ _ _ h => h)
    fun s _ _ avs havs callee' v st _ _ hsh => ?_
  refine hoare_pre (P := fun _ => True) ?_ (fun _ _ _ => trivial)
  refine hoare_retGuard (fun t _ _ v hv => fun w hw => ?_) ?_
  · simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    exact hgMiss_zero hv
  refine hoare_pre (P := fun _ => True) ?_ (fun _ _ _ => trivial)
  refine keepD (keepD (keepD ?_))
  refine hoare_decCallL (funSpec_true _) (fun _ _ _ h => h)
    fun u _ _ _ _ callee'' w st' _ _ _ => ?_
  refine hoare_pre (P := fun _ => True) ?_ (fun _ _ _ => trivial)
  unfold hgTail
  refine hoare_retGuard (fun t _ _ v hv => fun w hw => ?_) ?_
  · simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    exact hgMiss_zero hv
  refine hoare_return fun t _ _ v hv => fun w hw => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  intro a b hab ha
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq] at hab
  obtain ⟨hv1, -⟩ := hab
  rw [ev_cw] at h1
  cases h1
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv1
  subst ha
  exact absurd hv1 (by decide)

end InitECandidate.Solver.MemSafe.BalEnc

#print axioms InitECandidate.Solver.MemSafe.BalEnc.funSpec_get_miss
