import InitECandidate.Solver.MemSafe.Ops2.WinHoare
import InitECandidate.Solver.MemSafe.Ops.Tload
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Shared small steps (sonnet-gk)

* `hoareG_gkCallC`: `f(args); k` for a checker-accepted callee (`callCl gE b f args = some b1`);
* `argsOK_br`: the argument check of `buffer_read(.., n, out)` (`[any, any, any, any, bufArg 3 1 0]`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- **`f(args); k`** for a callee the checker accepts. -/
theorem hoareG_gkCallC (hfs : fs = (e, c) :: rest) {b b1 : Bool} {f : MlS}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} (hcl : callCl gE b f args = some b1)
    {u0 : State σ} (hu : KJ (bd b) u0) {b' : Bool}
    (hk : ∀ t : State σ, t.locals = u0.locals → KJ (bd b1) t →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD f args) k) (GQ (KJ) b') := by
  obtain ⟨R, hRf, hstep⟩ := callSem_gE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs b b1 f args hcl
  refine hoareG_seq (R := fun ro t => (ro = none → t.locals = u0.locals ∧ KJ (bd b1) t) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD hRf ?_ ?_) (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pt fun t ht => hk t (ht.1 rfl).1 (ht.1 rfl).2)
  · intro u _ hu' vs hvs callee v st hR _
    subst hu'
    have hk1 := hstep u hu vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    exact ⟨fun _ => ⟨rfl, kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl⟩, fun r hr => by cases hr⟩
  · intro u _ hu' vs hvs callee r st hR _ habn
    subst hu'
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have := hstep u hu vs hvs callee r st hR (good_of_abn habn) hna
    rw [cbd_abn habn] at this
    rw [rbd_abn habn]
    exact kok_loc kOK_KJ this _

end steps

/-- The argument check of `buffer_read(a0, a1, a2, a3, a4)` whose last argument is a writable
block of `a3` bytes. -/
theorem argsOK_br {Γ : Gam} {p : Ptrs} {u : State σ} {a0 a1 a2 a3 a4 : ExpHOL 64}
    {vs : List (ValueHOL 64)} (hvs : evs u [a0, a1, a2, a3, a4] = some vs) {n q : BitVec 64}
    (h3 : ev u a3 = some (.val (.word n))) (h4 : ev u a4 = some (.val (.word q)))
    (hbuf : BufOK guestC Γ p q.toNat (1 * n.toNat + 0)) :
    ArgsOK guestC Γ p [.any, .any, .any, .any, .bufArg 3 1 0] vs := by
  obtain ⟨v0, vs0, rfl, hv0, h0⟩ := evs_cons_inv hvs
  obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv h0
  obtain ⟨v2, vs2, rfl, hv2, h2⟩ := evs_cons_inv h1
  obtain ⟨v3, vs3, rfl, hv3, h3'⟩ := evs_cons_inv h2
  obtain ⟨v4, vs4, rfl, hv4, h4'⟩ := evs_cons_inv h3'
  rw [evs_zero h4']
  rw [h3] at hv3; rw [h4] at hv4
  simp only [Option.some.injEq] at hv3 hv4
  subst hv3; subst hv4
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | _ | _ | i
  · simp at hpt; subst hpt; trivial
  · simp at hpt; subst hpt; trivial
  · simp at hpt; subst hpt; trivial
  · simp at hpt; subst hpt; trivial
  · simp at hpt hv; subst hpt; subst hv; exact ⟨q, n, rfl, rfl, hbuf⟩
  · simp at hpt

/-- Variable evaluation depends on the locals only. -/
theorem ev_lv_locals {t u : State σ} (h : t.locals = u.locals) (x : MlS) :
    ev t (lv x) = ev u (lv x) := by
  show t.locals.lookup x = u.locals.lookup x
  rw [h]

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkCallC
#print axioms InitECandidate.Solver.MemSafe.Frames.argsOK_br
#print axioms InitECandidate.Solver.MemSafe.Frames.ev_lv_locals
