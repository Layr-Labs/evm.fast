import InitECandidate.Solver.MemSafe.Eb.Loop11

/-!
# `execute_block`: loop part 12 (`loop_body`)
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
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

section body
variable {E : EbE σ} {En : Env} {M : Nat}

theorem tidy_sls {Z : List MlS} {S : FS} (h : Tidy Z S) (t r : BitVec 64) (n : Nat) : Tidy Z (SLs S t r n) := by
  refine ⟨fun g w ty hf => ?_, fun g w hf => ?_⟩
  · rcases hf with hf | hf | hf
    · exact h.1 g w ty hf
    · cases hf
    · cases hf
  · rcases hf with hf | hf | hf
    · exact h.2 g w hf
    · cases hf
    · cases hf

theorem safe_sls {S : FS} (h : SafeS S) (t r : BitVec 64) (n : Nat) : SafeS (SLs S t r n) := by
  intro f hf
  rcases hf with hf | rfl | rfl
  · exact h f hf
  · trivial
  · trivial

theorem loop_body (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M)
    {S : FS} {Z : List MlS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 pl0 ptxs0 X iv : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 0) (hS : SafeS S) (hT : Tidy Z S)
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hzp : ∀ g ∈ Z, ¬ (ptW.contains g = true))
    (hpl : S (Fct.obj pl0 tPL 136)) (h32 : S (Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0))
    (h40 : S (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0)) (hEn : En (nm "tx") = none) (hlt : iv.toNat < ntx0.toNat) :
    HN (PA E (EnL En X ptxs0 iv) (SLs S t r iv.toNat)) ebS29
      (PA E (EnL En X ptxs0 (iv + BitVec.ofNat 64 1)) (SLs S t r (iv.toNat + 1))) := by
  have hptxs : (EnL En X ptxs0 iv) (nm "ptxs") = some (.val (.word ptxs0)) := by
    simp (config := { decide := true }) [EnL, Env.set]
  have hi : (EnL En X ptxs0 iv) (nm "i") = some (.val (.word iv)) := by
    simp (config := { decide := true }) [EnL, Env.set]
  have hEnp : (EnL En X ptxs0 (iv + BitVec.ofNat 64 1)) (nm "tx") = none := by
    simp (config := { decide := true }) [EnL, Env.set, hEn]
  have hled' := led_sla hled iv
  unfold ebS29
  refine hdecDecode (QT := fun r' t' => r' = none ∧ PA E (EnL En X ptxs0 (iv + BitVec.ofNat 64 1)) (SLs S t r (iv.toNat + 1)) t')
    (resIns_pa hEnp) hK hE0 (safe_sls hS t r _) (tidy_sls hT t r _) hzt hptxs hi hlt hled.bt (Or.inl hpl) (Or.inl h32)
    (Or.inl h40) (fun T => ?_)
  unfold ebS30
  refine hseqN hn_skip ?_
  unfold ebS31
  refine hseqN (hn_pt hPt hM (tidy_add (tidy_sls hT t r _) ⟨fun _ _ _ h => (by cases h), fun _ _ h => (by cases h)⟩) hzp
    (led_noread hled' (Fct.obj T tTX 0) (fun y h => h)) hlt (by simp [Env.set])
    (by simp (config := { decide := true }) [EnL, Env.set]) (Or.inr rfl)) ?_
  unfold ebS32
  refine hseqN hn_skip ?_
  refine hn_post (hassignT (n := nm "i") (w' := iv + BitVec.ofNat 64 1) ⟨.val (.word iv), by simp (config := { decide := true }) [EnL, Env.set]⟩
    (fun s hs v hv => evI_add (evI_lv_pa hs (by simp (config := { decide := true }) [EnL, Env.set]) ) (evI_cw s 1) v hv)) ?_
  intro t' _ hp
  refine pa_mono (pa_derive hp ?_) ?_ (fun f hf => hf)
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

end InitECandidate.Solver.MemSafe.Eb
