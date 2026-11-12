import InitECandidate.Solver.MemSafe.Bn2.MulFoot
import InitECandidate.Solver.MemSafe.Bn2.Util
import InitECandidate.Solver.MemSafe.Fold
import InitECandidate.Solver.MemSafe.WaveHelpers.Common
import InitECandidate.Solver.MemSafe.Wire.Guest

set_option autoImplicit false

/-!
# `bn_mul`: the summary

`bn_mul(a, na, b, nb, out)` writes `out[0, na + nb)` words.

* `bnMulSig = [any, any, any, any, bufArg 1 16 0]`, `grows := false`: the output buffer has
  `16 * na` bytes (the caller `modexp` passes `na = nb = n` and `prod = alloc(2 * n * 8)`).
* `Pre` (`BnMulPre`): `nb <= na`. That is the only caller obligation beyond `ArgsOK`.
  (`16 na >= 8 (na + nb)` iff `na >= nb`; no single `bufArg` bounds `na + nb`.)
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bn2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

def MulPreF (vs : List (ValueHOL 64)) : Prop :=
  ∀ O NA NB : BitVec 64, argW vs 4 = some O → argW vs 1 = some NA → argW vs 3 = some NB →
    MP O NA NB

def MulRF (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ O NA : BitVec 64, argW vs 4 = some O ∧ argW vs 1 = some NA ∧
    Overlap O.toNat (16 * NA.toNat) a

theorem foot_bn_mul (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "bn_mul") MulPreF MulRF := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, Av, Bv, Cv, Dv, Ev, rfl, hA', hB', hC', hD', hE', hla, hlb, hlc, hld, hle⟩ :=
    lookupCode_five code_bn_mul (by decide) hl
  obtain ⟨NA, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨NB, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hE'
  have hp : MP O NA NB := hP O NA NB rfl rfl rfl
  have hF : MFix O NA NB s0.locals :=
    ⟨by rw [hloc]; exact hle, by rw [hloc]; exact hlb, by rw [hloc]; exact hld⟩
  refine hoareG_conseq (hoareG_mulBody hA hF hp) (fun t _ ht => ht) ?_
  intro r t _ _ h
  exact ⟨h.1, h.2.mono fun a ha => ⟨O, NA, rfl, rfl, ha⟩⟩

def bnMulSig : Sig := { params := [.any, .any, .any, .any, .bufArg 1 16 0], grows := false }

/-- The caller obligation: `nb <= na`. -/
def BnMulPre (vs : List (ValueHOL 64)) (_ : State σ) (_ : Gam) : Prop :=
  ∀ NA NB : BitVec 64, argW vs 1 = some NA → argW vs 3 = some NB → NB.toNat ≤ NA.toNat

theorem sumSpec_bn_mul_core {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    SumSpec σ X C H (nm "bn_mul") bnMulSig BnMulPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) := by
  refine sumSpec_of_footS (Pre := fun vs _ => MulPreF vs) (R := fun vs _ => MulRF vs) hH hT rfl
    ((foot_bn_mul hC hA).mono fun _ _ _ _ h hg hP => h hg hP) ?_ ?_
  · intro Γ p vs s hG hp hA' hPS O NA NB hO hNA hNB
    obtain ⟨p0, hp0, hord, hL, -⟩ := hG
    rw [hp] at hp0
    cases hp0
    obtain ⟨v, hv, w, x, hw, hx, hb⟩ := argAt hA' (i := 4) (pt := .bufArg 1 16 0) rfl
    have hw' := argWOf hv hw
    rw [hO] at hw'
    cases hw'
    rw [hNA] at hx
    cases hx
    have hle := hPS NA NB hNA hNB
    have bd := Helpers.bufOK_bound hord hL O.isLt hb
    refine ⟨hle, fun hpos => ?_⟩
    rcases bd with h | h <;> omega
  · intro Γ p vs s a _ _ hA' _ ⟨O, NA, hO, hNA, hov⟩
    exact Or.inl (argCells_bufArg_at (i := 4) (j := 1) (c := 16) (d := 0) rfl hO hNA
      (by simpa using hov))

theorem sumSpec_bn_mul {H : Hooks σ} (hF : FoldOK σ X Types.guestC H) :
    SumSpecA σ X Types.guestC H (nm "bn_mul") bnMulSig BnMulPre (fun _ _ _ _ => False)
      (fun _ _ _ _ _ _ => True) :=
  sumSpecA_of_sumSpec (sumSpec_bn_mul_core hF.hH tagSlots_guestC hF.hX hF.hal)

theorem sumSpec_bn_mul_guestJL :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "bn_mul") bnMulSig
      BnMulPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_bn_mul Wire.foldOK_guestJL

end InitECandidate.Solver.MemSafe.Bn2

#print axioms InitECandidate.Solver.MemSafe.Bn2.sumSpec_bn_mul
#print axioms InitECandidate.Solver.MemSafe.Bn2.sumSpec_bn_mul_guestJL
