import InitECandidate.Solver.MemSafe.Bal.TouchedCode

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

theorem argsOK_any1 {C : Cfg} {Γ : Gam} {p : Ptrs} {v : ValueHOL 64} : ArgsOK C Γ p [.any] [v] := by
  refine ⟨rfl, fun i pt v' hp hv => ?_⟩
  rcases i with _ | i
  · simp at hp; subst hp; trivial
  · simp at hp

theorem argCells_any1 {vs : List (ValueHOL 64)} {x : BitVec 64} : ¬ ArgCells [.any] vs x := by
  rintro ⟨i, w, -, h⟩
  rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y, hj, -⟩
  · rcases i with _ | i <;> simp at hn
  · rcases i with _ | i <;> simp at hj

/-- `add_touched_account(addr)` and the other one-account callers: the post of the body. -/
def AtQ (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (eaPW Γ0 s0 p0) Γ' t ∧
    t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts")

theorem atQ_locals (hH : HooksLawful guestC (guestHooksR (σ := σ))) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (r : Option (PanSemResultExact 64)) (t : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64))
    (h : AtQ Γ0 s0 p0 r t) : AtQ Γ0 s0 p0 r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', hT, hg⟩ := h v hv
  exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hg⟩

theorem at_hoare {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {T0 : Obj} (hT0 : T0 ∈ Γ0) (hT0t : T0.ty = tHTd20)
    (hbal : gword s0 (nm "bal_accounts") = some T0.base) {ADDR : BitVec 64}
    (hkey : SrcKey Γ0 ADDR 20 tHTd20)
    (hl : s0.locals.lookup (nm "addr") = some (.val (.word ADDR))) :
    Hoare σ guestCtx (fun u => u = s0) atBody (AtQ Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  unfold atBody
  refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ', Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0
      (eaPW Γ0 s0 p0) Γ' t ∧ t.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts"))
    ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD (FunSpec.and (sumSpec_bal_ensure_account (σ := σ)) (FunSpec.and (Frames.funSpec_dom _)
      (funSpec_bal_gw hF.hX (g := nm "bal_accounts") (by simp) (f := nm "bal_ensure_account")
        (by decide_cbv)))) ?_
    intro s hs hP vs hvs callee v st ⟨hS, ⟨hd, hbe⟩, hgw⟩ hst
    subst s
    rw [evs_cons (Mpt.Leaves.ev_lv' hl) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ1, p, p', hc, hq, hT1⟩ := call_cs hH (Struct.trk_refl (PW := eaPW Γ0 s0 p0) hG0 hp0) hord0 hL0
      (sg := eaSig) (Pre := EaPre) (PW' := fun _ s Γ a => CapPW (capsHT tHTd20) s Γ a) (Q := EaPost)
      (vs := [.val (.word ADDR)]) (r := .returned v) (callee := callee) (st := st) hS
      (by simp [Good]) (by simp [Abortive]) ⟨p0, hp0, argsOK_any1⟩ ⟨ADDR, rfl, ⟨T0, hT0, hT0t, hbal⟩, hkey⟩
      (fun g _ => by simp [eaSig]) (fun y hy => absurd hy argCells_any1)
      (fun a hpc hpw => Or.inl ⟨hpc, hpw⟩) hd hbe
    exact ⟨rfl, Γ1, Struct.trk_congr hH hT1 rfl rfl rfl rfl, hgw⟩
  · refine hoare_return fun t _ ⟨_, Γ', hT, hb⟩ w _ => fun v' _ => ?_
    exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hb⟩

def AtPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop := EaPre vs s Γ

def atSig : Sig := ⟨[.any], [], [], true⟩

def AtPost (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → t.globals.lookup (nm "bal_accounts") = s.globals.lookup (nm "bal_accounts")

/-- **`add_touched_account(addr)`**. -/
theorem sumSpec_add_touched_account :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "add_touched_account") atSig AtPre
      (fun _ s Γ a => CapPW (capsHT tHTd20) s Γ a) AtPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  refine sumSpecA_of_returns (noExc_add_touched_account hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, rfl, sa, hA⟩ := lookupCode_one code_add_touched_account hl'
  obtain ⟨ADDR, hvs, ⟨T0, hT0, hT0t, hbal⟩, hkey⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  have hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR)) := by rw [hloc]; exact hA
  have H' := at_hoare hG0 hp0 hT0 hT0t hbal hkey hla s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', hT, hbl⟩ := H' v rfl
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := atSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ CapPW (capsHT tHTd20) s0 Γ0 a)
    (vs := [.val (.word ADDR)]) (r := r) hT hp0 (fun h => by simp [atSig] at h)
    (fun p _ w' hw' i rt w'' hi hfl => by simp [atSig] at hi)
  exact ⟨Γ', p0, p', hc, fun v' hv' => by rw [hv] at hv'; cases hv'; exact hbl⟩

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_add_touched_account
