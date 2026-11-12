import InitECandidate.Solver.MemSafe.Bal.Prefix

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

/-- The post of the BAL mutators' bodies: a return keeps the tracking and `bal_accounts`. -/
def BcQ (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
    ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ' t

theorem bcQ_locals (hH : HooksLawful guestC (guestHooksR (σ := σ))) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (r : Option (PanSemResultExact 64)) (t : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64))
    (h : BcQ Γ0 s0 p0 r t) : BcQ Γ0 s0 p0 r { t with locals := L } := by
  intro v hv
  obtain ⟨hb, Γ', hT⟩ := h v hv
  exact ⟨hb, Γ', Struct.trk_congr hH hT rfl rfl rfl rfl⟩

section main
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- `return 0` ends a BAL mutator. -/
theorem ret_bcQ (hH : HooksLawful guestC (guestHooksR (σ := σ))) :
    Hoare σ guestCtx (fun t => t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
      ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ' t)
      (.return (cw 0)) (BcQ Γ0 s0 p0) := by
  refine hoare_return fun t _ ⟨hb, Γ', hT⟩ w _ => fun v' _ => ?_
  exact ⟨hb, Γ', Struct.trk_congr hH hT rfl rfl rfl rfl⟩

/-- The store of the new balance. -/
theorem bc_cont (hH : HooksLawful guestC (guestHooksR (σ := σ))) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) {ADDR IDX AD ELEM : BitVec 64} {a b c d : BitVec 64} :
    Hoare σ guestCtx (AdE s0 Γ0 p0 ADDR AD ELEM 40 [(nm "post_balance", wv [a, b, c, d]), (nm "idx", .val (.word IDX))] (fun _ => True))
      (.seq (.store (.op .add [lv (nm "e"), cw 8]) (lv (nm "post_balance"))) (.return (cw 0)))
      (BcQ Γ0 s0 p0) := by
  refine hoare_seq (R := fun r t => r = none ∧ t.globals.lookup (nm "bal_accounts") =
      s0.globals.lookup (nm "bal_accounts") ∧
      ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ' t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (ret_bcQ hH) fun t _ h => h.2)
  refine hoare_store fun s _ ⟨hla, hXl, hlad, hle, Γ, hT, hb, hkey, hkp, hobj, x, hx, hxt, k, hk, hELEM, hxe⟩
    w v mem hw hv hmem => ?_
  have hpb : s.locals.lookup (nm "post_balance") = some (wv [a, b, c, d]) :=
    hXl _ (List.mem_cons_self)
  rw [ev_add2 (Mpt.Leaves.ev_lv' hle) (ev_cw _ 8)] at hw
  cases hw
  rw [ev_lv, hpb] at hv
  cases hv
  have hcell : ELEM + BitVec.ofNat 64 8 = x.cell (k + 1) := by
    rw [hELEM]; simpa using cell_add x k 1
  rw [hcell] at hmem
  have hfl : flattenHOL (wv [a, b, c, d]) = [HolWordLab.word a, .word b, .word c, .word d] := by
    simp [wv, flattenHOL]
  rw [hfl] at hmem
  have hT' := trk_wordsA hH lstHooks_guestR hT hx hxt (k := k + 1) (n := 4) (by omega) rfl hmem
    (fun j hj => pw_of_la hord0 hL0 hT ⟨x, hx, k + 1 + j, by unfold Obj.HasSlot; omega,
      lstA_prot hxt _, rfl⟩ (Or.inr ⟨x, hx, hxt, k + 1 + j, by unfold Obj.HasSlot; omega, rfl⟩))
  exact ⟨rfl, hb, Γ, hT'⟩

/-- The final `SumCore` of a BAL mutator (no result, may grow). -/
theorem sumCore_of_bc {sg : Sig} (hr : sg.ret = []) (hg : sg.grows = true) {Γ' : Gam} {t : State σ}
    (hp0 : ptrsOf s0 = some p0) (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ' t)
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} :
    ∃ p', SumCore guestC (guestHooksR (σ := σ)) sg (fun a => ProtCell guestC Γ0 a ∧ BalPW s0 Γ0 a)
      Γ0 s0 vs r t Γ' p0 p' := by
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := sg) (PWs := fun a => ProtCell guestC Γ0 a ∧ BalPW s0 Γ0 a)
    (vs := vs) (r := r) hT hp0 (fun h => by rw [hg] at h; cases h)
    (fun p _ w' hw' i rt w'' hi hfl => by rw [hr] at hi; simp at hi)
  exact ⟨p', hc⟩

end main

def BcPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ ADDR IDX a b c d : BitVec 64, vs = [.val (.word ADDR), .val (.word IDX), wv [a, b, c, d]] ∧
    BalNN s Γ ∧ SrcKey Γ ADDR 20 tHTd20

def bcSig : Sig := ⟨[.any, .any, .any], [], [], true⟩

/-- A BAL mutator leaves `bal_accounts` alone. -/
def BalPost (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → t.globals.lookup (nm "bal_accounts") = s.globals.lookup (nm "bal_accounts")

/-- **`add_balance_change(addr, idx, post_balance)`**. -/
theorem sumSpec_add_balance_change :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "add_balance_change") bcSig BcPre
      (fun _ s Γ a => BalPW s Γ a) BalPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  refine sumSpecA_of_returns (noExc_add_balance_change hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, C, rfl, sa, sb, sc, hA, hB, hC⟩ :=
    Spec.Inv.lookupCode_three_full code_add_balance_change (by decide) (by decide) (by decide) hl'
  obtain ⟨ADDR, IDX, a, b, c, d, hvs, ⟨T0, hT0, hT0t, hbal⟩, hkey⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hbal0 : gword s0 (nm "bal_accounts") = some T0.base := hbal
  have hBS : BS s0 Γ0 p0 ADDR [(nm "post_balance", wv [a, b, c, d]), (nm "idx", .val (.word IDX))] (fun _ => True) s0 := by
    refine ⟨by rw [hloc]; exact hA, ?_, Γ0, Struct.trk_refl hG0 hp0, rfl, hkey, trivial⟩
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl
    · rw [hloc]; exact hC
    · rw [hloc]; exact hB
  have H' : Hoare σ guestCtx (fun u => u = s0) bcBody (BcQ Γ0 s0 p0) := by
    unfold bcBody
    refine hoare_pre (bal_prefix hG0 hp0 hT0 hT0t hbal0 (IDX := IDX) (Xs := [(nm "post_balance", wv [a, b, c, d]), (nm "idx", .val (.word IDX))])
      (by simp)
      (by intro p hp; simp only [List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl | rfl
          · exact ⟨(by decide : nm "post_balance" ≠ nm "ad"), (by decide : nm "post_balance" ≠ nm "e")⟩
          · exact ⟨(by decide : nm "idx" ≠ nm "ad"), (by decide : nm "idx" ≠ nm "e")⟩)
      (KP := fun _ => True) (fun _ _ _ h => h)
      (k0 := 2) (ty := tLSTc) (E := 40) (by decide) (by decide) (by decide) (by decide)
      (bcQ_locals hH) (fun AD ELEM => bc_cont hH hord0 hL0)) (fun u _ hu => by rw [hu]; exact hBS)
  have H2 := H' s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H2
  obtain ⟨hbl, Γ', hT⟩ := H2 v rfl
  obtain ⟨p', hc⟩ := sumCore_of_bc (sg := bcSig) rfl rfl hp0 hT (vs := [.val (.word ADDR), .val (.word IDX),
    wv [a, b, c, d]]) (r := r)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ?_⟩
  rw [hv] at hv'
  cases hv'
  exact hbl

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_add_balance_change

end InitECandidate.Solver.MemSafe.Bal
