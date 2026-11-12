import InitECandidate.Solver.MemSafe.Frames.BundleJ
import InitECandidate.Solver.MemSafe.Frames.ChainX

/-!
# The `run_frames` bundle on the chain extension (frames8, task 4)

`BundleJ` with the extended chain `ChainX C tEV tCK P R` (generic in the extension `P`, `R`):

* `RFJX` / `RFInvX`: `(∃ Γ, G ∧ ChainX) ∧ JrNZ`, and `Φ ≤ M`.
* **`BundleX`**: the hypothesis bundle with Pres `PreOpX` / `PreInvX` / `PreFinX` and posts
  `QStepX` / `QExcX` / `QEpiX`; `rfHyps_of_bundleX`.
* **`run_frames_condCostX : CondCost … "run_frames" (sg0 []) (PreInvX C tEV tCK P R M) (rfB …)`**.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- **The loop invariant of `run_frames` on the extended chain.** -/
def RFJX (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (s : State σ) : Prop :=
  (∃ Γ, G C H Γ s ∧ ChainX C tEV tCK P R Γ s) ∧ JrNZ s

def RFInvX (C : Cfg) (H : Hooks σ) (tEV tCK M : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (s : State σ) : Prop :=
  RFJX C H tEV tCK P R s ∧ Phi s ≤ M

theorem rfJX_locFree {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} :
    LocFree (σ := σ) (RFJX C H tEV tCK P R) := fun s l c =>
  ⟨fun ⟨⟨Γ, h1, h2⟩, h3⟩ => ⟨⟨Γ, (G_locFree hH s l c).mp h1, (chainX_locFree s l c).mp h2⟩,
      (jrNZ_locFree s l c).mp h3⟩,
   fun ⟨⟨Γ, h1, h2⟩, h3⟩ => ⟨⟨Γ, (G_locFree hH s l c).mpr h1, (chainX_locFree s l c).mpr h2⟩,
      (jrNZ_locFree s l c).mpr h3⟩⟩

/-- **The hypothesis bundle of `run_frames` on the extended chain.** -/
structure BundleX (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (tEV tCK M : Nat)
    (P : Gam → Mem → Ptrs → Frame → Prop) (R : Gam → Mem → Frame → Frame → Prop)
    (Bop Bexc Bepi Bfin : Nat) : Prop where
  code : X.code.lookup = guestCode
  hooks : HooksLawful C H
  opSum : JSpec σ X C H (nm "op_dispatch")
    (fun vs s Γ => vs.length = 1 ∧ PreOpX C tEV tCK P R M vs s Γ) (QStepX C tEV tCK P R)
  opCost : CondCost σ X C H (nm "op_dispatch") (sg1 []) (PreOpX C tEV tCK P R M) Bop
  excSum : JSpec σ X C H (nm "frame_exception")
    (fun vs s Γ => vs.length = 1 ∧ PreInvX C tEV tCK P R M vs s Γ) (QExcX C tEV tCK P R)
  excCost : CalleeCost σ X (nm "frame_exception") Bexc
  epiSum : JSpec σ X C H (nm "frame_epilogue")
    (fun vs s Γ => vs = [] ∧ PreInvX C tEV tCK P R M vs s Γ) (QEpiX C tEV tCK P R)
  epiCost : CondCost σ X C H (nm "frame_epilogue") (sg0 []) (PreInvX C tEV tCK P R M) Bepi
  finSum : JSpec σ X C H (nm "finish_child")
    (fun vs s Γ => vs = [] ∧ PreFinX C tEV tCK P R M vs s Γ) (QStepX C tEV tCK P R)
  finCost : CondCost σ X C H (nm "finish_child") (sg0 []) (PreFinX C tEV tCK P R M) Bfin

/-- The extended bundle gives the abstract hypotheses of `RunFramesGen.lean`. -/
theorem rfHyps_of_bundleX {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    (B : BundleX σ X C H tEV tCK M P R Bop Bexc Bepi Bfin) :
    RFHyps σ X (RFJX C H tEV tCK P R) Phi M Bop Bexc Bepi Bfin := by
  refine ⟨by rw [B.code]; exact code_run_frames, rfJX_locFree B.hooks, phi_locFree, ?_, ?_,
    B.excCost, ?_, ?_, ?_, ?_, ?_⟩
  · exact calleeCostP_of_condCost B.opCost (any_sg1 _)
      fun vs s ⟨hlen, ⟨⟨Γ, hG, hch⟩, hJ⟩, hΦ, hrd⟩ => ⟨hlen, Γ, hG, ⟨hch, hΦ, hrd⟩, hJ⟩
  · refine FunSpec.mono B.opSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch⟩, hJ⟩ hΦ hrd
    refine ⟨fun v hv => ?_, fun v hv => ?_⟩
    · obtain ⟨Γ', hG', ⟨hq1, -⟩, hj1, -⟩ :=
        hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ, hrd⟩, hJ⟩
      exact let h := hq1 v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj1 v hv⟩, h.2⟩
    · obtain ⟨Γ', hG', ⟨-, hq2⟩, -, hj2, -⟩ :=
        hR hg (hv ▸ not_abortive_evm v) Γ hG ⟨hlen, ⟨hch, hΦ, hrd⟩, hJ⟩
      exact let h := hq2 v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj2 v hv⟩, h.2⟩
  · refine FunSpec.mono B.excSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch⟩, hJ⟩ hΦ v hv
    obtain ⟨Γ', hG', hq, hj, -⟩ := hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ⟩, hJ⟩
    exact let h := hq v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj v hv⟩, h.2⟩
  · exact calleeCostP_of_condCost B.epiCost (any_sg0 _)
      fun vs s ⟨hlen, ⟨⟨Γ, hG, hch⟩, hJ⟩, hΦ⟩ => ⟨by rw [hlen]; rfl, Γ, hG, ⟨hch, hΦ⟩, hJ⟩
  · refine FunSpec.mono B.epiSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch⟩, hJ⟩ hΦ v hv
    obtain ⟨Γ', hG', hq, hj, -⟩ := hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ⟩, hJ⟩
    exact let h := hq v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj v hv⟩, h.2⟩
  · exact calleeCostP_of_condCost B.finCost (any_sg0 _)
      fun vs s ⟨hlen, ⟨⟨Γ, hG, hch⟩, hJ⟩, hΦ, hk⟩ => ⟨by rw [hlen]; rfl, Γ, hG, ⟨hch, hΦ, hk⟩, hJ⟩
  · refine FunSpec.mono B.finSum ?_
    intro vs s r t hR hg hlen ⟨⟨Γ, hG, hch⟩, hJ⟩ hΦ hk
    refine ⟨fun v hv => ?_, fun v hv => ?_⟩
    · obtain ⟨Γ', hG', ⟨hq1, -⟩, hj1, -⟩ :=
        hR hg (hv ▸ not_abortive_ret v) Γ hG ⟨hlen, ⟨hch, hΦ, hk⟩, hJ⟩
      exact let h := hq1 v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj1 v hv⟩, h.2⟩
    · obtain ⟨Γ', hG', ⟨-, hq2⟩, -, hj2, -⟩ :=
        hR hg (hv ▸ not_abortive_evm v) Γ hG ⟨hlen, ⟨hch, hΦ, hk⟩, hJ⟩
      exact let h := hq2 v hv; ⟨⟨⟨Γ', hG', h.1⟩, hj2 v hv⟩, h.2⟩

/-- **The conditional cost of `run_frames`** on the extended chain. -/
theorem run_frames_costPX {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    (B : BundleX σ X C H tEV tCK M P R Bop Bexc Bepi Bfin) :
    Spec.Inv.CalleeCostP σ X (nm "run_frames") (fun _ s => RFInvX C H tEV tCK M P R s)
      (rfB M Bop Bexc Bepi Bfin) :=
  run_frames_costP_gen (rfHyps_of_bundleX B)

/-- **The conditional table entry of `run_frames`** (`CondCost`, precondition
`ChainX ∧ Φ ≤ M ∧ JrNZ` under `G`). -/
theorem run_frames_condCostX {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bexc Bepi Bfin : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    (B : BundleX σ X C H tEV tCK M P R Bop Bexc Bepi Bfin) :
    CondCost σ X C H (nm "run_frames") (sg0 []) (PreInvX C tEV tCK P R M)
      (rfB M Bop Bexc Bepi Bfin) := by
  intro vs body callee rs hl
  refine (run_frames_costPX B vs body callee rs hl).pre
    fun s _ ⟨hloc, Γ, p, hG, _, _, ⟨hch, hΦ⟩, hJ⟩ => ⟨hloc, ⟨⟨Γ, hG, hch⟩, hJ⟩, hΦ⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.rfHyps_of_bundleX
#print axioms InitECandidate.Solver.MemSafe.Frames.run_frames_condCostX
