import InitECandidate.Solver.BlobPrice.DigitsBound
import InitECandidate.Solver.BlobPrice.BlobAfterDivmod
import InitECandidate.Solver.MemSafe.Helpers.U256Mod
import InitECandidate.Solver.Band.Rules

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
namespace U256DivmodBound
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe.Helpers
variable {σ : Type}
private theorem ltCost : CalleeCost σ guestCtx (nm "u256_lt") 0 :=
  CompactCostReplay.accepted (by decide_cbv)
private theorem udCost : CalleeCost σ guestCtx (nm "udivmod") (2^64+2) :=
  CompactCostReplay.accepted (by decide_cbv)
private theorem writeDigits : CalleeCost σ guestCtx (nm "u256_to_digits") 0 :=
  CompactCostReplay.accepted (by decide_cbv)
private theorem readDigits : CalleeCost σ guestCtx (nm "digits_to_u256") 0 :=
  CompactCostReplay.accepted (by decide_cbv)

private abbrev measured :=
  max 0 0 + (1 + 0 + (max 0 0 + (max (1 + (2^64+2) + 0) 0 +
    ((1+0+0) + (1+1272825341085959061886+(1+0+0))))))

private theorem body : Cost σ guestCtx dmBody measured := by
  unfold dmBody
  refine cost_seq (cost_ite (cost_return _) cost_skip) (cost_decCall ltCost ?_)
  refine cost_seq (cost_ite (cost_return _) cost_skip) ?_
  refine cost_seq (cost_ite (cost_decCall udCost (cost_return _)) cost_skip) ?_
  apply Inv.cost_of_costP_true
  apply Inv.costP_dec
  rintro s _ _ v hv _
  obtain ⟨U,rfl⟩ := ev_op_word hv
  apply Inv.costP_seq (R := fun t => t.locals.lookup (nm "u")=some (.val (.word U)))
    (Inv.costP_of_cost (cost_call (Bh := 0) writeDigits (by intro _ _ _ _ h; cases h)))
  · refine hoare_callD (P := fun t => t = _)
      (Q := fun r t => r = none → t.locals.lookup (nm "u") = some (.val (.word U)))
      (funSpec_true _) ?_
    rintro t _ rfl _ _ _ _ _ _ _ _
    exact lk_set_self _ _ _
  · refine InitECandidate.Solver.Band.costP_decCall DigitsBound.callee ?_ (funSpec_true _) ?_
    · rintro t _ hu vs hv _
      obtain ⟨v,_,rfl,hv,h1⟩ := evs_cons_inv hv
      rw [ev_lw hu] at hv
      cases hv
      obtain ⟨n,_,rfl,hn,h2⟩ := evs_cons_inv h1
      rw [ev_cw _ 8] at hn
      cases hn
      obtain ⟨d,_,rfl,_,h3⟩ := evs_cons_inv h2
      rw [evs_nil] at h3
      cases h3
      exact ⟨U,d,rfl⟩
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost (cost_decCall readDigits (cost_return _))

theorem callee : CalleeCost σ guestCtx (nm "u256_divmod") 1291272085159668613509 := by
  intro vs actual store result lookup
  rw [guestCtx_code] at lookup
  obtain ⟨params,hCode⟩ := lookupCode_some lookup
  rw [code_u256_divmod] at hCode
  have hbody : actual = dmBody := (congrArg (fun row => row.2.1) (Option.some.inj hCode)).symm
  rw [hbody]
  exact body

theorem op_blobbasefee_cost : CalleeCost σ guestCtx (nm "op_blobbasefee")
    23819765684465692452858632921869671465798 :=
  BlobAfterDivmod.op_blobbasefee_cost callee

#print axioms op_blobbasefee_cost
end U256DivmodBound
