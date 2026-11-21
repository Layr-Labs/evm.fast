import InitECandidate.Solver.MemSafe.Eb.Cost15
import InitECandidate.Solver.MemSafe.Eb.Loop12

/-!
# `execute_block`: the cost walk, part 16 (the loop body)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- The cost of one iteration. -/
def bLB (BT : Nat) : Nat := 1 + cDecTx + (0 + ((1 + BT + 0) + (0 + 0)))

section body
variable {E : EbE σ} {En : Env} {M : Nat}

private theorem hn_assign_word_heap {S : FS} {n : MlS} {e : ExpHOL 64} {w' : BitVec 64} {floor : Nat}
    (he : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → v = .val (.word w')) :
    HN (fun s => PA E En S s ∧ HeapAtLeast floor s) (.assign .local n e)
      (fun t => PA E (En.set n (.val (.word w'))) S t ∧ HeapAtLeast floor t) :=
  hoare_assign fun s _ ⟨hpa, hfloor⟩ v hv _ => by
    have eq := he s hpa v hv
    subst v
    exact ⟨rfl, pa_set hpa n _, hfloor⟩

theorem cw_loop_body {BT floor : Nat} (hPtC : HypPtCost σ M BT) (hK : HypKeepG σ)
    (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M)
    {S : FS} {Z : List MlS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 pl0 ptxs0 X iv : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 0) (hS : SafeS S) (hT : Tidy Z S)
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hzp : ∀ g ∈ Z, ¬ (ptW.contains g = true))
    (hpl : S (Fct.obj pl0 tPL 136)) (h32 : S (Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0))
    (h40 : S (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0)) (hEn : En (nm "tx") = none) (hlt : iv.toNat < ntx0.toNat) :
    CW (fun s => PA E (EnL En X ptxs0 iv) (SLs S t r iv.toNat) s ∧ HeapAtLeast floor s)
      ebS29 (bLB BT) (fun r' t' => r' = none ∧
        PA E (EnL En X ptxs0 (iv + BitVec.ofNat 64 1)) (SLs S t r (iv.toNat + 1)) t' ∧
        HeapAtLeast (floor + 544) t') := by
  have hptxs : (EnL En X ptxs0 iv) (nm "ptxs") = some (.val (.word ptxs0)) := by
    simp (config := { decide := true }) [EnL, Env.set]
  have hi : (EnL En X ptxs0 iv) (nm "i") = some (.val (.word iv)) := by
    simp (config := { decide := true }) [EnL, Env.set]
  have hEnp : (EnL En X ptxs0 (iv + BitVec.ofNat 64 1)) (nm "tx") = none := by
    simp (config := { decide := true }) [EnL, Env.set, hEn]
  have hled' := led_sla hled iv
  have restore : ResIns (nm "tx") (fun r' t' => r' = none ∧
      PA E (EnL En X ptxs0 (iv + BitVec.ofNat 64 1)) (SLs S t r (iv.toNat + 1)) t' ∧ HeapAtLeast (floor + 544) t') := by
    intro r' t' old ⟨hnormal, hpa, hheap⟩
    exact ⟨hnormal, (resIns_pa hEnp r' t' old ⟨hnormal, hpa⟩).2, hheap⟩
  unfold ebS29
  refine cw_decDecode restore hK hE0 (safe_sls hS t r _) (tidy_sls hT t r _) hzt hptxs hi hlt hled.bt
    (Or.inl hpl) (Or.inl h32) (Or.inl h40) (fun T => ?_)
  unfold ebS30
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold ebS31
  refine cw_seq (cw_pt hPt hM hPtC (tidy_add (tidy_sls hT t r _) ⟨fun _ _ _ h => (by cases h), fun _ _ h => (by cases h)⟩) hzp
    (led_noread hled' (Fct.obj T tTX 0) (fun y h => h)) hlt (by simp [Env.set])
    (by simp (config := { decide := true }) [EnL, Env.set]) (Or.inr rfl)) ?_
  unfold ebS32
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  refine cw_hn (hn_post (hn_assign_word_heap (n := nm "i") (w' := iv + BitVec.ofNat 64 1)
    (fun s hs v hv => evI_add (evI_lv_pa hs (by simp (config := { decide := true }) [EnL, Env.set]))
      (evI_cw s 1) v hv)) ?_) (costP_zero (cost_assign _ _ _))
  intro t' _ ⟨hp, hheap⟩
  refine ⟨?_, hheap⟩
  · refine pa_mono (pa_derive hp ?_) ?_ (fun f hf => hf)
    · intro Γ p hL f hf
      rcases hf with hf | rfl | rfl
      · exact hL f (Or.inl (Or.inl (Or.inl hf)))
      · exact sla_succ (hL _ (Or.inl (Or.inl (Or.inr (Or.inl rfl))))) (hL _ (Or.inr (Or.inl rfl)))
      · exact sla_succ (hL _ (Or.inl (Or.inl (Or.inr (Or.inr rfl))))) (hL _ (Or.inr (Or.inr rfl)))
    · intro x v hx
      simp (config := { decide := true }) [EnL, Env.set, hEn] at hx ⊢
      have n1 : nm "tx" ≠ nm "i" := by decide
      have n2 : nm "tx" ≠ nm "ptxs" := by decide
      have n3 : nm "tx" ≠ nm "lasth" := by decide
      have n4 : nm "ptxs" ≠ nm "tx" := by decide
      have n5 : nm "lasth" ≠ nm "tx" := by decide
      split_ifs at hx ⊢ <;> simp_all

end body

#print axioms cw_loop_body
end InitECandidate.Solver.MemSafe.Eb
