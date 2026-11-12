import InitECandidate.Solver.MemSafe.D0.Wrap
import InitECandidate.Solver.MemSafe.Calls.DlgProof
import InitECandidate.Solver.MemSafe.Frames.NewSpec

/-!
# `memcpy` and `compute_jumpdests` as `SumSpecA`, and their `KeepsFp`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Wire

variable {σ : Type}

theorem memcpy_sa : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "memcpy")
    Helpers.sigMemcpy (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  let hF := Rec.foldOK_guestR (σ := σ)
  sumSpecA_of_sumSpec (Helpers.summ_memcpy hF.hH Helpers.tagSlots_guestC hF.hX hF.hal)

theorem memcpy_fp : KeepsFp σ guestCtx (nm "memcpy") := keepsFp_guest (by decide_cbv)

theorem jd_sa : SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "compute_jumpdests")
    Helpers.sigJumpdests Helpers.JdPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  let hF := Rec.foldOK_guestR (σ := σ)
  sumSpecA_of_sumSpec (Helpers.sumSpec_compute_jumpdests hF.hH Annot.drv_allocG hF.hX hF.hal)

theorem jd_fp : KeepsFp σ guestCtx (nm "compute_jumpdests") := keepsFp_guest (by decide_cbv)

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.memcpy_sa
#print axioms InitECandidate.Solver.MemSafe.D0.jd_sa
#print axioms InitECandidate.Solver.MemSafe.D0.memcpy_fp
#print axioms InitECandidate.Solver.MemSafe.D0.jd_fp
