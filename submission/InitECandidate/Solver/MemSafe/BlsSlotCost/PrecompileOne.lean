import InitECandidate.Solver.MemSafe.CryptoCost.Dispatch.One
import InitECandidate.Solver.MemSafe.Entry
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.PrecompileOne
variable {σ : Type}
def handlers : List MlS := [nm "pre_ecrecover", nm "pre_sha256", nm "pre_ripemd160", nm "pre_identity", nm "pre_alt_bn128_add", nm "pre_alt_bn128_mul", nm "pre_alt_bn128_pairing_check", nm "pre_modexp", nm "pre_blake2f", nm "pre_kzg_point_evaluation", nm "pre_bls_g1_add", nm "pre_bls_g1_msm", nm "pre_bls_g2_add", nm "pre_bls_g2_msm", nm "pre_bls_pairing", nm "pre_bls_map_fp_to_g1", nm "pre_bls_map_fp2_to_g2", nm "pre_p256verify"]
def body : ProgHOL 64 := (declPair Guest.Software.guestFn_run_precompile).2.2
def below (tbl : MlS → Option Nat) (B : Nat) : Bool := handlers.all (fun f =>
 match tbl f with | some b => decide (b ≤ B) | none => false)
theorem bounded_handlers {tbl : MlS → Option Nat} {B : Nat} (ht : TblSound σ guestCtx tbl)
 (h : below tbl B = true) : ∀ f ∈ handlers, CalleeCost σ guestCtx f B := by
 intro f hf
 have hb := List.all_eq_true.mp h f hf
 cases hl : tbl f with
 | none => simp [hl] at hb
 | some b =>
  have hb' : b ≤ B := of_decide_eq_true (by simpa [hl] using hb)
  intro vs bd cl rs hc
  exact (ht f b hl vs bd cl rs hc).mono hb'
theorem body_cost {B : Nat} (hf : ∀ f ∈ handlers, CalleeCost σ guestCtx f B) :
 Cost σ guestCtx body (1+B) := by
 apply Inv.cost_of_costP_true
 exact CryptoCost.Dispatch.One.dcost_one
  (Pf := fun _ _ => True)
  (fun f h => Inv.calleeCostP_of_calleeCost (hf f h))
  (fun _ _ _ _ => trivial) body (by cbv)
theorem callee {tbl : MlS → Option Nat} {B : Nat} (ht : TblSound σ guestCtx tbl)
 (h : below tbl B = true) : CalleeCost σ guestCtx (nm "run_precompile") (1+B) := by
 have hc : ∃ rs, guestCode (nm "run_precompile") = some ((declPair Guest.Software.guestFn_run_precompile).2.1,body,rs) :=
  declPair_valid (List.getElem_mem (n := 830) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 intro vs bd cl rs' hl
 rw [guestCtx_code] at hl
 obtain ⟨rfl,-⟩ := lookupCode_gen hc hl
 exact body_cost (bounded_handlers ht h)
#print axioms callee
end InitECandidate.Solver.MemSafe.BlsSlotCost.PrecompileOne
