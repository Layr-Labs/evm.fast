import InitECandidate.Solver.MemSafe.Ptx.PtM5

/-!
# F3e: the `issc` branch -- merge, and the `TeK` after it
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

theorem pt_issc {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv : BitVec 64} {nbl : Nat} (hP : PtPreX E)
    (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv 0 0 nbl)
    (hz1 : S (Fct.memw (wt + BitVec.ofNat 64 144) 0)) (hz2 : S (Fct.memw (wt + BitVec.ofNat 64 152) 0)) :
    HN (PA E En S) ptS71 (fun t => ∃ vv : BitVec 64 × BitVec 64,
      (vv.1 = 0 ∧ vv.2 = 0 ∨ vv.1 = T1 E ∧ vv.2 = T2 E) ∧ PA E En (Sx S wt vv.1 vv.2) t) := by
  unfold ptS71
  refine hn_ite ?_ ?_
  · refine hn_post (hn_pre (pt_issc_then hP K) (fun s _ h => h.1)) (fun t _ h => ⟨(T1 E, T2 E), Or.inr ⟨rfl, rfl⟩, h⟩)
  · refine hn_post (hn_pre hn_skip (fun s _ h => h.1)) (fun t _ h => ⟨(0, 0), Or.inl ⟨rfl, rfl⟩, ?_⟩)
    refine pa_mono h (fun _ _ h => h) ?_
    intro f hf
    rcases hf with (hf | hf) | hf
    · exact hf.1
    · rw [List.mem_singleton] at hf; subst hf; exact hz1
    · rw [List.mem_singleton] at hf; subst hf; exact hz2

theorem tek_issc {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv : BitVec 64} {nbl : Nat}
    (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv 0 0 nbl) (v1 v2 : BitVec 64) :
    TeK E En (Sx S wt v1 v2) rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl := by
  have hk : ∀ f, S f → (∀ a b, f ≠ Fct.memw a b) → Sx S wt v1 v2 f :=
    fun f hf hn => Or.inl (Or.inl ⟨hf, hn _ _, hn _ _⟩)
  have hne : ∀ {f : Fct}, S f → (∀ a b, f ≠ Fct.memw a b) → Sx S wt v1 v2 f := fun hf hn => hk _ hf hn
  refine ⟨cy_drop K.C0 (L := [Fct.memw (wt + BitVec.ofNat 64 144) v1, Fct.memw (wt + BitVec.ofNat 64 152) v2]) ?_
      (by intro X hX; simp at hX; rcases hX with rfl | rfl <;> simp) hk,
    K.hte, K.hwa, K.hak, K.hnal, K.hnk, K.hint, K.hprice,
    (by obtain ⟨mg, h1, h2⟩ := K.hmg; exact ⟨mg, h1, hne h2 (by intro a b h; cases h)⟩), K.hrs, K.hnv, K.hnbl, K.hnkv,
    Or.inl (Or.inl ⟨K.hm0, fun h => bv_off_ne (by norm_num) (by norm_num) (by norm_num) (Fct.memw.inj h).1,
      fun h => bv_off_ne (by norm_num) (by norm_num) (by norm_num) (Fct.memw.inj h).1⟩),
    Or.inl (Or.inr (List.mem_singleton.mpr rfl)), Or.inr (List.mem_singleton.mpr rfl),
    hne K.hfbt (by intro a b h; cases h), hne K.hppt (by intro a b h; cases h),
    hne K.hord (by intro a b h; cases h), hne K.hppa (by intro a b h; cases h),
    hne K.hfba (by intro a b h; cases h), hne K.harrf (by intro a b h; cases h),
    hne K.harr1 (by intro a b h; cases h), hne K.hobj (by intro a b h; cases h),
    hne K.hppk (by intro a b h; cases h), ?_⟩
  · intro f hf
    rcases hf with (hf | hf) | hf
    · exact Or.inl hf.1
    · rw [List.mem_singleton] at hf; subst hf; exact Or.inr (by simp)
    · rw [List.mem_singleton] at hf; subst hf; exact Or.inr (by simp)
  · intro f hf hy
    rcases hf with (hf | hf) | hf
    · obtain ⟨hS, ne1, ne2⟩ := hf
      rcases K.hrd f hS hy with c | m
      · exact Or.inl c
      · right
        unfold TeRd2 at m
        unfold TeRd2
        rcases List.mem_cons.mp m with h | m
        · exact List.mem_cons.mpr (Or.inl h)
        rcases List.mem_cons.mp m with h | m
        · exact List.mem_cons.mpr (Or.inr (List.mem_cons.mpr (Or.inl h)))
        rcases List.mem_cons.mp m with h | m
        · exact List.mem_cons.mpr (Or.inr (List.mem_cons.mpr (Or.inr (List.mem_cons.mpr (Or.inl h)))))
        rcases List.mem_cons.mp m with h | m
        · exact absurd h ne1
        rcases List.mem_cons.mp m with h | m
        · exact absurd h ne2
        · exact absurd m (by simp)
    · rw [List.mem_singleton] at hf; subst hf
      right; unfold TeRd2; simp
    · rw [List.mem_singleton] at hf; subst hf
      right; unfold TeRd2; simp


theorem hlen_cw {E : PtE σ} {En : Env} {S : FS} (k : Nat) :
    ∀ s : State σ, PA E En S s → ∀ v, ev s (cw k) = some v → (flattenHOL v).length = 1 := by
  intro s hpa v hv
  have := evI_cw s k v hv
  subst this
  exact len_word _

/-- `ptS67` to `ptS73`: `issc`, the `issc` branch, `te[160]`, `te[168]`. -/
theorem pt_c8b {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv : BitVec 64} {nbl : Nat}
    (hP : PtPreX E) (hQT : LocIns QT) (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv 0 0 nbl)
    (hz1 : S (Fct.memw (wt + BitVec.ofNat 64 144) 0)) (hz2 : S (Fct.memw (wt + BitVec.ofNat 64 152) 0))
    (hk : ∀ v1 v2 : BitVec 64, (v1 = 0 ∧ v2 = 0 ∨ v1 = T1 E ∧ v2 = T2 E) →
      TeK E En (Sx S wt v1 v2) rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl →
      Hoare σ guestCtx (PA E En (Sx S wt v1 v2)) ptS73 QT) :
    Hoare σ guestCtx (PA E En S) ptS67 QT := by
  unfold ptS67
  refine hdecAnyU (locIns_resIns hQT _) tab_tx_is_setcode (by simp) rfl txissc_fin rfl
    (fun g ty h => (K.C0.gl g ty h).1) (K.C0.un _ (by decide)) ?_
  unfold ptS69
  refine hseqN (P1 := fun t => ∃ vv : BitVec 64 × BitVec 64,
      (vv.1 = 0 ∧ vv.2 = 0 ∨ vv.1 = T1 E ∧ vv.2 = T2 E) ∧ PA E En (Sx S wt vv.1 vv.2) t) (pt_issc hP K hz1 hz2) ?_
  refine hoare_exC fun vv hc => ?_
  have K' := tek_issc K vv.1 vv.2
  unfold ptS70
  refine hseqN (hn_stTeK K' (off := 160) (k := 1) (hlen_cw 1) (by norm_num) (by norm_num) (by norm_num)
    (Or.inr (by norm_num))) ?_
  unfold ptS72
  refine hseqN (hn_stTeK K' (off := 168) (k := 1) (hlen_lv_w K'.C0.idx) (by norm_num) (by norm_num) (by norm_num)
    (Or.inr (by norm_num))) ?_
  exact hk vv.1 vv.2 hc K'

end InitECandidate.Solver.MemSafe.Ptx
