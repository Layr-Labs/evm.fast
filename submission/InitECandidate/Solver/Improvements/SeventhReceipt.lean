import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore
import InitECandidate.Solver.Improvements.AcceptedCostOverrideRules
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.Bridge

/-! Both loops in logs_bloom start at zero and test signed less-than. The
callee and its caller below use the guest declarations and the accepted
callee table. The outer counter survives calls and the inner loop. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace SeventhReceipt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

private def v (s : String) := lv (nm s)
private def readField (s : String) (i : Nat) : ExpHOL 64 :=
  .load .one (.op .add [v s, cw i])
private def increment (s : String) : ProgHOL 64 :=
  .assign .local (nm s) (.op .add [v s, cw 1])
private def invoke (s : String) (args : List (ExpHOL 64)) : ProgHOL 64 :=
  .call (some (none, none)) (nm s) args

private def inner : ProgHOL 64 :=
  .seq (invoke "add_to_bloom" [v "out",
    .op .add [readField "log" 8, .panop .mul [v "j", cw 32]], cw 32]) (increment "j")
private def outer : ProgHOL 64 :=
  .dec (nm "log") .one (.load .one (.op .add [v "p", .panop .mul [v "i", cw 8]]))
    (.seq (invoke "add_to_bloom" [v "out", readField "log" 0, cw 20])
      (.dec (nm "nt") .one (readField "log" 16)
        (.dec (nm "j") .one (cw 0)
          (.seq (.while (.cmp .less (v "j") (v "nt")) inner) (increment "i")))))
private def body : ProgHOL 64 :=
  .seq (invoke "memzero" [v "out", cw 256])
    (.dec (nm "n") .one (readField "logs" 8)
      (.dec (nm "p") .one (readField "logs" 0)
        (.dec (nm "i") .one (cw 0)
          (.seq (.while (.cmp .less (v "i") (v "n")) outer) (.return (cw 0))))))

private abbrev addPrice : Nat := 680564733841876927406364560779984764964
private abbrev zeroPrice : Nat := 73786976294838206468
private abbrev innerPrice : Nat := (1 + addPrice) + 0
private abbrev outerPrice : Nat := (1 + addPrice) + (2^63 * (innerPrice + 1) + 0)
abbrev bloomPrice : Nat := (1 + zeroPrice) + (2^63 * (outerPrice + 1) + 0)

private theorem invoke_cost {σ : Type} {X : Ctx 64} {s : String} {B : Nat}
    (h : CalleeCost σ X (nm s) B) (args : List (ExpHOL 64)) :
    Cost σ X (invoke s args) (1+B) :=
  cost_call (Bh := 0) h (by intro _ _ _ _ he; cases he)

private theorem body_cost {σ : Type} {X : Ctx 64}
    (ha : CalleeCost σ X (nm "add_to_bloom") addPrice)
    (hz : CalleeCost σ X (nm "memzero") zeroPrice) : Cost σ X body bloomPrice := by
  have hi : Cost σ X inner innerPrice := cost_seq (invoke_cost ha _) (cost_assign _ _ _)
  have ho : Cost σ X outer outerPrice := cost_dec (cost_seq (invoke_cost ha _) (cost_dec
    (AcceptedInitializedLoopCost.cost_initialized_seq hi (stepsB_sound _ true inner (by rfl))
      (cost_assign _ _ _))))
  exact cost_seq (invoke_cost hz _) (cost_dec (cost_dec
    (AcceptedInitializedLoopCost.cost_initialized_seq ho (stepsB_sound _ true outer (by rfl))
      (cost_return _))))

private theorem installed_bloom : guestCode (nm "logs_bloom") =
    some ([(nm "logs", .one), (nm "out", .one)], body, .one) := by
  have hm : Guest.Software.guestFn_logs_bloom ∈ Guest.Software.guestAst :=
    List.getElem_mem (l := Guest.Software.guestAst) (n := 832) (by decide +kernel)
  apply code_of_entry hm ⟨_, rfl⟩
  conv => lhs; cbv
  conv => rhs; cbv

theorem bloom_cost {σ : Type} : CalleeCost σ guestCtx (nm "logs_bloom") bloomPrice := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := AcceptedIvvhCalleeCore.lookupCode_some lookup
  rw [guestCtx_code, installed_bloom] at hc
  have hb : actual = body := (congrArg (fun e => e.2.1) (Option.some.inj hc)).symm
  rw [hb]
  exact body_cost (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
    (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))

private def receiptEntry := declPair Guest.Software.guestFn_encode_receipt
private def receiptState := replayStep (overrideCost Shards.finalState (nm "logs_bloom") bloomPrice) receiptEntry
abbrev price : Nat := 57896044618658097796526365932064144263088621147891817241101388362596625678466

theorem receipt_cost {σ : Type} : CalleeCost σ guestCtx (nm "encode_receipt") price := by
  have hm : Guest.Software.guestFn_encode_receipt ∈ Guest.Software.guestAst :=
    List.getElem_mem (l := Guest.Software.guestAst) (n := 836) (by decide +kernel)
  have hs : StateSound σ guestCtx receiptState :=
    replayStep_sound guestCtx_code guestCtx_bounded (declPair_valid hm ⟨_, rfl⟩)
      (overrideCost_sound Shards.finalState_sound_guest bloom_cost)
  exact calleeCost_of_tbl hs.1 (by decide_cbv)

#print axioms bloom_cost
#print axioms receipt_cost
end SeventhReceipt
