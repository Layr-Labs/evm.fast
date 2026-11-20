import InitECandidate.Solver.MemSafe.CsrCost.Span
import InitECandidate.Solver.MemSafe.Trans

/-! The live-span bound for a typed table in the current heap. -/
set_option autoImplicit false
namespace FourthCsrInnerLink
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks
variable {σ : Type} {H : InitECandidate.Solver.MemSafe.Hooks σ}

theorem count_of_G_fits {Γ : Gam} {s : State σ} {T : BitVec 64} {th : Nat}
    (hooks : HtabEntries.HtabHooks H) (hG : G guestC H Γ s) (hko : hkOf th = .tab)
    (hfit : Fits Γ (.ptr th) T) :
    (rd s.memory (T + BitVec.ofNat 64 24)).toNat ≤ 4127616 := by
  obtain ⟨o, ho, hb, ht⟩ := hfit
  have h := CsrCost.Span.g_table_count_live_span hooks hG ho (by rw [ht]; exact hko)
  have hr : InitECandidate.Solver.Spec.Inv.rd s.memory (T + BitVec.ofNat 64 24) =
      InitECandidate.Solver.MemSafe.rd s.memory (T + BitVec.ofNat 64 24) := by
    cases s.memory (T + BitVec.ofNat 64 24)
    rfl
  simpa only [InitECandidate.Solver.Spec.Inv.CNT, InitECandidate.Solver.Spec.Inv.hdr, hb, hr] using h

theorem count_of_heap_fits {a : Act σ} {Γ : Gam} {q : Ptrs} {s : State σ} {T : BitVec 64} {th : Nat}
    (hooks : HtabEntries.HtabHooks H) (haC : a.C = guestC) (haH : a.H = H)
    (hh : Heap a Γ q s) (hko : hkOf th = .tab) (hfit : Fits Γ (.ptr th) T) :
    (rd s.memory (T + BitVec.ofNat 64 24)).toNat ≤ 4127616 := by
  have hg := hh.1
  rw [haC, haH] at hg
  exact count_of_G_fits hooks hg hko hfit

/-- The retained pointer typing persists through the existing allocation
extension relation; it can be threaded as the generic K parameter. -/
def InnerFits (inner : BitVec 64) (Γ : Gam) : Prop := Fits Γ (.ptr tHTb32) inner

theorem inner_fits_stable {inner : BitVec 64} {Γ Γ' : Gam}
    (hx : Ext Γ Γ') (h : InnerFits inner Γ) : InnerFits inner Γ' :=
  InitECandidate.Solver.MemSafe.fits_ext hx h

theorem inner_count_of_heap {a : Act σ} {Γ : Gam} {q : Ptrs} {s : State σ}
    {inner : BitVec 64} (hooks : HtabEntries.HtabHooks H) (haC : a.C = guestC) (haH : a.H = H)
    (hh : Heap a Γ q s) (h : InnerFits inner Γ) :
    (rd s.memory (inner + BitVec.ofNat 64 24)).toNat ≤ 4127616 :=
  count_of_heap_fits hooks haC haH hh (by decide) h

#print axioms count_of_G_fits
#print axioms count_of_heap_fits
#print axioms inner_fits_stable
#print axioms inner_count_of_heap
end FourthCsrInnerLink
