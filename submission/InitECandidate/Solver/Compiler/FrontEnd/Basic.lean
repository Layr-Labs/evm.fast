import Flapjack.Pancake.Semantics.PanSem.Semantics
import Flapjack.Pancake.Semantics.PanSem.EvaluateClock
import Flapjack.Pancake.Semantics.PanProps.EvaluateAddClockEq
import Flapjack.Pancake.Semantics.PanProps.EvaluateClockSubAssembly

/-!
# Clock-level lock-step statements: common Pan infrastructure

* `panDeclsInit s decls`: the post-declaration state that `PanSemStateFiniteExact.semanticsDecls`
  runs its entry call from (`semanticsDecls_eq_panDeclsInit`).
* `PanLockStep src start decls tgt start' decls' f c`: the uniform per-clock statement for a
  Pan → Pan pass with result map `f` and clock offset `c`: whenever the source declarations
  succeed, so do the target ones, and every source entry run at clock `k` with a result that is
  neither `Error` nor `TimeOut` is matched by the target entry run at clock `k + c` with result
  `f r` and the same final clock and FFI state. `PanLockStep.trans` composes them.
* `pan_clock_sub`, `pan_clock_of_agree`: Pan's `evaluate_clock_sub` in canonical form, and the
  derived fact that two Pan runs whose results agree at every clock (target shifted by `c`, and
  timing out below `c`) also agree on the final clock of every terminating run.
-/

namespace InitECandidate.Solver.Compiler.FrontEnd

open Flapjack Flapjack.Pancake.PanLang

set_option autoImplicit false

section Pan
variable {width : Nat} [NeZero width] {σ : Type}

/-- The state after the declarations of `decls`, as `semanticsDecls` computes it. -/
noncomputable def panDeclsInit (s : PanSemStateFiniteExact width σ) (decls : List (DeclHOL width)) :
    Option (PanSemStateFiniteExact width σ) :=
  match decsStcnamesHOLExact [] decls with
  | none => none
  | some stCtxt =>
    open Classical in
    PanSemStateFiniteExact.evaluateDeclsHOLFinite { s with structs := stCtxt } decls

theorem semanticsDecls_eq_panDeclsInit (s : PanSemStateFiniteExact width σ) (start : MlS)
    (decls : List (DeclHOL width)) :
    PanSemStateFiniteExact.semanticsDecls s start decls =
      match panDeclsInit s decls with
      | none => .fail
      | some s' => PanSemStateFiniteExact.semantics s' start := by
  unfold PanSemStateFiniteExact.semanticsDecls panDeclsInit
  cases decsStcnamesHOLExact [] decls with
  | none => rfl
  | some st =>
    simp only
    split <;> rename_i heq <;> simp only [heq]

/-- The entry run of `PanSemStateFiniteExact.semantics s start` at clock `k`. -/
noncomputable abbrev panRun (s : PanSemStateFiniteExact width σ) (start : MlS) (k : Nat) :
    Option (PanSemResultExact width) × PanSemStateFiniteExact width σ :=
  PanSemStateFiniteExact.evaluateHOLFiniteState { s with clock := k } (.call none start [])

/-- A source entry run at clock `k` that is neither `Error` nor `TimeOut`. -/
def PanTerminates (r : Option (PanSemResultExact width)) : Prop :=
  r ≠ some .error ∧ r ≠ some .timeOut

/-- Per-clock lock-step relation between the entry runs of two Pan states. -/
def PanRunStep (s : PanSemStateFiniteExact width σ) (start : MlS)
    (t : PanSemStateFiniteExact width σ) (start' : MlS)
    (f : Option (PanSemResultExact width) → Option (PanSemResultExact width)) (c : Nat) : Prop :=
  ∀ k r s1, panRun s start k = (r, s1) → PanTerminates r →
    ∃ t1, panRun t start' (k + c) = (f r, t1) ∧ t1.clock = s1.clock ∧ t1.ffi = s1.ffi

/-- **Uniform per-clock statement of a Pan → Pan pass.** If the source declarations of
`semanticsDecls src start decls` produce `s0`, the target declarations produce some `t0`, and
every source entry run from `s0` at clock `k` with result `r` (neither `Error` nor `TimeOut`) and
final state `s1` is matched by the target entry run from `t0` at clock `k + c`, with result
`f r`, final clock `s1.clock` and final FFI state `s1.ffi`. -/
def PanLockStep (src : PanSemStateFiniteExact width σ) (start : MlS) (decls : List (DeclHOL width))
    (tgt : PanSemStateFiniteExact width σ) (start' : MlS) (decls' : List (DeclHOL width))
    (f : Option (PanSemResultExact width) → Option (PanSemResultExact width)) (c : Nat) : Prop :=
  ∀ s0, panDeclsInit src decls = some s0 →
    ∃ t0, panDeclsInit tgt decls' = some t0 ∧ PanRunStep s0 start t0 start' f c

/-- Result maps that keep `Error` and `TimeOut` out. -/
def PanResMapOk (f : Option (PanSemResultExact width) → Option (PanSemResultExact width)) : Prop :=
  ∀ r, PanTerminates r → PanTerminates (f r)

theorem PanRunStep.trans {s t u : PanSemStateFiniteExact width σ} {a b d : MlS}
    {f g : Option (PanSemResultExact width) → Option (PanSemResultExact width)} {c c' : Nat}
    (h1 : PanRunStep s a t b f c) (hf : PanResMapOk f) (h2 : PanRunStep t b u d g c') :
    PanRunStep s a u d (g ∘ f) (c + c') := by
  intro k r s1 hrun hr
  obtain ⟨t1, ht, hc, hffi⟩ := h1 k r s1 hrun hr
  obtain ⟨u1, hu, hc', hffi'⟩ := h2 (k + c) (f r) t1 ht (hf r hr)
  exact ⟨u1, by rw [← Nat.add_assoc]; exact hu, hc'.trans hc, hffi'.trans hffi⟩

theorem PanLockStep.trans {src mid tgt : PanSemStateFiniteExact width σ} {a b d : MlS}
    {ds ds' ds'' : List (DeclHOL width)}
    {f g : Option (PanSemResultExact width) → Option (PanSemResultExact width)} {c c' : Nat}
    (h1 : PanLockStep src a ds mid b ds' f c) (hf : PanResMapOk f)
    (h2 : PanLockStep mid b ds' tgt d ds'' g c') :
    PanLockStep src a ds tgt d ds'' (g ∘ f) (c + c') := by
  intro s0 hs0
  obtain ⟨m0, hm0, hstep⟩ := h1 s0 hs0
  obtain ⟨t0, ht0, hstep'⟩ := h2 m0 hm0
  exact ⟨t0, ht0, hstep.trans hf hstep'⟩

theorem panResMapOk_id : PanResMapOk (id : Option (PanSemResultExact width) → _) :=
  fun _ h => h

theorem with_clock_self (s : PanSemStateFiniteExact width σ) : { s with clock := s.clock } = s :=
  rfl

/-- Pan `evaluate_clock_sub` on the canonical carrier. -/
theorem pan_clock_sub (p : ProgHOL width) (u : PanSemStateFiniteExact width σ)
    (res : Option (PanSemResultExact width)) (st : PanSemStateFiniteExact width σ) (ck : Nat)
    (h : PanSemStateFiniteExact.evaluateHOLFiniteState u p = (res, { st with clock := st.clock + ck }))
    (hnt : res ≠ some .timeOut) :
    PanSemStateFiniteExact.evaluateHOLFiniteState { u with clock := u.clock - ck } p = (res, st) :=
  EvaluateClockSubCall.mc_of_pair u p
    (evaluateClockSubHOLFinite p (PanPropsEvalStateFiniteExact.ofPanSemFinite u)) res st ck h hnt

/-- Pan `evaluate_add_clock_eq` on the entry-run family. -/
theorem pan_add_clock (p : ProgHOL width) (A : PanSemStateFiniteExact width σ) (k d : Nat)
    (res : Option (PanSemResultExact width)) (st : PanSemStateFiniteExact width σ)
    (h : PanSemStateFiniteExact.evaluateHOLFiniteState { A with clock := k } p = (res, st))
    (hnt : res ≠ some .timeOut) :
    PanSemStateFiniteExact.evaluateHOLFiniteState { A with clock := k + d } p =
      (res, { st with clock := st.clock + d }) :=
  panPropsEvaluateAddClockEq p { A with clock := k } res st d ⟨h, hnt⟩

/-- The run at clock `k - s1.clock` of a terminating run at `k` ends with clock `0`. -/
theorem pan_min_clock (p : ProgHOL width) (A : PanSemStateFiniteExact width σ) (k : Nat)
    (res : Option (PanSemResultExact width)) (s1 : PanSemStateFiniteExact width σ)
    (h : PanSemStateFiniteExact.evaluateHOLFiniteState { A with clock := k } p = (res, s1))
    (hnt : res ≠ some .timeOut) :
    PanSemStateFiniteExact.evaluateHOLFiniteState { A with clock := k - s1.clock } p =
      (res, { s1 with clock := 0 }) := by
  have h' : PanSemStateFiniteExact.evaluateHOLFiniteState { A with clock := k } p =
      (res, { { s1 with clock := 0 } with clock := ({ s1 with clock := 0 } :
        PanSemStateFiniteExact width σ).clock + s1.clock }) := by
    rw [h]; simp only [Nat.zero_add]
  exact pan_clock_sub p { A with clock := k } res { s1 with clock := 0 } s1.clock h' hnt

/-- **Final clocks from per-clock result agreement.** Two Pan run families whose results agree
at every clock (the second shifted by `c`, and timing out below `c`) agree on the final clock of
every terminating run: by `evaluate_clock_sub` both minimal runs end at clock `0`, and
`evaluate_add_clock_eq` lifts this to every clock. -/
theorem pan_clock_of_agree (A B : PanSemStateFiniteExact width σ) (pA pB : ProgHOL width)
    (c : Nat)
    (hlow : ∀ j, j < c →
      (PanSemStateFiniteExact.evaluateHOLFiniteState { B with clock := j } pB).1 = some .timeOut)
    (hagree : ∀ k, (PanSemStateFiniteExact.evaluateHOLFiniteState { B with clock := k + c } pB).1 =
      (PanSemStateFiniteExact.evaluateHOLFiniteState { A with clock := k } pA).1)
    (k : Nat) (r : Option (PanSemResultExact width)) (s1 : PanSemStateFiniteExact width σ)
    (hA : PanSemStateFiniteExact.evaluateHOLFiniteState { A with clock := k } pA = (r, s1))
    (hr : r ≠ some .timeOut) :
    ∃ t1, PanSemStateFiniteExact.evaluateHOLFiniteState { B with clock := k + c } pB = (r, t1) ∧
      t1.clock = s1.clock := by
  have hle : s1.clock ≤ k := by
    have := evaluateHOLFiniteState_clock_le { A with clock := k } pA
    rw [hA] at this; exact this
  have hA0 := pan_min_clock pA A k r s1 hA hr
  -- the target run at `k - p + c`
  rcases hB0 : PanSemStateFiniteExact.evaluateHOLFiniteState
      { B with clock := k - s1.clock + c } pB with ⟨r0, t0⟩
  have hr0 : r0 = r := by
    have := hagree (k - s1.clock); rw [hB0, hA0] at this; exact this
  subst hr0
  have hB00 := pan_min_clock pB B (k - s1.clock + c) r0 t0 hB0 hr
  -- its minimal clock is at least `c`
  have hqle : t0.clock ≤ k - s1.clock + c := by
    have := evaluateHOLFiniteState_clock_le { B with clock := k - s1.clock + c } pB
    rw [hB0] at this; exact this
  have hq : t0.clock ≤ k - s1.clock := by
    refine Nat.le_of_not_lt fun hlt => ?_
    have hlt' : k - s1.clock + c - t0.clock < c := by omega
    have := hlow _ hlt'
    rw [hB00] at this
    exact hr this
  -- hence the source run at `k - p - q` terminates, so `q = 0`
  rcases hAj : PanSemStateFiniteExact.evaluateHOLFiniteState
      { A with clock := k - s1.clock - t0.clock } pA with ⟨ra, a⟩
  have hra : ra = r0 := by
    have := hagree (k - s1.clock - t0.clock)
    rw [show k - s1.clock - t0.clock + c = k - s1.clock + c - t0.clock by omega, hB00, hAj] at this
    exact this.symm
  subst hra
  have hAq := pan_add_clock pA A (k - s1.clock - t0.clock) t0.clock ra a hAj hr
  rw [show k - s1.clock - t0.clock + t0.clock = k - s1.clock by omega, hA0] at hAq
  have hq0 : t0.clock = 0 := by
    have := congrArg (fun x => x.2.clock) hAq
    simp only at this
    omega
  -- lift the target run back to `k + c`
  have hBk := pan_add_clock pB B (k - s1.clock + c) s1.clock ra t0 hB0 hr
  rw [show k - s1.clock + c + s1.clock = k + c by omega] at hBk
  exact ⟨_, hBk, by simp [hq0]⟩

end Pan

end InitECandidate.Solver.Compiler.FrontEnd
