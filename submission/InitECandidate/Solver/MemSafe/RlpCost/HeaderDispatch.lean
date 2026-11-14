import InitECandidate.Solver.MemSafe.RlpCost.HeaderLong
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Header
variable {σ : Type}
theorem gate_cost {P : State σ → Prop} {c : ExpHOL 64} {a k : ProgHOL 64} {Ba Bk : Nat}
    (ha : Inv.CostP σ guestCtx (fun s => P s ∧ CondTrue s c) a Ba)
    (hnn : Hoare σ guestCtx (fun s => P s ∧ CondTrue s c) a (fun r _ => r ≠ none))
    (hk : Inv.CostP σ guestCtx (fun s => P s ∧ ev s c = some (.val (.word 0))) k Bk) :
    Inv.CostP σ guestCtx P (.seq (.ite c a .skip) k) (Ba+Bk) := by
  have hm : Hoare σ guestCtx P (.ite c a .skip)
      (fun r t => r = none → P t ∧ ev t c = some (.val (.word 0))) :=
    hoare_ite (hoare_post hnn (fun r t ht hr hnn he => False.elim (hnn he)))
      (hoare_skip (fun _ _ hp _ => hp))
  simpa using Inv.costP_seq (Inv.costP_ite ha (Inv.costP_of_cost cost_skip)) hm hk

theorem shortStr_cost : Cost σ guestCtx hdrShortStr 2 := CryptoCost.Analyzer.cost_guest_costA (by cbv)
theorem shortList_cost : Cost σ guestCtx hdrShortList 1 := CryptoCost.Analyzer.cost_guest_costA (by cbv)

theorem dispatch_cost (P L B : BitVec 64) (hB : B.toNat < 256) :
    Inv.CostP σ guestCtx (HInvB P L B) hdrDispatch 31 := by
  unfold hdrDispatch
  apply Inv.CostP.mono (B := 0+(2+(14+(1+14)))) ?_ (by decide)
  refine gate_cost (Inv.costP_of_cost (cost_return _))
    (hoare_return (fun _ _ _ _ _ => by simp)) ?_
  refine gate_cost (Inv.costP_of_cost shortStr_cost)
    (hoare_pre (hoare_post (hdrShortStr_hoare guestCtx_code P L B) (fun _ _ _ _ h => h.1))
      (fun _ _ h => h.1.1)) ?_
  refine gate_cost ?_
    (hoare_pre (hoare_post (hdrLong_hoare guestCtx_code P L B 183 0) (fun _ _ _ _ h => h.1))
      (fun _ _ h => h.1.1.1)) ?_
  · intro s hs hp hg
    have hI : HInvB P L B s := hp.1.1.1
    have hlo := cmp_val_false hp.1.2 (ev_cw s 183) (ev_lw hI.2)
    obtain ⟨w,hw,hw0⟩ := hp.2
    have hhi := cmp_val_true hw hw0 (ev_cw s 191) (ev_lw hI.2)
    have hLL : (B-BitVec.ofNat 64 183).toNat ≤ 8 := by
      simp [wordCmpHOL, BitVec.lt_def] at hlo hhi
      bv_omega
    exact long_cost P L B 183 0 hLL s hs hI hg
  refine gate_cost (Inv.costP_of_cost shortList_cost)
    (hoare_pre (hoare_post (hdrShortList_hoare guestCtx_code P L B) (fun _ _ _ _ h => h.1))
      (fun _ _ h => h.1.1.1.1)) ?_
  intro s hs hp hg
  have hI : HInvB P L B s := hp.1.1.1.1
  have hlo := cmp_val_false hp.2 (ev_cw s 247) (ev_lw hI.2)
  have hLL : (B-BitVec.ofNat 64 247).toNat ≤ 8 := by
    simp [wordCmpHOL, BitVec.lt_def] at hlo
    bv_omega
  exact long_cost P L B 247 1 hLL s hs hI hg
#print axioms dispatch_cost
end InitECandidate.Solver.MemSafe.RlpCost.Header
