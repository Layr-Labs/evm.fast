import InitECandidate.Solver.MemSafe.Bal.Balance

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

section pre
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- **The common prefix of the BAL mutators**: `ad = bal_ensure_account(addr); e = lst_upsert_idx(ad[8 k0], E, idx)`. -/
theorem bal_prefix (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {T0 : Obj} (hT0 : T0 ∈ Γ0) (hT0t : T0.ty = tHTd20)
    (hbal : gword s0 (nm "bal_accounts") = some T0.base) {ADDR IDX : BitVec 64}
    {Xs : List (MlS × ValueHOL 64)} (hidx : (nm "idx", ValueHOL.val (.word IDX)) ∈ Xs) (hXs : ∀ p ∈ Xs, p.1 ≠ nm "ad" ∧ p.1 ≠ nm "e")
    {KP : Gam → Prop} (hKP : ∀ Γ Γ', Ext Γ Γ' → KP Γ → KP Γ')
    {k0 ty E : Nat} (hk0 : k0 < 5) (hty : adTy.slot k0 = .ptr ty) (hlt : ty ∈ lstTys) (hE : lstE ty = E)
    {cont : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L })
    (hcont : ∀ AD ELEM, Hoare σ guestCtx (AdE s0 Γ0 p0 ADDR AD ELEM E Xs KP) cont Q) :
    Hoare σ guestCtx (BS s0 Γ0 p0 ADDR Xs KP)
      (.decCall (nm "ad") .one (nm "bal_ensure_account") [lv (nm "addr")]
        (.decCall (nm "e") .one (nm "lst_upsert_idx") [adLd (8 * k0), cw E, lv (nm "idx")] cont)) Q := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (sumRel_fun (sumSpec_bal_ensure_account (σ := σ)))
    (FunSpec.and (Frames.funSpec_dom _) (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp)
      (f := nm "bal_ensure_account") (by decide_cbv)))) hQ
    fun s _ hs vs hvs callee v st ⟨hRel, ⟨hd, hbe⟩, hgw⟩ _ hsh => ?_
  obtain ⟨w, rfl⟩ := val_of_shape1 hsh
  have hs0 := hs
  obtain ⟨hla, hXl, -⟩ := hs
  rw [evs_cons (Mpt.Leaves.ev_lv' hla) evs_nil] at hvs
  cases hvs
  have hz := bs_ea hG0 hp0 hT0 hT0t hbal hXs hKP hs0 hRel hgw hd hbe
  refine hoare_pre (P := AdS s0 Γ0 p0 ADDR w Xs KP) ?_ (fun t _ ht => ht ▸ hz)
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (sumRel_fun (sumSpec_lst_upsert_idx (σ := σ) (X := guestCtx)
    (H := guestHooksR) (Rec.foldOK_guestR) guestHooksR_mono lstHooks_guestR))
    (FunSpec.and (Frames.funSpec_dom _) (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp)
      (f := nm "lst_upsert_idx") (by decide_cbv)))) hQ
    fun s' _ hs' vs' hvs' callee' v' st' ⟨hRel', ⟨hd', hbe'⟩, hgw'⟩ _ hsh' => ?_
  obtain ⟨w', rfl⟩ := val_of_shape1 hsh'
  have hs0' := hs'
  obtain ⟨hla', hXl', hlad', -⟩ := hs'
  have hli' := hXl' _ hidx
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs'
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
  rw [evs_nil] at hr3
  cases hr3
  have ha1' := lp_ev_ld (ev_add2 (Mpt.Leaves.ev_lv' hlad') (ev_cw _ (8 * k0))) ha1
  subst ha1'
  rw [ev_cw] at ha2
  cases ha2
  rw [Mpt.Leaves.ev_lv' hli'] at ha3
  cases ha3
  have hz2 := ads_up hG0 hp0 hk0 hty hlt hE hidx hXs hKP hs0' hRel' hgw' hd' hbe'
  exact hoare_pre (hcont w w') (fun t _ ht => ht ▸ hz2)

/-- **The prefix `ad = bal_ensure_account(addr)`** alone. -/
theorem bal_prefix0 (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {T0 : Obj} (hT0 : T0 ∈ Γ0) (hT0t : T0.ty = tHTd20)
    (hbal : gword s0 (nm "bal_accounts") = some T0.base) {ADDR : BitVec 64}
    {Xs : List (MlS × ValueHOL 64)} (hXs : ∀ p ∈ Xs, p.1 ≠ nm "ad" ∧ p.1 ≠ nm "e")
    {KP : Gam → Prop} (hKP : ∀ Γ Γ', Ext Γ Γ' → KP Γ → KP Γ')
    {cont : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L })
    (hcont : ∀ AD, Hoare σ guestCtx (AdS s0 Γ0 p0 ADDR AD Xs KP) cont Q) :
    Hoare σ guestCtx (BS s0 Γ0 p0 ADDR Xs KP)
      (.decCall (nm "ad") .one (nm "bal_ensure_account") [lv (nm "addr")] cont) Q := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (sumRel_fun (sumSpec_bal_ensure_account (σ := σ)))
    (FunSpec.and (Frames.funSpec_dom _) (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp)
      (f := nm "bal_ensure_account") (by decide_cbv)))) hQ
    fun s _ hs vs hvs callee v st ⟨hRel, ⟨hd, hbe⟩, hgw⟩ _ hsh => ?_
  obtain ⟨w, rfl⟩ := val_of_shape1 hsh
  have hs0 := hs
  obtain ⟨hla, hXl, -⟩ := hs
  rw [evs_cons (Mpt.Leaves.ev_lv' hla) evs_nil] at hvs
  cases hvs
  have hz := bs_ea hG0 hp0 hT0 hT0t hbal hXs hKP hs0 hRel hgw hd hbe
  exact hoare_pre (hcont w) (fun t _ ht => ht ▸ hz)

end pre

end InitECandidate.Solver.MemSafe.Bal
