import InitECandidate.Solver.MemSafe.Entry2.Keep

/-!
# Entry2: the invariant and the call steps

* `FI M msg s`: `G`, the allocator pointers and `FoPre M msg` (what `process_message` needs).
* `fi_rel`: a call whose relation `SumRelX` writes only state-object `prot` cells keeps `FI`
  (and extends the typing).
* `j3_call`: `f(target)` for a state-object summary `f`, `BufOK` target kept.
* `costP_decCallA`: `var rn = f(args); k` with an arbitrary argument list.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The entry state of `process_message`, locals aside. -/
def FI (M : Nat) (msg : BitVec 64) (s : State σ) : Prop :=
  ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧ FoPre M msg Γ s

/-- `FI` with the `msg` local. -/
def FL (M : Nat) (msg : BitVec 64) (s : State σ) : Prop :=
  FI M msg s ∧ s.locals.lookup (nm "msg") = some (.val (.word msg))

/-- `FI` with a `BufOK 20` block `tgt` and the `msg` / `target` locals. -/
def J3 (M : Nat) (msg tgt : BitVec 64) (s : State σ) : Prop :=
  (∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧ FoPre M msg Γ s ∧
    BufOK guestC Γ p tgt.toNat 20) ∧
  s.locals.lookup (nm "msg") = some (.val (.word msg)) ∧
  s.locals.lookup (nm "target") = some (.val (.word tgt))

theorem fi_loc {M : Nat} {msg : BitVec 64} {s : State σ} (h : FI M msg s) (l : Locs) (c : Nat) :
    FI M msg { s with locals := l, clock := c } := by
  obtain ⟨Γ, p, hG, hp, hf⟩ := h
  exact ⟨Γ, p, (G_locFree Hooks.guestHooksR_lawful s l c).mpr hG, (ptrsOf_congr rfl).trans hp, hf⟩

theorem fi_set {M : Nat} {msg : BitVec 64} {s : State σ} (h : FI M msg s) (n : MlS)
    (v : ValueHOL 64) : FI M msg (setVarHOLFinite n v s) := fi_loc h _ s.clock

theorem fi_rel {M : Nat} {msg : BitVec 64} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PWx : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {u st : State σ} {v : ValueHOL 64} {Γ : Gam} {p : Ptrs}
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg Pre PWx Q vs u (.returned v) st)
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hp : ptrsOf u = some p)
    (hfo : FoPre M msg Γ u) (hargs : ArgsOK guestC Γ p sg.params vs)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJo : JrOut sg.gw) (hpre : Pre vs u Γ)
    (hPW : ∀ a, PWx vs u Γ a → ProtCell guestC Γ a ∧ StCell guestSt Γ a) :
    ∃ Γ' p', SumCore guestC (Hooks.guestHooksR (σ := σ)) sg
        (fun a => ProtCell guestC Γ a ∧ StCell guestSt Γ a) Γ u vs (.returned v) st Γ' p p' ∧
      G guestC (Hooks.guestHooksR (σ := σ)) Γ' st ∧ ptrsOf st = some p' ∧ FoPre M msg Γ' st ∧
      RunT guestC (Hooks.guestHooksR (σ := σ)) sg.gw Γ u Γ' st p p' := by
  obtain ⟨Γ', p0, p', hc, -⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ hG ⟨p, hp, hargs⟩ hpre
  obtain rfl : p0 = p := Option.some.inj (hc.1.symm.trans hp)
  have hc' := sumCore_pwM hc hPW
  obtain ⟨h1, h2, h3, h4⟩ := fi_keep hG hargs hfo hgw hJo hc'
  exact ⟨Γ', p', hc', h1, h2, h3, h4⟩

theorem argsOK_sgB {Γ : Gam} {p : Ptrs} {gw : List MlS} {w : BitVec 64}
    (hb : BufOK guestC Γ p w.toNat 20) : ArgsOK guestC Γ p (sgB gw).params [.val (.word w)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  match i, hpt, hv with
  | 0, hpt, hv =>
    simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv
    exact ⟨w, rfl, hb⟩

/-- `f(target);` for a state-object summary `f` keeps `J3`. -/
theorem j3_call {M : Nat} {msg tgt : BitVec 64} {f : MlS}
    (hf : StSum σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) guestSt f (sgB [Hooks.gJn])) :
    Hoare σ guestCtx (J3 M msg tgt) (callD f [lv (nm "target")]) (fun r t => r = none → J3 M msg tgt t) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  refine hoare_callD (sumSpecA_relX hf) ?_
  intro s hs hP vs hvs callee v st hR hst _
  obtain ⟨⟨Γ, p, hG, hp, hfo, hb⟩, hl1, hl2⟩ := hP
  rw [evs_cons (ev_lv_eq hl2) evs_nil] at hvs
  cases hvs
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  have hJ : JrNZ (callEntryStateHOLFinite s callee) := jrNZ_congr (s := s) rfl hfo.2.2.2.2.1
  obtain ⟨Γ', p', hc, hG', hp', hfo', hrun⟩ := fi_rel (M := M) (msg := msg) hR hGe hpe hfo
    (argsOK_sgB hb) (by simp; decide) (by decide) hJ (fun a h => h)
  refine ⟨⟨Γ', p', (G_locFree hH st s.locals st.clock).mpr hG', (ptrsOf_congr rfl).trans hp',
    hfo', bufOK_runT hGe hrun hb⟩, hl1, hl2⟩

/-- `var rn = f(args); k` against a conditional entry of `f` with arbitrary arguments. -/
theorem costP_decCallA {P P' : State σ → Prop} {rn f : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {PreC : List (ValueHOL 64) → State σ → Prop} {Bf Bk : Nat}
    (hf : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpreC : ∀ s, InCtx s guestCtx → P s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hR : FunSpec σ guestCtx f R)
    (hP' : ∀ (s : State σ) (callee : Locs) (vs : List (ValueHOL 64)) (v : ValueHOL 64)
      (st : State σ), P s → evs s args = some vs →
      R vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      P' (setVarHOLFinite rn v { st with locals := s.locals }))
    (hk : Inv.CostP σ guestCtx P' k Bk) :
    Inv.CostP σ guestCtx P (.decCall rn sh f args k) (1 + Bf + Bk) :=
  Band.costP_decCall hf hpreC hR
    (fun s hs hp vs hvs callee v st hR' _ hsh =>
      hk.pre fun t _ ht => by subst ht; exact hP' s callee vs v st hp hvs hR' hsh)

end InitECandidate.Solver.MemSafe.Entry2

#print axioms InitECandidate.Solver.MemSafe.Entry2.fi_rel
#print axioms InitECandidate.Solver.MemSafe.Entry2.j3_call
#print axioms InitECandidate.Solver.MemSafe.Entry2.costP_decCallA
