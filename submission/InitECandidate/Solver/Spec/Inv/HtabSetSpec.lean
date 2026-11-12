import InitECandidate.Solver.Spec.Inv.HtabNew

/-!
# The `htab_set` obligation (statement only; the proof is the remaining milestone)

`SetSpec σ X`: from a well-formed table `T` whose region lies outside the free heap
`[H0, HEAP_END)`, an allocator state `heap_ptr = H0 ≤ HEAP_END` (8-aligned), and a key whose
`key_len` bytes (not wrapping around the address space) lie outside the table's region and
outside the free heap, a returning `htab_set(T, key, value)` leaves the table well formed, moves the heap
pointer up to `H1 ≤ HEAP_END`, changes memory only in the table's region and the freshly
allocated block `[H0, H1)` (growth), keeps the table inside that union, inserts no leaf value
other than `value`, adds at most one entry, and writes no other global.
-/

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- Old region or freshly allocated block. -/
def RegionOrFresh (m : Mem) (T H0 H1 : BitVec 64) (a : BitVec 64) : Prop :=
  TableRegion m T a ∨ InR a H0 (H1.toNat - H0.toNat)

/-- What a returning `htab_set` must guarantee. -/
def SetPost {σ : Type} (s u : PanSemStateFiniteExact 64 σ) (T val H0 : BitVec 64) : Prop :=
  TableWF u T ∧ CNT u.memory T ≤ CNT s.memory T + 1 ∧
  (∀ w, LeafVal u.memory T w → LeafVal s.memory T w ∨ w = val) ∧
  ∃ H1 : BitVec 64, u.globals.lookup hpN = some (.val (.word H1)) ∧ H0.toNat ≤ H1.toNat ∧
    H1.toNat ≤ heapEnd ∧ H1.toNat % 8 = 0 ∧
    ModifiesOnly (RegionOrFresh s.memory T H0 H1) s.memory u.memory ∧
    (∀ a, TableRegion u.memory T a → RegionOrFresh s.memory T H0 H1 a) ∧
    (∀ g, g ≠ hpN → u.globals.lookup g = s.globals.lookup g)

/-- **The `htab_set` obligation.** -/
def SetSpec (σ : Type) (X : Ctx 64) : Prop :=
  FunSpec σ X (nm "htab_set") (fun vs s r u => ∀ T key val H0 : BitVec 64,
    vs = [.val (.word T), .val (.word key), .val (.word val)] → TableWF s T →
    s.globals.lookup hpN = some (.val (.word H0)) → H0.toNat ≤ heapEnd → H0.toNat % 8 = 0 →
    (∀ a, TableRegion s.memory T a → ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)) →
    key.toNat + (hdr s.memory T 0).toNat ≤ 2 ^ 64 →
    (∀ a : BitVec 64, key.toNat ≤ a.toNat → a.toNat < key.toNat + (hdr s.memory T 0).toNat + 8 →
      ¬ TableRegion s.memory T a ∧ ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)) →
    ∀ v, r = .returned v → SetPost s u T val H0)

end InitECandidate.Solver.Spec.Inv
