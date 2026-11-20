import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore
import InitECandidate.Solver.Improvements.ThirdSourceAnalyzer
import InitECandidate.Solver.Spec.Bridge

/-! The authorization loop in set_delegation initializes i to zero and
advances it by one after every normal iteration. The guard is signed, so
the nonnegative counter cannot reach the sign bit on a true guard. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace SeventhDelegation
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open ThirdSourceAnalyzer (cost_guest_costA)

private def delegationBody : ProgHOL 64 := (declPair Guest.Software.guestFn_set_delegation).2.2
private def depthBody : ProgHOL 64 := (declPair Guest.Software.guestFn_depth0_prepare).2.2

def delegationBudget : Nat := 115792089237316248289321826800802867910394874575042375430277737829757240738025
def depthBudget : Nat := 115792089237316248289321826800802872450442216321045040316754590360769677917020
private def iterationBudget : Nat := 12554203470773367259387770121254918131223952205066370015647

private theorem table_cost {σ : Type} {name : String} {B : Nat}
    (h : Shards.finalState.1.lookup (nm name) = some B) : CalleeCost σ guestCtx (nm name) B :=
  calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 h

private theorem delegation_body_cost {σ : Type} : Cost σ guestCtx delegationBody delegationBudget := by
  unfold delegationBudget
  conv in delegationBody => cbv
  refine cost_dec (σ := σ) (X := guestCtx) ?_
  refine cost_dec (σ := σ) (X := guestCtx) ?_
  refine cost_dec (σ := σ) (X := guestCtx) ?_
  refine cost_decCall (σ := σ) (X := guestCtx) (Bf := 12) (Bk := 115792089237316248289321826800802867910394874575042375430277737829757240738012) (table_cost (name := "htab_new") (by rfl)) ?_
  refine cost_seq (σ := σ) (X := guestCtx) (Bp := 340282366920938464441052043338374447207) (Bq := 115792089237316248289321826800802867910054592208121436965836685786418866290805) ?_ ?_
  · exact cost_guest_costA (by decide_cbv)
  refine cost_decCall (σ := σ) (X := guestCtx) (Bf := 0) (Bk := 115792089237316248289321826800802867910054592208121436965836685786418866290804) (table_cost (name := "u256_is_zero") (by rfl)) ?_
  refine cost_seq (σ := σ) (X := guestCtx) (Bp := 340282366920938464441052043338374447207) (Bq := 115792089237316248289321826800802867909714309841200498501395633743080491843597) ?_ ?_
  · exact cost_guest_costA (by decide_cbv)
  refine cost_decCall (σ := σ) (X := guestCtx) (Bf := 12) (Bk := 115792089237316248289321826800802867909714309841200498501395633743080491843584) (table_cost (name := "htab_new") (by rfl)) ?_
  refine cost_dec (σ := σ) (X := guestCtx) ?_
  refine cost_dec (σ := σ) (X := guestCtx) ?_
  refine AcceptedInitializedLoopCost.cost_initialized_seq
    (σ := σ) (X := guestCtx) (B := iterationBudget) (Bt := 0) ?_ ?_ (cost_return _)
  · exact cost_guest_costA (by decide_cbv)
  · exact stepsB_sound _ true _ (by decide_cbv)

private theorem delegation_code : ∃ rs, guestCode (nm "set_delegation") =
    some ([], delegationBody, rs) := by
  have hm : Guest.Software.guestFn_set_delegation ∈ Guest.Software.guestAst :=
    List.getElem_mem (l := Guest.Software.guestAst) (n := 575) (by decide +kernel)
  exact declPair_valid (d := Guest.Software.guestFn_set_delegation) hm ⟨_, rfl⟩

theorem delegation_cost {σ : Type} : CalleeCost σ guestCtx (nm "set_delegation") delegationBudget := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some lookup
  obtain ⟨_, installed⟩ := delegation_code
  rw [guestCtx_code, installed] at hcode
  have same : actual = delegationBody := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [same]
  exact delegation_body_cost

private theorem depth_body_cost {σ : Type} : Cost σ guestCtx depthBody depthBudget := by
  unfold depthBudget
  conv in depthBody => cbv
  refine cost_seq (σ := σ) (X := guestCtx) (Bp := 0) (Bq := 115792089237316248289321826800802872450442216321045040316754590360769677917020) ?_ ?_
  · exact cost_guest_costA (by decide_cbv)
  refine cost_dec (σ := σ) (X := guestCtx) ?_
  refine cost_dec (σ := σ) (X := guestCtx) ?_
  refine cost_seq (σ := σ) (X := guestCtx) (Bp := 115792089237316248289321826800802867910394874575042375430277737829757240738027) (Bq := 4540047341746002664886476852531012437178993) ?_ ?_
  swap
  · exact cost_guest_costA (by decide_cbv)
  refine cost_ite (σ := σ) (X := guestCtx) (Ba := 115792089237316248289321826800802867910394874575042375430277737829757240738027) (Bb := 0) ?_ (cost_skip (σ := σ) (X := guestCtx))
  refine cost_seq (σ := σ) (X := guestCtx) (Bp := 115792089237316248289321826800802867910394874575042375430277737829757240738026) (Bq := 1) ?_ ?_
  swap
  · exact cost_guest_costA (by decide_cbv)
  exact cost_call (Bf := 115792089237316248289321826800802867910394874575042375430277737829757240738025) (Bh := 0) delegation_cost (by intro _ _ _ _ h; cases h)

private theorem depth_code : ∃ rs, guestCode (nm "depth0_prepare") =
    some ([], depthBody, rs) := by
  have hm : Guest.Software.guestFn_depth0_prepare ∈ Guest.Software.guestAst :=
    List.getElem_mem (l := Guest.Software.guestAst) (n := 587) (by decide +kernel)
  exact declPair_valid (d := Guest.Software.guestFn_depth0_prepare) hm ⟨_, rfl⟩

theorem depth_cost {σ : Type} : CalleeCost σ guestCtx (nm "depth0_prepare") depthBudget := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hcode⟩ := AcceptedIvvhCalleeCore.lookupCode_some lookup
  obtain ⟨_, installed⟩ := depth_code
  rw [guestCtx_code, installed] at hcode
  have same : actual = depthBody := (congrArg (fun e => e.2.1) (Option.some.inj hcode)).symm
  rw [same]
  exact depth_body_cost

#print axioms delegation_cost
#print axioms depth_cost
end SeventhDelegation
