import InitECandidate.Solver.Improvements.AcceptedHeapObjectCount
import InitECandidate.Solver.MemSafe.TxnCost.Bounds

/-!
# Transaction count from simultaneous accepted heap objects

Draft bridge against accepted `6151c797`. The scalar interval arithmetic is
isolated in `AcceptedPayloadCountCap`; the actual layout proof is isolated in
`AcceptedHeapObjectCount`. This file extracts their exact inputs from the
payload, its input slice array, and the two output arrays already guaranteed
by the transaction loop's `Led`. The output arrays' full capacities, not their
currently populated prefixes, determine the count cap.

No additional reachability, allocation or disjointness assumptions are added.
This source remains unverified until replayed against its full import closure.
-/
set_option autoImplicit false
set_option maxHeartbeats 0

namespace AcceptedTransactionCountFacts
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- Simpler fallback: both full output arrays are present and distinct. -/
theorem two_output_arrays_count_bound
    {E : EbE σ} {En : Env} {S : FS} {txs rcs N : BitVec 64} {s : State σ}
    (hp : PA E En S s)
    (htx : S (.obj txs tBOS (16 * N.toNat + 16)))
    (hrc : S (.obj rcs tBOS (16 * N.toNat + 16)))
    (htr : S (.prop (txs ≠ rcs))) : N.toNat ≤ 7864319 := by
  obtain ⟨⟨Γ, p, hr, hL⟩, henv⟩ := hp
  obtain ⟨txObj, hTxMem, hTxBase, hTxTy, hTxSize⟩ := hL _ htx
  obtain ⟨rcObj, hRcMem, hRcBase, hRcTy, hRcSize⟩ := hL _ hrc
  obtain ⟨q, hq, hord, hLayout, hrest⟩ := ebRun_G hr
  have hne : txObj.base ≠ rcObj.base := by
    rw [hTxBase, hRcBase]
    exact hL _ htr
  exact AcceptedHeapObjectCount.two_output_objects_count hord hLayout
    hTxMem hRcMem hTxTy hRcTy hTxSize hRcSize hne

/-- The payload, its input slices, and both full output arrays coexist. -/
theorem transaction_arrays_count_bound
    {E : EbE σ} {En : Env} {S : FS} {pl txs rcs N : BitVec 64} {s : State σ}
    (hp : PA E En S s) (hpl : S (.obj pl tPL 136))
    (hcnt : S (.pcv (pl + BitVec.ofNat 64 40) N))
    (htx : S (.obj txs tBOS (16 * N.toNat + 16)))
    (hrc : S (.obj rcs tBOS (16 * N.toNat + 16)))
    (htr : S (.prop (txs ≠ rcs))) : N.toNat ≤ 5242876 := by
  obtain ⟨⟨Γ, p, hr, hL⟩, henv⟩ := hp
  obtain ⟨plObj, hPlMem, hPlBase, hPlTy, hPlSize⟩ := hL _ hpl
  have hrd := (hL _ hcnt).1
  have hIv := (Exb.hypPlS Γ s plObj (ebRun_G hr) hPlMem hPlTy).1.1
  rw [Exb.txF_eq hPlBase 4, Exb.txF_eq hPlBase 5, hrd] at hIv
  rcases hIv with hzero | ⟨arrObj, hArrMem, hArrBase, hArrTy, hArrSize, hArrEnd⟩
  · omega
  · obtain ⟨txObj, hTxMem, hTxBase, hTxTy, hTxSize⟩ := hL _ htx
    obtain ⟨rcObj, hRcMem, hRcBase, hRcTy, hRcSize⟩ := hL _ hrc
    obtain ⟨q, hq, hord, hLayout, hrest⟩ := ebRun_G hr
    have hne : txObj.base ≠ rcObj.base := by
      rw [hTxBase, hRcBase]
      exact hL _ htr
    exact AcceptedHeapObjectCount.transaction_objects_count hord hLayout
      hPlMem hArrMem hTxMem hRcMem hPlTy hArrTy hTxTy hRcTy
      hPlSize hArrSize hTxSize hRcSize hne

end AcceptedTransactionCountFacts

#print axioms AcceptedTransactionCountFacts.two_output_arrays_count_bound
#print axioms AcceptedTransactionCountFacts.transaction_arrays_count_bound
