import Lean.Elab.Tactic.Omega

/-!
# Count cap from a payload record and its disjoint slice array

The accepted `6151c797` transaction-count bound charges all 251658240 heap bytes
to the input slice array. At the actual transaction loop, two distinct full
output arrays and the 136-byte payload record are also present in the same
laid-out heap. Packing all four objects yields count at most 5242876. Simpler
two-output-array (7864319) and payload-plus-input (15728631) caps are retained
as fallback arithmetic statements.

These pure arithmetic lemmas do not by themselves establish those heap facts.
The intended bridge uses accepted `Frames.lay_disj`, both objects' `Layout`
heap-liveness facts, and the existing payload `Fct.obj` and `SlaObj` witnesses.
No heap, source-clock or complete certificate replay is asserted here.
-/
set_option autoImplicit false

namespace AcceptedPayloadCountCap

/-- Two disjoint object intervals inside one arena consume at most its size. -/
theorem two_intervals_size_le {lo hi a aSize b bSize : Nat}
    (haLo : lo ≤ a) (haHi : a + aSize ≤ hi)
    (hbLo : lo ≤ b) (hbHi : b + bSize ≤ hi)
    (hsep : a + aSize ≤ b ∨ b + bSize ≤ a) :
    aSize + bSize ≤ hi - lo := by
  rcases hsep with h | h <;> omega

/-- The two distinct output arrays are already present in the loop ledger. -/
theorem two_output_arrays_count_le {txs txSize rcs rcSize count : Nat}
    (htxLo : 2701131776 ≤ txs) (htxHi : txs + txSize ≤ 2952790016)
    (hrcLo : 2701131776 ≤ rcs) (hrcHi : rcs + rcSize ≤ 2952790016)
    (hsep : txs + txSize ≤ rcs ∨ rcs + rcSize ≤ txs)
    (htxSize : 16 * count + 16 ≤ txSize)
    (hrcSize : 16 * count + 16 ≤ rcSize) :
    count ≤ 7864319 := by
  have hspace := two_intervals_size_le htxLo htxHi hrcLo hrcHi hsep
  omega

/-- Four pairwise disjoint intervals inside one arena. -/
theorem four_intervals_size_le {lo hi a aSize b bSize c cSize d dSize : Nat}
    (haLo : lo ≤ a) (haHi : a + aSize ≤ hi)
    (hbLo : lo ≤ b) (hbHi : b + bSize ≤ hi)
    (hcLo : lo ≤ c) (hcHi : c + cSize ≤ hi)
    (hdLo : lo ≤ d) (hdHi : d + dSize ≤ hi)
    (hab : a + aSize ≤ b ∨ b + bSize ≤ a)
    (hac : a + aSize ≤ c ∨ c + cSize ≤ a)
    (had : a + aSize ≤ d ∨ d + dSize ≤ a)
    (hbc : b + bSize ≤ c ∨ c + cSize ≤ b)
    (hbd : b + bSize ≤ d ∨ d + dSize ≤ b)
    (hcd : c + cSize ≤ d ∨ d + dSize ≤ c) :
    aSize + bSize + cSize + dSize ≤ hi - lo := by
  rcases hab with hab | hab
  all_goals rcases hac with hac | hac
  all_goals rcases had with had | had
  all_goals rcases hbc with hbc | hbc
  all_goals rcases hbd with hbd | hbd
  all_goals rcases hcd with hcd | hcd
  all_goals omega

/-- Payload + input slices + both output arrays share the same heap. -/
theorem transaction_arrays_count_le
    {pl plSize arr arrSize txs txSize rcs rcSize count : Nat}
    (hplLo : 2701131776 ≤ pl) (hplHi : pl + plSize ≤ 2952790016)
    (harrLo : 2701131776 ≤ arr) (harrHi : arr + arrSize ≤ 2952790016)
    (htxLo : 2701131776 ≤ txs) (htxHi : txs + txSize ≤ 2952790016)
    (hrcLo : 2701131776 ≤ rcs) (hrcHi : rcs + rcSize ≤ 2952790016)
    (hplArr : pl + plSize ≤ arr ∨ arr + arrSize ≤ pl)
    (hplTx : pl + plSize ≤ txs ∨ txs + txSize ≤ pl)
    (hplRc : pl + plSize ≤ rcs ∨ rcs + rcSize ≤ pl)
    (harrTx : arr + arrSize ≤ txs ∨ txs + txSize ≤ arr)
    (harrRc : arr + arrSize ≤ rcs ∨ rcs + rcSize ≤ arr)
    (htxRc : txs + txSize ≤ rcs ∨ rcs + rcSize ≤ txs)
    (hplSize : 136 ≤ plSize) (harrSize : 16 * count ≤ arrSize)
    (htxSize : 16 * count + 16 ≤ txSize)
    (hrcSize : 16 * count + 16 ≤ rcSize) :
    count ≤ 5242876 := by
  have hspace := four_intervals_size_le hplLo hplHi harrLo harrHi
    htxLo htxHi hrcLo hrcHi hplArr hplTx hplRc harrTx harrRc htxRc
  omega

/-- The concrete heap reserves room for the separate payload record. -/
theorem payload_count_le {pl plSize arr arrSize count : Nat}
    (hplLo : 2701131776 ≤ pl) (hplHi : pl + plSize ≤ 2952790016)
    (harrLo : 2701131776 ≤ arr) (harrHi : arr + arrSize ≤ 2952790016)
    (hsep : pl + plSize ≤ arr ∨ arr + arrSize ≤ pl)
    (hplSize : 136 ≤ plSize) (harrSize : 16 * count ≤ arrSize) :
    count ≤ 15728631 := by
  have hspace := two_intervals_size_le hplLo hplHi harrLo harrHi hsep
  omega

/-- A zero-count array needs no object witness. -/
theorem payload_count_le_or_zero {pl plSize arr arrSize count : Nat}
    (hzeroOr : count = 0 ∨
      (2701131776 ≤ pl ∧ pl + plSize ≤ 2952790016 ∧
       2701131776 ≤ arr ∧ arr + arrSize ≤ 2952790016 ∧
       (pl + plSize ≤ arr ∨ arr + arrSize ≤ pl) ∧
       136 ≤ plSize ∧ 16 * count ≤ arrSize)) :
    count ≤ 15728631 := by
  rcases hzeroOr with hzero | ⟨hplLo, hplHi, harrLo, harrHi, hsep, hplSize, harrSize⟩
  · omega
  · exact payload_count_le hplLo hplHi harrLo harrHi hsep hplSize harrSize

end AcceptedPayloadCountCap

#print axioms AcceptedPayloadCountCap.two_intervals_size_le
#print axioms AcceptedPayloadCountCap.two_output_arrays_count_le
#print axioms AcceptedPayloadCountCap.four_intervals_size_le
#print axioms AcceptedPayloadCountCap.transaction_arrays_count_le
#print axioms AcceptedPayloadCountCap.payload_count_le
#print axioms AcceptedPayloadCountCap.payload_count_le_or_zero
