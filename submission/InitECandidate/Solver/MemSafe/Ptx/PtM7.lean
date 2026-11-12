import InitECandidate.Solver.MemSafe.Ptx.PtM6

/-!
# F3e: `TeK` transport, `txh`, `keccak256`, the last `te` stores (`ptS73` to `ptS78`)
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

/-- The names `TeK` talks about. -/
def TeV (x : MlS) : Prop :=
  x = nm "tx" ∨ x = nm "index" ∨ x = nm "enc" ∨ x = nm "sender" ∨ x = nm "te" ∨ x = nm "al_addrs" ∨
  x = nm "al_keys" ∨ x = nm "nal" ∨ x = nm "nkeys" ∨ x = nm "intrinsic" ∨ x = nm "price" ∨ x = nm "mgas" ∨
  x = nm "reservoir"

theorem tek_setF {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv v1 v2 : BitVec 64} {nbl : Nat} (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl)
    {x : MlS} (hx : x ∈ TRK) (hxn : ¬ TeV x) (v : ValueHOL 64) (L : List Fct)
    (hL : ∀ X ∈ L, (∀ g ty, X ≠ Fct.gobj g ty) ∧ (∀ a v, X ≠ Fct.cellv a v) ∧ (∀ y, ¬ X.reads y)) :
    TeK E (En.set x v) (addF S L) rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl := by
  have hne : ∀ y, TeV y → y ≠ x := fun y hy e => hxn (e ▸ hy)
  have hget : ∀ {y : MlS} {u : ValueHOL 64}, TeV y → En y = some u → (En.set x v) y = some u := by
    intro y u hy h
    rw [env_set_ne _ _ (hne y hy)]; exact h
  have hn4 : x ≠ nm "tx" ∧ x ≠ nm "index" ∧ x ≠ nm "enc" ∧ x ≠ nm "sender" := by
    refine ⟨fun e => hxn ?_, fun e => hxn ?_, fun e => hxn ?_, fun e => hxn ?_⟩ <;> subst e <;> unfold TeV <;> simp
  refine ⟨?_, hget (by unfold TeV; simp) K.hte, hget (by unfold TeV; simp) K.hwa, hget (by unfold TeV; simp) K.hak,
    hget (by unfold TeV; simp) K.hnal, hget (by unfold TeV; simp) K.hnk, ?_, ?_, ?_, ?_,
    K.hnv, K.hnbl, K.hnkv, Or.inl K.hm0, Or.inl K.hm144, Or.inl K.hm152, Or.inl K.hfbt, Or.inl K.hppt, Or.inl K.hord, Or.inl K.hppa, Or.inl K.hfba,
    Or.inl K.harrf, Or.inl K.harr1, Or.inl K.hobj, Or.inl K.hppk, ?_⟩
  · exact cy_setF K.C0 hx hn4 v L (fun X hX => ⟨(hL X hX).1, (hL X hX).2.1⟩)
  · obtain ⟨a, b, c, h⟩ := K.hint; exact ⟨a, b, c, hget (by unfold TeV; simp) h⟩
  · obtain ⟨pr, h, hl⟩ := K.hprice; exact ⟨pr, hget (by unfold TeV; simp) h, hl⟩
  · obtain ⟨mg, h, hm⟩ := K.hmg; exact ⟨mg, hget (by unfold TeV; simp) h, Or.inl hm⟩
  · obtain ⟨rs, h⟩ := K.hrs; exact ⟨rs, hget (by unfold TeV; simp) h⟩
  · exact rdin_nr K.hrd (fun X hX => (hL X hX).2.2)


theorem keccak_fin : ptAllNames.contains (nm "keccak256") = true := by decide_cbv

/-- `CallOK` for `keccak256(a, b, lv txh)` with `txh` a safe 32-byte buffer. -/
theorem callOK_keccak {E : PtE σ} {En : Env} {S : FS} {a b : ExpHOL 64} {th : BitVec 64}
    (hth : En (nm "txh") = some (.val (.word th))) (hbf : S (Fct.bufok0 th 32))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) :
    CallOK E En S (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ [] [a, b, lv (nm "txh")] where
  csok := csOK_nil
  gw := ⟨by simp, by simp⟩
  jo := by intro g _ h; simp at h
  jn := by intro g h; simp at h
  fin := keccak_fin
  argsok := by
    intro s hpa vs hvs D Γ p hr hL
    obtain ⟨x, y, z, rfl, hx, hy, hz⟩ := evs3 hvs
    have hz' := evI_lv (hpa.2 _ _ hth) z hz
    subst hz'
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    rcases i with _ | _ | _ | i
    · simp at hpt; subst hpt; trivial
    · simp at hpt; subst hpt; trivial
    · simp at hpt hv; subst hpt hv
      exact ⟨th, rfl, (hL _ hbf).1⟩
    · simp at hpt
  memok := by
    intro s hpa vs hvs g hg a' hrd hcells
    obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
    have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
    obtain ⟨x, y, z, rfl, hx, hy, hz⟩ := evs3 hvs
    have hz' := evI_lv (hpa.2 _ _ hth) z hz
    subst hz'
    obtain ⟨i, w', hw, h⟩ := hcells
    rcases h with ⟨n', hn, hov⟩ | ⟨j, c, d, x', hj, -, -⟩
    · rcases i with _ | _ | _ | i <;> simp at hn
      subst hn
      simp [argW, wordOf] at hw; subst hw
      exact argbuf_disj hr hL hbf (le_refl _) hov g hg hrd
    · rcases i with _ | _ | _ | i <;> simp at hj
  globok := hGl


theorem hlen_rf {E : PtE σ} {En : Env} {S : FS} {x : MlS} (i : Nat) (hi : i < 3)
    (h : ∃ a b c : BitVec 64, En x = some (wv [a, b, c])) :
    ∀ s : State σ, PA E En S s → ∀ v, ev s (.rfield i (lv x)) = some v → (flattenHOL v).length = 1 := by
  intro s hpa v hv
  obtain ⟨a, b, c, hI⟩ := h
  have := evI_rf (evI_lv (hpa.2 _ _ hI)) (i := i) (by simp; omega) v hv
  subst this
  exact len_word _

/-- `ptS73` to `ptS79`: `txh`, `keccak256`, the last stores of `te`. -/
theorem pt_c8c {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv v1 v2 : BitVec 64} {nbl : Nat}
    (hQT : LocIns QT) (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl)
    (hk : ∀ (En' : Env) (S' : FS) (th : BitVec 64), TeK E En' S' rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl →
      En' (nm "txh") = some (.val (.word th)) → S' (Fct.obj th tVAL 32) →
      Hoare σ guestCtx (PA E En' S') ptS79 QT) :
    Hoare σ guestCtx (PA E En S) ptS73 QT := by
  unfold ptS73
  refine hdecAllocA (locIns_resIns hQT _) (e := cw 32) (n := BitVec.ofNat 64 32) (ty := tVAL)
    (fun s _ => evI_cw s 32) K.C0.gl plain_tVAL' tags_tVAL tval_reg tval_slot (by rw [tval_min]; norm_num)
    (by norm_num) (by norm_num) ?_
  intro th
  have hn32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
  simp only [hn32]
  have K1 := tek_setF K (x := nm "txh") (by decide) (by unfold TeV; decide) (.val (.word th))
    [Fct.obj th tVAL 32, Fct.bufok0 th 32, Fct.prop (th.toNat % 8 = 0 ∧ heapBase ≤ th.toNat ∧ th.toNat + 32 ≤ heapEnd)]
    (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl <;> simp [Fct.reads])
  have hth : (En.set (nm "txh") (.val (.word th))) (nm "txh") = some (.val (.word th)) := env_set_self _ _ _
  have hbf : addF S [Fct.obj th tVAL 32, Fct.bufok0 th 32,
      Fct.prop (th.toNat % 8 = 0 ∧ heapBase ≤ th.toNat ∧ th.toNat + 32 ≤ heapEnd)] (Fct.bufok0 th 32) := Or.inr (by simp)
  unfold ptS74
  refine hseqN (hn_callC tab_keccak256 (callOK_keccak hth hbf (fun g ty h => (K1.C0.gl g ty h).1))) ?_
  unfold ptS75
  refine hseqN (hn_stTeK K1 (off := 176) (k := 1) (hlen_lv_w hth) (by norm_num) (by norm_num) (by norm_num)
    (Or.inr (by norm_num))) ?_
  unfold ptS76
  refine hseqN (hn_stTeK K1 (off := 184) (k := 1) (hlen_rf 0 (by norm_num) K1.hint) (by norm_num) (by norm_num)
    (by norm_num) (Or.inr (by norm_num))) ?_
  unfold ptS77
  refine hseqN (hn_stTeK K1 (off := 192) (k := 1) (hlen_rf 1 (by norm_num) K1.hint) (by norm_num) (by norm_num)
    (by norm_num) (Or.inr (by norm_num))) ?_
  unfold ptS78
  refine hseqN hn_skip ?_
  exact hk _ _ th K1 hth (Or.inr (by simp))

end InitECandidate.Solver.MemSafe.Ptx
