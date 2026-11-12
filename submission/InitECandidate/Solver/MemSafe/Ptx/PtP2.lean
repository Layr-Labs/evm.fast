import InitECandidate.Solver.MemSafe.Ptx.PtP1

/-!
# F3f: transport lemmas for `AdK` / `MsK`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The names `AdK` talks about. -/
def AdV (x : MlS) : Prop :=
  x = nm "tx" ∨ x = nm "index" ∨ x = nm "enc" ∨ x = nm "sender" ∨ x = nm "te" ∨ x = nm "al_addrs" ∨
  x = nm "al_keys" ∨ x = nm "nal" ∨ x = nm "nkeys" ∨ x = nm "mgas" ∨ x = nm "reservoir"

theorem adk_addF {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv : BitVec 64} {nbl : Nat}
    (K : AdK E En S rp rl buf n CV w wt wa ak nv nkv nbl) (L : List Fct)
    (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v)) :
    AdK E En (addF S L) rp rl buf n CV w wt wa ak nv nkv nbl := by
  refine ⟨cy_addF K.C0 L hL, K.hte, K.hwa, K.hak, K.hnal, K.hnk, ?_, K.hrs, K.hnv, K.hnbl, K.hnkv,
    Or.inl K.hobjte, Or.inl K.hppa, Or.inl K.hfba, Or.inl K.harrf, Or.inl K.harr1, Or.inl K.hobj, Or.inl K.hppk⟩
  obtain ⟨mg, h1, h2⟩ := K.hmg
  exact ⟨mg, h1, Or.inl h2⟩

theorem adk_setF {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv : BitVec 64} {nbl : Nat}
    (K : AdK E En S rp rl buf n CV w wt wa ak nv nkv nbl) {x : MlS} (hx : x ∈ TRK) (hxn : ¬ AdV x)
    (v : ValueHOL 64) (L : List Fct)
    (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v)) :
    AdK E (En.set x v) (addF S L) rp rl buf n CV w wt wa ak nv nkv nbl := by
  have hne : ∀ y, AdV y → y ≠ x := fun y hy e => hxn (e ▸ hy)
  have hget : ∀ {y : MlS} {u : ValueHOL 64}, AdV y → En y = some u → (En.set x v) y = some u := by
    intro y u hy h
    rw [env_set_ne _ _ (hne y hy)]; exact h
  have hn4 : x ≠ nm "tx" ∧ x ≠ nm "index" ∧ x ≠ nm "enc" ∧ x ≠ nm "sender" := by
    refine ⟨fun e => hxn ?_, fun e => hxn ?_, fun e => hxn ?_, fun e => hxn ?_⟩ <;> subst e <;> unfold AdV <;> simp
  refine ⟨cy_setF K.C0 hx hn4 v L hL, hget (by unfold AdV; simp) K.hte, hget (by unfold AdV; simp) K.hwa,
    hget (by unfold AdV; simp) K.hak, hget (by unfold AdV; simp) K.hnal, hget (by unfold AdV; simp) K.hnk, ?_, ?_,
    K.hnv, K.hnbl, K.hnkv, Or.inl K.hobjte, Or.inl K.hppa, Or.inl K.hfba, Or.inl K.harrf, Or.inl K.harr1,
    Or.inl K.hobj, Or.inl K.hppk⟩
  · obtain ⟨mg, h, hm⟩ := K.hmg; exact ⟨mg, hget (by unfold AdV; simp) h, Or.inl hm⟩
  · obtain ⟨rs, h⟩ := K.hrs; exact ⟨rs, hget (by unfold AdV; simp) h⟩

theorem msk_addF {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat} {L : List (Nat × BitVec 64)}
    (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L) (Lf : List Fct)
    (hL : ∀ X ∈ Lf, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v) ∧ (∀ y, ¬ X.reads y)) :
    MsK E En (addF S Lf) rp rl buf n CV w wt wa ak nv nkv wm nbl L := by
  refine ⟨adk_addF K.A Lf (fun X hX => ⟨(hL X hX).1, (hL X hX).2.1⟩), K.hm, Or.inl K.hfbm, Or.inl K.hppm,
    Or.inl K.hordm, fun p hp => ?_, rdin_nr K.hrdm (fun X hX => (hL X hX).2.2), fun x hx => Or.inl (K.h40 x hx)⟩
  obtain ⟨a, b, c⟩ := K.hL p hp
  exact ⟨a, b, Or.inl c⟩

theorem msk_setF {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat} {L : List (Nat × BitVec 64)}
    (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L) {x : MlS} (hx : x ∈ TRK) (hxn : ¬ AdV x)
    (hxm : x ≠ nm "m") (v : ValueHOL 64) (Lf : List Fct)
    (hL : ∀ X ∈ Lf, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v) ∧ (∀ y, ¬ X.reads y)) :
    MsK E (En.set x v) (addF S Lf) rp rl buf n CV w wt wa ak nv nkv wm nbl L := by
  refine ⟨adk_setF K.A hx hxn v Lf (fun X hX => ⟨(hL X hX).1, (hL X hX).2.1⟩), ?_, Or.inl K.hfbm, Or.inl K.hppm,
    Or.inl K.hordm, fun p hp => ?_, rdin_nr K.hrdm (fun X hX => (hL X hX).2.2), fun x hx => Or.inl (K.h40 x hx)⟩
  · rw [env_set_ne _ _ (Ne.symm hxm)]; exact K.hm
  · obtain ⟨a, b, c⟩ := K.hL p hp
    exact ⟨a, b, Or.inl c⟩

theorem msk_addM {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat} {L : List (Nat × BitVec 64)}
    (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L) {off : Nat} {x : BitVec 64}
    (h8 : off % 8 = 0) (hk : off + 8 ≤ 176)
    (hx : off = 40 → S (Fct.prop (x.toNat ≤ 2 ^ 24)) := by intro h; norm_num at h) :
    MsK E En (addF S [Fct.memw (wm + BitVec.ofNat 64 off) x]) rp rl buf n CV w wt wa ak nv nkv wm nbl
      ((off, x) :: L) := by
  refine ⟨adk_addF K.A _ (by intro X hX; simp at hX; subst hX; simp), K.hm, Or.inl K.hfbm, Or.inl K.hppm,
    Or.inl K.hordm, fun p hp => ?_, ?_, fun y hy => ?_⟩
  · rcases List.mem_cons.mp hp with rfl | hp
    · exact ⟨h8, hk, Or.inr (by simp)⟩
    · obtain ⟨a, b, c⟩ := K.hL p hp
      exact ⟨a, b, Or.inl c⟩
  · have := rdin_cons K.hrdm (Fct.memw (wm + BitVec.ofNat 64 off) x)
    exact this
  · rcases List.mem_cons.mp hy with h | hy
    · obtain ⟨h1, h2⟩ := Prod.mk.inj h
      subst h2
      exact Or.inl (hx h1.symm)
    · exact Or.inl (K.h40 y hy)

end InitECandidate.Solver.MemSafe.Ptx
