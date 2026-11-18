import InitECandidate.Solver.MemSafe.FqCost.CombAnalyzer
import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C17
import InitECandidate.Solver.Spec.P256Fold
import InitECandidate.Solver.MemSafe.Wire.Guest
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.FqCost.CombCore
variable {σ : Type}
def baseTbl : MlS → Option Nat := fun f => Shards.finalState.1.lookup f
def extend (tbl : MlS → Option Nat) (f : MlS) (B : Nat) : MlS → Option Nat :=
  fun g => if g = f then some B else tbl g
theorem base_sound : TblSound σ guestCtx baseTbl := (Shards.finalState_sound_guest (σ := σ)).1
theorem extend_sound {tbl : MlS → Option Nat} {f : MlS} {B : Nat}
    (ht : TblSound σ guestCtx tbl) (hf : CalleeCost σ guestCtx f B) :
    TblSound σ guestCtx (extend tbl f B) := by
  intro g Bg hg
  by_cases hgf : g = f
  · subst g
    simp [extend] at hg
    subst Bg
    exact hf
  · apply ht g Bg
    simpa [extend,hgf] using hg

def analyze (tbl : MlS → Option Nat) (p : ProgHOL 64) : Option Nat :=
  fqCombCostA tbl (fun g => Shards.finalState.2.1.contains g)
    (fun g => Shards.finalState.2.1.contains g || Shards.finalState.2.2.contains g) p

theorem analyze_sound {tbl : MlS → Option Nat} (ht : TblSound σ guestCtx tbl)
    {p : ProgHOL 64} {B : Nat} (h : analyze tbl p = some B) : Cost σ guestCtx p B := by
  obtain ⟨_,hef,hefz⟩ := Shards.finalState_sound_guest (σ := σ)
  have hefz' : ∀ g, (Shards.finalState.2.1.contains g || Shards.finalState.2.2.contains g) = true →
      EfArgZero σ guestCtx.code g 1 := by
    intro g hg
    rcases Bool.or_eq_true_iff.mp hg with hg | hg
    · exact efArgZero_of_ef hef hg 1
    · exact hefz g hg
  exact fqCombCostA_sound ht hef hefz' guestCtx_bounded (Arith.guestArithTbls guestCtx_code)
    (InitECandidate.Solver.Spec.p256Rule guestCtx_code) p B h
def costFin (p : ProgHOL 64) : Option Nat := analyze baseTbl p
theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) : Cost σ guestCtx p B :=
  analyze_sound base_sound h

theorem lookupCode_body {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {ps : List (MlS × ShapeHOL)} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some (ps, bd, rsh))
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL}
    (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, -, -⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · simp only [Option.some.injEq, Prod.mk.injEq] at hx
      exact hx.1.symm
    · simp at hx


theorem callee_of_body {f : MlS} {params : List (MlS × ShapeHOL)} {p : ProgHOL 64} {rs : ShapeHOL} {B : Nat}
    (hc : guestCode f = some (params,p,rs)) (h : Cost σ guestCtx p B) : CalleeCost σ guestCtx f B := by
  intro vs body callee rs' hl
  rw [guestCtx_code] at hl
  have he := lookupCode_body hc hl
  subst body
  exact h
#print axioms extend_sound
#print axioms analyze_sound
#print axioms callee_of_body
end InitECandidate.Solver.MemSafe.FqCost.CombCore

#print axioms InitECandidate.Solver.MemSafe.FqCost.CombCore.analyze_sound
