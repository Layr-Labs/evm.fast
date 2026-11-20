import InitECandidate.Solver.MemSafe.BalEnc.Bbl4
import InitECandidate.Solver.Improvements.FourthEncoderCallerRules
import InitECandidate.Solver.MemSafe.BalCost.Loop

/-!
The actual `encBody` clock walk using the accepted Bbl4 call precondition.
The bounded encoder is required only from its real above-writer/typed argument
precondition; the old all-state encoder cost is not replaced globally.
-/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace FourthEncoderCallerBody
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw InitECandidate.Solver.MemSafe.BalEnc
open InitECandidate.Solver.MemSafe.BalCost.Loop

variable {σ : Type}

def EncoderArgs (a : AwE σ) (vs : List (ValueHOL 64)) (_ : State σ) : Prop :=
  ∃ dst addr ad tmp : BitVec 64,
    vs = [.val (.word dst), .val (.word addr), .val (.word ad), .val (.word tmp)] ∧
      Fits a.Γ0 (.nptr tAD) ad ∧ a.h0 ≤ dst.toNat ∧ dst.toNat + 16 ≤ 2 ^ 60

def getB : Nat := 92233720368547758087

theorem get_cost : CalleeCost σ guestCtx (nm "htab_get") getB :=
  (AcceptedBalEncodeCallee.accepted_callees (σ := σ)).htab_get

def encBodyBound (B : Nat) : Nat := 1 + getB + (1 + B + 0)

theorem encBody_cost {a : AwE σ} (hK : AwOK a) (hc : CsE a)
    (hgw : a.gw = []) (hBA : Bal.BalNN a.s0 a.Γ0) {B : Nat}
    (henc : Inv.CalleeCostP σ guestCtx (nm "bal_encode_account")
      (fun vs s => AwInv a s ∧ EncoderArgs a vs s) B) :
    Inv.CostP σ guestCtx (APre a (Hs (fC a.p0.hp a.h0))) encBody
      (encBodyBound B) := by
  have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
  have hdt : domTop = 2 ^ 40 := rfl
  change Inv.CostP σ guestCtx (APre a (Hs (fC a.p0.hp a.h0)))
    (.decCall cM2 (.comb [.one, .one]) (nm "htab_get") [gE "bal_accounts", keyE]
      (.decCall cW .one (nm "bal_encode_account") [lv cP, keyE, .rfield 1 (lv cM2), lv cTmp]
        (.seq (.assign .local cP (.op .add [lv cP, lv cW]))
          (.assign .local cI (.op .add [lv cI, cw 1])))))
    (1 + getB + (1 + B + 0))
  refine FourthEncoderCallerRules.costP_decCallH hK
    (asp_htab_getT hK hc (th := tHTd20) (by decide))
    (Inv.calleeCostP_of_calleeCost get_cost) (fx := [mFact a.Γ0]) (by avc2)
    ?_ ?_ ?_
  · intro s hs hP vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨T, rfl, hT⟩ := ba_fits hc hBA hP.1 hgw e1
    obtain ⟨K, rfl⟩ := InitECandidate.Solver.Spec.ev_op_word e2
    exact ⟨T, K, rfl, hT⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨A, D, rfl⟩ := rstruct_of_shape' hsh
    have hv : valK tHTd20 = FK.ptr tAD := by decide
    exact hs_cons ⟨A, D, lookup_update_self _ _ _, fun hA => by
      have h := (hRet A D rfl).1 hA
      rwa [hv] at h, (hRet A D rfl).2⟩ (hs_nil _)
  · refine InitECandidate.Solver.Band.costP_decCall henc ?_ (funSpec_true _) ?_
    · intro s hs hP vs hvs callee
      refine ⟨awInv_entry hK hP.1 callee, ?_⟩
      obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
      obtain ⟨P0, hP0, h1, h2⟩ := hP.2 (Fct.bd cP a.h0 B0) (by simp [fC])
      obtain ⟨A, D, hm2, hA⟩ := hP.2 (mFact a.Γ0) (by simp)
      obtain ⟨Tm, hTm, -, -⟩ := hP.2 (wd cTmp) (by simp [fC, fB, f2Facts])
      rw [ev_lw hP0] at e1
      obtain ⟨K, rfl⟩ := InitECandidate.Solver.Spec.ev_op_word e2
      rw [ev_rfield (Struct.ev_lw' hm2) 1] at e3
      simp only [List.getElem?_cons_succ, List.getElem?_cons_zero] at e3
      rw [ev_lw hTm] at e4
      cases e1
      cases e3
      cases e4
      refine ⟨P0, K, D, Tm, rfl, ?_, h1, by omega⟩
      by_cases hA0 : A = 0
      · exact Or.inl (by rw [hA.2 hA0]; simp [nullMax])
      · obtain ⟨o, ho, hb, ht⟩ := hA.1 hA0
        exact Or.inr ⟨o, ho, hb, ht⟩
    · intro s hs hP vs hvs callee v st hR hctx hsh
      exact Inv.costP_of_cost (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))

#print axioms encBody_cost
end FourthEncoderCallerBody
