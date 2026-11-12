import InitECandidate.Solver.MemSafe.Eb.BalInitStep

/-!
# `execute_block`: the heap part of the typing (`PAk`)

Before a block-level call whose contract wants `CPre Γ`, the walk replaces `Γ` by `keepG Γ` (same state, `G` by `HypKeepG`).
`SafeFact`: the facts that survive (objects of heap, non-scratch-owner types; no `bufok`).
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

def KeepTy (ty : Nat) : Prop := (guestC.ty ty).region = .heap ∧ ¬ ScratchOwn ty

theorem mem_keepG {Γ : Gam} {o : Obj} : o ∈ keepG Γ ↔ o ∈ Γ ∧ KeepTy o.ty := by
  simp [keepG, List.mem_filter, KeepTy]
  tauto

theorem keepTy_block : ∀ t ∈ blockTys ++ PlTys ++ [tVAL], KeepTy t := by
  intro t ht
  unfold KeepTy ScratchOwn
  simp only [blockTys, PlTys, List.mem_append, List.mem_cons, List.not_mem_nil, or_false] at ht
  rcases ht with ((h | h | h) | (h | h | h | h)) | h <;> subst h <;> decide

def SafeFact : Fct → Prop
  | .obj _ ty _ => KeepTy ty
  | .gobj _ _ ty => KeepTy ty
  | .bufok _ _ => False
  | _ => True

def SafeS (S : FS) : Prop := ∀ f, S f → SafeFact f

theorem inObj_keepG {Γ : Gam} {a : Nat} (h : InObj (keepG Γ) a) : InObj Γ a := by
  obtain ⟨o, ho, h1, h2⟩ := h
  exact ⟨o, (mem_keepG.mp ho).1, h1, h2⟩

theorem bCell_keepG {Γ : Gam} {a : BitVec 64} (h : BCell guestC Γ a) : BCell guestC (keepG Γ) a := by
  obtain ⟨o, ho, hty, k, hk, hp, he⟩ := h
  exact ⟨o, mem_keepG.mpr ⟨ho, keepTy_block _ (by simp only [List.mem_append]; exact Or.inl (Or.inl hty))⟩, hty, k, hk, hp, he⟩

theorem plCell_keepG {Γ : Gam} {a : BitVec 64} (h : PlCell Γ a) : PlCell (keepG Γ) a := by
  obtain ⟨o, ho, hty, k, hk, hp, he⟩ := h
  exact ⟨o, mem_keepG.mpr ⟨ho, keepTy_block _ (by simp only [List.mem_append]; exact Or.inl (Or.inr hty))⟩, hty, k, hk, hp, he⟩

theorem holds_keepG {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {f : Fct} (hs : SafeFact f)
    (h : f.holds p0 Γ p u) : f.holds p0 (keepG Γ) p u := by
  cases f with
  | obj b ty n =>
    obtain ⟨o, ho, hb, ht, hn⟩ := h
    exact ⟨o, mem_keepG.mpr ⟨ho, ht ▸ hs⟩, hb, ht, hn⟩
  | fbuf w n =>
    obtain ⟨h1, h2⟩ := h
    exact ⟨h1, fun a ha => ⟨(h2 a ha).1, fun hin => (h2 a ha).2 (inObj_keepG hin)⟩⟩
  | bufok w n => exact absurd hs id
  | gobj g w ty =>
    obtain ⟨h1, o, ho, hb, ht⟩ := h
    exact ⟨h1, o, mem_keepG.mpr ⟨ho, ht ▸ hs⟩, hb, ht⟩
  | prop P => exact h
  | ent A j =>
    obtain ⟨b1, b2, hv⟩ := h
    refine ⟨bCell_keepG b1, bCell_keepG b2, ?_⟩
    rcases hv with hv | ⟨x, hx, ht, h1, h2⟩
    · exact Or.inl hv
    · exact Or.inr ⟨x, mem_keepG.mpr ⟨hx, ht ▸ keepTy_block _ (by simp)⟩, ht, h1, h2⟩
  | inval c n =>
    obtain ⟨x, hx, ht, h1, h2⟩ := h
    exact ⟨x, mem_keepG.mpr ⟨hx, ht ▸ keepTy_block _ (by simp)⟩, ht, h1, h2⟩
  | cellv a v => exact ⟨h.1, bCell_keepG h.2⟩
  | pcv a v => exact ⟨h.1, plCell_keepG h.2⟩
  | gval g w => exact h
  | sla A n =>
    intro j hj
    obtain ⟨b1, b2, hv⟩ := h j hj
    refine ⟨bCell_keepG b1, bCell_keepG b2, ?_⟩
    rcases hv with hv | ⟨x, hx, ht, h1, h2⟩
    · exact Or.inl hv
    · exact Or.inr ⟨x, mem_keepG.mpr ⟨hx, ht ▸ keepTy_block _ (by simp)⟩, ht, h1, h2⟩

end InitECandidate.Solver.MemSafe.Eb
