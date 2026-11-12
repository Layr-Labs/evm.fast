import InitECandidate.Solver.MemSafe.Frames.Top
import InitECandidate.Solver.MemSafe.Frames.Run
import InitECandidate.Solver.MemSafe.Frames.BKeepDef

/-!
# Block keep for the running frame's driver writes (package K)

* `bkeep_of_topCells`: a memory change confined to the running frame's driver cells keeps the
  block cells;
* `sumCore_of_run_bk`: `Run.sumCore_of_run` with the footprint `PW := ¬ KCell` instead of `True`,
  given that the run keeps the block cells.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {C : Cfg} {H : Hooks σ}

/-- A memory change confined to the running frame's driver cells keeps the block cells. -/
theorem bkeep_of_topCells {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK) {p : Ptrs} {Γ : Gam}
    (hord : p.Ordered) (hL : Layout C p Γ) {oe oc : Obj} (hoe : oe ∈ Γ) (hoet : oe.ty = tEV)
    (hoc : oc ∈ Γ) (hoct : oc.ty = tCK) (hse : 280 ≤ oe.size) (hsc : 104 ≤ oc.size)
    {s t : State σ} (hmod : ModifiesOnly (TopCells oe.base oc.base) s.memory t.memory) :
    BKeep C Γ s t := by
  have key : ∀ o ∈ Γ, o.ty ∈ keepTys → ∀ k, o.HasSlot k →
      rd t.memory (o.cell k) = rd s.memory (o.cell k) := by
    intro o ho hty k hk'
    have hi : 8 * k < o.size := by unfold Obj.HasSlot at hk'; omega
    have hbe : o.base ≠ oe.base := base_ne_of_ty hL ho hoe
      (by intro h; apply hF.evK; rw [← hoet, ← h]; exact hty)
    have hbc : o.base ≠ oc.base := base_ne_of_ty hL ho hoc
      (by intro h; apply hF.ckK; rw [← hoct, ← h]; exact hty)
    have := hmod _ (not_topCells hord hL hoe hoc ho hse hsc hi (Or.inl hbe) (Or.inl hbc))
    unfold rd Obj.cell
    rw [this]
  exact ⟨fun o ho hty k hk' _ => key o ho (keep_bk hty) k hk',
    fun o ho hty k _ hk' _ => key o ho (by rw [hty]; exact keep_msg) k hk'⟩

/-- **A run keeping the block cells as a summary core** (argument-buffer-free signature, no
result typing): the cell set is `PW := ¬ KCell`. -/
theorem sumCore_of_run_bk {sg : Sig} (hret : sg.ret = []) (hgrow : sg.grows = true) {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (h : Run C H sg.gw Γ s Γ' t p p') (hb : BKeep C Γ s t) :
    SumCore C H sg (fun a => ProtCell C Γ a ∧ ¬ KCell C Γ a) Γ s vs r t Γ' p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, hpg⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, fun a ha => ?_, hpg,
    fun h => absurd (hgrow.symm.trans h) (by decide), fun v _ i rt w hrt => ?_⟩
  swap
  · rw [hret] at hrt; simp at hrt
  by_cases hB : KCell C Γ a
  · exact mem_eq_of_rd (bkeep_iff.mp hb a hB)
  · refine hmod a ?_
    rintro (h | h | h)
    · exact ha (Or.inl h)
    · exact ha (Or.inr (Or.inr (Or.inr ⟨h, hB⟩)))
    · exact ha (Or.inr (Or.inr (Or.inl h)))

end InitECandidate.Solver.MemSafe.Frames
