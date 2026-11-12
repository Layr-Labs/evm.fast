import InitECandidate.Solver.MemSafe.Wg.Csr2

/-!
# Wg: the walk of `process_checked_system_transaction`
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

theorem tMCO_block : tMCO ∈ blockTys := by decide
theorem tMCO_prot : ∀ k, (guestC.ty tMCO).slot k = .prot := by
  intro k; show mcoTy.slot k = _; simp [mcoTy, TyD.slot]
theorem tMCO_minSz : (guestC.ty tMCO).minSz = 96 := rfl

theorem argsOK_buf20 {Γ : Gam} {p : Ptrs} {w : BitVec 64} (h : BufOK guestC Γ p w.toNat 20) :
    ArgsOK guestC Γ p [(.buf 20)] [.val (.word w)] := by
  refine ⟨rfl, ?_⟩
  intro i pt v hpt hv
  match i, pt, v with
  | 0, pt, v =>
    simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    exact ⟨w, rfl, h⟩
  | i + 1, pt, v => simp at hpt

/-- What `process_checked_system_transaction` returns: a `tMCO` object with a return-data length below `2^32`. -/
def CsR (v : ValueHOL 64) (Γ : Gam) (m : Mem) : Prop :=
  ∃ out : BitVec 64, v = .val (.word out) ∧ (∃ o ∈ Γ, o.base = out ∧ o.ty = tMCO) ∧
    (rd m (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32

/-- The facts that name the `process_unchecked_system_transaction` result. -/
def PucNF (v : ValueHOL 64) (c : BitVec 64) : FS := fun f =>
  (∃ out : BitVec 64, v = .val (.word out) ∧ f = Fct.obj out tMCO 0) ∨
  (∃ out : BitVec 64, v = .val (.word out) ∧ f = Fct.cellv (out + BitVec.ofNat 64 48) c) ∨
  f = Fct.prop (c.toNat < 2 ^ 32)

theorem puc_new {Γ' : Gam} {st : State σ} {v : ValueHOL 64} {E0 : Ptrs} {p' : Ptrs} {u : State σ}
    (hG : G guestC (HR σ) Γ' st)
    (hq : ∃ out, v = .val (.word out) ∧ ∃ o ∈ Γ', o.base = out ∧ o.ty = tMCO ∧
      (rd st.memory (out + BitVec.ofNat 64 48)).toNat < 2 ^ 32 ∧ tsPost Γ' st) :
    ∃ c : BitVec 64, HoldsAll E0 Γ' p' { st with locals := u.locals } (PucNF v c) := by
  obtain ⟨out, rfl, o, ho, hob, hot, hlt, -⟩ := hq
  refine ⟨rd st.memory (out + BitVec.ofNat 64 48), ?_⟩
  intro f hf
  rcases hf with ⟨out', hv, rfl⟩ | ⟨out', hv, rfl⟩ | rfl
  · simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
    subst hv
    exact ⟨o, ho, hob, hot, Nat.zero_le _⟩
  · simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
    subst hv
    obtain ⟨q, -, hord, hL, -⟩ := hG
    have hmin := (hL.1 o ho).2.2.2.1
    rw [hot, tMCO_minSz] at hmin
    refine ⟨rfl, o, ho, by rw [hot]; exact tMCO_block, 6, by unfold Obj.HasSlot; omega, by rw [hot]; exact tMCO_prot _, ?_⟩
    unfold Obj.cell
    rw [hob]
  · exact hlt

end InitECandidate.Solver.MemSafe.Wg
