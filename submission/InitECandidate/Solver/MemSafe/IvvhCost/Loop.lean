import InitECandidate.Solver.MemSafe.BalCost.Loop
import InitECandidate.Solver.MemSafe.Exb.Ivvh
import InitECandidate.Solver.Band.Rules
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Exb
open InitECandidate.Solver.MemSafe.Rec
namespace InitECandidate.Solver.MemSafe.IvvhCost
variable {σ : Type}
def ntxMax : Nat := 15728640

theorem sla_count_bound {Γ : Gam} {A N : BitVec 64} {s : State σ}
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s) (h : SlaObj Γ A N) :
    N.toNat ≤ ntxMax := by
  rcases h with hzero | ⟨o, ho, hb, ht, hsize, hend⟩
  · simp [ntxMax, hzero]
  · obtain ⟨p, hp, hord, hL, hrest⟩ := hG
    have hl := (hL.1 o ho).2.2.2.2
    have hregion : (Types.guestC.ty o.ty).region = .heap := by rw [ht]; rfl
    rw [hregion] at hl
    have hlo : heapBase ≤ o.lo := hl.1
    change 2701131776 ≤ o.base.toNat at hlo
    rw [hb] at hlo
    change A.toNat + 16 * N.toNat ≤ 2952790016 at hend
    unfold ntxMax
    omega

def Pre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ SI : BitVec 64, vs = [.val (.word SI)] ∧
    (rd s.memory (rd s.memory (SI + BitVec.ofNat 64 0) + BitVec.ofNat 64 40)).toNat ≤ ntxMax

theorem pre_of_ivPre {Γ : Gam} {vs : List (ValueHOL 64)} {s : State σ}
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (h : IvPre vs s Γ) : Pre vs s := by
  obtain ⟨SI, hvs, hE⟩ := h
  exact ⟨SI, hvs, sla_count_bound hG hE.1⟩

def outerB : Nat := (InitECandidate.Solver.MemSafe.BalCost.Analyzer.costFin ivOuter).getD 0

theorem cost_outer : Cost σ guestCtx ivOuter outerB := by
  have hs : (InitECandidate.Solver.MemSafe.BalCost.Analyzer.costFin ivOuter).isSome = true := by decide_cbv
  obtain ⟨B, hB⟩ := Option.isSome_iff_exists.mp hs
  simpa [outerB, hB] using
    (InitECandidate.Solver.MemSafe.BalCost.Analyzer.cost_guest_costA (σ := σ) hB)

theorem outer_steps : Steps σ (nm "i") (· + 1) ivOuter :=
  stepsB_sound (nm "i") true ivOuter (by decide +kernel)

theorem outer_keeps : Keeps σ (nm "ntx") ivOuter :=
  keepsB_sound (nm "ntx") ivOuter (by decide +kernel)

theorem loop_cost {N : BitVec 64} (hN : N.toNat ≤ ntxMax) :
    Inv.CostP σ guestCtx (CapturedCountInv (nm "i") (lv (nm "ntx")) N ntxMax)
      ivLoop ((ntxMax + 1) * (outerB + 1)) := by
  unfold ivLoop
  exact conditional_limit_while_costP (by decide) (fun _ => hN) cost_outer outer_steps
    (fun _ => rfl) (fun s he => outer_keeps s he)

#print axioms pre_of_ivPre
#print axioms cost_outer
#print axioms loop_cost
end InitECandidate.Solver.MemSafe.IvvhCost
