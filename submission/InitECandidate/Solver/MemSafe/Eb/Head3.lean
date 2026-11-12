import InitECandidate.Solver.MemSafe.Eb.Head2
import InitECandidate.Solver.MemSafe.Eb.RdIn

/-!
# `execute_block`: the head, part 3 (`memzero`, `txs`, the first stores into `bo`)
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

theorem hs1_obj (S : FS) (w : BitVec 64) : HS1 S w (Fct.obj w tBO 88) := Or.inr (Or.inl (Or.inl rfl))
theorem hs1_gobj (S : FS) (w : BitVec 64) : HS1 S w (Fct.gobj nmBo w tBO) := Or.inr (Or.inr rfl)
theorem hs1_prop (S : FS) (w : BitVec 64) :
    HS1 S w (Fct.prop (∀ y : BitVec 64, (∃ f0, S f0 ∧ f0.reads y) → ¬ (w.toNat ≤ y.toNat ∧ y.toNat < w.toNat + 88))) :=
  Or.inr (Or.inl (Or.inr (Or.inr (Or.inr rfl))))

theorem nn_toNat {n : BitVec 64} (h : n.toNat < 2 ^ 50) :
    (n * BitVec.ofNat 64 16 + BitVec.ofNat 64 16).toNat = 16 * n.toNat + 16 := by
  have h16 : (BitVec.ofNat 64 16).toNat = 16 := by decide
  rw [BitVec.toNat_add, BitVec.toNat_mul, h16, Nat.mod_eq_of_lt (by omega : n.toNat * 16 < 2 ^ 64)]
  rw [Nat.mod_eq_of_lt (by omega)]
  omega

theorem tidy_hs1 {Z : List MlS} {S : FS} (h : Tidy Z S) (w : BitVec 64) :
    Tidy (nmBo :: Z) (HS1 S w) := by
  refine ⟨fun g w' t hf => ?_, fun g w' hf => ?_⟩
  · rcases hf with hf | hf | hf
    · exact List.mem_cons_of_mem _ (h.1 g w' t hf)
    · rcases hf with hh | ⟨b, ty', n', -, hh⟩ | ⟨g', b, ty', -, hh⟩ | hh <;> cases hh
    · cases hf; exact List.mem_cons_self ..
  · rcases hf with hf | hf | hf
    · exact List.mem_cons_of_mem _ (h.2 g w' hf)
    · rcases hf with hh | ⟨b, ty', n', -, hh⟩ | ⟨g', b, ty', -, hh⟩ | hh <;> cases hh
    · cases hf

section h3
variable {E : EbE σ} {En : Env} {S0 : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem s3_mz (w : BitVec 64)
    (hnext : Hoare σ guestCtx (PA E En (fun f => HS1 S0 w f ∨ f = Fct.cellv (w + BitVec.ofNat 64 64) 0)) ebS4 QT) :
    Hoare σ guestCtx (PA E En (HS1 S0 w)) ebS3 QT := by
  unfold ebS3
  refine hseqN (hn_memzeroBo (hs1_gobj S0 w) (hs1_obj S0 w) ?_) hnext
  exact memz_of (hs1_obj S0 w) (rdIn_hs1 (rdIn_refl S0) w tBO 88 nmBo) (hs1_prop S0 w)

end h3

end InitECandidate.Solver.MemSafe.Eb
