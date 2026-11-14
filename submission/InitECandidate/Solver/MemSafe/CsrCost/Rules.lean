import InitECandidate.Solver.MemSafe.CsrCost.DataLoop
import InitECandidate.Solver.MemSafe.CsrCost.Span
import InitECandidate.Solver.Band7.CsrFin
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie InitECandidate.Solver.Band7
namespace InitECandidate.Solver.MemSafe.CsrCost
open InitECandidate.Solver.MemSafe.CsrCost.Span
variable {σ : Type}

theorem count_of_G_fits {Γ : Gam} {s : State σ} {T : BitVec 64} {th : Nat}
    (hG : G guestC (guestHooksR (σ := σ)) Γ s) (hko : hkOf th = .tab)
    (hfit : Fits Γ (.ptr th) T) :
    (rd s.memory (T + BitVec.ofNat 64 24)).toNat ≤ 4127616 := by
  obtain ⟨o, ho, hb, ht⟩ := hfit
  have h := g_table_count_live_span htabHooks_guestR hG ho (by rw [ht]; exact hko)
  have hr : InitECandidate.Solver.Spec.Inv.rd s.memory (T + BitVec.ofNat 64 24) =
      InitECandidate.Solver.MemSafe.rd s.memory (T + BitVec.ofNat 64 24) := by
    cases s.memory (T + BitVec.ofNat 64 24)
    rfl
  simpa only [InitECandidate.Solver.Spec.Inv.CNT, InitECandidate.Solver.Spec.Inv.hdr, hb, hr] using h

theorem count_of_heap_fits {a : Act σ} {Γ : Gam} {q : Ptrs} {s : State σ} {T : BitVec 64} {th : Nat}
    (haC : a.C = guestC) (haH : a.H = guestHooksR (σ := σ))
    (hh : Heap a Γ q s) (hko : hkOf th = .tab) (hfit : Fits Γ (.ptr th) T) :
    (rd s.memory (T + BitVec.ofNat 64 24)).toNat ≤ 4127616 := by
  have hg := hh.1
  rw [haC, haH] at hg
  exact count_of_G_fits hg hko hfit

theorem gc_while_bounded {a : Act σ} (hH : HooksLawful a.C a.H)
    {i : MlS} {E0 : ExpHOL 64} {body : ProgHOL 64} {L Lx : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {B M : Nat} (hM : M < 2 ^ 63)
    (hb : CH σ (fun s => GI a L E s ∧ CondTrue s (.cmp .less (.var .local i) E0))
      body (GP a L E Rv) B)
    (hexit : ∀ s : State σ, InCtx s guestCtx → GI a L E s →
      ev s (.cmp .less (.var .local i) E0) = some (.val (.word 0)) → GI a Lx E s)
    (hnc : NoCont σ body) (hstep : Steps σ i (· + 1) body)
    (hguard : ∀ s, InCtx s guestCtx → GI a L E s → ∃ C : BitVec 64,
      ev s E0 = some (.val (.word C)) ∧ C.toNat ≤ M) :
    CH σ (fun s => GI a L E s ∧ InitECandidate.Solver.MemSafe.CsrCost.DataLoop.CounterAtMost i M s)
      (.while (.cmp .less (.var .local i) E0) body) (GP a Lx E Rv)
      ((M + 1) * (B + 1)) := by
  refine ⟨hoareG_pre (gp_while hH hb.1 hexit) (fun s hs h => h.1), ?_⟩
  refine InitECandidate.Solver.MemSafe.CsrCost.DataLoop.costP_while_bounded_guard hM (fun s h => gi_clk hH h) hb.2 ?_ hnc hstep hguard
  intro s hs hp hg hr
  have h := Frames.hoare_of_hoareG hb.1 s hs hp hg
  rw [hr] at h
  exact h.1 rfl

#print axioms count_of_heap_fits
#print axioms gc_while_bounded
end InitECandidate.Solver.MemSafe.CsrCost
