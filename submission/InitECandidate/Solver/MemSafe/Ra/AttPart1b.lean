import InitECandidate.Solver.MemSafe.Ra.AttPart1a

/-!
# `run_attempt`, before `payload_header` (2): `raS1 .. raS12`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

def bHead (B : Nat) : Nat :=
  0 + (1 + cVh + (0 + (0 + (0 + (0 + (0 + (1 + cCgl + (0 + B))))))))

section head
variable {E : EbE σ} {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z : BitVec 64} {En : Env} {S : FS}
  {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem env_set_keep {En : Env} {x y : MlS} {v w : ValueHOL 64} (h : En y = some w) (hxy : y ≠ x) :
    (En.set x v) y = some w := by
  rw [env_set_ne En v hxy]; exact h

theorem zpre_a : ∀ g ∈ Zpre, ¬ (aW.contains g = true) := by
  intro g hg
  simp only [Zpre, List.mem_cons, List.not_mem_nil, or_false] at hg
  rcases hg with rfl | rfl | rfl | rfl | rfl <;> decide

theorem tidy_ne_z0 {S : FS} (hT : Tidy Z0 S) (g : MlS) (hg : g ∉ Z0) :
    (∀ g' w t, S (Fct.gobj g' w t) → g' ≠ g) ∧ (∀ g' w, S (Fct.gval g' w) → g' ≠ g) := tidy_ne hT hg

theorem p1_head (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hQ : ∀ n, ResIns n QT)
    (hsi : En (nm "si") = some (.val (.word si0)))
    (hsub : ∀ f, S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z f → S f) (hT : Tidy Z0 S) (hS : SafeS S) {B : Nat}
    (hnext : ∀ (En' : Env) (S' : FS) (bh nh : BitVec 64), En' (nm "si") = some (.val (.word si0)) →
      En' (nm "pl") = some (.val (.word pl0)) →
      (∀ f, S1a si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z f → S' f) → S' (Fct.gval (nm "block_hashes") bh) →
      S' (Fct.gval (nm "block_hashes_n") nh) → Tidy Zpre S' → SafeS S' → CW (PA E En' S') raS13 B QT) :
    CW (PA E En S) raS1 (bHead B) QT := by
  have hpcv : S (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0) := hsub _ (by simp [S1a])
  unfold raS1
  refine cw_decT (hQ _) (w := pl0) (fun s hp v hv =>
    evI_ld_pcv hp (evI_add (evI_lv_pa hp hsi) (evI_cw s 0)) hpcv v hv) ?_
  unfold raS2
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold raS3
  have hsi1 : ∀ (x : MlS) (v : ValueHOL 64), x ≠ nm "si" → x ≠ nm "pl" →
      ((En.set (nm "pl") (.val (.word pl0))).set x v) (nm "si") = some (.val (.word si0)) := by
    intro x v hx1 hx2
    rw [env_set_ne _ v (Ne.symm hx1), env_set_ne _ _ (by decide)]
    exact hsi
  refine cw_decCallRk (PreC := fun _ _ => True) hK hE0 hS (hQ _) cr_vh (gwk_a (by decide)) (fun _ _ => False)
    (Inv.calleeCostP_of_calleeCost cc_vh) (fun _ _ _ _ _ _ => trivial)
    ⟨fun s hpak vs hvs callee Γ p hr hL hC => ⟨hC, trivial⟩, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h,
      (tidy_gmiss hT z0_a).1, (tidy_gmiss hT z0_a).2⟩ ?_ ?_
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh f hf
    exact hf.elim
  intro vh hsh
  refine cw_pre ?_ (fun t _ ht => pa_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf))
  unfold raS4
  refine cw_decV (hQ _) fun nhv => ?_
  unfold raS5
  refine cw_guard_then ?_
  unfold raS6
  refine cw_decV (hQ _) fun parv => ?_
  unfold raS7
  refine cw_assignSV (g := nm "block_hashes") (e := .rfield 1 (lv (nm "vh"))) ⟨by decide, ⟨by decide, by decide, by decide⟩,
    ⟨by decide, by decide⟩, ⟨by decide, by decide⟩⟩ (by decide) (tidy_ne hT (g0 := nm "block_hashes") (by decide)).1
    (tidy_ne hT (g0 := nm "block_hashes") (by decide)).2 fun bhw => ?_
  have hT1 : Tidy (Z0 ++ [nm "block_hashes"]) (fun f => S f ∨ f = Fct.gval (nm "block_hashes") bhw) :=
    tidy_add (tidy_mono hT (fun g hg => by simp [hg]) (fun f hf => hf)) ⟨fun g w t h => (by cases h), fun g w h => (by cases h; simp)⟩
  have hS1 : SafeS (fun f => S f ∨ f = Fct.gval (nm "block_hashes") bhw) := fun f hf => by
    rcases hf with hf | rfl
    · exact hS f hf
    · trivial
  unfold raS8
  refine cw_assignSV (g := nm "block_hashes_n") (e := lv (nm "nh")) ⟨by decide, ⟨by decide, by decide, by decide⟩,
    ⟨by decide, by decide⟩, ⟨by decide, by decide⟩⟩ (by decide) (tidy_ne hT1 (g0 := nm "block_hashes_n") (by decide)).1
    (tidy_ne hT1 (g0 := nm "block_hashes_n") (by decide)).2 fun nhw => ?_
  have hT2 : Tidy Zpre (fun f => (S f ∨ f = Fct.gval (nm "block_hashes") bhw) ∨ f = Fct.gval (nm "block_hashes_n") nhw) :=
    tidy_add (tidy_mono hT1 (fun g hg => by simp [Zpre, Z0] at hg ⊢; tauto) (fun f hf => hf))
      ⟨fun g w t h => (by cases h), fun g w h => (by cases h; simp [Zpre])⟩
  have hS2 : SafeS (fun f => (S f ∨ f = Fct.gval (nm "block_hashes") bhw) ∨ f = Fct.gval (nm "block_hashes_n") nhw) :=
    fun f hf => by
      rcases hf with (hf | rfl) | rfl
      · exact hS f hf
      · trivial
      · trivial
  unfold raS9
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold raS10
  refine cw_guard_then ?_
  unfold raS11
  refine cw_decCallRW (W := fun g => aW.contains g = true) (hQ _) (cr_plain tab_cgl (by decide)) (gwk_a (by decide))
    (fun _ _ => False) cc_cgl ?_ ?_ ?_
  · refine callObl_plain (ps := ([.any, .any] : List PT)) ?_ hT2 zpre_a
    intro s hs vs hvs Γ p hr hL
    exact argsOK_any_eval (by simp) (by simp) hvs
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq w hw f hf
    exact hf.elim
  intro gw
  refine cw_pre ?_ (fun t _ ht => pa_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf))
  unfold raS12
  refine cw_guard_then ?_
  refine hnext _ _ bhw nhw ?_ ?_ ?_ ?_ ?_ hT2 hS2
  · exact env_set_keep (env_set_keep (env_set_keep (env_set_keep (env_set_keep hsi (by decide)) (by decide)) (by decide))
      (by decide)) (by decide)
  · exact env_set_keep (env_set_keep (env_set_keep (env_set_keep (env_set_self _ _ _) (by decide)) (by decide))
      (by decide)) (by decide)
  · exact fun f hf => Or.inl (Or.inl (hsub f hf))
  · exact Or.inl (Or.inr rfl)
  · exact Or.inr rfl

end head

end InitECandidate.Solver.MemSafe.Att
