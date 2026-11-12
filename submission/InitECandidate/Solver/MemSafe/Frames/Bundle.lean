import InitECandidate.Solver.MemSafe.Frames.Chain

/-!
# The `run_frames` hypothesis bundle and the scoring shape

* `RFInv C H tEV tCK M s := (∃ Γ, G C H Γ s ∧ Chain C tEV tCK Γ s) ∧ Phi s ≤ M`: the loop
  invariant of `run_frames` (with the local `go`; see `RunFramesGen.lean`).
* `Bundle`: the callee specifications the `run_frames` body consumes (`JSpec`: `G` and the post
  on every good non-abortive result; `CondCost` / `CalleeCost` for the costs):
  - `op_dispatch`: a `SumSpec` from a ready frame (`CK_DONE = 0`, `RUNNING ≠ 0`) under
    `Chain ∧ Φ ≤ M`, whose post `QStep` gives `Chain` for the new typing and `Φ` lowered (on
    return), or lowered up to the new active bit (on `EvmErr`); its `CondCost`;
  - `frame_exception`: a `SumSpec` (post `QExc`: `Chain`, `Φ` lowered by the active bit) and
    an all-states cost (it runs as a handler);
  - `frame_epilogue`: a `SumSpec` (post `QEpi`: `Chain`, `Φ` not raised) and a `CondCost`;
  - `finish_child`: a `SumSpec` (current kind `≠ 0`, post `QStep`) and a `CondCost`.
  `run_frames` needs only `G`, `Chain` and `Φ` afterwards; `jSpec_of_sumSpecA` turns summaries
  into bundle facts.
* **`run_frames_condCost`**: from a `Bundle`, `run_frames` has the conditional cost
  `rfB M Bop Bexc Bepi Bfin = (M + 2) * ((Bop + Bexc + 2) + (Bepi + Bfin + Bexc + 3) + 1)`
  under `Chain ∧ Φ ≤ M`.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## The invariant -/

/-- `∃ Γ, G ∧ Chain`. -/
def RFJ (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (s : State σ) : Prop :=
  ∃ Γ, G C H Γ s ∧ Chain C tEV tCK Γ s

/-- **The loop invariant of `run_frames`**: `(∃ Γ, G ∧ Chain) ∧ Φ ≤ M`. -/
def RFInv (C : Cfg) (H : Hooks σ) (tEV tCK M : Nat) (s : State σ) : Prop :=
  RFJ C H tEV tCK s ∧ Phi s ≤ M

theorem rfJ_locFree {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} :
    LocFree (σ := σ) (RFJ C H tEV tCK) := fun s l c =>
  ⟨fun ⟨Γ, h1, h2⟩ => ⟨Γ, (G_locFree hH s l c).mp h1, (chain_locFree s l c).mp h2⟩,
   fun ⟨Γ, h1, h2⟩ => ⟨Γ, (G_locFree hH s l c).mpr h1, (chain_locFree s l c).mpr h2⟩⟩

/-! ## Signatures, preconditions, posts -/

/-- One unconstrained argument. -/
def sg1 (gw : List MlS) : Sig := { params := [.any], gw := gw }
/-- No arguments. -/
def sg0 (gw : List MlS) : Sig := { params := [], gw := gw }

/-- `Chain ∧ Φ ≤ M`. -/
def PreInv (C : Cfg) (tEV tCK M : Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  Chain C tEV tCK Γ s ∧ Phi s ≤ M

/-- `Chain ∧ Φ ≤ M`, the current frame ready to run an opcode. -/
def PreOp (C : Cfg) (tEV tCK M : Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  Chain C tEV tCK Γ s ∧ Phi s ≤ M ∧ Ready s

/-- `Chain ∧ Φ ≤ M`, the current frame has a parent (`CK_KIND ≠ 0`). -/
def PreFin (C : Cfg) (tEV tCK M : Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  Chain C tEV tCK Γ s ∧ Phi s ≤ M ∧ KindNZ s

/-- A step of the interpreter: a return lowers `Φ`; an `EvmErr` lowers it up to the active
bit of the final state (which the handler `frame_exception` then clears). -/
def QStep (C : Cfg) (tEV tCK : Nat) (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  (∀ v, r = .returned v → Chain C tEV tCK Γ' t ∧ Phi t < Phi s) ∧
  (∀ v, r = .exception nmEvmErr v → Chain C tEV tCK Γ' t ∧ Phi t + 1 ≤ Phi s + act t)

/-- `frame_exception`: `Φ` drops by the active bit (`CK_DONE := 1`, gas not raised). -/
def QExc (C : Cfg) (tEV tCK : Nat) (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → Chain C tEV tCK Γ' t ∧ Phi t + act s ≤ Phi s

/-- `frame_epilogue`: `Φ` does not rise. -/
def QEpi (C : Cfg) (tEV tCK : Nat) (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → Chain C tEV tCK Γ' t ∧ Phi t ≤ Phi s

/-! ## The bundle -/

/-- **The shape of the bundle's callee facts**: on every good, non-abortive result, from `G` and
the precondition, `G` holds at the end for some typing `Γ'` and the post holds. Unlike `SumSpec`
it does not ask for `Mono` / `Ext` (`finish_child` releases the child's scratch and frame
memory), and abortive results (`TrapErr`, final FFI events) are exempt. -/
def JSpec (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop) :
    Prop :=
  FunSpec σ X f (fun vs s r t => Good (some r) → ¬ Abortive r → ∀ Γ, G C H Γ s → Pre vs s Γ →
    ∃ Γ', G C H Γ' t ∧ Q vs s Γ r t Γ')

/-- **The hypothesis bundle of `run_frames`.** -/
structure Bundle (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (tEV tCK M : Nat)
    (Bop Bexc Bepi Bfin : Nat) : Prop where
  code : X.code.lookup = guestCode
  hooks : HooksLawful C H
  opSum : JSpec σ X C H (nm "op_dispatch") (fun vs s Γ => vs.length = 1 ∧ PreOp C tEV tCK M vs s Γ)
    (QStep C tEV tCK)
  opCost : CondCost σ X C H (nm "op_dispatch") (sg1 []) (PreOp C tEV tCK M) Bop
  excSum : JSpec σ X C H (nm "frame_exception")
    (fun vs s Γ => vs.length = 1 ∧ PreInv C tEV tCK M vs s Γ) (QExc C tEV tCK)
  excCost : CalleeCost σ X (nm "frame_exception") Bexc
  epiSum : JSpec σ X C H (nm "frame_epilogue") (fun vs s Γ => vs = [] ∧ PreInv C tEV tCK M vs s Γ)
    (QEpi C tEV tCK)
  epiCost : CondCost σ X C H (nm "frame_epilogue") (sg0 []) (PreInv C tEV tCK M) Bepi
  finSum : JSpec σ X C H (nm "finish_child") (fun vs s Γ => vs = [] ∧ PreFin C tEV tCK M vs s Γ)
    (QStep C tEV tCK)
  finCost : CondCost σ X C H (nm "finish_child") (sg0 []) (PreFin C tEV tCK M) Bfin

/-! ## Adapters -/

section adapt
variable {C : Cfg} {H : Hooks σ}

theorem argsOK_any {Γ : Gam} {p : Ptrs} {ps : List PT} (hps : ∀ pt ∈ ps, pt = .any)
    {vs : List (ValueHOL 64)} (hlen : vs.length = ps.length) : ArgsOK C Γ p ps vs := by
  refine ⟨hlen.symm, fun i pt v hpt _ => ?_⟩
  rw [hps pt (List.mem_of_getElem? hpt)]
  trivial

theorem sumCore_G {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (h : SumCore C H sg PW Γ s vs r t Γ' p p') : G C H Γ' t := h.2.2.2.2.2.1

/-- A summary with unconstrained arguments as a plain `FunSpec`. -/
theorem funSpec_of_sumSpec {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpec σ X C H f sg Pre PW Q) (hps : ∀ pt ∈ sg.params, pt = .any) :
    FunSpec σ X f (fun vs s r t => Good (some r) → vs.length = sg.params.length →
      ∀ Γ, G C H Γ s → Pre vs s Γ → ∃ Γ', G C H Γ' t ∧ Q vs s Γ r t Γ') := by
  refine FunSpec.mono h fun vs s r t hR hg hlen Γ hG hpre => ?_
  have ⟨p, hps', _⟩ := hG
  obtain ⟨Γ', p, p', hcore, hq⟩ := hR hg Γ hG ⟨p, hps', argsOK_any hps hlen⟩ hpre
  exact ⟨Γ', sumCore_G hcore, hq⟩

/-- A conditional cost with unconstrained arguments, under any precondition giving `G` and
`Pre`. -/
theorem calleeCostP_of_condCost {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop} {B : Nat}
    (h : CondCost σ X C H f sg Pre B) (hps : ∀ pt ∈ sg.params, pt = .any)
    {P : List (ValueHOL 64) → State σ → Prop}
    (hP : ∀ vs s, P vs s → vs.length = sg.params.length ∧ ∃ Γ, G C H Γ s ∧ Pre vs s Γ) :
    Spec.Inv.CalleeCostP σ X f P B := by
  intro vs body callee rs hl
  refine (h vs body callee rs hl).pre fun s _ ⟨hloc, hp⟩ => ⟨hloc, ?_⟩
  obtain ⟨hlen, Γ, hG, hpre⟩ := hP vs s hp
  have ⟨p, hps', _⟩ := hG
  exact ⟨Γ, p, hG, hps', argsOK_any hps hlen, hpre⟩

theorem any_sg1 (gw : List MlS) : ∀ pt ∈ (sg1 gw).params, pt = .any := by
  intro pt h; simpa [sg1] using h

theorem any_sg0 (gw : List MlS) : ∀ pt ∈ (sg0 gw).params, pt = .any := by
  intro pt h; simp [sg0] at h

/-- A summary (abortive results exempt) with unconstrained arguments as a bundle fact. -/
theorem jSpec_of_sumSpecA {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f sg Pre PW Q) (hps : ∀ pt ∈ sg.params, pt = .any) :
    JSpec σ X C H f (fun vs s Γ => vs.length = sg.params.length ∧ Pre vs s Γ) Q := by
  refine FunSpec.mono h fun vs s r t hR hg hna Γ hG ⟨hlen, hpre⟩ => ?_
  have ⟨p, hps', _⟩ := hG
  obtain ⟨Γ', p, p', hcore, hq⟩ := hR hg hna Γ hG ⟨p, hps', argsOK_any hps hlen⟩ hpre
  exact ⟨Γ', sumCore_G hcore, hq⟩

theorem jSpec_mono {f : MlS} {Pre Pre' : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q Q' : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : JSpec σ X C H f Pre Q) (hP : ∀ vs s Γ, Pre' vs s Γ → Pre vs s Γ)
    (hQ : ∀ vs s Γ r t Γ', Pre' vs s Γ → Q vs s Γ r t Γ' → Q' vs s Γ r t Γ') :
    JSpec σ X C H f Pre' Q' :=
  FunSpec.mono h fun vs s r t hR hg hna Γ hG hp =>
    let ⟨Γ', hG', hq⟩ := hR hg hna Γ hG (hP vs s Γ hp); ⟨Γ', hG', hQ vs s Γ r t Γ' hp hq⟩

theorem not_abortive_ret (v : ValueHOL 64) : ¬ Abortive (.returned v) := by simp [Abortive]

theorem not_abortive_evm (v : ValueHOL 64) : ¬ Abortive (.exception nmEvmErr v) := by
  simp only [Abortive]; decide

end adapt

/-- The bundle gives the abstract hypotheses of `RunFramesGen.lean`. -/
theorem rfHyps_of_bundle {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    (B : Bundle σ X C H tEV tCK M Bop Bexc Bepi Bfin) :
    RFHyps σ X (RFJ C H tEV tCK) Phi M Bop Bexc Bepi Bfin := by
  refine ⟨by rw [B.code]; exact code_run_frames, rfJ_locFree B.hooks, phi_locFree, ?_, ?_,
    B.excCost, ?_, ?_, ?_, ?_, ?_⟩
  · exact calleeCostP_of_condCost B.opCost (any_sg1 _)
      fun vs s ⟨hlen, ⟨Γ, hG, hch⟩, hΦ, hrd⟩ => ⟨hlen, Γ, hG, hch, hΦ, hrd⟩
  · refine FunSpec.mono B.opSum ?_
    intro vs s r t hR hg hlen ⟨Γ, hG, hch⟩ hΦ hrd
    refine ⟨fun v hv => ?_, fun v hv => ?_⟩
    · obtain ⟨Γ', hG', hq1, -⟩ := hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, hch, hΦ, hrd⟩
      exact let h := hq1 v hv; ⟨⟨Γ', hG', h.1⟩, h.2⟩
    · obtain ⟨Γ', hG', -, hq2⟩ := hR hg (hv ▸ not_abortive_evm v) Γ hG ⟨hlen, hch, hΦ, hrd⟩
      exact let h := hq2 v hv; ⟨⟨Γ', hG', h.1⟩, h.2⟩
  · refine FunSpec.mono B.excSum ?_
    intro vs s r t hR hg hlen ⟨Γ, hG, hch⟩ hΦ v hv
    obtain ⟨Γ', hG', hq⟩ := hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, hch, hΦ⟩
    exact let h := hq v hv; ⟨⟨Γ', hG', h.1⟩, h.2⟩
  · exact calleeCostP_of_condCost B.epiCost (any_sg0 _)
      fun vs s ⟨hlen, ⟨Γ, hG, hch⟩, hΦ⟩ => ⟨by rw [hlen]; rfl, Γ, hG, hch, hΦ⟩
  · refine FunSpec.mono B.epiSum ?_
    intro vs s r t hR hg hlen ⟨Γ, hG, hch⟩ hΦ v hv
    obtain ⟨Γ', hG', hq⟩ := hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, hch, hΦ⟩
    exact let h := hq v hv; ⟨⟨Γ', hG', h.1⟩, h.2⟩
  · exact calleeCostP_of_condCost B.finCost (any_sg0 _)
      fun vs s ⟨hlen, ⟨Γ, hG, hch⟩, hΦ, hk⟩ => ⟨by rw [hlen]; rfl, Γ, hG, hch, hΦ, hk⟩
  · refine FunSpec.mono B.finSum ?_
    intro vs s r t hR hg hlen ⟨Γ, hG, hch⟩ hΦ hk
    refine ⟨fun v hv => ?_, fun v hv => ?_⟩
    · obtain ⟨Γ', hG', hq1, -⟩ := hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, hch, hΦ, hk⟩
      exact let h := hq1 v hv; ⟨⟨Γ', hG', h.1⟩, h.2⟩
    · obtain ⟨Γ', hG', -, hq2⟩ := hR hg (hv ▸ not_abortive_evm v) Γ hG ⟨hlen, hch, hΦ, hk⟩
      exact let h := hq2 v hv; ⟨⟨Γ', hG', h.1⟩, h.2⟩

/-! ## The scoring shape -/

/-- **The conditional cost of `run_frames`**, under the loop invariant, from the bundle. -/
theorem run_frames_costP {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    (B : Bundle σ X C H tEV tCK M Bop Bexc Bepi Bfin) :
    Spec.Inv.CalleeCostP σ X (nm "run_frames") (fun _ s => RFInv C H tEV tCK M s)
      (rfB M Bop Bexc Bepi Bfin) :=
  run_frames_costP_gen (rfHyps_of_bundle B)

/-- **The conditional table entry of `run_frames`** (`CondCost`, precondition `Chain ∧ Φ ≤ M`
under `G`), from the bundle. -/
theorem run_frames_condCost {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    (B : Bundle σ X C H tEV tCK M Bop Bexc Bepi Bfin) :
    CondCost σ X C H (nm "run_frames") (sg0 []) (PreInv C tEV tCK M)
      (rfB M Bop Bexc Bepi Bfin) := by
  intro vs body callee rs hl
  refine (run_frames_costP B vs body callee rs hl).pre fun s _ ⟨hloc, Γ, p, hG, _, _, hch, hΦ⟩ =>
    ⟨hloc, ⟨Γ, hG, hch⟩, hΦ⟩

end InitECandidate.Solver.MemSafe.Frames
