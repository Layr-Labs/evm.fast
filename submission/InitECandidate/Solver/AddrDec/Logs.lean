import InitECandidate.Solver.AddrDec.Rule
import InitECandidate.Solver.Improvements.ReceiptBloomCall
import InitECandidate.Solver.Improvements.AcceptedInitializedLoopCost
import InitECandidate.Solver.Improvements.AcceptedIvvhCalleeCore
import InitECandidate.Solver.Improvements.AcceptedCostOverrideRules
import InitECandidate.Solver.Spec.Mpt.Leaves.Common

/-!
# Receipt encoding: the log loops bounded by the memory domain

Both `logs_bloom` and `encode_logs` iterate `while i < n { var log = lds 1 (p + i * 8); ... }`.
The load is the first statement of each iteration, so `AddrDec.cost_while_ld` bounds both outer
loops by `2 ^ 35 + 9` iterations (the accepted proofs charged `2 ^ 63` and `2 ^ 64 + 1`). The
bloom proof otherwise follows `Improvements/SeventhReceipt.lean` (short-input `add_to_bloom`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.AddrDec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

/-! ## `encode_logs` -/

def elRest : ProgHOL 64 :=
  (ProgHOL.dec (nm "r") .one (ExpHOL.op .add [ExpHOL.var .local (nm "q"), (cw 9)]) (ProgHOL.decCall (nm "w") .one (nm "rlp_encode_bytes") [ExpHOL.var .local (nm "r"), ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "log"), (cw 0)]), (cw 20)] (ProgHOL.seq (ProgHOL.assign .local (nm "r") (ExpHOL.op .add [ExpHOL.var .local (nm "r"), ExpHOL.var .local (nm "w")])) (ProgHOL.dec (nm "tstart") .one (ExpHOL.var .local (nm "r")) (ProgHOL.dec (nm "t") .one (ExpHOL.op .add [ExpHOL.var .local (nm "r"), (cw 9)]) (ProgHOL.dec (nm "nt") .one (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "log"), (cw 16)])) (ProgHOL.dec (nm "j") .one ((cw 0)) (ProgHOL.seq (ProgHOL.while (ExpHOL.cmp .less (ExpHOL.var .local (nm "j")) (ExpHOL.var .local (nm "nt"))) (ProgHOL.seq (ProgHOL.call (some (some (.local, (nm "w")), none)) (nm "rlp_encode_bytes") [ExpHOL.var .local (nm "t"), ExpHOL.op .add [ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "log"), (cw 8)]), ExpHOL.panop .mul [ExpHOL.var .local (nm "j"), (cw 32)]], (cw 32)]) (ProgHOL.seq (ProgHOL.assign .local (nm "t") (ExpHOL.op .add [ExpHOL.var .local (nm "t"), ExpHOL.var .local (nm "w")])) (ProgHOL.assign .local (nm "j") (ExpHOL.op .add [ExpHOL.var .local (nm "j"), (cw 1)]))))) (ProgHOL.seq (ProgHOL.call (some (some (.local, (nm "w")), none)) (nm "rlp_finish_list") [ExpHOL.var .local (nm "tstart"), ExpHOL.var .local (nm "t")]) (ProgHOL.seq (ProgHOL.assign .local (nm "r") (ExpHOL.op .add [ExpHOL.var .local (nm "tstart"), ExpHOL.var .local (nm "w")])) (ProgHOL.seq (ProgHOL.call (some (some (.local, (nm "w")), none)) (nm "rlp_encode_bytes") [ExpHOL.var .local (nm "r"), ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "log"), (cw 24)]), ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "log"), (cw 32)])]) (ProgHOL.seq (ProgHOL.assign .local (nm "r") (ExpHOL.op .add [ExpHOL.var .local (nm "r"), ExpHOL.var .local (nm "w")])) (ProgHOL.seq (ProgHOL.call (some (some (.local, (nm "w")), none)) (nm "rlp_finish_list") [ExpHOL.var .local (nm "q"), ExpHOL.var .local (nm "r")]) (ProgHOL.seq (ProgHOL.assign .local (nm "q") (ExpHOL.op .add [ExpHOL.var .local (nm "q"), ExpHOL.var .local (nm "w")])) (ProgHOL.assign .local (nm "i") (ExpHOL.op .add [ExpHOL.var .local (nm "i"), (cw 1)]))))))))))))))))

def elBody : ProgHOL 64 :=
  ProgHOL.dec (nm "n") .one (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "logs"), (cw 8)])) (ProgHOL.dec (nm "p") .one (ExpHOL.load .one (ExpHOL.op .add [ExpHOL.var .local (nm "logs"), (cw 0)])) (ProgHOL.dec (nm "q") .one (ExpHOL.op .add [ExpHOL.var .local (nm "dst"), (cw 9)]) (ProgHOL.dec (nm "i") .one ((cw 0)) (ProgHOL.seq (ProgHOL.while (ExpHOL.cmp .less (ExpHOL.var .local (nm "i")) (ExpHOL.var .local (nm "n"))) (AddrDec.ldBody (nm "log") (nm "p") (nm "i") 8 elRest)) (ProgHOL.decCall (nm "total") .one (nm "rlp_finish_list") [ExpHOL.var .local (nm "dst"), ExpHOL.var .local (nm "q")] (ProgHOL.return (ExpHOL.var .local (nm "total"))))))))

theorem code_el : guestCode (nm "encode_logs") =
    some ([(nm "dst", .one), (nm "logs", .one)], elBody, .one) := by
  have h : fnEntry Guest.Software.guestFn_encode_logs =
      (nm "encode_logs", [(nm "dst", .one), (nm "logs", .one)], elBody, .one) := by
    conv => lhs; cbv
    conv => rhs; cbv
  exact code_of_entry
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 835) (by decide)) ⟨_, rfl⟩ h

variable {σ : Type}

abbrev elOuterPrice : Nat := 2041694201525630781591904383833829539906

theorem el_ld_cost : Cost σ guestCtx (ldBody (nm "log") (nm "p") (nm "i") 8 elRest) elOuterPrice :=
  MemSafe.Wg.cost_guest_costA (by decide_cbv)
theorem el_steps : stepsB (nm "i") true (ldBody (nm "log") (nm "p") (nm "i") 8 elRest) = true := by
  decide_cbv
theorem el_keeps : keepsB (nm "p") (ldBody (nm "log") (nm "p") (nm "i") 8 elRest) = true := by
  decide_cbv

abbrev elPrice : Nat := (2 ^ 35 + 9) * (elOuterPrice + 1) + (1 + 129127208515966861327 + 0)

theorem el_cost : CalleeCost σ guestCtx (nm "encode_logs") elPrice := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := InitECandidate.Solver.SourceCost.lookupCode_some lookup
  rw [guestCtx_code, code_el] at hc
  have body : actual = elBody := (congrArg (fun entry => entry.2.1) (Option.some.inj hc)).symm
  rw [body]
  unfold elBody
  exact cost_dec (cost_dec (cost_dec (cost_dec (cost_seq
    (cost_while_ld (by decide) (by decide) el_ld_cost el_steps el_keeps)
    (cost_decCall (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))
      (cost_return _))))))

#print axioms el_cost

/-! ## `logs_bloom` (as in `SeventhReceipt`, outer loop by the memory domain) -/

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
private def outerRest : ProgHOL 64 :=
  .seq (invoke "add_to_bloom" [v "out", readField "log" 0, cw 20])
    (.dec (nm "nt") .one (readField "log" 16)
      (.dec (nm "j") .one (cw 0)
        (.seq (.while (.cmp .less (v "j") (v "nt")) inner) (increment "i"))))
private def body : ProgHOL 64 :=
  .seq (invoke "memzero" [v "out", cw 256])
    (.dec (nm "n") .one (readField "logs" 8)
      (.dec (nm "p") .one (readField "logs" 0)
        (.dec (nm "i") .one (cw 0)
          (.seq (.while (.cmp .less (v "i") (v "n")) (ldBody (nm "log") (nm "p") (nm "i") 8 outerRest))
            (.return (cw 0))))))

private abbrev addPrice : Nat := ReceiptBloomCall.price
private abbrev zeroPrice : Nat := 73786976294838206468
private abbrev innerPrice : Nat := (1 + addPrice) + 0
private abbrev outerPrice : Nat := (1 + addPrice) + (2^63 * (innerPrice + 1) + 0)
abbrev bloomPrice2 : Nat := (1 + zeroPrice) + ((2 ^ 35 + 9) * (outerPrice + 1) + 0)

private theorem invoke_cost {X : Ctx 64} {s : String} {B : Nat}
    (h : CalleeCost σ X (nm s) B) (args : List (ExpHOL 64)) :
    Cost σ X (invoke s args) (1+B) :=
  cost_call (Bh := 0) h (by intro _ _ _ _ he; cases he)

private theorem invoke_short (entry : ExpHOL 64) (n : Nat) (hn : n ≤ 32) :
    Cost σ guestCtx (invoke "add_to_bloom" [v "out", entry, cw n]) (1 + addPrice) := by
  apply Inv.cost_of_costP_true
  refine Inv.costP_callD ReceiptBloomCall.callee_cost ?_
  intro s _ _ vs he _
  obtain ⟨a, b, c, rfl, _, _, hc⟩ :=
    InitECandidate.Solver.Spec.Mpt.Leaves.evs_three_inv' he
  rw [ev_cw] at hc
  cases hc
  refine ⟨BitVec.ofNat 64 n, rfl, ?_⟩
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  exact hn

private theorem body_cost (hz : CalleeCost σ guestCtx (nm "memzero") zeroPrice) :
    Cost σ guestCtx body bloomPrice2 := by
  have hi : Cost σ guestCtx inner innerPrice :=
    cost_seq (invoke_short _ 32 (by decide)) (cost_assign _ _ _)
  have ho : Cost σ guestCtx (ldBody (nm "log") (nm "p") (nm "i") 8 outerRest) outerPrice :=
    cost_dec (cost_seq (invoke_short _ 20 (by decide)) (cost_dec
      (AcceptedInitializedLoopCost.cost_initialized_seq hi (stepsB_sound _ true inner (by rfl))
        (cost_assign _ _ _))))
  exact cost_seq (invoke_cost hz _) (cost_dec (cost_dec (cost_dec (cost_seq
    (cost_while_ld (by decide) (by decide) ho (by rfl) (by rfl)) (cost_return _)))))

private theorem installed_bloom : guestCode (nm "logs_bloom") =
    some ([(nm "logs", .one), (nm "out", .one)], body, .one) := by
  have hm : Guest.Software.guestFn_logs_bloom ∈ Guest.Software.guestAst :=
    List.getElem_mem (l := Guest.Software.guestAst) (n := 832) (by decide +kernel)
  apply code_of_entry hm ⟨_, rfl⟩
  conv => lhs; cbv
  conv => rhs; cbv

theorem bloom_cost2 : CalleeCost σ guestCtx (nm "logs_bloom") bloomPrice2 := by
  intro vs actual callee rs lookup
  obtain ⟨ps, hc⟩ := AcceptedIvvhCalleeCore.lookupCode_some lookup
  rw [guestCtx_code, installed_bloom] at hc
  have hb : actual = body := (congrArg (fun e => e.2.1) (Option.some.inj hc)).symm
  rw [hb]
  exact body_cost (calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl))

#print axioms bloom_cost2

end InitECandidate.Solver.AddrDec
