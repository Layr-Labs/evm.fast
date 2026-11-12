import InitECandidate.Solver.MemSafe.Bal.GlobKit

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

def bal4 : List MlS := [nm "bal_accounts", nm "bal_key_buf", nm "bal_idx_accts", nm "bal_idx_stor", nm "bs", nm "ts", nm "sk_buf"]

theorem funSpec_bal_gw4 (hC : guestCtx.code.lookup = guestCode) {f : MlS}
    (hf : (balFns.map Prod.fst).contains f = true) :
    FunSpec σ guestCtx f (fun _ s _ t => ∀ g ∈ bal4, t.globals.lookup g = s.globals.lookup g) := by
  intro vs body callee rs hl s hs hloc r hr g hg
  exact funSpec_bal_gw (σ := σ) hC (by simpa [bal4] using hg) hf vs body callee rs hl s hs hloc r hr

theorem htabNew_h28 :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_new")
      ⟨[.eq 28, .eq 64], [.fits (.ptr tHTh28)], [], true⟩ [] :=
  csumm_htab_new_ty (q := (28, 64)) (by decide) (by decide) (by decide) (by decide)

theorem htabNew_h60 :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_new")
      ⟨[.eq 60, .eq 64], [.fits (.ptr tHTh60)], [], true⟩ [] :=
  csumm_htab_new_ty (q := (60, 64)) (by decide) (by decide) (by decide) (by decide)

/-- A typed global points at an object of the typing. -/
def GF (g : MlS) (th : Nat) (Γ : Gam) (t : State σ) : Prop :=
  ∃ w, gword t g = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = th

theorem gf_persist {g : MlS} {th : Nat} {Γ Γ' : Gam} {t t' : State σ} (he : Ext Γ Γ')
    (hg : t'.globals.lookup g = t.globals.lookup g) (h : GF g th Γ t) : GF g th Γ' t' := by
  obtain ⟨w, hw, o, ho, hob, hot⟩ := h
  obtain ⟨o', ho', hb', ht', -⟩ := he o ho
  exact ⟨w, by unfold gword at hw ⊢; rw [hg]; exact hw, o', ho', hb'.trans hob, ht'.trans hot⟩

theorem valid_word_g {s : State σ} {x : MlS} {w0 : BitVec 64} {v : ValueHOL 64}
    (hold : s.globals.lookup x = some (.val (.word w0)))
    (h : isValidValueHOLExact s.toExact .global x v = true) : ∃ w, v = .val (.word w) := by
  simp only [isValidValueHOLExact, lookupKvarHOLExact] at h
  split at h
  · rename_i old hold'
    have : old = .val (.word w0) := by
      have h1 : s.globals.lookup x = some old := hold'
      rw [hold] at h1
      exact (Option.some.inj h1).symm
    subst this
    have h1 := (shapeEqHOL_eq_true _ _).mp h
    refine val_of_shapeEq_one ((shapeEqHOL_eq_true _ _).mpr ?_)
    rw [h1, shapeOf_val]
  · simp at h

section bi
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

def BiT (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (Γ : Gam) (t : State σ) : Prop :=
  Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (fun _ => False) Γ t

/-- `g = htab_new(a, 64)` for a global `g` of type `nptr th`. -/
theorem bi_new (hord0 : p0.Ordered) (hL0' : Layout guestC p0 Γ0) {g : MlS} {a th : Nat}
    (hgt : guestC.GT.lookup g = some (.nptr th)) (hpg : g ∉ guestC.PG) (hg4 : g ∈ bal4)
    (hcs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_new")
      ⟨[.eq a, .eq 64], [.fits (.ptr th)], [], true⟩ [])
    {P : Gam → State σ → Prop}
    (hP : ∀ Γ Γ' (t t' : State σ), Ext Γ Γ' → (∀ x ∈ bal4, x ≠ g → t'.globals.lookup x = t.globals.lookup x) →
      P Γ t → P Γ' t') :
    Hoare σ guestCtx (fun t => ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ P Γ t)
      (.call (some (some (.global, g), none)) (nm "htab_new") [cw a, cw 64])
      (fun r t => r = none ∧ ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ P Γ t ∧ GF g th Γ t) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  refine hoare_callA (FunSpec.and (sa_of_csumm hcs) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw4 hF.hX (f := nm "htab_new") (by decide_cbv)))) ?_
  intro s _ ⟨Γ, hT, hPs⟩ vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ _ hvalid
  rw [evs_cons (ev_cw _ a) (evs_cons (ev_cw _ 64) evs_nil)] at hvs
  cases hvs
  -- the old value of the global
  obtain ⟨q0, hq0, -, -, -, -, hGl, -⟩ := Struct.trk_G hT
  obtain ⟨w0, hw0, -⟩ := hGl g _ hgt
  obtain ⟨w, rfl⟩ := valid_word_g (AllocImpl.lookup_of_gword hw0) hvalid
  obtain ⟨pT, hpT, -⟩ := id hT
  obtain ⟨Γ1, p, p', hc, -, hT2⟩ := call_cs hH hT hord0 hL0'
    (sg := ⟨[.eq a, .eq 64], [.fits (.ptr th)], [], true⟩)
    (Pre := fun _ s Γ => ReqOK ([] : List Cap) s Γ) (PW' := fun _ s Γ y => CapPW ([] : List Cap) s Γ y)
    (Q := fun _ _ _ _ _ _ => True)
    (vs := [.val (.word (BitVec.ofNat 64 a)), .val (.word (BitVec.ofNat 64 64))])
    (r := .returned (.val (.word w))) (callee := callee) (st := st) hS (by simp [Good]) (by simp [Abortive])
    ⟨pT, hpT, argsOK_eq2⟩ (fun c hc => by cases hc) (fun g _ => by simp)
    (fun y hy => absurd hy argCells_eq2) (fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc) hd hbe
  have hext := hc.2.2.2.1
  have hret := hc.2.2.2.2.2.2.2.2.2
  have hfit : Fits Γ1 (.ptr th) w := hret (.val (.word w)) rfl 0 (.fits (.ptr th)) w (by simp)
    (by simp [flattenHOL])
  have hT3 := trk_gset hH hA (g := g) (k := .nptr th) (w := w) hT2 hgt (Or.inr hfit) hpg
  obtain ⟨o, ho, hob, hot⟩ := hfit
  refine ⟨rfl, Γ1, Struct.trk_congr hH hT3 rfl rfl rfl rfl, hP Γ Γ1 s _ hext (fun x hx hne => ?_) hPs,
    w, by unfold gword; rw [setG_self], o, ho, hob, hot⟩
  rw [setG_ne hne]
  exact hgw x hx


/-- The hook of a `tB64` object is trivial. -/
theorem wf_B64 (Γ : Gam) (s : State σ) (o : Obj) (h : o.ty = tB64) :
    (guestHooksR (σ := σ)).wf Γ s o := by
  rw [guestHooksR, extR_wf]
  refine ⟨⟨⟨gwf_none ?_, fun hj => absurd (h.symm.trans hj) (by decide)⟩,
    fun hl => absurd (h ▸ hl) (by decide)⟩, ?_⟩
  · rw [h]; decide
  · intro e he hty
    have := recTab_ty he
    rw [hty, h] at this
    exact absurd this (by decide)

/-- `bal_key_buf = alloc(64)`. -/
theorem bi_alloc (hord0 : p0.Ordered) (hL0' : Layout guestC p0 Γ0)
    {P : Gam → State σ → Prop}
    (hP : ∀ Γ Γ' (t t' : State σ), Ext Γ Γ' → (∀ x ∈ bal4, x ≠ nm "bal_key_buf" →
      t'.globals.lookup x = t.globals.lookup x) → P Γ t → P Γ' t') :
    Hoare σ guestCtx (fun t => ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ P Γ t)
      (.call (some (some (.global, nm "bal_key_buf"), none)) (nm "alloc") [cw 64])
      (fun r t => r = none ∧ ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ P Γ t ∧ GF (nm "bal_key_buf") tB64 Γ t) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  refine hoare_callA (FunSpec.and (allocSpec_alloc hF.hX) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw4 hF.hX (f := nm "alloc") (by decide_cbv)))) ?_
  intro s _ ⟨Γ, hT, hPs⟩ vs hvs callee v st ⟨hAl, ⟨hd, hbe⟩, hgw⟩ _ hvalid
  rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
  cases hvs
  obtain ⟨pT, hpT, -⟩ := id hT
  obtain ⟨q0, hq0, hordT, -, -, -, hGl, -⟩ := Struct.trk_G hT
  rw [hpT] at hq0
  cases hq0
  obtain ⟨w0, hw0, -⟩ := hGl (nm "bal_key_buf") _ (by decide : guestC.GT.lookup (nm "bal_key_buf") = some (.nptr tB64))
  obtain ⟨w, rfl⟩ := valid_word_g (AllocImpl.lookup_of_gword hw0) hvalid
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some pT := (Frames.ptrsOf_congr rfl).trans hpT
  obtain ⟨hm', hgl', p1, hp1, hord1, hmo1, hret⟩ := hAl (by simp [Good]) _ pT rfl hpe hordT
  obtain ⟨q, hqw, hq8, hlive, hna⟩ := hret _ rfl
  cases hqw
  have h64 : (BitVec.ofNat 64 64).toNat = 64 := rfl
  rw [h64] at hlive hna
  have hT2 := Struct.trk_alloc_obj (ty := tB64) (n := 64) (rg := .heap) hH guestHooksR_mono hA hT rfl rfl hpe
    hm' hgl' hp1 hord1 hmo1 hd hbe hq8 (by omega) (by omega) (by decide) rfl hlive
    (fun a h1 h2 => hna a h1 (by omega)) (fun k => by show b64Ty.slot k = .scalar; rfl) (by decide)
    (fun Γ s o h => wf_B64 Γ s o h)
  have hfit : Fits (Γ ++ [⟨w, tB64, 64⟩]) (.nptr tB64) w :=
    Or.inr ⟨⟨w, tB64, 64⟩, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl⟩
  have hT3 := trk_gset hH hA (g := nm "bal_key_buf") (k := .nptr tB64) (w := w) hT2 (by decide) hfit
    (by decide)
  refine ⟨rfl, _, Struct.trk_congr hH hT3 rfl rfl rfl rfl, hP Γ _ s _ (Struct.ext_snoc Γ _) (fun x hx hne => ?_) hPs,
    w, by unfold gword; rw [setG_self], ⟨w, tB64, 64⟩,
    List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl⟩
  rw [setG_ne hne]
  exact hgw x hx


def BiQ (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ GF (nm "bal_accounts") tHTd20 Γ t ∧
    GF (nm "bal_idx_accts") tHTh28 Γ t ∧ GF (nm "bal_idx_stor") tHTh60 Γ t ∧
    GF (nm "bal_key_buf") tB64 Γ t

theorem bi_hoare (hord0 : p0.Ordered) (hL0' : Layout guestC p0 Γ0) :
    Hoare σ guestCtx (fun t => ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ True) biBody (BiQ (Γ0 := Γ0) (s0 := s0) (p0 := p0)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  unfold biBody biNew
  -- step 1
  refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ True ∧
      GF (nm "bal_accounts") tHTd20 Γ t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact bi_new hord0 hL0' (a := 20) (th := tHTd20) (by decide) (by decide) (by simp [bal4]) htabNew_d20
      (P := fun _ _ => True) (fun _ _ _ _ _ _ _ => trivial)
  refine hoare_pre (P := fun t => ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ GF (nm "bal_accounts") tHTd20 Γ t) ?_
    (fun t _ h => by obtain ⟨-, Γ, hT, -, hg⟩ := h; exact ⟨Γ, hT, hg⟩)
  -- step 2
  refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ GF (nm "bal_accounts") tHTd20 Γ t ∧
      GF (nm "bal_idx_accts") tHTh28 Γ t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact bi_new hord0 hL0' (a := 28) (th := tHTh28) (by decide) (by decide) (by simp [bal4]) htabNew_h28
      (P := fun Γ t => GF (nm "bal_accounts") tHTd20 Γ t)
      (fun Γ Γ' t t' he hg h => gf_persist he (hg _ (by simp [bal4]) (by decide)) h)
  refine hoare_pre (P := fun t => ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ (GF (nm "bal_accounts") tHTd20 Γ t ∧
      GF (nm "bal_idx_accts") tHTh28 Γ t)) ?_
    (fun t _ h => by obtain ⟨-, Γ, hT, h1, h2⟩ := h; exact ⟨Γ, hT, h1, h2⟩)
  -- step 3
  refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ (GF (nm "bal_accounts") tHTd20 Γ t ∧
      GF (nm "bal_idx_accts") tHTh28 Γ t) ∧ GF (nm "bal_idx_stor") tHTh60 Γ t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact bi_new hord0 hL0' (a := 60) (th := tHTh60) (by decide) (by decide) (by simp [bal4]) htabNew_h60
      (P := fun Γ t => GF (nm "bal_accounts") tHTd20 Γ t ∧ GF (nm "bal_idx_accts") tHTh28 Γ t)
      (fun Γ Γ' t t' he hg h => ⟨gf_persist he (hg _ (by simp [bal4]) (by decide)) h.1,
        gf_persist he (hg _ (by simp [bal4]) (by decide)) h.2⟩)
  refine hoare_pre (P := fun t => ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ (GF (nm "bal_accounts") tHTd20 Γ t ∧
      GF (nm "bal_idx_accts") tHTh28 Γ t ∧ GF (nm "bal_idx_stor") tHTh60 Γ t)) ?_
    (fun t _ h => by obtain ⟨-, Γ, hT, ⟨h1, h2⟩, h3⟩ := h; exact ⟨Γ, hT, h1, h2, h3⟩)
  -- step 4
  refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ (GF (nm "bal_accounts") tHTd20 Γ t ∧
      GF (nm "bal_idx_accts") tHTh28 Γ t ∧ GF (nm "bal_idx_stor") tHTh60 Γ t) ∧
      GF (nm "bal_key_buf") tB64 Γ t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact bi_alloc hord0 hL0' (P := fun Γ t => GF (nm "bal_accounts") tHTd20 Γ t ∧
      GF (nm "bal_idx_accts") tHTh28 Γ t ∧ GF (nm "bal_idx_stor") tHTh60 Γ t)
      (fun Γ Γ' t t' he hg h => ⟨gf_persist he (hg _ (by simp [bal4]) (by decide)) h.1,
        gf_persist he (hg _ (by simp [bal4]) (by decide)) h.2.1,
        gf_persist he (hg _ (by simp [bal4]) (by decide)) h.2.2⟩)
  refine hoare_pre (P := fun t => ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ (GF (nm "bal_accounts") tHTd20 Γ t ∧
      GF (nm "bal_idx_accts") tHTh28 Γ t ∧ GF (nm "bal_idx_stor") tHTh60 Γ t ∧
      GF (nm "bal_key_buf") tB64 Γ t)) ?_
    (fun t _ h => by obtain ⟨-, Γ, hT, ⟨h1, h2, h3⟩, h4⟩ := h; exact ⟨Γ, hT, h1, h2, h3, h4⟩)
  -- step 5: bal_index = 0
  refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ, BiT Γ0 s0 p0 Γ t ∧ (GF (nm "bal_accounts") tHTd20 Γ t ∧
      GF (nm "bal_idx_accts") tHTh28 Γ t ∧ GF (nm "bal_idx_stor") tHTh60 Γ t ∧
      GF (nm "bal_key_buf") tB64 Γ t)) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_assignK fun t _ ⟨Γ, hT, hG⟩ v hv hvalid => ?_
    rw [ev_cw] at hv
    cases hv
    refine ⟨rfl, Γ, trk_gset hH hA (g := nm "bal_index") (k := .scalar) (w := BitVec.ofNat 64 0) hT
      (by decide) trivial (by decide), ?_⟩
    obtain ⟨h1, h2, h3, h4⟩ := hG
    exact ⟨gf_persist (ext_refl Γ) (setG_ne (by decide)) h1, gf_persist (ext_refl Γ) (setG_ne (by decide)) h2,
      gf_persist (ext_refl Γ) (setG_ne (by decide)) h3, gf_persist (ext_refl Γ) (setG_ne (by decide)) h4⟩
  · refine hoare_return fun t _ ⟨_, Γ, hT, h1, h2, h3, h4⟩ v hv => ?_
    refine fun v' hv' => ⟨Γ, Struct.trk_congr hH hT rfl rfl rfl rfl, h1, h2, h3, h4⟩

end bi

def BiPre (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop := True

def biSig : Sig := ⟨[], [], [], true⟩

/-- After `bal_init`: the four BAL globals are non-null objects of their types. -/
def BiPost (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → GF (nm "bal_accounts") tHTd20 Γ' t ∧ GF (nm "bal_idx_accts") tHTh28 Γ' t ∧
    GF (nm "bal_idx_stor") tHTh60 Γ' t ∧ GF (nm "bal_key_buf") tB64 Γ' t

/-- **`bal_init()`**: allocates the account table, the two index tables and the key buffer; afterwards
`bal_accounts` is a non-null `tHTd20` object (so `BalNN` holds), `bal_idx_accts` / `bal_idx_stor` non-null
`tHTh28` / `tHTh60` objects and `bal_key_buf` a non-null `tB64` object. It writes no cell of the entry
typing (PW is empty). -/
theorem sumSpec_bal_init :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "bal_init") biSig BiPre
      (fun _ _ _ _ => False) BiPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine sumSpecA_of_returns (noExc_bal_init hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, rfl⟩ := Struct.lookupCode_zero code_bal_init hl'
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have H' := bi_hoare (Γ0 := Γ0) (s0 := s0) (p0 := p0) hord0 hL0 s0 hs
    ⟨Γ0, Struct.trk_refl hG0 hp0, trivial⟩ (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', hT, h1, h2, h3, h4⟩ := H' v rfl
  obtain ⟨p', hc⟩ := Struct.trk_sumCore (sg := biSig) (PWs := fun a => ProtCell guestC Γ0 a ∧ False)
    (vs := []) (r := r) hT hp0 (fun a h => absurd h id) (fun h => by simp [biSig] at h)
    (fun p hp w' hw' i rt w'' hi => by simp [biSig] at hi)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ?_⟩
  rw [hv] at hv'
  cases hv'
  exact ⟨h1, h2, h3, h4⟩

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_bal_init
