import InitECandidate.Solver.MemSafe.Bal.BalanceMain

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- `st e + 8 m, y`. -/
def eSt (m : Nat) (y : MlS) : ProgHOL 64 := .store (.op .add [lv (nm "e"), cw (8 * m)]) (lv y)

def ccBody : ProgHOL 64 :=
  .decCall (nm "ad") .one (nm "bal_ensure_account") [lv (nm "addr")]
    (.decCall (nm "e") .one (nm "lst_upsert_idx") [adLd 32, cw 24, lv (nm "idx")]
      (.seq (eSt 1 (nm "code")) (.seq (eSt 2 (nm "code_len")) (.return (cw 0)))))

theorem entry_add_code_change : fnEntry Guest.Software.guestFn_add_code_change =
    (nm "add_code_change", [(nm "addr", .one), (nm "idx", .one), (nm "code", .one), (nm "code_len", .one)],
      ccBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_add_code_change : guestCode (nm "add_code_change") =
    some ([(nm "addr", .one), (nm "idx", .one), (nm "code", .one), (nm "code_len", .one)], ccBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 418) (by decide)) ⟨_, rfl⟩
    entry_add_code_change

theorem xchk_add_code_change :
    xChk balX4 false (declPair Guest.Software.guestFn_add_code_change).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem noExc_add_code_change (hX : X.code.lookup = guestCode) :
    NoExc σ X (nm "add_code_change") :=
  noExc_of_pair (noExc_balX4 hX) hX (p := declPair Guest.Software.guestFn_add_code_change)
    (declPair_valid (List.getElem_mem (n := 418) (by decide)) ⟨_, rfl⟩) xchk_add_code_change

section st1
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- One word of the new element: `st e + 8 m, y` keeps the element state. -/
theorem ade_store1 (hH : HooksLawful guestC (guestHooksR (σ := σ))) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) {ADDR AD ELEM : BitVec 64} {E : Nat}
    {Xs : List (MlS × ValueHOL 64)} {KP : Gam → Prop} {m : Nat} {y : MlS} {Y : BitVec 64}
    (hy : (y, ValueHOL.val (.word Y)) ∈ Xs) (hm : 8 * (m + 1) ≤ E) :
    Hoare σ guestCtx (AdE s0 Γ0 p0 ADDR AD ELEM E Xs KP) (eSt m y)
      (fun r t => r = none ∧ AdE s0 Γ0 p0 ADDR AD ELEM E Xs KP t) := by
  unfold eSt
  refine hoare_store fun s _ ⟨hla, hXl, hlad, hle, Γ, hT, hb, hkey, hkp, hobj, x, hx, hxt, k, hk, hELEM, hxe⟩
    w v mem hw hv hmem => ?_
  have hpy : s.locals.lookup y = some (.val (.word Y)) := hXl _ hy
  rw [ev_add2 (Mpt.Leaves.ev_lv' hle) (ev_cw _ (8 * m))] at hw
  cases hw
  rw [Mpt.Leaves.ev_lv' hpy] at hv
  cases hv
  have hcell : ELEM + BitVec.ofNat 64 (8 * m) = x.cell (k + m) := by rw [hELEM]; exact cell_add x k m
  rw [hcell] at hmem
  have hT' := trk_wordsA hH lstHooks_guestR hT hx hxt (k := k + m) (n := 1) (by omega)
    (vals := flattenHOL (ValueHOL.val (.word Y))) (by simp [flattenHOL]) hmem
    (fun j hj => pw_of_la hord0 hL0 hT ⟨x, hx, k + m + j, by unfold Obj.HasSlot; omega,
      lstA_prot hxt _, rfl⟩ (Or.inr ⟨x, hx, hxt, k + m + j, by unfold Obj.HasSlot; omega, rfl⟩))
  exact ⟨rfl, hla, hXl, hlad, hle, Γ, hT', hb, hkey, hkp, hobj, x, hx, hxt, k, hk, hELEM, hxe⟩


theorem ade_ret (hH : HooksLawful guestC (guestHooksR (σ := σ))) {ADDR AD ELEM : BitVec 64} {E : Nat}
    {Xs : List (MlS × ValueHOL 64)} {KP : Gam → Prop} :
    Hoare σ guestCtx (AdE s0 Γ0 p0 ADDR AD ELEM E Xs KP) (.return (cw 0)) (BcQ Γ0 s0 p0) :=
  hoare_pre (ret_bcQ hH) fun t _ ⟨_, _, _, _, Γ, hT, hb, _⟩ => ⟨hb, Γ, hT⟩

theorem cc_cont (hH : HooksLawful guestC (guestHooksR (σ := σ))) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) {ADDR IDX AD ELEM C L : BitVec 64} :
    Hoare σ guestCtx (AdE s0 Γ0 p0 ADDR AD ELEM 24
      [(nm "code", .val (.word C)), (nm "code_len", .val (.word L)), (nm "idx", .val (.word IDX))] (fun _ => True))
      (.seq (eSt 1 (nm "code")) (.seq (eSt 2 (nm "code_len")) (.return (cw 0)))) (BcQ Γ0 s0 p0) := by
  refine hoare_seq (R := fun r t => r = none ∧ AdE s0 Γ0 p0 ADDR AD ELEM 24
      [(nm "code", .val (.word C)), (nm "code_len", .val (.word L)), (nm "idx", .val (.word IDX))] (fun _ => True) t)
    (ade_store1 hH hord0 hL0 (m := 1) (y := nm "code") (Y := C) (by simp) (by omega)) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoare_pre (P := AdE s0 Γ0 p0 ADDR AD ELEM 24
      [(nm "code", .val (.word C)), (nm "code_len", .val (.word L)), (nm "idx", .val (.word IDX))] (fun _ => True)) ?_ (fun t _ h => h.2)
  refine hoare_seq (R := fun r t => r = none ∧ AdE s0 Γ0 p0 ADDR AD ELEM 24
      [(nm "code", .val (.word C)), (nm "code_len", .val (.word L)), (nm "idx", .val (.word IDX))] (fun _ => True) t)
    (ade_store1 hH hord0 hL0 (m := 2) (y := nm "code_len") (Y := L) (by simp) (by omega)) (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  exact hoare_pre (ade_ret hH) (fun t _ h => h.2)

theorem argsOK_any4 {C : Cfg} {Γ : Gam} {p : Ptrs} {a b c d : ValueHOL 64} :
    ArgsOK C Γ p [.any, .any, .any, .any] [a, b, c, d] := by
  refine ⟨rfl, fun i pt v hp hv => ?_⟩
  rcases i with _ | _ | _ | _ | i
  · simp at hp; subst hp; trivial
  · simp at hp; subst hp; trivial
  · simp at hp; subst hp; trivial
  · simp at hp; subst hp; trivial
  · simp at hp

def CcPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR IDX C L : BitVec 64, vs = [.val (.word ADDR), .val (.word IDX), .val (.word C), .val (.word L)] ∧
    BalNN s Γ ∧ SrcKey Γ ADDR 20 tHTd20

def ccSig : Sig := ⟨[.any, .any, .any, .any], [], [], true⟩

/-- **`add_code_change(addr, idx, code, code_len)`**. -/
theorem sumSpec_add_code_change :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "add_code_change") ccSig CcPre
      (fun _ s Γ a => BalPW s Γ a) BalPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine sumSpecA_of_returns (noExc_add_code_change hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, C', D, rfl, sa, sb, sc, sd, hA, hB, hC, hD⟩ :=
    Bn.lookupCode_four code_add_code_change (by decide) hl'
  obtain ⟨ADDR, IDX, C, L, hvs, ⟨T0, hT0, hT0t, hbal⟩, hkey⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hbal0 : gword s0 (nm "bal_accounts") = some T0.base := hbal
  have hBS : BS s0 Γ0 p0 ADDR [(nm "code", .val (.word C)), (nm "code_len", .val (.word L)), (nm "idx", .val (.word IDX))] (fun _ => True) s0 := by
    refine ⟨by rw [hloc]; exact hA, ?_, Γ0, Struct.trk_refl hG0 hp0, rfl, hkey, trivial⟩
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl
    · rw [hloc]; exact hC
    · rw [hloc]; exact hD
    · rw [hloc]; exact hB
  have H' : Hoare σ guestCtx (fun u => u = s0) ccBody (BcQ Γ0 s0 p0) := by
    unfold ccBody
    refine hoare_pre (bal_prefix hG0 hp0 hT0 hT0t hbal0
      (IDX := IDX) (Xs := [(nm "code", .val (.word C)), (nm "code_len", .val (.word L)), (nm "idx", .val (.word IDX))])
      (by simp)
      (by
        intro p hp
        simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
        rcases hp with rfl | rfl | rfl
        · exact ⟨(by decide : nm "code" ≠ nm "ad"), (by decide : nm "code" ≠ nm "e")⟩
        · exact ⟨(by decide : nm "code_len" ≠ nm "ad"), (by decide : nm "code_len" ≠ nm "e")⟩
        · exact ⟨(by decide : nm "idx" ≠ nm "ad"), (by decide : nm "idx" ≠ nm "e")⟩)
      (KP := fun _ => True) (fun _ _ _ h => h)
      (k0 := 4) (ty := tLSTk) (E := 24) (by decide) (by decide) (by decide) (by decide)
      (bcQ_locals hH) (fun AD ELEM => cc_cont hH hord0 hL0)) (fun u _ hu => by rw [hu]; exact hBS)
  have H2 := H' s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H2
  obtain ⟨hbl, Γ', hT⟩ := H2 v rfl
  obtain ⟨p', hc⟩ := sumCore_of_bc (sg := ccSig) rfl rfl hp0 hT (vs := [.val (.word ADDR), .val (.word IDX),
    .val (.word C), .val (.word L)]) (r := r)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ?_⟩
  rw [hv] at hv'
  cases hv'
  exact hbl

end st1

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_add_code_change
