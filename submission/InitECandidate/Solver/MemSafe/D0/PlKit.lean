import InitECandidate.Solver.MemSafe.D0.Wrap
import InitECandidate.Solver.MemSafe.D0.Pd1
import InitECandidate.Solver.MemSafe.D0.Gas
import InitECandidate.Solver.MemSafe.D0.PdCode

/-!
# Combinators for statements after `var msg = ev[EV_MSG]` (post `PL`)

`PL K mg`: a normal end with `K` and the local `msg = mg`, or an abnormal one with `K` when
non-abortive (`Frames.PL`). `pl_dec` / `pl_call` / `pl_seq` / `pl_ite` / `pl_ret`: the
combinators for `decCall`, `callD`, `;`, `if`, `return`, from `KP` states.
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
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

theorem pl_seq {p1 p2 : ProgHOL 64} {u0 : State σ}
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg))
    (h2 : ∀ u : State σ, KP HJ gw Γ0 s0 p0 fs e mg u →
      u.locals.lookup (nm "msg") = some (.val (.word mg)) →
      HoareG σ guestCtx (fun t => t = u) p2 (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg)) :
    HoareG σ guestCtx (fun t => t = u0) (.seq p1 p2) (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg) := by
  refine hoareG_seq (R := PL (KP HJ gw Γ0 s0 p0 fs e mg) mg) h1 (fun _ _ _ _ _ h => h) ?_
  refine hoareG_pt fun u h => ?_
  rcases h with ⟨-, hk, hl⟩ | ⟨h0, -⟩
  · exact h2 u hk hl
  · exact absurd rfl h0

theorem pl_ite {c : ExpHOL 64} {p1 p2 : ProgHOL 64} {u0 : State σ}
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg))
    (h2 : HoareG σ guestCtx (fun t => t = u0) p2 (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg)) :
    HoareG σ guestCtx (fun t => t = u0) (.ite c p1 p2) (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg) :=
  hoareG_ite (hoareG_pre h1 fun _ _ h => h.1) (hoareG_pre h2 fun _ _ h => h.1)

theorem pl_skip {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg))) :
    HoareG σ guestCtx (fun t => t = u0) .skip (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg) :=
  hoareG_skip fun _ _ h => by rw [h]; exact Or.inl ⟨rfl, hu, hm⟩

theorem pl_ret {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {x : ExpHOL 64} :
    HoareG σ guestCtx (fun t => t = u0) (.return x) (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg) := by
  refine hoareG_return fun s _ h v _ => ?_
  rw [h]
  exact Or.inr ⟨by simp, fun _ _ _ => kp_locals (Hooks.frameCfg_guestHooksR (σ := σ)).hooks hu _⟩

theorem pl_call {u0 : State σ} (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg)))
    {k : ProgHOL 64} (h : HoareG σ guestCtx (fun t => t = u0) k
      (PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals)) :
    HoareG σ guestCtx (fun t => t = u0) k (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg) :=
  hoareG_conseq h (fun _ _ h => h) (fun _ _ _ _ h => pl_of_ps hm h)

/-- `var rn = f(args); k` with the post `PL`. -/
theorem pl_dec (hfs : fs = (e, c) :: rest)
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ guestCtx guestC HJ f sg Pre PW Q) (hfp : KeepsFp σ guestCtx f)
    (hgw : sg.gw = []) {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hm : u0.locals.lookup (nm "msg") = some (.val (.word mg)))
    (hargs : ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, Pre vs (callEntryStateHOLFinite u0 callee) Γ1)
    (hpw : ∀ vs callee Γ1 a, G guestC HJ Γ1 u0 → ProtCell guestC Γ1 a →
      PW vs (callEntryStateHOLFinite u0 callee) Γ1 a →
      PWtopM tEV tCK [] vs (callEntryStateHOLFinite u0 callee) Γ1 a)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} (hn : rn ≠ nm "msg")
    (hk : ∀ v (st : State σ), KP HJ gw Γ0 s0 p0 fs e mg st →
      (∃ vs callee Γ1 Γ2, evs u0 args = some vs ∧
        Q vs (callEntryStateHOLFinite u0 callee) Γ1 (.returned v) st Γ2) →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      (setVarHOLFinite rn v { st with locals := u0.locals }).locals.lookup (nm "msg") =
        some (.val (.word mg)) →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg)) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k)
      (PL (KP HJ gw Γ0 s0 p0 fs e mg) mg) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  refine hoareG_kp_dec hfs hspec hfp hgw hu hargs hpw ?_ (fun ro t hro h => Or.inr ⟨hro, h⟩)
  intro v st hst hq hsh
  exact hoareG_conseq (hk v st hst hq hsh (by rw [lk_set_ne _ _ hn]; exact hm)) (fun _ _ h => h)
    (fun _ _ _ _ h => pl_res (kp_locF hH) hn _ h)

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.pl_dec
#print axioms InitECandidate.Solver.MemSafe.D0.pl_seq
