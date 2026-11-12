import InitECandidate.Solver.MemSafe.Ini.Calls
import InitECandidate.Solver.MemSafe.MptH.Key

/-!
# The net effect of a run on memory and globals (`Eff`)

`Eff s0 t Γ0 p0 H`: relative to the entry state `s0` (typing `Γ0`, allocator `p0`), the state `t` has
the same globals but the heap pointer, which is `H` (between `p0.hp` and `HEAP_END`, 8-aligned),
the same memory domain and byte order, and the same memory outside the `scalar` cells of `Γ0` and
the heap block `[p0.hp, H)` allocated since the entry. `eff_trans`: one call's footprint.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

structure Eff (s0 t : State σ) (Γ0 : Gam) (p0 : Ptrs) (H : BitVec 64) : Prop where
  glob : ∀ g, g ≠ gHeap → t.globals.lookup g = s0.globals.lookup g
  hp : t.globals.lookup gHeap = some (.val (.word H))
  lo : p0.hp ≤ H.toNat
  hi : H.toNat ≤ heapEnd
  al : H.toNat % 8 = 0
  dom : t.memaddrs = s0.memaddrs
  be : t.be = s0.be
  mem : ∀ x : BitVec 64, ¬ (SCell Types.guestC Γ0 x ∨ (p0.hp ≤ x.toNat ∧ x.toNat < H.toNat)) →
    t.memory x = s0.memory x

theorem gw_eq {s t : State σ} {g : MlS} (h : t.globals.lookup g = s.globals.lookup g) :
    gword t g = gword s g := by
  unfold gword; rw [h]

theorem eff_init {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (hp : ptrsOf s0 = some p0) (hord : p0.Ordered) :
    ∃ H, Eff s0 s0 Γ0 p0 H := by
  obtain ⟨H0, F0, S0, hH0, -, -, hpe⟩ := AllocImpl.ptrsOf_some hp
  have hph : p0.hp = H0.toNat := by rw [hpe]
  refine ⟨H0, ⟨fun _ _ => rfl, AllocImpl.lookup_of_gword hH0, by omega, by rw [← hph]; exact hord.2.1,
    by rw [← hph]; exact hord.2.2.2.2.2.1, rfl, rfl, fun _ _ => rfl⟩⟩

/-- One call: its own globals/heap-pointer/memory effect, in terms of the entry state `s` of the call. -/
theorem eff_trans {s0 s st : State σ} {Γ0 : Gam} {p0 : Ptrs} {H H' : BitVec 64}
    (he : Eff s0 s Γ0 p0 H)
    (hglob : ∀ g, g ≠ gHeap → st.globals.lookup g = s.globals.lookup g)
    (hhp : st.globals.lookup gHeap = some (.val (.word H')))
    (hle : H.toNat ≤ H'.toNat) (hhi : H'.toNat ≤ heapEnd) (hal : H'.toNat % 8 = 0)
    (hdom : st.memaddrs = s.memaddrs) (hbe : st.be = s.be)
    (hmem : ∀ x : BitVec 64, ¬ (SCell Types.guestC Γ0 x ∨ (p0.hp ≤ x.toNat ∧ x.toNat < H'.toNat)) →
      st.memory x = s.memory x) : Eff s0 st Γ0 p0 H' :=
  ⟨fun g hg => (hglob g hg).trans (he.glob g hg), hhp, by have := he.lo; omega, hhi, hal,
    hdom.trans he.dom, hbe.trans he.be, fun x hx => by
      rw [hmem x hx]
      exact he.mem x (fun h => hx (by
        rcases h with h | h
        · exact Or.inl h
        · exact Or.inr ⟨h.1, by omega⟩))⟩

end InitECandidate.Solver.MemSafe.Ini

#print axioms InitECandidate.Solver.MemSafe.Ini.eff_trans
