import InitECandidate.Solver.MemSafe.Rcpt.Rules2

set_option autoImplicit false

/-!
# `Env` from `LogsK`

If a memory `M'` differs from the entry memory `M` only on `WCell Γ` and cells unallocated at entry,
then it agrees with `M` on the cells the receipt code reads (`PCc`), the log fields read from `M'`
are those read from `M`, and `Env M' D logs` holds for an output block above `h0` and below `heapEnd`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Helpers

theorem wcell_inObj {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout guestC p Γ) {c : BitVec 64}
    (h : WCell guestC Γ c) : InObj Γ c.toNat := by
  obtain ⟨o, ho, k, hk, -, rfl⟩ := h
  obtain ⟨h1, -⟩ := cell_toNat hord hL ho hk
  unfold Obj.HasSlot at hk
  have hlo : o.lo = o.base.toNat := rfl
  have hhi : o.hi = o.base.toNat + o.size := rfl
  refine ⟨o, ho, ?_, ?_⟩ <;> omega

/-- What `LogsK` says about a cell the receipt code reads. -/
abbrev PCok (Γ : Gam) (p : Ptrs) (h0 : Nat) (c : BitVec 64) : Prop := CellOK Γ p h0 c

theorem pcc_ok {Γ : Gam} {p : Ptrs} {M : Mem} {h0 : Nat} {logs : BitVec 64}
    (hLK : LogsK Γ p M h0 logs) (hordp : p.Ordered) (hh0 : h0 ≤ p.hp) (hL : Layout guestC p Γ)
    {c : BitVec 64} (hc : PCc M logs c) :
    PCok Γ p h0 c := by
  obtain ⟨hR, hc0, hc8, harr, -⟩ := hLK
  rcases hc with ⟨k, hk, rfl⟩ | ⟨i, hi, hc⟩
  · rcases hk with rfl | rfl
    · have : logs + BitVec.ofNat 64 0 = logs := by simp
      rw [this]; exact hc0
    · exact hc8
  · rcases hc with rfl | ⟨k, hk, rfl⟩
    · exact harr i hi
    · obtain ⟨⟨r1, r2, o, ho, hob, hot, hos⟩, -⟩ := hR i hi
      have r1' : heapBase ≤ (lgRec M logs i).toNat := r1
      have hr : (lgRec M logs i).toNat + 40 ≤ h0 := r2
      have hk40 : k ≤ 32 := by omega
      have hpe : p.hp ≤ heapEnd := hordp.2.1
      have hh : heapEnd < 2 ^ 40 := by decide
      have e : (lgRec M logs i + BitVec.ofNat 64 k).toNat = (lgRec M logs i).toNat + k :=
        toNat_addc (by omega)
      unfold PCok CellOK
      rw [e]
      refine ⟨Or.inl (by omega), Or.inl ⟨by omega, by omega⟩, ?_⟩
      -- the cell is a `prot` cell of the record object
      rintro ⟨o', ho', j, hj, hnp, he⟩
      have hs : o.HasSlot (k / 8) := by unfold Obj.HasSlot; omega
      have hce : o.cell (k / 8) = lgRec M logs i + BitVec.ofNat 64 k := by
        have h8 : 8 * (k / 8) = k := by omega
        unfold Obj.cell
        rw [hob, h8]
        rfl
      obtain ⟨rfl, -⟩ := cell_inj hordp hL ho ho' hs hj (hce.trans he)
      exact hnp (by rw [hot]; exact tlog_prot _)

def Agree (M M' : Mem) (logs : BitVec 64) : Prop := ∀ c, PCc M logs c → M' c = M c

theorem agree_of_MO {Γ : Gam} {p : Ptrs} {M M' : Mem} {h0 : Nat} {logs : BitVec 64}
    (hLK : LogsK Γ p M h0 logs) (hordp : p.Ordered) (hh0 : h0 ≤ p.hp) (hL : Layout guestC p Γ)
    (hmo : ModifiesOnly (fun x => WCell guestC Γ x ∨ ¬ p.Allocated x.toNat) M M') :
    Agree M M' logs := by
  intro c hc
  have := pcc_ok hLK hordp hh0 hL hc
  apply hmo
  rintro (hw | hn)
  · exact this.2.2 hw
  · exact hn this.2.1

section congr
variable {M M' : Mem} {logs : BitVec 64} (hag : Agree M M' logs)
include hag

theorem rd_agree {c : BitVec 64} (hc : PCc M logs c) : rd M' c = rd M c := by
  unfold rd
  rw [hag c hc]

theorem lgN_congr : lgN M' logs = lgN M logs :=
  congrArg BitVec.toNat (rd_agree hag (c := logs + BitVec.ofNat 64 8) (Or.inl ⟨8, Or.inr rfl, rfl⟩))

theorem lgP_congr : lgP M' logs = lgP M logs := by
  have := rd_agree hag (c := logs + BitVec.ofNat 64 0) (Or.inl ⟨0, Or.inl rfl, rfl⟩)
  simpa [lgP] using this

theorem lgArr_congr (i : Nat) : lgArr M' logs i = lgArr M logs i := by
  unfold lgArr
  rw [lgP_congr hag]

theorem lgRec_congr {i : Nat} (hi : i < lgN M logs) : lgRec M' logs i = lgRec M logs i := by
  unfold lgRec
  rw [lgArr_congr hag]
  exact rd_agree hag (Or.inr ⟨i, hi, Or.inl rfl⟩)

theorem lgNt_congr {i : Nat} (hi : i < lgN M logs) : lgNt M' logs i = lgNt M logs i := by
  unfold lgNt
  rw [lgRec_congr hag hi]
  exact congrArg BitVec.toNat (rd_agree hag (Or.inr ⟨i, hi, Or.inr ⟨16, by omega, rfl⟩⟩))

theorem lgDn_congr {i : Nat} (hi : i < lgN M logs) : lgDn M' logs i = lgDn M logs i := by
  unfold lgDn
  rw [lgRec_congr hag hi]
  exact congrArg BitVec.toNat (rd_agree hag (Or.inr ⟨i, hi, Or.inr ⟨32, by omega, rfl⟩⟩))

theorem sk_congr : ∀ i, i ≤ lgN M logs → Sk M' logs i = Sk M logs i
  | 0, _ => rfl
  | i + 1, h => by
    have := sk_congr i (by omega)
    simp only [Sk, lgWb]
    rw [this, lgNt_congr hag (by omega), lgDn_congr hag (by omega)]

theorem pcc_back {c : BitVec 64} (hc : PCc M' logs c) : PCc M logs c := by
  rcases hc with hc | ⟨i, hi, hc⟩
  · exact Or.inl hc
  · rw [lgN_congr hag] at hi
    refine Or.inr ⟨i, hi, ?_⟩
    rcases hc with rfl | ⟨k, hk, rfl⟩
    · rw [lgArr_congr hag]; exact Or.inl rfl
    · rw [lgRec_congr hag hi]; exact Or.inr ⟨k, hk, rfl⟩

end congr

theorem env_of {Γ : Gam} {p : Ptrs} {M M' : Mem} {h0 : Nat} {logs D : BitVec 64}
    (hLK : LogsK Γ p M h0 logs) (hordp : p.Ordered) (hh0 : h0 ≤ p.hp) (hL : Layout guestC p Γ)
    (hmo : ModifiesOnly (fun x => WCell guestC Γ x ∨ ¬ p.Allocated x.toNat) M M')
    (hD : h0 ≤ D.toNat) (hE : D.toNat + 9 + Sk M logs (lgN M logs) ≤ heapEnd) :
    Env M' D logs ∧ Sk M' logs (lgN M' logs) = Sk M logs (lgN M logs) := by
  have hag := agree_of_MO hLK hordp hh0 hL hmo
  have hS : Sk M' logs (lgN M' logs) = Sk M logs (lgN M logs) := by
    rw [lgN_congr hag]
    exact sk_congr hag _ (Nat.le_refl _)
  refine ⟨⟨by rw [hS]; exact hE, fun c hc => ?_⟩, hS⟩
  rw [hS]
  have := pcc_ok hLK hordp hh0 hL (pcc_back hag hc)
  unfold Prot
  rcases this.1 with h | h <;> omega

end InitECandidate.Solver.MemSafe.Rcpt
