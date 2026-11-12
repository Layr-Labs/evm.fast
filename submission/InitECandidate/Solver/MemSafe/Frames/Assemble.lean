import InitECandidate.Solver.MemSafe.Frames.StateGasSum

/-!
# Assembling the `run_frames` bundle

`bundle_of`: the `Bundle` from the entries still to be proved elsewhere —

* `op_dispatch`'s summary (post `QStep`) and conditional cost (the conditional band, built on the
  per-opcode summaries, `charge_sumSpec` / `csg_sumSpec` / `credit_sumSpec`, `chain_of_sumCore`,
  and the CALL / CREATE path);
* `finish_child`'s summary and conditional cost (M5, needs the release interface);
* a `frame_mem_ptr`-keeping plain summary of `state_restore` (`SummFp`) not writing `ev` /
  `cur_cont`, and its all-states cost (`Spec.state_restore_cost`);

— with `frame_exception` (`exc_sumSpec`, `exc_cost`) and `frame_epilogue` (`epi_sumSpec`,
`epi_condCost`) discharged here. `run_frames_condCost_of`: the scoring shape from those entries.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem bundle_of {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bfin Bsr : Nat}
    (hC : X.code.lookup = guestCode) (hF : FrameCfg C H tEV tCK)
    (opSum : JSpec σ X C H (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOp C tEV tCK M vs s Γ) (QStep C tEV tCK))
    (opCost : CondCost σ X C H (nm "op_dispatch") (sg1 []) (PreOp C tEV tCK M) Bop)
    (finSum : JSpec σ X C H (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFin C tEV tCK M vs s Γ) (QStep C tEV tCK))
    (finCost : CondCost σ X C H (nm "finish_child") (sg0 []) (PreFin C tEV tCK M) Bfin)
    {gwsr : List MlS} (hgw : nmEv ∉ gwsr ∧ nmCC ∉ gwsr)
    (srSum : SummFp σ X C H (nm "state_restore") (sg1 gwsr))
    (srCost : CalleeCost σ X (nm "state_restore") Bsr) :
    Bundle σ X C H tEV tCK M Bop 2 (max (1 + Bsr + 0) 0 + 0) Bfin :=
  ⟨hC, hF.hooks, opSum, opCost,
    jSpec_of_sumSpecA (sumSpecA_of_sumSpec (exc_sumSpec hC hF M)) (any_sg1 _), exc_cost hC,
    jSpec_mono (jSpec_of_sumSpecA (sumSpecA_of_sumSpec (epi_sumSpec hC hF hgw srSum M))
      (any_sg0 _)) (fun vs s Γ ⟨h1, h2⟩ => ⟨by rw [h1]; rfl, h2⟩) (fun _ _ _ _ _ _ _ h => h),
    epi_condCost hC srCost, finSum, finCost⟩

/-- **The scoring shape from the open entries.** -/
theorem run_frames_condCost_of {C : Cfg} {H : Hooks σ} {tEV tCK M Bop Bfin Bsr : Nat}
    (hC : X.code.lookup = guestCode) (hF : FrameCfg C H tEV tCK)
    (opSum : JSpec σ X C H (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOp C tEV tCK M vs s Γ) (QStep C tEV tCK))
    (opCost : CondCost σ X C H (nm "op_dispatch") (sg1 []) (PreOp C tEV tCK M) Bop)
    (finSum : JSpec σ X C H (nm "finish_child")
      (fun vs s Γ => vs = [] ∧ PreFin C tEV tCK M vs s Γ) (QStep C tEV tCK))
    (finCost : CondCost σ X C H (nm "finish_child") (sg0 []) (PreFin C tEV tCK M) Bfin)
    {gwsr : List MlS} (hgw : nmEv ∉ gwsr ∧ nmCC ∉ gwsr)
    (srSum : SummFp σ X C H (nm "state_restore") (sg1 gwsr))
    (srCost : CalleeCost σ X (nm "state_restore") Bsr) :
    CondCost σ X C H (nm "run_frames") (sg0 []) (PreInv C tEV tCK M)
      (rfB M Bop 2 (max (1 + Bsr + 0) 0 + 0) Bfin) :=
  run_frames_condCost (bundle_of hC hF opSum opCost finSum finCost hgw srSum srCost)

end InitECandidate.Solver.MemSafe.Frames
