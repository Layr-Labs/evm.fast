import InitECandidate.Solver.MemSafe.UbCost.Loop
import InitECandidate.Solver.MemSafe.CsrCost.Span
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Bal
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.Band6
namespace InitECandidate.Solver.MemSafe.UbCost
variable {σ : Type}
theorem table_count_bound {Γ : Gam} {s : State σ} {T : BitVec 64} {th : Nat}
    (hG : G guestC (guestHooksR (σ := σ)) Γ s) (hko : hkOf th = .tab)
    (hfit : ∃ o ∈ Γ, o.base = T ∧ o.ty = th) :
    (rd s.memory (T + BitVec.ofNat 64 24)).toNat ≤ countMax := by
  obtain ⟨o,ho,hb,ht⟩ := hfit
  have h := InitECandidate.Solver.MemSafe.CsrCost.Span.g_table_count_live_span
    htabHooks_guestR hG ho (by rw [ht]; exact hko)
  have hr : InitECandidate.Solver.Spec.Inv.rd s.memory (T + BitVec.ofNat 64 24) =
      InitECandidate.Solver.MemSafe.rd s.memory (T + BitVec.ofNat 64 24) := by
    cases s.memory (T + BitVec.ofNat 64 24)
    rfl
  simpa only [countMax,InitECandidate.Solver.Spec.Inv.CNT,InitECandidate.Solver.Spec.Inv.hdr,hb,hr] using h

theorem loaded_count_bound {Γ : Gam} {s : State σ} {T : BitVec 64} {th : Nat}
    {e : ExpHOL 64} {v : ValueHOL 64}
    (hG : G guestC (guestHooksR (σ := σ)) Γ s) (hko : hkOf th = .tab)
    (hfit : ∃ o ∈ Γ, o.base = T ∧ o.ty = th)
    (he : ev s e = some (.val (.word T)))
    (hv : ev s (ld1 (add2 e 24)) = some v) :
    ∃ C : BitVec 64, v = .val (.word C) ∧ C.toNat ≤ countMax := by
  have ha : ev s (add2 e 24) = some (.val (.word (T+BitVec.ofNat 64 24))) :=
    InitECandidate.Solver.Spec.ev_add2 he (by rfl)
  have h := HtabEntries.ld_w ha hv
  exact ⟨_,h,table_count_bound hG hko hfit⟩
#print axioms table_count_bound
#print axioms loaded_count_bound
end InitECandidate.Solver.MemSafe.UbCost
