import InitECandidate.Solver.MemSafe.Bal.RemoveChange

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

section rc
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The state before the removal call: the account record `b`, the list slot, and the arguments. -/
def RcT (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (a b : BitVec 64) (k0 E : Nat) (IDX : BitVec 64)
    (t : State σ) : Prop :=
  t.locals.lookup (nm "m") = some (wv [a, b]) ∧
  t.locals.lookup (nm "which") = some (.val (.word (BitVec.ofNat 64 (8 * k0)))) ∧
  t.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 E))) ∧
  t.locals.lookup (nm "idx") = some (.val (.word IDX)) ∧
  ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ t ∧
    t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
    ∃ o ∈ Γ, o.base = b ∧ o.ty = tAD

theorem rc_tail (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {a b IDX : BitVec 64} {k0 ty E : Nat} (hk0 : k0 < 5) (hty : adTy.slot k0 = .ptr ty) (hlt : ty ∈ lstTys)
    (hE : lstE ty = E) :
    Hoare σ guestCtx (RcT s0 Γ0 p0 a b k0 E IDX)
      (.seq (callD (nm "bal_list_remove_idx")
        [.load .one (.op .add [.rfield 1 (lv (nm "m")), lv (nm "which")]), lv (nm "esz"), lv (nm "idx")])
        (.return (cw 0))) (BcQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  refine hoare_seq (R := fun r t => r = none ∧ t.globals.lookup (nm "bal_accounts") =
      s0.globals.lookup (nm "bal_accounts") ∧
      ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ' t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (ret_bcQ hH) fun t _ h => h.2)
  refine hoare_callD (FunSpec.and (sumRel_fun (sumSpec_bal_list_remove_idx (σ := σ) (X := guestCtx)
    (H := guestHooksR) hF lstHooks_guestR)) (FunSpec.and (Frames.funSpec_dom _)
    (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp) (f := nm "bal_list_remove_idx")
      (by decide_cbv)))) ?_
  rintro s hs ⟨hm, hwh, hes, hix, Γ, hT, hb, o, ho, hob, hot⟩ vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
  rw [evs_nil] at hr3
  cases hr3
  have hrf : ev s (.rfield 1 (lv (nm "m"))) = some (.val (.word b)) :=
    ev_rfield_wv (ws := [a, b]) (by rw [ev_lv]; exact hm) (i := 1) (by simp)
  have ha1' := lp_ev_ld (ev_add2 hrf (Mpt.Leaves.ev_lv' hwh)) ha1
  subst ha1'
  rw [Mpt.Leaves.ev_lv' hes] at ha2
  cases ha2
  rw [Mpt.Leaves.ev_lv' hix] at ha3
  cases ha3
  have hT0 := hT
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT0
  obtain ⟨qT, hqT, hordT, hLayT, hFlT, -⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  have hsz : 8 * k0 + 8 ≤ o.size := by
    have := (hLayT.1 o ho).2.2.2.1
    rw [hot] at this
    have h40 : (guestC.ty tAD).minSz = 40 := by decide
    omega
  have hfit := hFlT o ho k0 hsz
  rw [hot, show (guestC.ty tAD) = adTy from rfl, hty] at hfit
  obtain ⟨L, hL, hLb, hLt⟩ := hfit
  have hcell : o.cell k0 = b + BitVec.ofNat 64 (8 * k0) := by unfold Obj.cell; rw [hob]
  rw [hcell] at hLb
  obtain ⟨Γ1, pp, pp', hc, -, hT2⟩ := call_cs hH hT hord0 hL0 (sg := luSig) (Pre := LuPre)
    (PW' := fun _ _ Γ a => Inc.LaPW Γ a) (Q := fun _ _ _ _ _ _ => True)
    (vs := [.val (.word (rd s.memory (b + BitVec.ofNat 64 (8 * k0)))), .val (.word (BitVec.ofNat 64 E)),
      .val (.word IDX)]) (r := .returned v) (callee := callee) (st := st) hS
    (by simp [Good]) (by simp [Abortive]) ⟨pT, hpT, argsOK_any3⟩
    ⟨L, hL, by rw [hLt]; exact hlt, IDX, by rw [hLb, hLt, hE]⟩ (fun g _ => by simp [luSig])
    (fun y hy => absurd hy argCells_any3)
    (fun y hpc hpw => pw_of_la hord0 hL0 hT hpc hpw) hd hbe
  exact ⟨rfl, hgw.trans hb, Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl⟩


theorem rc_hoare (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {T0 : Obj} (hT0 : T0 ∈ Γ0) (hT0t : T0.ty = tHTd20)
    (hbal : gword s0 (nm "bal_accounts") = some T0.base) {ADDR WH ESZ IDX : BitVec 64}
    (hwh : ∃ k0 ty E : Nat, k0 < 5 ∧ adTy.slot k0 = .ptr ty ∧ ty ∈ lstTys ∧ lstE ty = E ∧
      WH = BitVec.ofNat 64 (8 * k0) ∧ ESZ = BitVec.ofNat 64 E)
    (hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR)))
    (hlw : s0.locals.lookup (nm "which") = some (.val (.word WH)))
    (hle : s0.locals.lookup (nm "esz") = some (.val (.word ESZ)))
    (hli : s0.locals.lookup (nm "idx") = some (.val (.word IDX))) :
    Hoare σ guestCtx (fun u => u = s0) rcBody (BcQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hbal' : s0.globals.lookup (nm "bal_accounts") = some (.val (.word T0.base)) :=
    AllocImpl.lookup_of_gword hbal
  unfold rcBody
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
  · obtain ⟨k0, ty, E, hk0, hty, hlt, hE, rfl, rfl⟩ := hwh
    refine hoare_pre (rc_tail hG0 hp0 (a := a) (b := b) (IDX := IDX) hk0 hty hlt hE) ?_
    intro t _ ht
    rcases ht with ⟨-, ht, ha0⟩ | ⟨⟨v, hv⟩, -⟩
    · subst ht
      have hfit := hFit Γ0 hGe T0.base ADDR rfl ⟨T0, hT0, rfl, hT0t⟩ _ rfl a b rfl ha0
      have hvk : valK tHTd20 = .ptr tAD := by decide
      rw [hvk] at hfit
      obtain ⟨o, ho, hob, hot⟩ := hfit
      refine ⟨hm1, ?_, ?_, ?_, Γ0, hT1, ?_, o, ho, hob, hot⟩
      · exact (lk_set_ne _ _ (by decide)).trans hlw
      · exact (lk_set_ne _ _ (by decide)).trans hle
      · exact (lk_set_ne _ _ (by decide)).trans hli
      · show st.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts")
        rw [hgs]
    · cases hv

end rc

def RcPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR WH ESZ IDX : BitVec 64, vs = [.val (.word ADDR), .val (.word WH), .val (.word ESZ), .val (.word IDX)] ∧
    BalNN s Γ ∧ ∃ k0 ty E : Nat, k0 < 5 ∧ adTy.slot k0 = .ptr ty ∧ ty ∈ lstTys ∧ lstE ty = E ∧
      WH = BitVec.ofNat 64 (8 * k0) ∧ ESZ = BitVec.ofNat 64 E

def rcSig : Sig := ⟨[.any, .any, .any, .any], [], [], true⟩

/-- **`bal_remove_change(addr, which, esz, idx)`**: `(which, esz)` is one of the list slots of the record
(`AD_BAL_CHANGES`/40, `AD_NONCE_CHANGES`/16, `AD_CODE_CHANGES`/24). -/
theorem sumSpec_bal_remove_change :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "bal_remove_change") rcSig RcPre
      (fun _ s Γ a => BalPW s Γ a) BalPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine sumSpecA_of_returns (noExc_bal_remove_change hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, C', D, rfl, sa, sb, sc, sd, hA, hB, hC, hD⟩ :=
    Bn.lookupCode_four code_bal_remove_change (by decide) hl'
  obtain ⟨ADDR, WH, ESZ, IDX, hvs, ⟨T0, hT0, hT0t, hbal⟩, hwh⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  have H' := rc_hoare hG0 hp0 hT0 hT0t hbal hwh (by rw [hloc]; exact hA) (by rw [hloc]; exact hB)
    (by rw [hloc]; exact hC) (by rw [hloc]; exact hD) s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨hbl, Γ', hT⟩ := H' v rfl
  obtain ⟨p', hc⟩ := sumCore_of_bc (sg := rcSig) rfl rfl hp0 hT
    (vs := [.val (.word ADDR), .val (.word WH), .val (.word ESZ), .val (.word IDX)]) (r := r)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ?_⟩
  rw [hv] at hv'
  cases hv'
  exact hbl

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_bal_remove_change
