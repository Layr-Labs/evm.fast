import InitECandidate.Solver.Improvements.ModexpDispatchPrice
import InitECandidate.Solver.Improvements.ScalarMsmPre
import InitECandidate.Solver.Band.Disp
import InitECandidate.Solver.Band.DispPrices
import InitECandidate.Solver.Improvements.BlsSmallPre
import InitECandidate.Solver.Improvements.CompactCostReplay
/-! The dispatch table and its proof come from the candidate’s Apache-2.0 BlsSmallRun.
The installed call-return branches all exit, so one handler suffices. -/
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactRun
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def small : TblState := ([(nm "pre_bls_pairing", 6227847879387016060956084849351552815980187), (nm "pre_p256verify", 88473415399444000525675650336946984076645), (nm "pre_bls_map_fp2_to_g2", 19055812547572554178187598976192335237084), (nm "pre_bls_map_fp_to_g1", 2722258935367507775277420401452239198203), (nm "pre_bls_g2_msm", 8383536673831161001729572938797334895666519), (nm "pre_bls_g2_add", 1328165573307093655706), (nm "pre_bls_g1_msm", 1402984198815029311481816106874731525862734), (nm "pre_bls_g1_add", 368934881474196966032), (nm "pre_kzg_point_evaluation", 106168098479332803139822539497052620471776), (nm "pre_blake2f", 442721857769029238823), (nm "pre_modexp", 45249388023678713117505701797846809686581367), (nm "pre_alt_bn128_pairing_check", 3716175409047466194237261840600056626244462776), (nm "pre_alt_bn128_mul", 76980163034229551135338469), (nm "pre_alt_bn128_add", 184836375618569709192268), (nm "pre_identity", 4), (nm "pre_ripemd160", 2041694201525630781518117407538991333426), (nm "pre_sha256", 221360928884514619422), (nm "pre_ecrecover", 10889035741470030839756211569492010517534)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "pre_ecrecover") (B := 10889035741470030839756211569492010517534) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "pre_sha256") (B := 221360928884514619422) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "pre_ripemd160") (B := 2041694201525630781518117407538991333426) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "pre_identity") (B := 4) (by decide_cbv))) (calleeCost_of_tbl (ThirdCombinedSmallCryptoTable.sound (σ := σ)).1 (by rw [InitECandidate.Solver.Band.DispPrices.state_prices]; decide_cbv) : CalleeCost σ guestCtx (nm "pre_alt_bn128_add") 184836375618569709192268)) (calleeCost_of_tbl (ThirdCombinedSmallCryptoTable.sound (σ := σ)).1 (by rw [InitECandidate.Solver.Band.DispPrices.state_prices]; decide_cbv) : CalleeCost σ guestCtx (nm "pre_alt_bn128_mul") 76980163034229551135338469)) (calleeCost_of_tbl (ThirdCombinedSmallCryptoTable.sound (σ := σ)).1 (by rw [InitECandidate.Solver.Band.DispPrices.state_prices]; decide_cbv) : CalleeCost σ guestCtx (nm "pre_alt_bn128_pairing_check") 3716175409047466194237261840600056626244462776)) ModexpDispatchPrice.cost) (CompactCostReplay.accepted (f := nm "pre_blake2f") (B := 442721857769029238823) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "pre_kzg_point_evaluation") (B := 106168098479332803139822539497052620471776) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "pre_bls_g1_add") (B := 368934881474196966032) (by decide_cbv))) G1MsmPre.pre_cost) (CompactCostReplay.accepted (f := nm "pre_bls_g2_add") (B := 1328165573307093655706) (by decide_cbv))) G2MsmPre.pre_cost) (CompactCostReplay.accepted (f := nm "pre_bls_map_fp_to_g1") (B := 2722258935367507775277420401452239198203) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "pre_bls_map_fp2_to_g2") (B := 19055812547572554178187598976192335237084) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "pre_p256verify") (B := 88473415399444000525675650336946984076645) (by decide_cbv))) BlsCompactPre.pre_cost)


open Flapjack.Pancake.PanLang (MlS ProgHOL)
open InitECandidate.Solver.Band

def handlerBound : Nat := 3716175409047466194237261840600056626244462776
private def names : List MlS := small.1.map Prod.fst
private def below (f : MlS) : Bool :=
  match small.1.lookup f with
  | some b => Nat.ble b handlerBound
  | none => false

private theorem prices : names.all below = true := by decide +kernel

private theorem handler {σ : Type} {f : MlS} (hf : f ∈ names) :
    CalleeCost σ guestCtx f handlerBound := by
  have h := List.all_eq_true.mp prices f hf
  unfold below at h
  split at h
  · rename_i b hb
    exact (calleeCost_of_tbl (small_sound (σ := σ)).1 hb).mono' (Nat.le_of_ble_eq_true h)
  · cases h

private abbrev installed := (declPair Guest.Software.guestFn_run_precompile).2.2

private theorem dispatch_shape : dchkB names installed = true := by decide +kernel

/-- The installed run_precompile body invokes at most one handler. -/
theorem run_cost {σ : Type} : CalleeCost σ guestCtx (nm "run_precompile")
    3716175409047466194237261840600056626244462777 := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨ret, hc⟩ := declPair_valid (d := Guest.Software.guestFn_run_precompile)
    (List.getElem_mem (l := Guest.Software.guestAst) (n := 830) (by decide)) ⟨_, rfl⟩
  have hn : (declPair Guest.Software.guestFn_run_precompile).1 = nm "run_precompile" := rfl
  rw [hn] at hc
  obtain rfl := lookupCode_body hc hl
  have allHandlers : ∀ f ∈ names, Inv.CalleeCostP σ guestCtx f (fun _ _ => True) handlerBound :=
    fun _ hf => Inv.calleeCostP_of_calleeCost (handler hf)
  have hstep := dcost_one (P := fun _ => True) allHandlers (fun _ _ _ _ => True.intro) installed dispatch_shape
  intro s hs hg
  exact ⟨hstep s hs trivial hg, inCtx_eval hs _⟩

#print axioms run_cost
end BlsCompactRun
