import InitECandidate.Solver.MemSafe.Ptx.PtV3

/-!
# F3h: the re-anchor, part 3: `TlPre` of the context
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-- **What the walk leaves at the `process_message_call` entry** (the facts the tail needs). -/
structure WalkEnd (E : PtE σ) (D : BitVec 64 → Option (BitVec 64)) (Γe : Gam) (u : State σ) (p : Ptrs)
    (sender rp rl : BitVec 64) : Prop where
  run : PtRun D E.Γ0 E.s0 E.p0 Γe u p
  hD : ∀ a, D a ≠ none → E.WSet a
  snd : ∃ o ∈ Γe, o.base = sender ∧ o.ty = tB24 ∧ 24 ≤ o.size
  ts : GObj Γe u nmTs tTS
  c1 : rd u.memory (E.txs + E.idx * BitVec.ofNat 64 16) = rp
  c2 : rd u.memory (E.txs + E.idx * BitVec.ofNat 64 16 + BitVec.ofNat 64 8) = rl
  txv : Hooks.VInR tVAL Γe rp rl
  coin : BufOK guestC Γe p (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat 20
  coinR : heapBase ≤ (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat ∧
    (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat + 20 ≤ heapEnd

section pre
variable {Γ' : Gam} {t : State σ} {q : Ptrs}

/-- From the cell dichotomy of a buffer to its `BufOK` and to its cells missing the frozen set. -/
theorem buf_of_cells (hG' : G guestC (HR σ) Γ' t) {hq : ptrsOf t = some q} (hord : q.Ordered) (hL : Layout guestC q Γ')
    {d : BitVec 64} {b n : Nat}
    (hc : ∀ a, Overlap b n a → (∃ o' ∈ keepG Γ', ∃ k, o'.HasSlot k ∧ (guestC.ty o'.ty).slot k = .scalar ∧ a = o'.cell k) ∨
      (¬ InObj Γ' a.toNat ∧ q.Allocated a.toNat)) :
    BufOK guestC (keepG Γ') q b n ∧ ∀ a, Overlap b n a → ¬ YSet Γ' t d a := by
  refine ⟨fun a hov => ?_, fun a hov hy => ?_⟩
  · rcases hc a hov with ⟨o', ho', k, hk, hsc, rfl⟩ | ⟨hni, hal⟩
    · exact Or.inl ⟨o', ho', k, hk, hsc, rfl⟩
    · exact Or.inr ⟨fun ⟨o, ho, h1, h2⟩ => hni ⟨o, (mem_keepG.mp ho).1, h1, h2⟩, hal⟩
  · obtain ⟨⟨o2, ho2, hno, k2, hk2, rfl⟩, -⟩ := hy
    rcases hc _ hov with ⟨o', ho', k, hk, hsc, he⟩ | ⟨hni, hal⟩
    · have hr1 := cell_range hord hL (mem_keepG.mp ho').1 hk
      have hr2 := cell_range hord hL ho2 hk2
      rw [he] at hr2
      have := same_obj_of_overlap hL (mem_keepG.mp ho').1 ho2 hr1.1 hr1.2 hr2.1 hr2.2
      subst this
      exact hno ho'
    · exact hni (cell_in hord hL ho2 hk2)

end pre

end InitECandidate.Solver.MemSafe.Ptx
