import InitECandidate.Solver.MemSafe.D0.Kq

/-!
# Generic `KP` call wrappers for callees without `gw` / gas footprint

`hoareG_kp_dec` / `hoareG_kp_call`: `var rn = f(args); k` / `f(args);` from a `KP` state for a
callee whose signature writes no global (`sg.gw = []`) and whose footprint lies in `PWtopM []`.
The continuation of `hoareG_kp_dec` also receives the callee's post.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))

theorem hoareG_kp_dec {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ guestCtx guestC HJ f sg Pre PW Q) (hfp : KeepsFp σ guestCtx f)
    (hgw : sg.gw = []) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hargs : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC HJ Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK [] vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {Qk : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : ∀ v (st : State σ), KP HJ gw Γ0 s0 p0 fs e mg st →
      (∃ vs callee Γ1 Γ2, evs u0 args = some vs ∧
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 (.returned v) st Γ2) →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (fun r t => Qk r { t with locals := t.locals.resVarEq (rn, u0.locals.lookup rn) }))
    (hab : ∀ ro (t : State σ), ro ≠ none →
      (∀ r, ro = some r → ¬ Abortive r → KP HJ gw Γ0 s0 p0 fs e mg t) → Qk ro t) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k) Qk :=
  hoareG_kpDecCallQ (Hooks.frameCfg_guestHooksR (σ := σ)) hfs hspec hfp
    (fun g h => by rw [hgw] at h; cases h) ⟨by rw [hgw]; simp, by rw [hgw]; simp⟩
    (by rw [hgw]; simp [jrOut_iff]) (ks := []) (by simp) hu hargs hpw (Or.inl rfl) hk hab

theorem hoareG_kp_call {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ guestCtx guestC HJ f sg Pre PW Q) (hfp : KeepsFp σ guestCtx f)
    (hgw : sg.gw = []) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hargs : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC HJ Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK [] vs (callEntryStateHOLFinite u0 callee) Γ1 a) :
    HoareG σ guestCtx (fun t => t = u0) (callD f args) (PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) :=
  hoareG_kpCallDR (Hooks.frameCfg_guestHooksR (σ := σ)) hfs hspec hfp
    (fun g h => by rw [hgw] at h; cases h) ⟨by rw [hgw]; simp, by rw [hgw]; simp⟩
    (by rw [hgw]; simp [jrOut_iff]) (ks := []) (by simp) hu hargs hpw (Or.inl rfl)

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kp_dec
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kp_call
