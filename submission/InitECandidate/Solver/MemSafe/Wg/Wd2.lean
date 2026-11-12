import InitECandidate.Solver.MemSafe.Wg.Wd1
import InitECandidate.Solver.MemSafe.Wg.Tabs
import InitECandidate.Solver.MemSafe.Wg.Gw
import InitECandidate.Solver.MemSafe.Wg.Inc

/-!
# Wg: `process_withdrawals`, fact sets and the three non-loop steps (`state_fresh_tx`, `incorporate_tx_into_block`, `return 0`)
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

/-- The block-state globals the facts name. -/
def zBal : List MlS :=
  [nm "bs", nm "bal_accounts", nm "bal_key_buf", nm "bal_idx_accts", nm "bal_idx_stor", nm "sk_buf"]

/-- The facts of the `process_withdrawals` walk (before `state_fresh_tx`). -/
def WdS (Γ0 : Gam) (s0 : State σ) (pl nwd wd bs ba bk bi bs2 sk : BitVec 64) : FS := fun f =>
  FrS Γ0 s0 (fun _ => False) f ∨ f = Fct.obj pl tPL 136 ∨ f = Fct.pcv (pl + BitVec.ofNat 64 56) nwd ∨
  f = Fct.pcv (pl + BitVec.ofNat 64 48) wd ∨ f = Fct.inval wd (44 * nwd.toNat) ∨
  f = Fct.gobj (nm "bs") bs tBS ∨ f = Fct.gobj (nm "bal_accounts") ba tHTd20 ∨ f = Fct.gobj (nm "bal_key_buf") bk tB64 ∨
  f = Fct.gobj (nm "bal_idx_accts") bi tHTh28 ∨ f = Fct.gobj (nm "bal_idx_stor") bs2 tHTh60 ∨ f = Fct.gobj (nm "sk_buf") sk tB64

/-- After `state_fresh_tx`: `ts` is a `tTS` object. -/
def WdS1 (S : FS) (w : BitVec 64) : FS := fun f => S f ∨ f = Fct.gobj (nm "ts") w tTS

theorem keepTy_wd : KeepTy tPL ∧ KeepTy tBS ∧ KeepTy tHTd20 ∧ KeepTy tB64 ∧ KeepTy tHTh28 ∧ KeepTy tHTh60 ∧ KeepTy tTS := by
  unfold KeepTy ScratchOwn; decide

theorem frS_not_gobj {Γ0 : Gam} {s0 : State σ} {Dout : BitVec 64 → Prop} {g : MlS} {w : BitVec 64} {t : Nat}
    (h : FrS Γ0 s0 Dout (Fct.gobj g w t)) : False := by
  rcases h with ⟨a, -, -, h⟩ | ⟨a, -, h⟩ <;> cases h

theorem frS_not_gval {Γ0 : Gam} {s0 : State σ} {Dout : BitVec 64 → Prop} {g : MlS} {w : BitVec 64}
    (h : FrS Γ0 s0 Dout (Fct.gval g w)) : False := by
  rcases h with ⟨a, -, -, h⟩ | ⟨a, -, h⟩ <;> cases h

section wd2
variable {Γ0 : Gam} {s0 : State σ} {pl nwd wd bs ba bk bi bs2 sk : BitVec 64}

theorem wdS_safe : SafeS (WdS Γ0 s0 pl nwd wd bs ba bk bi bs2 sk) := by
  intro f hf
  have h := keepTy_wd
  rcases hf with hf | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact safe_frS f hf
  · exact h.1
  · trivial
  · trivial
  · trivial
  · exact h.2.1
  · exact h.2.2.1
  · exact h.2.2.2.1
  · exact h.2.2.2.2.1
  · exact h.2.2.2.2.2.1
  · exact h.2.2.2.1

theorem wdS1_safe {w : BitVec 64} : SafeS (WdS1 (WdS Γ0 s0 pl nwd wd bs ba bk bi bs2 sk) w) := by
  intro f hf
  rcases hf with hf | rfl
  · exact wdS_safe f hf
  · exact keepTy_wd.2.2.2.2.2.2

theorem wdS_tidy : Tidy zBal (WdS Γ0 s0 pl nwd wd bs ba bk bi bs2 sk) := by
  refine ⟨fun g w t hf => ?_, fun g w hf => ?_⟩
  · rcases hf with hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf
    · exact (frS_not_gobj hf).elim
    all_goals first | (cases hf; simp [zBal]; done) | (cases hf; done)
  · rcases hf with hf | hf | hf | hf | hf | hf | hf | hf | hf | hf | hf
    · exact (frS_not_gval hf).elim
    all_goals cases hf

theorem wdS1_tidy {w : BitVec 64} : Tidy (nm "ts" :: zBal) (WdS1 (WdS Γ0 s0 pl nwd wd bs ba bk bi bs2 sk) w) := by
  refine ⟨fun g w' t hf => ?_, fun g w' hf => ?_⟩
  · rcases hf with hf | hf
    · exact List.mem_cons_of_mem _ (wdS_tidy.1 g w' t hf)
    · cases hf; simp
  · rcases hf with hf | hf
    · exact List.mem_cons_of_mem _ (wdS_tidy.2 g w' hf)
    · cases hf

theorem wdS_bal : BalS (WdS Γ0 s0 pl nwd wd bs ba bk bi bs2 sk) :=
  ⟨⟨bs, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))⟩,
   ⟨ba, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))⟩,
   ⟨bk, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))⟩,
   ⟨bi, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))⟩,
   ⟨bs2, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))⟩,
   ⟨sk, Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl)))))))))⟩⟩

end wd2

end InitECandidate.Solver.MemSafe.Wg
