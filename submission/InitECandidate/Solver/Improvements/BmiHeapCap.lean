import InitECandidate.Solver.MemSafe.Summary

/-! A dense table of 16-byte entries must fit within the allocator's address range. -/

set_option autoImplicit false

namespace BmiHeapCap
open InitECandidate.Solver.MemSafe

abbrev maxEntries : Nat := 16510464

private theorem allocated_bounds {p : Ptrs} (hp : p.Ordered) {a : Nat}
    (ha : p.Allocated a) : heapBase ≤ a ∧ a < scratchEnd := by
  have hb : heapBase ≤ heapEnd := by decide
  obtain ⟨hb0, hh, hf0, hf, hs, -, -, -⟩ := hp
  rcases ha with h | h | h <;> omega

theorem count_le {p : Ptrs} {A N : BitVec 64} (hp : p.Ordered)
    (halloc : ∀ j : BitVec 64, j.toNat < N.toNat →
      p.Allocated (A + j * 16#64).toNat) :
    N.toNat ≤ maxEntries := by
  by_contra! hn
  have hn0 : (0 : BitVec 64).toNat < N.toNat := by
    change 0 < N.toNat
    omega
  have hbase : p.Allocated A.toNat := by simpa using halloc 0 hn0
  have ha := allocated_bounds hp hbase
  let j : BitVec 64 := BitVec.ofNat 64 maxEntries
  have hj : j.toNat = maxEntries := by decide
  have hstride : (j * 16#64).toNat = maxEntries * 16 := by decide
  have hword : A.toNat + maxEntries * 16 < 2 ^ 64 := by
    have hend : scratchEnd + maxEntries * 16 < 2 ^ 64 := by decide
    omega
  have hlast := (allocated_bounds hp (halloc j (hj.symm ▸ hn))).2
  rw [BitVec.toNat_add, hstride, Nat.mod_eq_of_lt hword] at hlast
  have hcapacity : heapBase + maxEntries * 16 = scratchEnd := by decide
  omega

#print axioms count_le
end BmiHeapCap
