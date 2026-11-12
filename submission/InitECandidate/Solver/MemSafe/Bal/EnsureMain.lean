import InitECandidate.Solver.MemSafe.Bal.Ensure

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

theorem lstNew_c4' :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "lst_new")
      ⟨[.eq 40, .eq 4], [.fits (.ptr tLSTc)], [], true⟩ [] := lstNew_c4
theorem lstNew_n4' :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "lst_new")
      ⟨[.eq 16, .eq 4], [.fits (.ptr tLSTn)], [], true⟩ [] := lstNew_n4
theorem lstNew_k2' :
    CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "lst_new")
      ⟨[.eq 24, .eq 2], [.fits (.ptr tLSTk)], [], true⟩ [] := lstNew_k2

theorem sa_of_csumm {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig} {cs : List Cap}
    (h : CSumm σ X C H f sg cs) :
    SumSpecA σ X C H f sg (fun _ s Γ => ReqOK cs s Γ) (fun _ s Γ a => CapPW cs s Γ a)
      (fun _ _ _ _ _ _ => True) := h

theorem val_of_shape1 {v : ValueHOL 64} (h : shapeEqHOL (shapeOfHOLExact v) ShapeHOL.one = true) :
    ∃ w, v = .val (.word w) :=
  val_of_shapeEq_one ((shapeEqHOL_eq_true _ _).mpr ((shapeEqHOL_eq_true _ _).mp h).symm)

section body
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The creation branch: from the allocated, still empty record to the final state. -/
theorem ea_tail (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {T0 : Obj} (hT0 : T0 ∈ Γ0) (hT0t : T0.ty = tHTd20)
    (hbal : s0.globals.lookup (nm "bal_accounts") = some (.val (.word T0.base))) {ADDR AD : BitVec 64}
    (hkey : SrcKey Γ0 ADDR 20 tHTd20) :
    Hoare σ guestCtx (EaMid s0 Γ0 p0 ADDR AD 0 (fun _ _ => True)) eaTail (EaQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have gwOf : ∀ f, (balFns.map Prod.fst).contains f = true → FunSpec σ guestCtx f
      (fun _ s _ t => t.globals.lookup (nm "bal_accounts") = s.globals.lookup (nm "bal_accounts")) :=
    fun f hf => funSpec_bal_gw hF.hX (by simp) hf
  unfold eaTail
  -- the first `htab_new`
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (sa_of_csumm (htabNew_l32 (σ := σ))) (FunSpec.and (Frames.funSpec_dom _)
    (gwOf (nm "htab_new") (by decide_cbv)))) (eaQ_locals hH)
    fun s _ hs vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ _ hsh => ?_
  obtain ⟨w, rfl⟩ := val_of_shape1 hsh
  rw [evs_cons (ev_cw _ 32) (evs_cons (ev_cw _ 8) evs_nil)] at hvs
  cases hvs
  have hmid := ea_callstep hH hord0 hL0 (by decide : 0 ≤ 5) hs (x := nm "t") (by decide) (by decide)
    (a := 32) (b := 8) (ty := tHTl32) (callee := callee) (st := st) (w := w) hS hgw hd hbe
  refine hoare_pre (P := EaMid s0 Γ0 p0 ADDR AD 0 _) ?_ (fun t _ ht => ht ▸ hmid)
  have hQ' : ∀ (x : MlS) (ty : Nat), Prop := fun _ _ => True
  -- store 1
  refine hoare_seq (R := fun r t => r = none ∧ EaMid s0 Γ0 p0 ADDR AD 1
      (fun _ z => ∃ w', z.locals.lookup (nm "t") = some (.val (.word w'))) t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_pre (ea_store hH (k := 0) (by decide) (x := nm "t") (ty := tHTl32) (by decide))
      (fun t _ h => eaMid_exists h)
  -- call 2
  refine hoare_pre (P := EaMid s0 Γ0 p0 ADDR AD 1
      (fun _ z => ∃ w', z.locals.lookup (nm "t") = some (.val (.word w')))) ?_ (fun t _ h => h.2)
  refine hoare_seq (R := fun r t => r = none ∧ EaMid s0 Γ0 p0 ADDR AD 1
      (fun Γ z => ∃ w', z.locals.lookup (nm "t") = some (.val (.word w')) ∧ Fits Γ (.ptr tHTh32) w') t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callA (FunSpec.and (sa_of_csumm (htabNew_h32 (σ := σ))) (FunSpec.and (Frames.funSpec_dom _)
      (gwOf (nm "htab_new") (by decide_cbv)))) ?_
    intro s _ hs vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ _ hvalid
    have hs0 := hs
    obtain ⟨hl1, hl2, Γ, hT, hb, hblk, hfits, w0, hw0⟩ := hs
    obtain ⟨w, rfl⟩ := valid_word hw0 hvalid
    rw [evs_cons (ev_cw _ 32) (evs_cons (ev_cw _ 8) evs_nil)] at hvs
    cases hvs
    exact ⟨rfl, ea_callstep hH hord0 hL0 (by decide : 1 ≤ 5) hs0
      (x := nm "t") (by decide) (by decide) (a := 32) (b := 8) (ty := tHTh32) (callee := callee)
      (st := st) (w := w) hS hgw hd hbe⟩
  -- store 2
  refine hoare_pre (P := EaMid s0 Γ0 p0 ADDR AD 1
      (fun Γ z => ∃ w', z.locals.lookup (nm "t") = some (.val (.word w')) ∧ Fits Γ (.ptr tHTh32) w')) ?_
    (fun t _ h => h.2)
  refine hoare_seq (R := fun r t => r = none ∧ EaMid s0 Γ0 p0 ADDR AD 2
      (fun _ z => ∃ w', z.locals.lookup (nm "t") = some (.val (.word w'))) t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_pre (ea_store hH (k := 1) (by decide) (x := nm "t") (ty := tHTh32) (by decide))
      (fun t _ h => eaMid_exists h)
  -- the first `lst_new`
  refine hoare_pre (P := EaMid s0 Γ0 p0 ADDR AD 2
      (fun _ z => ∃ w', z.locals.lookup (nm "t") = some (.val (.word w')))) ?_ (fun t _ h => h.2)
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (sa_of_csumm (lstNew_c4' (σ := σ)))
    (FunSpec.and (Frames.funSpec_dom _) (gwOf (nm "lst_new") (by decide_cbv)))) (eaQ_locals hH)
    fun s _ hs vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ _ hsh => ?_
  obtain ⟨w, rfl⟩ := val_of_shape1 hsh
  rw [evs_cons (ev_cw _ 40) (evs_cons (ev_cw _ 4) evs_nil)] at hvs
  cases hvs
  have hmid := ea_callstep hH hord0 hL0 (by decide : 2 ≤ 5) hs (x := nm "l") (by decide) (by decide)
    (a := 40) (b := 4) (ty := tLSTc) (callee := callee) (st := st) (w := w) hS hgw hd hbe
  refine hoare_pre (P := EaMid s0 Γ0 p0 ADDR AD 2 _) ?_ (fun t _ ht => ht ▸ hmid)
  refine hoare_seq (R := fun r t => r = none ∧ EaMid s0 Γ0 p0 ADDR AD 3
      (fun _ z => ∃ w', z.locals.lookup (nm "l") = some (.val (.word w'))) t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_pre (ea_store hH (k := 2) (by decide) (x := nm "l") (ty := tLSTc) (by decide))
      (fun t _ h => eaMid_exists h)
  -- the second `lst_new`
  refine hoare_pre (P := EaMid s0 Γ0 p0 ADDR AD 3
      (fun _ z => ∃ w', z.locals.lookup (nm "l") = some (.val (.word w')))) ?_ (fun t _ h => h.2)
  refine hoare_seq (R := fun r t => r = none ∧ EaMid s0 Γ0 p0 ADDR AD 3
      (fun Γ z => ∃ w', z.locals.lookup (nm "l") = some (.val (.word w')) ∧ Fits Γ (.ptr tLSTn) w') t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callA (FunSpec.and (sa_of_csumm (lstNew_n4' (σ := σ))) (FunSpec.and (Frames.funSpec_dom _)
      (gwOf (nm "lst_new") (by decide_cbv)))) ?_
    intro s _ hs vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ _ hvalid
    have hs0 := hs
    obtain ⟨hl1, hl2, Γ, hT, hb, hblk, hfits, w0, hw0⟩ := hs
    obtain ⟨w, rfl⟩ := valid_word hw0 hvalid
    rw [evs_cons (ev_cw _ 16) (evs_cons (ev_cw _ 4) evs_nil)] at hvs
    cases hvs
    exact ⟨rfl, ea_callstep hH hord0 hL0 (by decide : 3 ≤ 5) hs0
      (x := nm "l") (by decide) (by decide) (a := 16) (b := 4) (ty := tLSTn) (callee := callee)
      (st := st) (w := w) hS hgw hd hbe⟩
  refine hoare_pre (P := EaMid s0 Γ0 p0 ADDR AD 3
      (fun Γ z => ∃ w', z.locals.lookup (nm "l") = some (.val (.word w')) ∧ Fits Γ (.ptr tLSTn) w')) ?_
    (fun t _ h => h.2)
  refine hoare_seq (R := fun r t => r = none ∧ EaMid s0 Γ0 p0 ADDR AD 4
      (fun _ z => ∃ w', z.locals.lookup (nm "l") = some (.val (.word w'))) t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_pre (ea_store hH (k := 3) (by decide) (x := nm "l") (ty := tLSTn) (by decide))
      (fun t _ h => eaMid_exists h)
  -- the third `lst_new`
  refine hoare_pre (P := EaMid s0 Γ0 p0 ADDR AD 4
      (fun _ z => ∃ w', z.locals.lookup (nm "l") = some (.val (.word w')))) ?_ (fun t _ h => h.2)
  refine hoare_seq (R := fun r t => r = none ∧ EaMid s0 Γ0 p0 ADDR AD 4
      (fun Γ z => ∃ w', z.locals.lookup (nm "l") = some (.val (.word w')) ∧ Fits Γ (.ptr tLSTk) w') t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callA (FunSpec.and (sa_of_csumm (lstNew_k2' (σ := σ))) (FunSpec.and (Frames.funSpec_dom _)
      (gwOf (nm "lst_new") (by decide_cbv)))) ?_
    intro s _ hs vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ _ hvalid
    have hs0 := hs
    obtain ⟨hl1, hl2, Γ, hT, hb, hblk, hfits, w0, hw0⟩ := hs
    obtain ⟨w, rfl⟩ := valid_word hw0 hvalid
    rw [evs_cons (ev_cw _ 24) (evs_cons (ev_cw _ 2) evs_nil)] at hvs
    cases hvs
    exact ⟨rfl, ea_callstep hH hord0 hL0 (by decide : 4 ≤ 5) hs0
      (x := nm "l") (by decide) (by decide) (a := 24) (b := 2) (ty := tLSTk) (callee := callee)
      (st := st) (w := w) hS hgw hd hbe⟩
  refine hoare_pre (P := EaMid s0 Γ0 p0 ADDR AD 4
      (fun Γ z => ∃ w', z.locals.lookup (nm "l") = some (.val (.word w')) ∧ Fits Γ (.ptr tLSTk) w')) ?_
    (fun t _ h => h.2)
  refine hoare_seq (R := fun r t => r = none ∧ EaMid s0 Γ0 p0 ADDR AD 5
      (fun _ z => ∃ w', z.locals.lookup (nm "l") = some (.val (.word w'))) t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_pre (ea_store hH (k := 4) (by decide) (x := nm "l") (ty := tLSTk) (by decide))
      (fun t _ h => eaMid_exists h)
  -- adopt, insert, return
  exact hoare_pre (ea_final hord0 hL0 hT0 hT0t hbal hkey (AD := AD)) (fun t _ h => ea_adopt h.2 hord0)


/-- The body of `bal_ensure_account`. -/
theorem ea_hoare (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {T0 : Obj} (hT0 : T0 ∈ Γ0) (hT0t : T0.ty = tHTd20)
    (hbal : gword s0 (nm "bal_accounts") = some T0.base) {ADDR : BitVec 64}
    (hkey : SrcKey Γ0 ADDR 20 tHTd20)
    (hl : s0.locals.lookup (nm "addr") = some (.val (.word ADDR))) :
    Hoare σ guestCtx (fun u => u = s0) eaBody (EaQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  have hA : Struct.AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  have gwOf : ∀ f, (balFns.map Prod.fst).contains f = true → FunSpec σ guestCtx f
      (fun _ s _ t => t.globals.lookup (nm "bal_accounts") = s.globals.lookup (nm "bal_accounts")) :=
    fun f hf => funSpec_bal_gw hF.hX (by simp) hf
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hbal' : s0.globals.lookup (nm "bal_accounts") = some (.val (.word T0.base)) :=
    AllocImpl.lookup_of_gword hbal
  unfold eaBody
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (funSpec_get_j (σ := σ) hF.hX)
    (funSpec_get_fits (σ := σ) (th := tHTd20) (by decide))) (eaQ_locals hH)
    fun s _ hs vs hvs callee v st ⟨⟨hm, hgl, hd, hbe, hRet⟩, hFit⟩ _ hsh => ?_
  subst s
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  rw [show ev s0 gBal = some (.val (.word T0.base)) from ev_gv hbal'] at ha1
  rw [Mpt.Leaves.ev_lv' hl] at ha2
  cases ha1; cases ha2
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) (by
    have := (shapeEqHOL_eq_true _ _).mp hsh
    exact (shapeEqHOL_eq_true _ _).mpr this)
  match ws, hws with
  | [a, b], _ =>
  have hgs : st.globals = s0.globals := AllocImpl.hfm_ext (funext hgl)
  have hGe : G guestC (guestHooksR (σ := σ)) Γ0 (callEntryStateHOLFinite s0 callee) :=
    Struct.G_congr (s := s0) hH rfl rfl rfl rfl hG0
  set u1 := setVarHOLFinite (nm "m") (wv [a, b]) { st with locals := s0.locals } with hu1
  have hT1 : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (eaPW Γ0 s0 p0) Γ0 u1 :=
    Struct.trk_congr hH (Struct.trk_refl hG0 hp0) hm hgs hd hbe
  have hm1 : u1.locals.lookup (nm "m") = some (wv [a, b]) := lk_set_self _ _ _
  have hl1 : u1.locals.lookup (nm "addr") = some (.val (.word ADDR)) :=
    (lk_set_ne _ _ (by decide)).trans hl
  refine hoare_seq (R := fun r t => (r = none ∧ t = u1) ∨ ((∃ v, r = some (.returned v)) ∧ EaQ Γ0 s0 p0 r t))
    ?_ (fun r t _ hr _ h => ?_) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun t _ ⟨ht, w, hw, hw0⟩ v' hv' => ?_
      subst ht
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_rfield_wv (ws := [a, b]) (by rw [ev_lv]; exact hm1) (i := 0) (by simp)] at hx
      cases hx
      have ha0 : a ≠ 0 := by
        intro h0
        subst h0
        rw [ev_cw] at hy
        cases hy
        simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy
      rw [ev_rfield_wv (ws := [a, b]) (by rw [ev_lv]; exact hm1) (i := 1) (by simp)] at hv'
      cases hv'
      have hfit := hFit Γ0 hGe T0.base ADDR rfl ⟨T0, hT0, rfl, hT0t⟩ _ rfl a b rfl ha0
      have hvk : valK tHTd20 = .ptr tAD := by decide
      rw [hvk] at hfit
      obtain ⟨o, ho, hob, hot⟩ := hfit
      refine Or.inr ⟨⟨_, rfl⟩, fun v'' hv'' => ?_⟩
      cases hv''
      refine ⟨Γ0, Struct.trk_congr hH hT1 rfl rfl rfl rfl, ?_, _, rfl, o, ho, hob, hot⟩
      show st.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts")
      rw [hgs]
    · refine hoare_skip fun t _ ⟨ht, h0⟩ => Or.inl ⟨rfl, ht⟩
  · rcases h with ⟨h, -⟩ | ⟨-, hq⟩
    · exact absurd h hr
    · exact hq
  · refine hoare_pre (P := fun t => t = u1) ?_ (fun t _ h => by
      rcases h with ⟨-, h⟩ | ⟨⟨v, hv⟩, -⟩
      · exact h
      · cases hv)
    refine Mpt.Leaves.hoare_decCallL (FunSpec.and (allocSpec_alloc hF.hX) (FunSpec.and (Frames.funSpec_dom _)
      (gwOf (nm "alloc") (by decide_cbv)))) (eaQ_locals hH)
      fun s _ hs vs hvs callee v' st2 ⟨hAl, ⟨hd2, hbe2⟩, hgw2⟩ _ _ => ?_
    subst hs
    rw [evs_cons (ev_cw _ 40) evs_nil] at hvs
    cases hvs
    have hpu1 : ptrsOf u1 = some p0 := (Frames.ptrsOf_congr hgs).trans hp0
    have hpe : ptrsOf (callEntryStateHOLFinite u1 callee) = some p0 := (Frames.ptrsOf_congr rfl).trans hpu1
    obtain ⟨hm', hgl', p1, hp1, hord1, hmo1, hret⟩ := hAl (by simp [Good]) _ p0 rfl hpe hord0
    obtain ⟨q, rfl, hq8, hlive, hna⟩ := hret _ rfl
    have h40 : (BitVec.ofNat 64 40).toNat = 40 := rfl
    rw [h40] at hlive hna
    have hT2 := Struct.trk_alloc hH hA hT1 rfl rfl hpe hm' hgl' hp1 hord1 hmo1 hd2 hbe2
    have hEa0 : EaMid s0 Γ0 p0 ADDR q 0 (fun _ _ => True)
        (setVarHOLFinite (nm "ad") (.val (.word q)) { st2 with locals := u1.locals }) := by
      refine ⟨(lk_set_ne _ _ (by decide)).trans hl1, lk_set_self _ _ _, Γ0,
        Struct.trk_congr hH hT2 rfl rfl rfl rfl, ?_, ⟨p1, (Frames.ptrsOf_congr rfl).trans hp1, hq8,
        hlive.1, hlive.2, ?_⟩, fun j hj => absurd hj (Nat.not_lt_zero _), trivial⟩
      · show st2.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts")
        rw [hgl' _ (by decide)]
        show st.globals.lookup (nm "bal_accounts") = _
        rw [hgs]
      · intro c h1 h2
        refine ⟨fun hio => hna c h1 h2 (Helpers.allocated_of_inObj hL0 hio), hna c h1 h2, ?_⟩
        have := hlive.1
        have := hlive.2
        unfold Ptrs.Allocated
        left
        omega
    exact hoare_pre (ea_tail hG0 hp0 hT0 hT0t hbal' hkey) (fun t _ ht => ht ▸ hEa0)


end body

/-- Preconditions of `bal_ensure_account(addr)`: `bal_accounts` is a non-null `tHTd20` object, and the key
lies in an array of a table of another header type (so it misses the table's region). -/
def EaPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR : BitVec 64, vs = [.val (.word ADDR)] ∧ BalNN s Γ ∧ SrcKey Γ ADDR 20 tHTd20

def eaSig : Sig := ⟨[.any], [.fits (.ptr tAD)], [], true⟩

/-- A returned word is a `tAD` object of the final typing, and `bal_accounts` keeps its value. -/
def EaPost (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → t.globals.lookup (nm "bal_accounts") = s.globals.lookup (nm "bal_accounts") ∧
    ∃ w, v = .val (.word w) ∧ ∃ o ∈ Γ', o.base = w ∧ o.ty = tAD

/-- **`bal_ensure_account(addr)`**: finds or creates the account record of `addr`; writes only table cells
(`capsHT tHTd20`); the result is a `tAD` object; `bal_accounts` is not reassigned. -/
theorem sumSpec_bal_ensure_account :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "bal_ensure_account") eaSig EaPre
      (fun _ s Γ a => CapPW (capsHT tHTd20) s Γ a) EaPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine sumSpecA_of_returns (noExc_bal_ensure_account hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, rfl, sa, hA⟩ := lookupCode_one code_bal_ensure_account hl'
  obtain ⟨ADDR, hvs, ⟨T0, hT0, hT0t, hbal⟩, hkey⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  have hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR)) := by rw [hloc]; exact hA
  have H' := ea_hoare hG0 hp0 hT0 hT0t hbal hkey hla s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', hT, hbl, w, rfl, o, ho, hob, hot⟩ := H' v rfl
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := eaSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ CapPW (capsHT tHTd20) s0 Γ0 a)
    (vs := [.val (.word ADDR)]) (r := r) hT hp0 (fun h => by simp [eaSig] at h)
    (fun p _ w' hw' i rt w'' hi hfl => by
      rw [hv] at hw'
      cases hw'
      match i, hi with
      | 0, hi =>
        simp only [eaSig, List.getElem?_cons_zero, Option.some.injEq] at hi
        subst hi
        simp only [flattenHOL, List.getElem?_cons_zero, Option.some.injEq, HolWordLab.word.injEq] at hfl
        subst hfl
        exact ⟨o, ho, hob, hot⟩
      | _ + 1, hi => simp [eaSig] at hi)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ?_⟩
  rw [hv] at hv'
  cases hv'
  exact ⟨hbl, _, rfl, o, ho, hob, hot⟩

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_bal_ensure_account
