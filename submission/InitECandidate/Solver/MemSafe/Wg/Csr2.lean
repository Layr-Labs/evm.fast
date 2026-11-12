import InitECandidate.Solver.MemSafe.Wg.Csr1
import InitECandidate.Solver.MemSafe.Wg.Wd6

/-!
# Wg: `process_checked_system_transaction`, fact set and walk
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The facts of the `process_checked_system_transaction` walk. -/
def CsS (Γ0 : Gam) (s0 : State σ) (T bs ba bk bi bs2 sk : BitVec 64) : FS := fun f =>
  FrS Γ0 s0 (fun _ => False) f ∨ f = Fct.obj T tB24 24 ∨
  f = Fct.gobj (nm "bs") bs tBS ∨ f = Fct.gobj (nm "bal_accounts") ba tHTd20 ∨ f = Fct.gobj (nm "bal_key_buf") bk tB64 ∨
  f = Fct.gobj (nm "bal_idx_accts") bi tHTh28 ∨ f = Fct.gobj (nm "bal_idx_stor") bs2 tHTh60 ∨ f = Fct.gobj (nm "sk_buf") sk tB64

theorem keepTy_csr : KeepTy tB24 ∧ KeepTy tBS ∧ KeepTy tHTd20 ∧ KeepTy tB64 ∧ KeepTy tHTh28 ∧ KeepTy tHTh60 := by
  unfold KeepTy ScratchOwn; decide

section cs2
variable {Γ0 : Gam} {s0 : State σ} {T bs ba bk bi bs2 sk : BitVec 64}

theorem csS_safe : SafeS (CsS Γ0 s0 T bs ba bk bi bs2 sk) := by
  intro f hf
  have h := keepTy_csr
  rcases hf with hf | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact safe_frS f hf
  · exact h.1
  · exact h.2.1
  · exact h.2.2.1
  · exact h.2.2.2.1
  · exact h.2.2.2.2.1
  · exact h.2.2.2.2.2
  · exact h.2.2.2.1

theorem csS_tidy : Tidy zBal (CsS Γ0 s0 T bs ba bk bi bs2 sk) := by
  refine ⟨fun g w t hf => ?_, fun g w hf => ?_⟩
  · rcases hf with hf | hf | hf | hf | hf | hf | hf | hf
    · exact (frS_not_gobj hf).elim
    all_goals first | (cases hf; simp [zBal]; done) | (cases hf; done)
  · rcases hf with hf | hf | hf | hf | hf | hf | hf | hf
    · exact (frS_not_gval hf).elim
    all_goals cases hf

theorem csS_bal : BalS (CsS Γ0 s0 T bs ba bk bi bs2 sk) :=
  ⟨⟨bs, Or.inr (Or.inr (Or.inl rfl))⟩, ⟨ba, Or.inr (Or.inr (Or.inr (Or.inl rfl)))⟩,
   ⟨bk, Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))⟩, ⟨bi, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))⟩,
   ⟨bs2, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))⟩,
   ⟨sk, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl))))))⟩⟩

end cs2

end InitECandidate.Solver.MemSafe.Wg
