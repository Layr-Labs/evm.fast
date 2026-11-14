import InitECandidate.Solver.MemSafe.Hooks.Defs
import InitECandidate.Solver.MemSafe.HtabEntries.New

set_option autoImplicit false
set_option maxHeartbeats 0

open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.Spec.Inv
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

namespace InitECandidate.Solver.MemSafe.CsrCost.Span
/-- Scratch lemma checked in an isolated Lean development run. Region ownership plus the concrete live address
span should improve the capacity bound. Not yet integrated into the execution-cost certificate. -/
theorem tableWF_count_of_span {σ : Type} {s : PanSemStateFiniteExact 64 σ}
    {T : BitVec 64} (h : TableWF s T)
    (hspan : ∀ a, TableRegion s.memory T a → a.toNat % 8 = 0 →
      heapBase ≤ a.toNat ∧ a.toNat < scratchEnd) :
    CNT s.memory T ≤ 4127616 := by
  rcases h with ⟨hsep, L, hshape, hextra⟩
  rcases hsep with ⟨ht, hn, ho, hk, hs, hkl, htb, hnb, hrest⟩
  let n := (hdr s.memory T 40).toNat
  let c := CAP s.memory T
  have hnlo : heapBase ≤ n := by
    apply (hspan (hdr s.memory T 40) (Or.inr (Or.inl ?_)) hn).1
    unfold InitECandidate.Solver.Spec.Inv.InR
    change n ≤ n ∧ n < n + 32 * (c + 1)
    omega
  let b : BitVec 64 := BitVec.ofNat 64 (n + 32 * c + 24)
  have hb : b.toNat = n + 32 * c + 24 := by
    simp only [b, BitVec.toNat_ofNat]
    change n + 32 * (c + 1) ≤ 2 ^ 64 at hnb
    omega
  have hba : b.toNat % 8 = 0 := by
    rw [hb]
    change n % 8 = 0 at hn
    omega
  have hbreg : TableRegion s.memory T b := by
    apply Or.inr
    apply Or.inl
    unfold InitECandidate.Solver.Spec.Inv.InR
    rw [hb]
    change n ≤ n + 32 * c + 24 ∧ n + 32 * c + 24 < n + 32 * (c + 1)
    omega
  have hbhi := (hspan b hbreg hba).2
  rw [hb] at hbhi
  have hnx := hextra.nx_le
  rcases hextra.free with ⟨fl, hfl, hnodup, hmem, hcnt⟩
  change NX s.memory T ≤ c + 1 at hnx
  unfold heapBase at hnlo
  unfold scratchEnd at hbhi
  omega

#print axioms tableWF_count_of_span

/-- Checked development lemma connecting from the allocation layout to table-region bounds. -/
theorem arrIn_live_span {σ : Type} {s : PanSemStateFiniteExact 64 σ}
    {p : Ptrs} {Γ : Gam} {o : Obj} (hp : p.Ordered)
    (hL : Layout guestC p Γ) (harr : Hooks.ArrIn Γ s.memory o) :
    ∀ a, TableRegion s.memory o.base a → a.toNat % 8 = 0 →
      heapBase ≤ a.toNat ∧ a.toNat < scratchEnd := by
  intro a hr ha
  obtain ⟨x, hx, hown, hlo, hhi⟩ := harr a hr ha
  have hlive := (hL.1 x hx).2.2.2.2
  unfold Region.Live at hlive
  unfold Ptrs.Ordered at hp
  change a.toNat < x.lo + x.size at hhi
  have hbase : heapBase ≤ InitECandidate.Solver.MemSafe.heapEnd := by decide
  have hend : InitECandidate.Solver.MemSafe.heapEnd ≤ scratchEnd := by decide
  split at hlive <;> omega

/-- Checked development bound for a table carried by the full memory-safety invariant. -/
theorem tabOK_count_live_span {σ : Type} {s : PanSemStateFiniteExact 64 σ}
    {p : Ptrs} {Γ : Gam} {o : Obj} (hp : p.Ordered)
    (hL : Layout guestC p Γ) (ht : Hooks.TabOK Γ s o) :
    CNT s.memory o.base ≤ 4127616 :=
  tableWF_count_of_span ht.1 (arrIn_live_span hp hL ht.2.1)

#print axioms tabOK_count_live_span

/-- Scratch wrapper exposing the count bound from the full invariant. -/
theorem g_table_count_live_span {σ : Type} {s : PanSemStateFiniteExact 64 σ}
    {H : Hooks σ} {Γ : Gam} {o : Obj} (hH : HtabEntries.HtabHooks H)
    (hG : G guestC H Γ s) (ho : o ∈ Γ) (ht : Hooks.hkOf o.ty = .tab) :
    CNT s.memory o.base ≤ 4127616 := by
  obtain ⟨p, hp, hord, hL, hfields, htags, hglobs, hw⟩ := hG
  exact tabOK_count_live_span hord hL (hH.get Γ s o ht (hw o ho)).2.2

#print axioms g_table_count_live_span

end InitECandidate.Solver.MemSafe.CsrCost.Span
