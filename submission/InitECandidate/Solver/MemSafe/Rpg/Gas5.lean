import InitECandidate.Solver.MemSafe.Rpg.Gas4

/-!
# rpG: the 17 chain-checked `pre_*` bodies

For each `pre_X` other than `pre_modexp`: `sk gE` accepts the body (`decide +kernel` after
normalising the body and the environment), so `GasFS` holds (`gasfs_of_sk`).
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rpg
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

theorem sk_sha256 : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_sha256).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_sha256 : PairValid (declPair Guest.Software.guestFn_pre_sha256) :=
  declPair_valid (List.getElem_mem (n := 824) (by decide)) ⟨_, rfl⟩

theorem gas_sha256 (En : RpEnv σ X H) : GasFS σ X H (nm "pre_sha256") :=
  gasfs_of_sk En valid_sha256 sk_sha256

theorem sk_ecrecover : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_ecrecover).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_ecrecover : PairValid (declPair Guest.Software.guestFn_pre_ecrecover) :=
  declPair_valid (List.getElem_mem (n := 825) (by decide)) ⟨_, rfl⟩

theorem gas_ecrecover (En : RpEnv σ X H) : GasFS σ X H (nm "pre_ecrecover") :=
  gasfs_of_sk En valid_ecrecover sk_ecrecover

theorem sk_ripemd160 : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_ripemd160).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_ripemd160 : PairValid (declPair Guest.Software.guestFn_pre_ripemd160) :=
  declPair_valid (List.getElem_mem (n := 826) (by decide)) ⟨_, rfl⟩

theorem gas_ripemd160 (En : RpEnv σ X H) : GasFS σ X H (nm "pre_ripemd160") :=
  gasfs_of_sk En valid_ripemd160 sk_ripemd160

theorem sk_blake2f : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_blake2f).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_blake2f : PairValid (declPair Guest.Software.guestFn_pre_blake2f) :=
  declPair_valid (List.getElem_mem (n := 827) (by decide)) ⟨_, rfl⟩

theorem gas_blake2f (En : RpEnv σ X H) : GasFS σ X H (nm "pre_blake2f") :=
  gasfs_of_sk En valid_blake2f sk_blake2f

theorem sk_bn_add : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_alt_bn128_add).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_bn_add : PairValid (declPair Guest.Software.guestFn_pre_alt_bn128_add) :=
  declPair_valid (List.getElem_mem (n := 692) (by decide)) ⟨_, rfl⟩

theorem gas_bn_add (En : RpEnv σ X H) : GasFS σ X H (nm "pre_alt_bn128_add") :=
  gasfs_of_sk En valid_bn_add sk_bn_add

theorem sk_bn_mul : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_alt_bn128_mul).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_bn_mul : PairValid (declPair Guest.Software.guestFn_pre_alt_bn128_mul) :=
  declPair_valid (List.getElem_mem (n := 693) (by decide)) ⟨_, rfl⟩

theorem gas_bn_mul (En : RpEnv σ X H) : GasFS σ X H (nm "pre_alt_bn128_mul") :=
  gasfs_of_sk En valid_bn_mul sk_bn_mul

theorem sk_bn_pair : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_bn_pair : PairValid (declPair Guest.Software.guestFn_pre_alt_bn128_pairing_check) :=
  declPair_valid (List.getElem_mem (n := 694) (by decide)) ⟨_, rfl⟩

theorem gas_bn_pair (En : RpEnv σ X H) : GasFS σ X H (nm "pre_alt_bn128_pairing_check") :=
  gasfs_of_sk En valid_bn_pair sk_bn_pair

theorem sk_kzg : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_kzg_point_evaluation).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_kzg : PairValid (declPair Guest.Software.guestFn_pre_kzg_point_evaluation) :=
  declPair_valid (List.getElem_mem (n := 821) (by decide)) ⟨_, rfl⟩

theorem gas_kzg (En : RpEnv σ X H) : GasFS σ X H (nm "pre_kzg_point_evaluation") :=
  gasfs_of_sk En valid_kzg sk_kzg

theorem sk_g1add : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_bls_g1_add).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_g1add : PairValid (declPair Guest.Software.guestFn_pre_bls_g1_add) :=
  declPair_valid (List.getElem_mem (n := 814) (by decide)) ⟨_, rfl⟩

theorem gas_g1add (En : RpEnv σ X H) : GasFS σ X H (nm "pre_bls_g1_add") :=
  gasfs_of_sk En valid_g1add sk_g1add

theorem sk_g1msm : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_bls_g1_msm).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_g1msm : PairValid (declPair Guest.Software.guestFn_pre_bls_g1_msm) :=
  declPair_valid (List.getElem_mem (n := 815) (by decide)) ⟨_, rfl⟩

theorem gas_g1msm (En : RpEnv σ X H) : GasFS σ X H (nm "pre_bls_g1_msm") :=
  gasfs_of_sk En valid_g1msm sk_g1msm

theorem sk_g2add : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_bls_g2_add).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_g2add : PairValid (declPair Guest.Software.guestFn_pre_bls_g2_add) :=
  declPair_valid (List.getElem_mem (n := 816) (by decide)) ⟨_, rfl⟩

theorem gas_g2add (En : RpEnv σ X H) : GasFS σ X H (nm "pre_bls_g2_add") :=
  gasfs_of_sk En valid_g2add sk_g2add

theorem sk_g2msm : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_bls_g2_msm).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_g2msm : PairValid (declPair Guest.Software.guestFn_pre_bls_g2_msm) :=
  declPair_valid (List.getElem_mem (n := 817) (by decide)) ⟨_, rfl⟩

theorem gas_g2msm (En : RpEnv σ X H) : GasFS σ X H (nm "pre_bls_g2_msm") :=
  gasfs_of_sk En valid_g2msm sk_g2msm

theorem sk_bpairing : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_bls_pairing).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_bpairing : PairValid (declPair Guest.Software.guestFn_pre_bls_pairing) :=
  declPair_valid (List.getElem_mem (n := 818) (by decide)) ⟨_, rfl⟩

theorem gas_bpairing (En : RpEnv σ X H) : GasFS σ X H (nm "pre_bls_pairing") :=
  gasfs_of_sk En valid_bpairing sk_bpairing

theorem sk_mapg1 : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_bls_map_fp_to_g1).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_mapg1 : PairValid (declPair Guest.Software.guestFn_pre_bls_map_fp_to_g1) :=
  declPair_valid (List.getElem_mem (n := 819) (by decide)) ⟨_, rfl⟩

theorem gas_mapg1 (En : RpEnv σ X H) : GasFS σ X H (nm "pre_bls_map_fp_to_g1") :=
  gasfs_of_sk En valid_mapg1 sk_mapg1

theorem sk_mapg2 : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_bls_map_fp2_to_g2).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_mapg2 : PairValid (declPair Guest.Software.guestFn_pre_bls_map_fp2_to_g2) :=
  declPair_valid (List.getElem_mem (n := 820) (by decide)) ⟨_, rfl⟩

theorem gas_mapg2 (En : RpEnv σ X H) : GasFS σ X H (nm "pre_bls_map_fp2_to_g2") :=
  gasfs_of_sk En valid_mapg2 sk_mapg2

theorem sk_p256 : sk gE ⟨[], []⟩ (declPair Guest.Software.guestFn_pre_p256verify).2.2 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem valid_p256 : PairValid (declPair Guest.Software.guestFn_pre_p256verify) :=
  declPair_valid (List.getElem_mem (n := 645) (by decide)) ⟨_, rfl⟩

theorem gas_p256 (En : RpEnv σ X H) : GasFS σ X H (nm "pre_p256verify") :=
  gasfs_of_sk En valid_p256 sk_p256

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_sha256
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_ecrecover
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_ripemd160
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_blake2f
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_bn_add
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_bn_mul
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_bn_pair
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_kzg
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_g1add
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_g1msm
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_g2add
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_g2msm
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_bpairing
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_mapg1
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_mapg2
#print axioms InitECandidate.Solver.MemSafe.Rpg.gas_p256
