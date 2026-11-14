import InitECandidate.Solver.MemSafe.ModexpCost.Countdown
import InitECandidate.Solver.MemSafe.ModexpCost.TopBit
import InitECandidate.Solver.MemSafe.ModexpCost.Call
import InitECandidate.Solver.MemSafe.Mod.Code
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ModexpCost
variable {σ : Type} {X : Ctx 64}
def rest : ProgHOL 64 := match Mod.mxIter with | .seq _ b => b | _ => .skip
def neg : ProgHOL 64 := match Mod.mxCase with | .ite _ a _ => a | _ => .skip
def copy : ProgHOL 64 := callD (nm "memcpy") [lv (nm "r"),lv (nm "base"),Mod.mxN8]
def TP (s : PanSemStateFiniteExact 64 σ) : Prop :=
 ∃ T : BitVec 64, s.locals.lookup (nm "t") = some (.val (.word T)) ∧ (T = -1 ∨ T.toNat ≤ 8256)
theorem rest_keeps : Keeps σ (nm "t") rest := by
 apply keepsB_sound
 decide_cbv
theorem copy_keeps : Keeps σ (nm "t") copy := by
 apply keepsB_sound
 decide_cbv
theorem loop_cost {B : Nat} (hb : Cost σ X rest B) :
 Inv.CostP σ X (fun s => InitECandidate.Solver.SourceCost.wordOf s (nm "t") ≤ 8256) Mod.mxLoop (8257*(B+1)) := by
 exact InitECandidate.Solver.MemSafe.ModexpCost.Countdown.bounded (M := 8256) hb rest_keeps

theorem tail_cost {Bi Bn Bc Be : Nat}
 (hi : Cost σ X rest Bi) (hn : Cost σ X neg Bn) (hc : Cost σ X copy Bc)
 (he : Cost σ X Mod.mxEnd Be) :
 Inv.CostP σ X TP Mod.mxT (max Bn (Bc+8257*(Bi+1))+Be) := by
 unfold Mod.mxT
 refine Inv.costP_seq (R := fun _ => True) ?_ (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost he)
 unfold Mod.mxCase
 refine Inv.costP_ite (Inv.costP_of_cost hn) ?_
 refine Inv.costP_seq (R := fun s => InitECandidate.Solver.SourceCost.wordOf s (nm "t") ≤ 8256) (Inv.costP_of_cost hc) ?_ (loop_cost hi)
 intro s hs hp ht hnormal
 obtain ⟨⟨T,hT,hb⟩,hfalse⟩ := hp
 have hle : T.toNat ≤ 8256 := by
  rcases hb with hsent | hbound
  · subst T
    have hcmp := cmp_val_false hfalse (ev_lw hT) (ev_cw _ 0)
    have hne : Compiler.Encoders.Asm.wordCmpHOL .less (-1 : BitVec 64) 0 = true := by decide
    have hbad : ¬ (Compiler.Encoders.Asm.wordCmpHOL .less (-1 : BitVec 64) (BitVec.ofNat 64 0) = false) := by decide
    exact False.elim (hbad hcmp)
  · exact hbound
 have hkeep := copy_keeps s (Or.inl hnormal)
 dsimp only [copy] at hkeep
 unfold InitECandidate.Solver.SourceCost.wordOf
 rw [hkeep,hT]
 exact hle
#print axioms loop_cost
#print axioms tail_cost
end InitECandidate.Solver.MemSafe.ModexpCost
