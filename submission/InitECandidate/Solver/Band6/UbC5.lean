import InitECandidate.Solver.Band6.UbC4

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false

/-!
# The cost walk: the transaction-storage loop entry, the account-table entry, the body (Band6)

Mirrors `Ub7.lean` / `Ub8.lean`.
-/

namespace InitECandidate.Solver.Band6
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal InitECandidate.Solver.Band3
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

section c7
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

def bRB : Nat := 0 + (0 + (bL2 + 0))

theorem c_rest_body (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) {IDX : BitVec 64} (O : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 ((Eb IDX).set (nm "outer") (.val (.word O))) (FL2 O))
      (.seq (.assign .local (nm "cap") (ld1 (add2 (lvv "outer") 24)))
        (.seq (.assign .local (nm "i") (cw 0)) (.seq ubLoop2 (.return (cw 0))))) bRB := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  refine Inv.costP_seq (R := PE ubc Γ0 s0 p0 ((Eb IDX).set (nm "outer") (.val (.word O))) (FL2 O))
    (Inv.costP_of_cost (cost_assign _ _ _)) (inv_of_hoareG (hassignU hH ?_)) ?_
  · simp (config := {decide := true}) [Eb, E0, Env.set]
  have hA2 : HoareG σ guestCtx (PE ubc Γ0 s0 p0 ((Eb IDX).set (nm "outer") (.val (.word O))) (FL2 O))
      (.assign .local (nm "i") (cw 0))
      (RR ubc Γ0 s0 p0 (LE (EL2 (Eb IDX) O (BitVec.ofNat 64 0)) (FL2 O))) := by
    refine hoareG_conseq (hassignT hH (fun v => v = .val (.word (BitVec.ofNat 64 0))) ?_)
      (fun _ _ h => h) (fun r t _ _ hq => rr_mono (fun Γ t ⟨v', hv', hl⟩ => ?_) hq)
    · intro Γ s' v hP hv
      rw [ev_cw] at hv
      exact (Option.some.inj hv).symm
    · subst hv'
      exact hl
  refine Inv.costP_seq (R := PE ubc Γ0 s0 p0 (EL2 (Eb IDX) O (BitVec.ofNat 64 0)) (FL2 O))
    (Inv.costP_of_cost (cost_assign _ _ _)) (inv_of_hoareG hA2) ?_
  refine Inv.costP_seq (R := fun _ => True) (c_loop2 hGT Ent hgs (IDX := IDX) (E := Eb IDX) ?_ ?_ O)
    (fun s _ _ _ _ => trivial) (Inv.costP_of_cost (cost_return _))
  · intro x hx
    simp only [ubNames4, ubNames3, List.mem_cons, List.not_mem_nil, or_false] at hx
    rcases hx with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;>
      simp (config := {decide := true}) [Eb, E0, Env.set]
  · simp (config := {decide := true}) [Eb, E0, Env.set]

theorem c_rest (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (Ent : UbEnt Γ0 s0 p0) (hgs : HGS σ) (IDX : BitVec 64) :
    Inv.CostP σ guestCtx (PE ubc Γ0 s0 p0 (Eb IDX) (fun _ => True)) ubRest bRB := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  unfold ubRest
  refine cdecEF hH (G := fun v Γ => ∃ O : BitVec 64, v = .val (.word O) ∧ FL2 O Γ) ?_ ?_
  · intro Γ s' v hP hv
    obtain ⟨A, hA, S, hS, hSb, hSt⟩ := ts_slot Ent hP.1 (k := 4) (j := 32) (th := tHTt20) rfl (by decide)
      (by decide) hv
    exact ⟨A, hA, S, hS, hSb, hSt⟩
  · intro v s hs ⟨Γ, hIV, hLL, hFF⟩ hg
    obtain ⟨O, rfl, hO⟩ := hFF.2
    exact c_rest_body hGT Ent hgs O s hs ⟨Γ, hIV, hLL, hO⟩ hg

end c7

end InitECandidate.Solver.Band6

#print axioms InitECandidate.Solver.Band6.c_rest
