import InitECandidate.Solver.MemSafe.Ins.InsTail

set_option autoImplicit false

/-!
# `_mpt_insert_node`: the ladder (type of the node from its tag)
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

/-- The tag word `K0` of the node object at `Nd` fixes its type. -/
def NdT (Γ : Gam) (Nd K0 : BitVec 64) : Prop :=
  (∃ o ∈ Γ, o.base = Nd ∧ o.ty = Types.tNHASHED ∧ K0 = 0) ∨
  (∃ o ∈ Γ, o.base = Nd ∧ o.ty = Types.tNLEAF ∧ K0 = 1) ∨
  (∃ o ∈ Γ, o.base = Nd ∧ o.ty = Types.tNEXT ∧ K0 = 2) ∨
  (∃ o ∈ Γ, o.base = Nd ∧ o.ty = Types.tNBRANCH ∧ K0 = 3)

theorem ndT_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {Nd K0 : BitVec 64} (h : NdT Γ Nd K0) : NdT Γ' Nd K0 := by
  have key : ∀ {t : Nat} {P : Prop}, (∃ o ∈ Γ, o.base = Nd ∧ o.ty = t ∧ P) →
      ∃ o ∈ Γ', o.base = Nd ∧ o.ty = t ∧ P := by
    rintro t P ⟨o, ho, hb, ht, hp⟩
    obtain ⟨o', ho', hb', ht', -⟩ := he o ho
    exact ⟨o', ho', hb'.trans hb, ht'.trans ht, hp⟩
  rcases h with h | h | h | h
  · exact Or.inl (key h)
  · exact Or.inr (Or.inl (key h))
  · exact Or.inr (Or.inr (Or.inl (key h)))
  · exact Or.inr (Or.inr (Or.inr (key h)))

/-- A node object of `Γ` has a type determined by its tag. -/
theorem ndT_of_obj {Γ : Gam} {s : State σ} (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    {o : Obj} (ho : o ∈ Γ) (ht : o.ty ∈ Node.nodeTys) : NdT Γ o.base (rd s.memory o.base) := by
  obtain ⟨p, hp, hord, hbase, hend, hcases⟩ := Band.node_facts hG ho (by simpa [Band.nodeTys, Node.nodeTys] using ht)
  rcases hcases with ⟨h, h0, -⟩ | ⟨h, h0, -⟩ | ⟨h, h0, -⟩ | ⟨h, h0, -⟩
  · exact Or.inl ⟨o, ho, rfl, h, h0⟩
  · exact Or.inr (Or.inl ⟨o, ho, rfl, h, h0⟩)
  · exact Or.inr (Or.inr (Or.inl ⟨o, ho, rfl, h, h0⟩))
  · exact Or.inr (Or.inr (Or.inr ⟨o, ho, rfl, h, h0⟩))

/-- A successful load at `Nd + k` (`k < 2^16`) from a word that fits `nodeU` is at a node object. -/
theorem node_real {a : Act σ} {s : State σ} (ha : ActOK a guestCtx) (hs : InCtx s guestCtx)
    {Γ : Gam} {Nd : BitVec 64} {k : Nat} (hk : k < 60000) (hf : Fits Γ Types.nodeU Nd) {x : MlS}
    (hx : s.locals.lookup x = some (.val (.word Nd))) {v : ValueHOL 64}
    (hv : ev s (.load .one (.op .add [lv x, cw k])) = some v) :
    ∃ o ∈ Γ, o.base = Nd ∧ o.ty ∈ Node.nodeTys := by
  obtain ⟨w, hw, hmem, -⟩ := ev_load_one hv
  rw [ev_add_cw hx k] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  have h1 := ns_of ha hs w hmem
  rcases nodeU_cases hf with hlt | ⟨o, ho, hb, ht⟩
  · exfalso
    have h2 : w.toNat = Nd.toNat + k := by
      rw [← hw]; exact Spec.Mpt.Dec.toNat_add_lt (by simp only [nullMax] at hlt; omega)
    simp only [nullMax, heapBase] at hlt h1
    omega
  · exact ⟨o, ho, hb, ht⟩

end InitECandidate.Solver.MemSafe.Ins
