import InitECandidate.Solver.Improvements.FourthCsrExactLoop
import InitECandidate.Solver.MemSafe.Dn.Kit2
import InitECandidate.Solver.MemSafe.Frames.FinCost

/-! The existing CH loop wrapper with exact positive-measure slots. -/
set_option autoImplicit false
set_option maxHeartbeats 0
namespace FourthCsrExactCH
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Dn
variable {σ : Type}
/-- The two components of the Band7 cost judgment, before the Band7 caller imports. -/
private abbrev BodyCost (σ : Type) (P : State σ → Prop) (c : ProgHOL 64)
    (Q : Option (PanSemResultExact 64) → State σ → Prop) (B : Nat) : Prop :=
  HoareG σ guestCtx P c Q ∧ Inv.CostP σ guestCtx P c B

theorem gc_while_bounded_exact {a : Act σ} (hH : HooksLawful a.C a.H)
    {i : MlS} {E0 : ExpHOL 64} {body : ProgHOL 64} {L Lx : WaveHelpers.LocalsH → Prop}
    {E : Gam → Ptrs → Mem → Prop} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    {B M : Nat} (hM : M < 2 ^ 63)
    (hb : BodyCost σ (fun s => GI a L E s ∧ CondTrue s (.cmp .less (.var .local i) E0))
      body (GP a L E Rv) B)
    (hexit : ∀ s : State σ, InCtx s guestCtx → GI a L E s →
      ev s (.cmp .less (.var .local i) E0) = some (.val (.word 0)) → GI a Lx E s)
    (hnc : NoCont σ body) (hstep : Steps σ i (· + 1) body)
    (hguard : ∀ s, InCtx s guestCtx → GI a L E s → ∃ C : BitVec 64,
      ev s E0 = some (.val (.word C)) ∧ C.toNat ≤ M) :
    BodyCost σ (fun s => GI a L E s ∧ FourthCsrExactLoop.CounterAtMost i M s)
      (.while (.cmp .less (.var .local i) E0) body) (GP a Lx E Rv)
      (M * (B + 1)) := by
  refine ⟨hoareG_pre (gp_while hH hb.1 hexit) (fun s hs h => h.1), ?_⟩
  have hclock : ∀ s, GI a L E s → GI a L E (decClockHOLFinite s) := by
    rintro s ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨hL, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hE⟩
  refine FourthCsrExactLoop.costP_while_bounded_guard hM hclock hb.2 ?_ hnc hstep hguard
  intro s hs hp hg hr
  have h := Frames.hoare_of_hoareG hb.1 s hs hp hg
  rw [hr] at h
  exact h.1 rfl


#print axioms gc_while_bounded_exact
end FourthCsrExactCH
