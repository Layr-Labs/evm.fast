import InitECandidate.Solver.MemSafe.D0.PlKit3
import InitECandidate.Solver.MemSafe.D0.Alloc24n
import InitECandidate.Solver.MemSafe.D0.Sd1
import InitECandidate.Solver.MemSafe.D0.Pd3

/-!
# More `PLQ` combinators: arbitrary `K`, argument helpers, `alloc(24)`
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

theorem plq_seqG {K : State σ → Prop} {Pl Pl' : Locs → Prop} {p1 p2 : ProgHOL 64} {u0 : State σ}
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PLQ K Pl))
    (h2 : ∀ u : State σ, K u → Pl u.locals →
      HoareG σ guestCtx (fun t => t = u) p2 (PLQ K Pl')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq p1 p2) (PLQ K Pl') := by
  refine hoareG_seq (R := PLQ K Pl) h1 (fun _ _ _ hr _ h => plq_abn hr h) ?_
  refine hoareG_pt fun u h => ?_
  rcases h with ⟨-, hk, hl⟩ | ⟨r, h0, -⟩
  · exact h2 u hk hl
  · cases h0

theorem plq_iteG {K : State σ → Prop} {Pl : Locs → Prop} {c' : ExpHOL 64} {p1 p2 : ProgHOL 64}
    {u0 : State σ}
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PLQ K Pl))
    (h2 : HoareG σ guestCtx (fun t => t = u0) p2 (PLQ K Pl)) :
    HoareG σ guestCtx (fun t => t = u0) (.ite c' p1 p2) (PLQ K Pl) :=
  hoareG_ite (hoareG_pre h1 fun _ _ h => h.1) (hoareG_pre h2 fun _ _ h => h.1)

theorem plq_skipG {K : State σ → Prop} {Pl : Locs → Prop} {u0 : State σ} (hu : K u0)
    (hP : Pl u0.locals) :
    HoareG σ guestCtx (fun t => t = u0) .skip (PLQ K Pl) :=
  hoareG_skip fun _ _ h => by rw [h]; exact Or.inl ⟨rfl, hu, hP⟩

/-- Premises of a call from a `KP` state with `sg.gw = []` / `= [gJn]`. -/
theorem sgOK0 {sg : Sig} (h : sg.gw = []) {gw : List MlS} :
    (∀ g, g ∈ sg.gw → g ∈ gw) ∧ (nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) ∧ JrOut sg.gw := by
  rw [h]; exact ⟨fun g hg => (by cases hg), ⟨by simp, by simp⟩, by simp [jrOut_iff]⟩

theorem sgOKJ {sg : Sig} (h : sg.gw = [Hooks.gJn]) :
    (∀ g, g ∈ sg.gw → g ∈ [Hooks.gJn]) ∧ (nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) ∧ JrOut sg.gw := by
  rw [h]; exact ⟨fun g hg => hg, by decide, by decide⟩

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- Arguments of a `JrNZ`-precondition call that are all `.any`. -/
theorem hargs_any {sg : Sig} (hany : ∀ pt ∈ sg.params, pt = .any) {args : List (ExpHOL 64)}
    (hlen : args.length = sg.params.length) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) :
    ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 → ChainL guestC tEV tCK Γ1 u0 fs →
      ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, JrNZ (callEntryStateHOLFinite u0 callee) :=
  fun vs hvs _ _ _ _ _ _ _ =>
    ⟨argsOK_any hany (by rw [evs_len hvs, hlen]), fun _ => jrNZ_congr rfl hu.1⟩

/-- One `buf 20` argument `w` (a known value) with a `JrNZ` precondition. -/
theorem hargs_buf1 {sg : Sig} (hsg : sg.params = [.buf 20]) {args : List (ExpHOL 64)} {w : BitVec 64}
    {u0 : State σ} (harg : ∀ vs, evs u0 args = some vs → vs = [.val (.word w)])
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hb : ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 → BufOK guestC Γ1 p1 w.toNat 20) :
    ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 → ChainL guestC tEV tCK Γ1 u0 fs →
      ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, JrNZ (callEntryStateHOLFinite u0 callee) :=
  fun vs hvs Γ1 p1 hr _ _ _ _ => by
    rw [hsg, harg vs hvs]
    exact ⟨argsOK_buf1 (hb Γ1 p1 hr), fun _ => jrNZ_congr rfl hu.1⟩

/-- `[any, buf 20]` arguments, the second a known value. -/
theorem hargs_any_buf {sg : Sig} (hsg : sg.params = [.any, .buf 20]) {args : List (ExpHOL 64)}
    {x w : BitVec 64}
    {u0 : State σ} (harg : ∀ vs, evs u0 args = some vs → vs = [.val (.word x), .val (.word w)])
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0)
    (hb : ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 → BufOK guestC Γ1 p1 w.toNat 20) :
    ∀ vs, evs u0 args = some vs → ∀ Γ1 p1, RunT guestC HJ gw Γ0 s0 Γ1 u0 p0 p1 →
      ptrsOf u0 = some p1 → G guestC HJ Γ1 u0 → ChainL guestC tEV tCK Γ1 u0 fs →
      ChainE GP GR Γ1 u0 fs →
      ArgsOK guestC Γ1 p1 sg.params vs ∧ ∀ callee, JrNZ (callEntryStateHOLFinite u0 callee) :=
  fun vs hvs Γ1 p1 hr _ _ _ _ => by
    rw [hsg, harg vs hvs]
    refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun _ => jrNZ_congr rfl hu.1⟩
    rcases i with _ | _ | i
    · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv; subst hpt; subst hv; trivial
    · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt; subst hv; exact ⟨w, rfl, hb Γ1 p1 hr⟩
    · simp at hpt

/-- `var rn = alloc(24); k` with the post `PLQ`. -/
theorem plq_alloc24 (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {Pl : Locs → Prop} {rn : MlS} {k : ProgHOL 64}
    (hres : ∀ L o, Pl L → Pl (L.resVarEq (rn, o)))
    (hk : ∀ (q : BitVec 64) (st : State σ),
      KPd HJ gw Γ0 s0 p0 fs e mg st (fun Γ2 p2 => ∃ (Γ1 : Gam) (p1 : Ptrs), FreshB Γ2 q ∧ q.toNat % 8 = 0) →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (.val (.word q)) { st with locals := u0.locals }) k
        (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl)) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn .one (nm "alloc") [cw 24] k)
      (PLQ (KP HJ gw Γ0 s0 p0 fs e mg) Pl) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  refine hoareG_kp_alloc24n hfs hu ?_ ?_
  · intro q st hkd
    exact hoareG_conseq (hk q st hkd) (fun _ _ h => h)
      (fun _ _ _ _ h => plq_res (kp_locF hH) rn hres _ h)
  · intro r t habn hk'
    exact Or.inr ⟨r, rfl, habn, hk'⟩

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.plq_alloc24
#print axioms InitECandidate.Solver.MemSafe.D0.hargs_any_buf
