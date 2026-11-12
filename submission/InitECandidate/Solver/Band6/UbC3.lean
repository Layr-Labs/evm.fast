import InitECandidate.Solver.Band6.UbC2
import InitECandidate.Solver.MemSafe.Bal.Ub8

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

/-!
# The cost walk: the storage slot loop (Band6)

Mirrors `Ub4.lean` / `Ub5.lean`. The conditional call is `idx_start_storage` (`isk_condCost`).
-/

namespace InitECandidate.Solver.Band6
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

/-- Everything after the `idx_start_storage` call of the slot body. -/
def ubInnerRest : ProgHOL 64 :=
  .dec (nm "post_v") Bal.sh4 (ld4 (.rfield 2 (lvv "e")))
      (.decCall (nm "eq2") .one (nm "u256_eq") [lvv "pre_v", lvv "post_v"]
        (.ite (.cmp .equal (lvv "eq2") (cw 0))
          (callD (nm "add_storage_write") [.rfield 1 (lvv "s2"), .rfield 1 (lvv "e"), lvv "idx", lvv "post_v"])
          (callD (nm "remove_storage_write") [.rfield 1 (lvv "s2"), .rfield 1 (lvv "e"), lvv "idx"])))

theorem ubInner_eq : ubInner = .decCall (nm "pre_v") Bal.sh4 (nm "idx_start_storage")
    [.rfield 1 (lvv "s2"), .rfield 1 (lvv "e")] ubInnerRest := rfl

def bIR : Nat := 1361129467683753854314667031569811636257

set_option cbv.maxSteps 4000000000 in
theorem cost_ir : Cost σ guestCtx ubInnerRest bIR := cost_guest_of_costA (by decide_cbv)

def bInner : Nat := 1 + Band5.isB + bIR

section c4
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The storage-slot body for a found slot. -/
theorem c_inner (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) {E : Env} {F : Gam → Prop} {a2 b2 c2 a3 b3 c3 : BitVec 64}
    (hs2 : E (nm "s2") = some (wv [a2, b2, c2])) (he : E (nm "e") = some (wv [a3, b3, c3]))
    (hk : ∀ Γ, F Γ → SrcKey Γ b2 20 tHTb20) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 E F) ubInner bInner := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  rw [ubInner_eq]
  refine Band.costP_decCall (isk_condCost (σ := σ) hGT) ?_ (funSpec_true _) ?_
  · intro s hs ⟨Γ, hIV, hLL, hFF⟩ vs hvs callee
    obtain rfl := evs_det hvs (evs_cons_mk (le_rf (i := 1) (ws := [a2, b2, c2]) ⟨hLL, hFF⟩ hs2 (by simp))
      (evs_cons_mk (le_rf (i := 1) (ws := [a3, b3, c3]) ⟨hLL, hFF⟩ he (by simp)) evs_nil))
    obtain ⟨pT, hpT, -⟩ := id hIV.1
    exact ⟨Γ, pT, Struct.G_congr (s := s) hH rfl rfl rfl rfl (Struct.trk_G hIV.1),
      (Frames.ptrsOf_congr rfl).trans hpT, argsOK_allAny (by simp [storWgsSig]) rfl,
      isPre_of (ub_facts Ent hIV) (hk Γ hFF)⟩
  · intro _ _ _ _ _ _ _ _ _ _ _
    exact Inv.costP_of_cost cost_ir

end c4

end InitECandidate.Solver.Band6

#print axioms InitECandidate.Solver.Band6.c_inner
