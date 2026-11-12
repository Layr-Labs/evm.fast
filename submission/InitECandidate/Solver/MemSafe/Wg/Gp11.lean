import InitECandidate.Solver.MemSafe.Wg.Gp10
import InitECandidate.Solver.MemSafe.Wg.Ra9

/-!
# Wg: `process_general_purpose_requests`, the fact set and one `requests_append` call
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

/-- The facts of the `process_general_purpose_requests` walk that stay through it. -/
def GS (Γ0 : Gam) (s0 : State σ) (bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk : BitVec 64) : FS := fun f =>
  FrS Γ0 s0 (GprD s0) f ∨ f = Fct.gobj (nm "bo") bo0 tBO ∨ f = Fct.obj bo0 tBO 88 ∨ f = Fct.obj rq0 tBOS 128 ∨
  f = Fct.cellv (bo0 + BitVec.ofNat 64 56) rq0 ∨
  f = Fct.gobj (nm "withdrawal_request_address") a1 tB24 ∨ f = Fct.gobj (nm "consolidation_request_address") a2 tB24 ∨
  f = Fct.gobj (nm "builder_deposit_address") a3 tB24 ∨ f = Fct.gobj (nm "builder_exit_address") a4 tB24 ∨
  f = Fct.gobj (nm "bs") bs tBS ∨ f = Fct.gobj (nm "bal_accounts") ba tHTd20 ∨ f = Fct.gobj (nm "bal_key_buf") bk tB64 ∨
  f = Fct.gobj (nm "bal_idx_accts") bi tHTh28 ∨ f = Fct.gobj (nm "bal_idx_stor") bs2 tHTh60 ∨ f = Fct.gobj (nm "sk_buf") sk tB64

/-- The request count cell, with its tracked value. -/
def SkX (Sk : FS) (bo0 kx : BitVec 64) : FS := fun f => Sk f ∨ f = Fct.cellv (bo0 + BitVec.ofNat 64 64) kx

theorem keepTy_gpr : KeepTy tBO ∧ KeepTy tBOS ∧ KeepTy tB24 ∧ KeepTy tBS ∧ KeepTy tHTd20 ∧ KeepTy tB64 ∧ KeepTy tHTh28 ∧
    KeepTy tHTh60 := by
  unfold KeepTy ScratchOwn; decide

section g11
variable {Γ0 : Gam} {s0 : State σ} {bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk : BitVec 64}

theorem gs_safe : SafeS (GS Γ0 s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) := by
  intro f hf
  have h := keepTy_gpr
  rcases hf with hf | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact safe_frS f hf
  · exact h.1
  · exact h.1
  · exact h.2.1
  · trivial
  · exact h.2.2.1
  · exact h.2.2.1
  · exact h.2.2.1
  · exact h.2.2.1
  · exact h.2.2.2.1
  · exact h.2.2.2.2.1
  · exact h.2.2.2.2.2.1
  · exact h.2.2.2.2.2.2.1
  · exact h.2.2.2.2.2.2.2
  · exact h.2.2.2.2.2.1

theorem gs_tidy : Tidy zGpr (GS Γ0 s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) := by
  refine ⟨fun g w t hf => ?_, fun g w hf => ?_⟩
  · rcases hf with hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf
    · exact (frS_not_gobj hf).elim
    all_goals first | (cases hf; simp [zGpr]; done) | (cases hf; done)
  · rcases hf with hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf
    · exact (frS_not_gval hf).elim
    all_goals cases hf

theorem gs_avoid : Avoid (GS Γ0 s0 bo0 rq0 a1 a2 a3 a4 bs ba bk bi bs2 sk) Γ0 s0 (GprD s0) [bo0 + BitVec.ofNat 64 56] := by
  intro f hf
  rcases hf with hf | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact Or.inl hf
  all_goals refine Or.inr fun y hy => ?_
  all_goals first | exact hy.elim | (have : y = bo0 + BitVec.ofNat 64 56 := hy; simp [this])

theorem sk_tidy {Sk : FS} (h : Tidy zGpr Sk) (bo0 kx : BitVec 64) : Tidy zGpr (SkX Sk bo0 kx) := by
  refine ⟨fun g w t hf => ?_, fun g w hf => ?_⟩
  · rcases hf with hf | hf
    · exact h.1 g w t hf
    · cases hf
  · rcases hf with hf | hf
    · exact h.2 g w hf
    · cases hf

theorem sk_safe {Sk : FS} (h : SafeS Sk) (bo0 kx : BitVec 64) : SafeS (SkX Sk bo0 kx) := by
  intro f hf
  rcases hf with hf | rfl
  · exact h f hf
  · trivial

end g11

end InitECandidate.Solver.MemSafe.Wg
