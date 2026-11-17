import InitECandidate.Solver.MemSafe.Hooks.Rec

/-! The local called `cap` in the builder loops is loaded from offset 24:
it is actually the table's count. The accepted table invariant already caps
this count by 2^32, independently of a new spatial or gas assumption. -/
set_option autoImplicit false
namespace TypedTableCount
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem count_le_of_wf {s : State σ} {T : BitVec 64}
    (h : Spec.Inv.TableWF s T) : Spec.Inv.CNT s.memory T ≤ 2 ^ 32 := by
  obtain ⟨hsep, L, hshape, hextra⟩ := h
  exact le_trans hshape.cnt_le hextra.bnd.2.2

theorem count_le_of_G {Γ : Gam} {s : State σ} {o : Obj}
    (hG : G guestC (guestHooksR (σ := σ)) Γ s) (ho : o ∈ Γ)
    (hkind : hkOf o.ty = .tab) : Spec.Inv.CNT s.memory o.base ≤ 2 ^ 32 := by
  obtain ⟨p, hp, hord, hL, hfields, htags, hglobals, hwf⟩ := hG
  have htab := (htabHooks_guestR (σ := σ)).get Γ s o hkind (hwf o ho)
  exact count_le_of_wf htab.2.2.1

#print axioms count_le_of_wf
#print axioms count_le_of_G
end TypedTableCount
