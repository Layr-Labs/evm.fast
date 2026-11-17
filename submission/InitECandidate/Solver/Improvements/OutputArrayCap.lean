import InitECandidate.Solver.MemSafe.Frames.Marks
import InitECandidate.Solver.MemSafe.Types

namespace InitECandidate.Solver.OutputArrayCap
open Flapjack MemSafe MemSafe.Types

/-- The loop simultaneously holds distinct transaction and receipt output arrays.
Each reserves sixteen header bytes and sixteen bytes per transaction. -/
theorem count_le {Γ : Gam} {p : Ptrs} {txs rcs : BitVec 64} {N : Nat}
    (hord : p.Ordered) (hLayout : Layout guestC p Γ)
    (htx : ∃ o ∈ Γ, o.base = txs ∧ o.ty = tBOS ∧ 16 * N + 16 ≤ o.size)
    (hrc : ∃ o ∈ Γ, o.base = rcs ∧ o.ty = tBOS ∧ 16 * N + 16 ≤ o.size)
    (hne : txs ≠ rcs) : N ≤ 7864319 := by
  obtain ⟨a, ha, hab, hat, has⟩ := htx
  obtain ⟨b, hb, hbb, hbt, hbs⟩ := hrc
  have aLive := (Frames.live_of hLayout ha).1 (by rw [hat]; rfl)
  have bLive := (Frames.live_of hLayout hb).1 (by rw [hbt]; rfl)
  have disjoint := Frames.lay_disj hLayout ha hb
    (fun h => hne (hab.symm.trans ((congrArg Obj.base h).trans hbb)))
  have heapLimit : p.hp ≤ 2952790016 := hord.2.1
  change 2701131776 ≤ a.lo ∧ a.lo + a.size ≤ p.hp at aLive
  change 2701131776 ≤ b.lo ∧ b.lo + b.size ≤ p.hp at bLive
  change a.lo + a.size ≤ b.lo ∨ b.lo + b.size ≤ a.lo at disjoint
  rcases disjoint with h | h <;> omega

end InitECandidate.Solver.OutputArrayCap
#print axioms InitECandidate.Solver.OutputArrayCap.count_le
