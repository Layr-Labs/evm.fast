import InitECandidate.Solver.MemSafe.Rpg.Gas5
import InitECandidate.Solver.MemSafe.Rpg.Gas6
import InitECandidate.Solver.MemSafe.Rpg.GasId

/-!
# rpG: assembly

* `rk_rp`: `rk preNames` accepts `run_precompile`'s body.
* `rpG_of_gen`: `run_precompile`'s `RpGas`-shaped spec from the `GasFS` facts of the 18 `pre_*`.
* `rpEnv_guestJL`: the standing hypotheses at the challenge context.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rpg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

/-- The 18 callees of `run_precompile`. -/
def preNames : List MlS :=
  [nm "pre_ecrecover", nm "pre_sha256", nm "pre_ripemd160", nm "pre_identity", nm "pre_alt_bn128_add",
   nm "pre_alt_bn128_mul", nm "pre_alt_bn128_pairing_check", nm "pre_modexp", nm "pre_blake2f",
   nm "pre_kzg_point_evaluation", nm "pre_bls_g1_add", nm "pre_bls_g1_msm", nm "pre_bls_g2_add",
   nm "pre_bls_g2_msm", nm "pre_bls_pairing", nm "pre_bls_map_fp_to_g1", nm "pre_bls_map_fp2_to_g2",
   nm "pre_p256verify"]

theorem rk_rp : rk preNames (declPair Guest.Software.guestFn_run_precompile).2.2 = true := by
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_rp : PairValid (declPair Guest.Software.guestFn_run_precompile) :=
  declPair_valid (List.getElem_mem (n := 830) (by decide)) ⟨_, rfl⟩

/-- **`run_precompile` does not raise `GAS_LEFT`**, from the `GasFS` facts of its callees. -/
theorem rpG_of_gen (En : RpEnv σ X H) (hPM : GasFS σ X H (nm "pre_modexp")) :
    FunSpec σ X (nm "run_precompile") (fun vs s r t => Good (some r) → ¬ Abortive r →
      ∀ Γ, G guestC H Γ s → Frames.RpPre vs s Γ →
        ∀ e, gword s Frames.nmEv = some e →
          (Frames.fld t.memory e 64).toNat ≤ (Frames.fld s.memory e 64).toNat) := by
  have hgs : ∀ f ∈ preNames, GasFSI σ X H f := by
    intro f hf
    simp only [preNames, List.mem_cons, List.not_mem_nil, or_false] at hf
    rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
      rfl | rfl | rfl | rfl | rfl
    · exact (gas_ecrecover En).toI
    · exact (gas_sha256 En).toI
    · exact (gas_ripemd160 En).toI
    · exact gas_identity En
    · exact (gas_bn_add En).toI
    · exact (gas_bn_mul En).toI
    · exact (gas_bn_pair En).toI
    · exact hPM.toI
    · exact (gas_blake2f En).toI
    · exact (gas_kzg En).toI
    · exact (gas_g1add En).toI
    · exact (gas_g1msm En).toI
    · exact (gas_g2add En).toI
    · exact (gas_g2msm En).toI
    · exact (gas_bpairing En).toI
    · exact (gas_mapg1 En).toI
    · exact (gas_mapg2 En).toI
    · exact (gas_p256 En).toI
  intro vs body callee rs hl s hs hloc r hr hgood hna Γ hG hpre e hge
  rw [En.hX] at hl
  obtain ⟨rs0, hcode⟩ := valid_rp
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen hcode hl
  have hpre' := hpre
  obtain ⟨⟨eo, ⟨he, het, heb⟩, -⟩, -⟩ := hpre'
  have hreq : ReqOK Pre.evCaps s Γ := by
    intro c hc' _
    simp only [Pre.evCaps, List.mem_singleton] at hc'
    subst hc'
    exact ⟨eo, he, het, heb⟩
  have hid : Pre.IdPre s Γ := by
    obtain ⟨⟨e', ⟨he', het', heb'⟩, M, hM⟩, -⟩ := hpre
    exact ⟨e', he', het', heb', M, hM.1, hM.2.2.1, by rw [hM.2.1]; rfl⟩
  have H0 := rk_sound En hgs _ rk_rp s Γ e hG hreq hid hge s hs rfl (by rw [hr]; exact hgood)
  exact H0 r hr hna

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.rk_rp
#print axioms InitECandidate.Solver.MemSafe.Rpg.rpG_of_gen
