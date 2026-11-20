import InitECandidate.Solver.Improvements.FourthEncoderTypedSuffix
import InitECandidate.Solver.MemSafe.BalCost.Phase2

/-! The actual phase-2 entry walk. The htab_keys return establishes both the
existing 24-byte account-key count budget and the Bbl4 fact list; neither is
assumed for arbitrary inputs. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthEncoderTypedPhase2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw InitECandidate.Solver.MemSafe.BalEnc
open InitECandidate.Solver.MemSafe.BalCost.Loop
open InitECandidate.Solver.MemSafe.BalCost.Suffix
open InitECandidate.Solver.MemSafe.BalCost.Phase2 (keysStep keysName keysB keys_cost alloc_cost6)
open FourthEncoderCallerBody FourthEncoderCallerRules
variable {σ : Type}

def phase2Bound (encoderB : Nat) : Nat :=
  1 + 6 + (1 + keysB + FourthEncoderTypedSuffix.afterKeysBound encoderB 10485759)

theorem keysStep_cost {a : AwE σ} (hK : AwOK a) (hc : CsE a)
    (hgw : a.gw = []) (hBA : Bal.BalNN a.s0 a.Γ0) {encoderB : Nat}
    (henc : Inv.CalleeCostP σ guestCtx (nm "bal_encode_account")
      (fun vs s => AwInv a s ∧ EncoderArgs a vs s) encoderB) :
    Inv.CostP σ guestCtx (APre a (Hs [wd cTmp])) keysStep
      (1 + keysB + FourthEncoderTypedSuffix.afterKeysBound encoderB 10485759) := by
  unfold keysStep
  refine InitECandidate.Solver.Band.costP_decCall
    (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) keys_cost)
    (by intros; trivial)
    (asp_htab_keysM hK hc (th := tHTd20) (M := 24)
      (by decide) (by decide) (by decide) (by decide)) ?_
  intro s hs hp vs hvs callee v st hR hctx hsh
  have hpre : ∃ T : BitVec 64, vs = [.val (.word T)] ∧ Fits a.Γ0 (.ptr tHTd20) T ∧
      (callEntryStateHOLFinite s callee).memaddrs = guestCtx.memaddrs := by
    obtain ⟨v1, rfl, e1⟩ := Mpt.Leaves.evs_one_inv hvs
    obtain ⟨T, rfl, hT⟩ := ba_fits hc hBA hp.1 hgw e1
    exact ⟨T, rfl, hT, hs.2.1⟩
  have hret := hR (awInv_entry hK hp.1 callee) hpre v rfl
  obtain ⟨O, N, rfl, hlo, hhi, hsz⟩ := hret.2
  have hN : N.toNat < 2 ^ 63 → N.toNat ≤ 10485759 := by
    intro hn
    have hb := (hsz hn).2
    have hbase := hK.hord.1
    change 2701131776 ≤ a.p0.hp at hbase
    change O.toNat + N.toNat * 24 + 8 ≤ 2952790016 at hb
    omega
  apply (FourthEncoderTypedSuffix.afterKeys_cost hK hc hgw hBA (by decide) hN henc).pre
  intro t ht heq
  subst t
  refine ⟨⟨awInv_same hK hret.1 rfl rfl rfl rfl, ?_⟩, ?_⟩
  · exact hs_cons ⟨O, N, lookup_update_self _ _ _, hlo, hhi, hsz⟩
      (hs_upd (by avb) hp.2)
  · simp [CountEq, countE, ev, evalHOLExact, setVarHOLFinite, FUPDATE]

theorem phase2_cost {a : AwE σ} (hK : AwOK a) (hc : CsE a)
    (hgw : a.gw = []) (hBA : Bal.BalNN a.s0 a.Γ0) {encoderB : Nat}
    (henc : Inv.CalleeCostP σ guestCtx (nm "bal_encode_account")
      (fun vs s => AwInv a s ∧ EncoderArgs a vs s) encoderB) :
    Inv.CostP σ guestCtx (AwInv a) phase2 (phase2Bound encoderB) := by
  have htyped : Inv.CostP σ guestCtx (APre a (Hs []))
      (.decCall cTmp .one allocName [cw 64] keysStep) (phase2Bound encoderB) := by
    unfold phase2Bound
    refine costP_decCallH hK (asp_alloc hK hX_code)
      (Inv.calleeCostP_of_calleeCost alloc_cost6) (fx := [wd cTmp])
      (fun f hf => absurd hf (by simp)) ?_ ?_ ?_
    · intro s hs hp vs hvs callee
      rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
      cases hvs
      exact ⟨_, rfl⟩
    · intro s vs v st hL hvs hRet hsh
      obtain ⟨n, q, p'', rfl, rfl, -⟩ := hRet
      exact hs_cons (bd_wd _ _ _) (hs_nil _)
    · exact keysStep_cost hK hc hgw hBA henc
  change Inv.CostP σ guestCtx (AwInv a)
    (.decCall cTmp .one allocName [cw 64] keysStep) (phase2Bound encoderB)
  exact htyped.pre (fun s _ hp => ⟨hp, hs_nil _⟩)

#print axioms keysStep_cost
#print axioms phase2_cost
end FourthEncoderTypedPhase2
