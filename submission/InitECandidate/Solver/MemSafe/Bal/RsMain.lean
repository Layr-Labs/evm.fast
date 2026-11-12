import InitECandidate.Solver.MemSafe.Bal.RemoveStorage

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

section rs
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- Before the removal in the list of a slot. -/
def RsT (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (a2 b2 TB SLOT IDX : BitVec 64) (t : State σ) : Prop :=
  t.locals.lookup (nm "sl") = some (wv [a2, b2]) ∧
  t.locals.lookup (nm "t") = some (.val (.word TB)) ∧
  t.locals.lookup (nm "slot") = some (.val (.word SLOT)) ∧
  t.locals.lookup (nm "idx") = some (.val (.word IDX)) ∧
  ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ t ∧
    t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
    (∃ T' ∈ Γ, T'.base = TB ∧ T'.ty = tHTl32) ∧ ∃ L ∈ Γ, L.base = b2 ∧ L.ty = tLSTc

theorem rs_tail (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {a2 b2 TB SLOT IDX : BitVec 64} :
    Hoare σ guestCtx (RsT s0 Γ0 p0 a2 b2 TB SLOT IDX) rsTail (BcQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  unfold rsTail
  refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0
      (balPW Γ0 s0 p0) Γ t ∧ t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
      t.locals.lookup (nm "t") = some (.val (.word TB)) ∧ t.locals.lookup (nm "slot") = some (.val (.word SLOT)) ∧
      t.locals.lookup (nm "sl") = some (wv [a2, b2]) ∧ (∃ T' ∈ Γ, T'.base = TB ∧ T'.ty = tHTl32)) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · -- the removal
    refine hoare_callD (FunSpec.and (sumRel_fun (sumSpec_bal_list_remove_idx (σ := σ) (X := guestCtx)
      (H := guestHooksR) hF lstHooks_guestR)) (FunSpec.and (Frames.funSpec_dom _)
      (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp) (f := nm "bal_list_remove_idx")
        (by decide_cbv)))) ?_
    rintro s hs ⟨hsl, hlt, hls, hli, Γ, hT, hb, ⟨T', hT', hT'b, hT't⟩, L, hL, hLb, hLt⟩ vs hvs callee v st
      ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2', r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    rw [ev_rfield_wv (ws := [a2, b2]) (by rw [ev_lv]; exact hsl) (i := 1) (by simp)] at ha1
    cases ha1
    rw [ev_cw] at ha2
    cases ha2
    rw [Mpt.Leaves.ev_lv' hli] at ha3
    cases ha3
    have hT0 := hT
    obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT0
    obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
    rw [hpT] at hqT
    cases hqT
    obtain ⟨Γ1, pp, pp', hc, -, hT2⟩ := call_cs hH hT hord0 hL0 (sg := luSig) (Pre := LuPre)
      (PW' := fun _ _ Γ a => Inc.LaPW Γ a) (Q := fun _ _ _ _ _ _ => True)
      (vs := [.val (.word b2), .val (.word (BitVec.ofNat 64 40)), .val (.word IDX)])
      (r := .returned v) (callee := callee) (st := st) hS (by simp [Good]) (by simp [Abortive])
      ⟨pT, hpT, argsOK_any3⟩
      ⟨L, hL, by rw [hLt]; decide, IDX, by rw [← hLb, hLt]; rfl⟩ (fun g _ => by simp [luSig])
      (fun y hy => absurd hy argCells_any3)
      (fun y hpc hpw => pw_of_la hord0 hL0 hT hpc hpw) hd hbe
    obtain ⟨T1, hT1, hT1b, hT1t, -⟩ := hc.2.2.2.1 T' hT'
    exact ⟨rfl, Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl, hgw.trans hb, hlt, hls, hsl,
      T1, hT1, hT1b.trans hT'b, hT1t.trans hT't⟩
  · -- the conditional deletion and the return
    refine hoare_seq (R := fun r t => r = none ∧ t.globals.lookup (nm "bal_accounts") =
        s0.globals.lookup (nm "bal_accounts") ∧
        ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ' t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (ret_bcQ hH) fun t _ h => h.2)
    refine hoare_ite ?_ ?_
    · refine hoare_callD (FunSpec.and (sa_of_csumm (csumm_htab_del hF htabHooks_guestR (th := tHTl32)
        (by decide) : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_del")
          (delSig tHTl32) (capsHT tHTl32))) (FunSpec.and (Frames.funSpec_dom _)
        (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp) (f := nm "htab_del") (by decide_cbv)))) ?_
      rintro s hs ⟨⟨_, Γ, hT, hb, htl, hls, hsl, T', hT', hT'b, hT't⟩, -⟩ vs hvs callee v st
        ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst
      obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
      obtain ⟨a2', r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
      rw [evs_nil] at hr2
      cases hr2
      rw [Mpt.Leaves.ev_lv' htl] at ha1
      cases ha1
      rw [Mpt.Leaves.ev_lv' hls] at ha2
      cases ha2
      have hT0 := hT
      obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT0
      obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
      rw [hpT] at hqT
      cases hqT
      obtain ⟨Γ1, pp, pp', hc, -, hT2⟩ := call_cs hH hT hord0 hL0 (sg := delSig tHTl32)
        (Pre := fun _ s Γ => ReqOK (capsHT tHTl32) s Γ)
        (PW' := fun _ s Γ a => CapPW (capsHT tHTl32) s Γ a) (Q := fun _ _ _ _ _ _ => True)
        (vs := [.val (.word TB), .val (.word SLOT)]) (r := .returned v) (callee := callee) (st := st) hS
        (by simp [Good]) (by simp [Abortive])
        ⟨pT, hpT, argsOK2 ⟨_, rfl, T', hT', hT'b, hT't⟩ trivial⟩
        (fun c hc hne => absurd (by
          simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
          rcases hc with rfl | rfl <;> rfl) hne)
        (fun g _ => by simp [delSig])
        (fun y hy => by
          exfalso
          obtain ⟨i, w, -, h⟩ := hy
          rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y', hj, -⟩
          · rcases i with _ | _ | i <;> simp [delSig] at hn
          · rcases i with _ | _ | i <;> simp [delSig] at hj)
        (fun y hpc hpw => pw_of_caps hord0 hordT hmT hL0 hLayT hnfT (th := tHTl32) (Or.inr (Or.inl rfl)) hpc hpw)
        hd hbe
      exact ⟨rfl, hgw.trans hb, Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl⟩
    · exact hoare_skip fun t _ ⟨⟨_, Γ, hT, hb, _⟩, _⟩ => ⟨rfl, hb, Γ, hT⟩


/-- Before the second `htab_get`. -/
def RsM (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (TB SLOT IDX : BitVec 64) (t : State σ) : Prop :=
  t.locals.lookup (nm "t") = some (.val (.word TB)) ∧
  t.locals.lookup (nm "slot") = some (.val (.word SLOT)) ∧
  t.locals.lookup (nm "idx") = some (.val (.word IDX)) ∧
  ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ t ∧
    t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
    ∃ T' ∈ Γ, T'.base = TB ∧ T'.ty = tHTl32

theorem rs_mid (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {TB SLOT IDX : BitVec 64} :
    Hoare σ guestCtx (RsM s0 Γ0 p0 TB SLOT IDX) rsMid (BcQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  unfold rsMid
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (funSpec_get_j (σ := σ) hF.hX)
    (funSpec_get_fits (σ := σ) (th := tHTl32) (by decide))) (bcQ_locals hH)
    fun s _ hs vs hvs callee v st ⟨⟨hm, hgl, hd, hbe, hRet⟩, hFit⟩ _ hsh => ?_
  obtain ⟨htl, hls, hli, Γ, hT, hb, T', hT', hT'b, hT't⟩ := hs
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  rw [Mpt.Leaves.ev_lv' htl] at ha1
  cases ha1
  rw [Mpt.Leaves.ev_lv' hls] at ha2
  cases ha2
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) (by
    have := (shapeEqHOL_eq_true _ _).mp hsh
    exact (shapeEqHOL_eq_true _ _).mpr this)
  match ws, hws with
  | [a2, b2], _ =>
  have hgs : st.globals = s.globals := AllocImpl.hfm_ext (funext hgl)
  have hGe : G guestC (guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    Struct.G_congr (s := s) hH rfl rfl rfl rfl (Struct.trk_G hT)
  set u3 := setVarHOLFinite (nm "sl") (wv [a2, b2]) { st with locals := s.locals } with hu3
  have hT3 : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ u3 :=
    Struct.trk_congr hH hT hm hgs hd hbe
  have hsl : u3.locals.lookup (nm "sl") = some (wv [a2, b2]) := lk_set_self _ _ _
  refine hoare_seq (R := fun r t => (r = none ∧ t = u3 ∧ a2 ≠ 0) ∨
    ((∃ v, r = some (.returned v)) ∧ BcQ Γ0 s0 p0 r t)) ?_ (fun r t _ hr _ h => ?_) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun t _ ⟨ht, w, hw, hw0⟩ v' hv' => ?_
      subst ht
      refine Or.inr ⟨⟨_, rfl⟩, fun v'' hv'' => ?_⟩
      cases hv''
      refine ⟨?_, Γ, Struct.trk_congr hH hT3 rfl rfl rfl rfl⟩
      show st.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts")
      rw [hgs]; exact hb
    · refine hoare_skip fun t _ ⟨ht, h0⟩ => ?_
      subst ht
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false h0
      rw [ev_rfield_wv (ws := [a2, b2]) (by rw [ev_lv]; exact hsl) (i := 0) (by simp)] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      refine Or.inl ⟨rfl, rfl, fun h0' => ?_⟩
      subst h0'
      simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy
  · rcases h with ⟨h, -⟩ | ⟨-, hq⟩
    · exact absurd h hr
    · exact hq
  · refine hoare_pre (rs_tail hG0 hp0 (a2 := a2) (b2 := b2) (TB := TB) (SLOT := SLOT) (IDX := IDX)) ?_
    intro t _ ht
    rcases ht with ⟨-, ht, ha0⟩ | ⟨⟨v, hv⟩, -⟩
    · subst ht
      have hfit := hFit Γ hGe TB SLOT rfl ⟨T', hT', hT'b, hT't⟩ _ rfl a2 b2 rfl ha0
      have hvk : valK tHTl32 = .ptr tLSTc := by decide
      rw [hvk] at hfit
      obtain ⟨L, hL, hLb, hLt⟩ := hfit
      refine ⟨hsl, (lk_set_ne _ _ (by decide)).trans htl, (lk_set_ne _ _ (by decide)).trans hls,
        (lk_set_ne _ _ (by decide)).trans hli, Γ, hT3, ?_, ⟨T', hT', hT'b, hT't⟩, L, hL, hLb, hLt⟩
      show st.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts")
      rw [hgs]; exact hb
    · cases hv

theorem rs_hoare (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {T0 : Obj} (hT0 : T0 ∈ Γ0) (hT0t : T0.ty = tHTd20)
    (hbal : gword s0 (nm "bal_accounts") = some T0.base) {ADDR SLOT IDX : BitVec 64}
    (hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR)))
    (hls : s0.locals.lookup (nm "slot") = some (.val (.word SLOT)))
    (hli : s0.locals.lookup (nm "idx") = some (.val (.word IDX))) :
    Hoare σ guestCtx (fun u => u = s0) rsBody (BcQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hbal' : s0.globals.lookup (nm "bal_accounts") = some (.val (.word T0.base)) :=
    AllocImpl.lookup_of_gword hbal
  unfold rsBody
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (funSpec_get_j (σ := σ) hF.hX)
    (funSpec_get_fits (σ := σ) (th := tHTd20) (by decide))) (bcQ_locals hH)
    fun s _ hs vs hvs callee v st ⟨⟨hm, hgl, hd, hbe, hRet⟩, hFit⟩ _ hsh => ?_
  subst s
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  rw [show ev s0 gBal = some (.val (.word T0.base)) from ev_gv hbal'] at ha1
  rw [Mpt.Leaves.ev_lv' hla] at ha2
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
  have hT1 : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ0 u1 :=
    Struct.trk_congr hH (Struct.trk_refl hG0 hp0) hm hgs hd hbe
  have hm1 : u1.locals.lookup (nm "m") = some (wv [a, b]) := lk_set_self _ _ _
  refine hoare_seq (R := fun r t => (r = none ∧ t = u1 ∧ a ≠ 0) ∨
    ((∃ v, r = some (.returned v)) ∧ BcQ Γ0 s0 p0 r t)) ?_ (fun r t _ hr _ h => ?_) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun t _ ⟨ht, w, hw, hw0⟩ v' hv' => ?_
      subst ht
      refine Or.inr ⟨⟨_, rfl⟩, fun v'' hv'' => ?_⟩
      cases hv''
      refine ⟨?_, Γ0, Struct.trk_congr hH hT1 rfl rfl rfl rfl⟩
      show st.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts")
      rw [hgs]
    · refine hoare_skip fun t _ ⟨ht, h0⟩ => ?_
      subst ht
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false h0
      rw [ev_rfield_wv (ws := [a, b]) (by rw [ev_lv]; exact hm1) (i := 0) (by simp)] at hx
      cases hx
      rw [ev_cw] at hy
      cases hy
      refine Or.inl ⟨rfl, rfl, fun h0' => ?_⟩
      subst h0'
      simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy
  · rcases h with ⟨h, -⟩ | ⟨-, hq⟩
    · exact absurd h hr
    · exact hq
  · refine Mpt.Leaves.hoare_decL (bcQ_locals hH) fun u _ hu v hv _ => ?_
    rcases hu with ⟨-, hu, ha0⟩ | ⟨⟨w, hw⟩, -⟩
    swap
    · cases hw
    subst hu
    have hrf : ev u1 (.rfield 1 (lv (nm "m"))) = some (.val (.word b)) :=
      ev_rfield_wv (ws := [a, b]) (by rw [ev_lv]; exact hm1) (i := 1) (by simp)
    have hv' := lp_ev_ld (ev_add2 hrf (ev_cw _ 0)) hv
    subst hv'
    have hfit := hFit Γ0 hGe T0.base ADDR rfl ⟨T0, hT0, rfl, hT0t⟩ _ rfl a b rfl ha0
    have hvk : valK tHTd20 = .ptr tAD := by decide
    rw [hvk] at hfit
    obtain ⟨o, ho, hob, hot⟩ := hfit
    have hG1 := Struct.trk_G hT1
    obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := id hT1
    obtain ⟨qT, hqT, hordT, hLayT, hFlT, -⟩ := hGT
    rw [hpT] at hqT
    cases hqT
    have hsz : 8 * 0 + 8 ≤ o.size := by
      have := (hLayT.1 o ho).2.2.2.1
      rw [hot] at this
      have h40 : (guestC.ty tAD).minSz = 40 := by decide
      omega
    have hfit2 := hFlT o ho 0 hsz
    rw [hot, show (guestC.ty tAD) = adTy from rfl] at hfit2
    have hs0 : adTy.slot 0 = .ptr tHTl32 := by decide
    rw [hs0] at hfit2
    obtain ⟨T', hT', hT'b, hT't⟩ := hfit2
    have hcell : o.cell 0 = b + BitVec.ofNat 64 (8 * 0) := by unfold Obj.cell; rw [hob]
    rw [hcell] at hT'b
    refine hoare_pre (rs_mid hG0 hp0 (TB := rd u1.memory (b + 0)) (SLOT := SLOT) (IDX := IDX)) ?_
    intro t _ ht
    subst ht
    refine ⟨lk_set_self _ _ _, (lk_set_ne _ _ (by decide)).trans ((lk_set_ne _ _ (by decide)).trans hls),
      (lk_set_ne _ _ (by decide)).trans ((lk_set_ne _ _ (by decide)).trans hli), Γ0, ?_, ?_, T', hT', ?_, hT't⟩
    · exact Struct.trk_congr hH hT1 rfl rfl rfl rfl
    · show u1.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts")
      show st.globals.lookup (nm "bal_accounts") = _
      rw [hgs]
    · simpa using hT'b

end rs

end InitECandidate.Solver.MemSafe.Bal

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
variable {σ : Type}

def RsPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR SLOT IDX : BitVec 64, vs = [.val (.word ADDR), .val (.word SLOT), .val (.word IDX)] ∧ BalNN s Γ

def rsSig : Sig := ⟨[.any, .any, .any], [], [], true⟩

/-- **`remove_storage_write(addr, slot, idx)`**: with `bal_accounts` a non-null `tHTd20` object. -/
theorem sumSpec_remove_storage_write :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "remove_storage_write") rsSig RsPre
      (fun _ s Γ a => BalPW s Γ a) BalPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine sumSpecA_of_returns (noExc_remove_storage_write hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, C', rfl, sa, sb, sc, hA, hB, hC⟩ :=
    Spec.lookupCode_three code_remove_storage_write (by decide) (by decide) (by decide) hl'
  obtain ⟨ADDR, SLOT, IDX, hvs, ⟨T0, hT0, hT0t, hbal⟩⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  have H' := rs_hoare hG0 hp0 hT0 hT0t hbal (by rw [hloc]; exact hA) (by rw [hloc]; exact hB)
    (by rw [hloc]; exact hC) s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨hbl, Γ', hT⟩ := H' v rfl
  obtain ⟨p', hc⟩ := sumCore_of_bc (sg := rsSig) rfl rfl hp0 hT
    (vs := [.val (.word ADDR), .val (.word SLOT), .val (.word IDX)]) (r := r)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ?_⟩
  rw [hv] at hv'
  cases hv'
  exact hbl

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_remove_storage_write
