import InitECandidate.Solver.MemSafe.BlsScalar.Parts
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsScalar.Stage
open InitECandidate.Solver.MemSafe.BlsScalar.Parts
variable {σ : Type}
theorem cost {rest tail : ProgHOL 64} {C T : Nat}
 (hr : Cost σ guestCtx rest C) (ht : Cost σ guestCtx tail T) (hi : Keeps σ (nm "i") rest) :
 Inv.CostP σ guestCtx (ModexpCost.Keep.Bound (nm "n") 10) (stage rest tail) (641*(C+1)+T) := by
 have hl := CryptoCost.Countdown.bounded (M := 640) hr hi
 have hsuf := Inv.costP_seq (R := fun _ => True) hl (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost ht)
 unfold stage
 refine Inv.costP_dec ?_
 intro s hs hp v hv hsh
 obtain ⟨N,hN,hle⟩ := hp
 have hev : ev s initExp = some (.val (.word (N * 64))) := by
  have ha : evs s [.var .local (nm "n"),.const 64] = some [.val (.word N),.val (.word 64)] :=
   evs_cons hN (evs_cons (ev_cw _ 64) evs_nil)
  unfold initExp
  dsimp only [ev]
  rw [evalHOLExact]
  dsimp only [evs] at ha
  rw [ha];rfl
 rw [hev] at hv
 cases hv
 refine Inv.costP_dec ?_
 intro t ht he w hw hshape
 subst t
 apply hsuf.pre
 intro u hu heq
 subst u
 unfold InitECandidate.Solver.SourceCost.wordOf
 rw [lk_set_ne _ _ (by decide),lk_set_self]
 change (N * (64 : BitVec 64)).toNat ≤ 640
 rw [BitVec.toNat_mul,show (64 : BitVec 64).toNat = 64 by decide]
 exact (Nat.mod_le _ _).trans (Nat.mul_le_mul_right 64 hle)
#print axioms cost
end InitECandidate.Solver.MemSafe.BlsScalar.Stage
