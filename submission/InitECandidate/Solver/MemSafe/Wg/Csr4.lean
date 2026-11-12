import InitECandidate.Solver.MemSafe.Wg.Csr3

/-!
# Wg: the walk of `process_checked_system_transaction`, assembly
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem safe_add_fbuf {S : FS} (h : SafeS S) (w : BitVec 64) (n : Nat) : SafeS (fun f => S f ∨ f = Fct.fbuf w n) := by
  intro f hf
  rcases hf with hf | rfl
  · exact h f hf
  · trivial

theorem tidy_add_fbuf {Z : List MlS} {S : FS} (h : Tidy Z S) (w : BitVec 64) (n : Nat) :
    Tidy Z (fun f => S f ∨ f = Fct.fbuf w n) :=
  tidy_add h ⟨fun _ _ _ h => (by cases h), fun _ _ h => (by cases h)⟩

section csr4
variable {E : EbE σ} {En : Env}

theorem csr_walk (hSft : HypSft σ) (hPuc : HypPuc σ) (hK : HypKeepG σ) {T bs ba bk bi bs2 sk : BitVec 64}
    (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hEn : En (nm "target") = some (.val (.word T)))
    (hn1 : En (nm "code") = none) (hn2 : En (nm "empty") = none) (hn3 : En (nm "out") = none) :
    Hoare σ guestCtx (PA E En (CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk)) csrBody (RetV E (fun _ => False) CsR) := by
  have hLI := retV_locIns E (fun _ => False) CsR
  unfold csrBody
  refine hseqN (hn_sftW hSft hK hE0 csS_safe csS_tidy (by decide)) ?_
  refine hoare_exists fun w => ?_
  refine hoare_pre (P := PA E En (CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk)) ?_
    (fun t _ ht => pa_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf))
  unfold csrS1
  refine hdecCallR (locIns_resIns hLI _) cr_ext_code_of (gwk_tab (by decide)) (fun _ _ => False)
    (callObl_plain (ps := [(.buf 20)]) ?_ csS_tidy (by decide)) ?_ ?_
  · intro s hs vs hvs Γ p hr hL
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    rw [evs_nil] at hr1
    cases hr1
    have e1 := evI_lv_pa hs hEn v1 h1
    subst e1
    obtain ⟨o, ho, hob, hot, -⟩ := hL _ (Or.inr (Or.inl rfl) : CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk (Fct.obj T tB24 24))
    obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
    obtain rfl : p = q := Option.some.inj ((ebRun_ptrs hr).symm.trans hq)
    have := bufOK_tB24 hord hL0 ho hot
    rw [hob] at this
    exact argsOK_buf20 this
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh f hf
    exact hf.elim
  intro v hsh
  refine hoare_pre (P := PA E (En.set (nm "code") v) (CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk)) ?_
    (fun t _ ht => pa_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf))
  unfold csrS2
  refine hseqN hn_guard ?_
  unfold csrS4
  have hEn1 : ∀ v' : ValueHOL 64, ((En.set (nm "code") v).set (nm "empty") v') (nm "target") = some (.val (.word T)) := fun v' => by
    simp (config := { decide := true }) [Env.set, hEn]
  refine hdecAllocFresh (Z := zBal) (locIns_resIns hLI _) (n := BitVec.ofNat 64 8) (fun s hs => evI_cw s 8) csS_tidy
    (by decide) ?_
  intro w
  unfold csrS5
  have hT' := tidy_add_fbuf (csS_tidy (Γ0 := E.Γ0) (s0 := E.s0) (T := T) (bs := bs) (ba := ba) (bk := bk) (bi := bi)
    (bs2 := bs2) (sk := sk)) w (BitVec.ofNat 64 8).toNat
  have hS' := safe_add_fbuf (csS_safe (Γ0 := E.Γ0) (s0 := E.s0) (T := T) (bs := bs) (ba := ba) (bk := bk) (bi := bi)
    (bs2 := bs2) (sk := sk)) w (BitVec.ofNat 64 8).toNat
  refine hdecCallRkE (α := BitVec 64) hK hE0 hS' (locIns_resIns hLI _) hPuc (gwk_puc (by decide)) PucNF
    ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT' (by decide)).1, (tidy_gmiss hT' (by decide)).2⟩ ?_ ?_
  · intro s hpa vs hvs callee Γ p hr hL hC
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    have hpa' : PA E ((En.set (nm "code") v).set (nm "empty") (.val (.word w)))
        (fun f => CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk f ∨ f = Fct.fbuf w (BitVec.ofNat 64 8).toNat) s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
    have e1 := evI_lv_pa hpa' (hEn1 _) v1 h1
    have e2 := evI_lv_pa hpa' (env_set_self _ _ _) v2 h2
    rw [ev_cw] at h3
    cases h3
    subst e1; subst e2
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    obtain ⟨⟨w1, h1⟩, ⟨w2, h2⟩, ⟨w3, h3⟩, ⟨w4, h4⟩, ⟨w5, h5⟩, ⟨w6, h6⟩⟩ := csS_bal (Γ0 := E.Γ0) (s0 := E.s0) (T := T)
      (bs := bs) (ba := ba) (bk := bk) (bi := bi) (bs2 := bs2) (sk := sk)
    have hbalG : BalG Γ (callEntryStateHOLFinite s callee) := by
      refine ⟨⟨w1, (hLe _ (Or.inl h1)).1, (hLe _ (Or.inl h1)).2⟩, ⟨w2, (hLe _ (Or.inl h2)).1, (hLe _ (Or.inl h2)).2⟩,
        ⟨w3, (hLe _ (Or.inl h3)).1, (hLe _ (Or.inl h3)).2⟩, ⟨w4, (hLe _ (Or.inl h4)).1, (hLe _ (Or.inl h4)).2⟩,
        ⟨w5, (hLe _ (Or.inl h5)).1, (hLe _ (Or.inl h5)).2⟩, ⟨w6, (hLe _ (Or.inl h6)).1, (hLe _ (Or.inl h6)).2⟩⟩
    obtain ⟨o, ho, hob, hot, -⟩ := hL _ (Or.inl (Or.inr (Or.inl rfl)) : (fun f => CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk f ∨
      f = Fct.fbuf w (BitVec.ofNat 64 8).toNat) (Fct.obj T tB24 24))
    obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
    obtain rfl : p = q := Option.some.inj ((ebRun_ptrs hr).symm.trans hq)
    have hb := bufOK_tB24 hord hL0 ho hot
    rw [hob] at hb
    exact ⟨hC, hbalG, T, w, BitVec.ofNat 64 0, rfl, hb, by decide⟩
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh
    exact puc_new hstp.1.hG' hq
  intro v hsh c
  obtain ⟨out, rfl⟩ := val_of_shapeEq_one' hsh
  unfold csrS6
  refine hseqN hn_guard ?_
  refine hn_retV (fun f hf => Or.inl (Or.inl (Or.inl hf))) ?_
  intro s hs v' hv' Γ p hr hL
  have e := evI_lv_pa hs (env_set_self _ _ _) v' hv'
  subst e
  have hobj := hL (Fct.obj out tMCO 0) (Or.inr (Or.inl ⟨out, rfl, rfl⟩))
  have hcell := hL (Fct.cellv (out + BitVec.ofNat 64 48) c) (Or.inr (Or.inr (Or.inl ⟨out, rfl, rfl⟩)))
  have hlt := hL (Fct.prop (c.toNat < 2 ^ 32)) (Or.inr (Or.inr (Or.inr rfl)))
  obtain ⟨o, ho, hob, hot, -⟩ := hobj
  refine ⟨out, rfl, ⟨o, ho, hob, hot⟩, ?_⟩
  have := hcell.1
  rw [this]
  exact hlt

end csr4

end InitECandidate.Solver.MemSafe.Wg
