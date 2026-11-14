import InitECandidate.Solver.MemSafe.RlpCost.UncheckedLong
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Unchecked
variable {σ : Type}
def dispatch : ProgHOL 64 := match ituBody with | .dec _ _ _ k => k | _ => .skip

theorem long_nn (P B : BitVec 64) (M : InitECandidate.Solver.MemSafe.Mem) (be : Bool) (base : Nat) (ll n : MlS)
    (hll : ll ≠ nm "p") (hn : n ≠ ll) :
    Hoare σ guestCtx (UB P B M be)
      (.dec ll .one (.op .sub [lv (nm "b"),cw base])
        (.decCall n .one (nm "rlp_read_length") [.op .add [lv (nm "p"),cw 1],lv ll] (ituLong ll n)))
      (fun r _ => r ≠ none) := by
  have h := itu_long (σ := σ) (X := guestCtx) (Pc := fun _ => True) guestCtx_code
    (P := P) (B := B) (M := M) (be := be)
    (T := BitVec.ofNat 64 1 + ((B-BitVec.ofNat 64 base) + rlen M be (P+BitVec.ofNat 64 1) (B-BitVec.ofNat 64 base).toNat))
    base ll n hll hn rfl
  exact hoare_pre (hoare_post h (fun _ _ _ _ h => h.1)) (fun _ _ h => ⟨h,trivial⟩)

theorem dispatch_cost (P B : BitVec 64) (M : InitECandidate.Solver.MemSafe.Mem) (be : Bool) (hB : B.toNat < 256) :
    Inv.CostP σ guestCtx (UB P B M be) dispatch 22 := by
  unfold dispatch ituBody
  dsimp only
  refine InitECandidate.Solver.MemSafe.RlpCost.Header.gate_cost (Bk := 22) (Inv.costP_of_cost (cost_return _))
    (hoare_return (fun _ _ _ _ _ => by simp)) ?_
  refine InitECandidate.Solver.MemSafe.RlpCost.Header.gate_cost (Bk := 22) (Inv.costP_of_cost (cost_return _))
    (hoare_return (fun _ _ _ _ _ => by simp)) ?_
  refine InitECandidate.Solver.MemSafe.RlpCost.Header.gate_cost (Bk := 11) ?_
    (hoare_pre (long_nn P B M be 183 (nm "ll") (nm "n") (by decide) (by decide))
      (fun _ _ h => h.1.1.1)) ?_
  · intro s hs hp hg
    have hI : UB P B M be s := hp.1.1.1
    have hlo := cmp_val_false hp.1.2 (ev_cw s 183) (ev_lw hI.2.1)
    obtain ⟨w,hw,hw0⟩ := hp.2
    have hhi := cmp_val_true hw hw0 (ev_cw s 191) (ev_lw hI.2.1)
    have hLL : (B-BitVec.ofNat 64 183).toNat ≤ 8 := by
      simp [wordCmpHOL,BitVec.lt_def] at hlo hhi
      bv_omega
    exact long_cost P B M be 183 (nm "ll") (nm "n") (by decide) hLL s hs hI hg
  refine InitECandidate.Solver.MemSafe.RlpCost.Header.gate_cost (Bk := 11) (Inv.costP_of_cost (cost_return _))
    (hoare_return (fun _ _ _ _ _ => by simp)) ?_
  intro s hs hp hg
  have hI : UB P B M be s := hp.1.1.1.1
  have hlo := cmp_val_false hp.2 (ev_cw s 247) (ev_lw hI.2.1)
  have hLL : (B-BitVec.ofNat 64 247).toNat ≤ 8 := by
    simp [wordCmpHOL,BitVec.lt_def] at hlo
    bv_omega
  exact long_cost P B M be 247 (nm "ll2") (nm "n2") (by decide) hLL s hs hI hg
#print axioms long_nn
#print axioms dispatch_cost
end InitECandidate.Solver.MemSafe.RlpCost.Unchecked
