import InitECandidate.Solver.MemSafe.BlsSlotCost.ReadAnalyzer
import InitECandidate.Solver.MemSafe.BlsCost.HotSeed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.SourceCost.Shards
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Compact
variable {σ : Type}
theorem early_sound : StateSound σ guestCtx state4 := by
 have h0 : StateSound σ guestCtx state0 := stateSound_empty
 have h1 : StateSound σ guestCtx state1 := by
  rw [← chunk0_step]
  exact fold2_sound manualEntries_sound guestCtx_code guestCtx_bounded chunk0 chunk0_valid state0 h0
 have h2 : StateSound σ guestCtx state2 := by
  rw [← chunk1_step]
  exact fold2_sound manualEntries_sound guestCtx_code guestCtx_bounded chunk1 chunk1_valid state1 h1
 have h3 : StateSound σ guestCtx state3 := by
  rw [← chunk2_step]
  exact fold2_sound manualEntries_sound guestCtx_code guestCtx_bounded chunk2 chunk2_valid state2 h2
 rw [← chunk3_step]
 exact fold2_sound manualEntries_sound guestCtx_code guestCtx_bounded chunk3 chunk3_valid state3 h3
def table0 : MlS → Option Nat := fun _ => none
theorem table0_sound : TblSound σ guestCtx table0 := by intro f B h; cases h
def table1 := PairCost.Core.extend table0 (nm "heap_mark") 0
theorem table1_sound : TblSound σ guestCtx table1 := PairCost.Core.extend_sound table0_sound (calleeCost_of_tbl early_sound.1 (by rfl : state4.1.lookup (nm "heap_mark") = some 0))
def table2 := PairCost.Core.extend table1 (nm "alloc") 2
theorem table2_sound : TblSound σ guestCtx table2 := PairCost.Core.extend_sound table1_sound (calleeCost_of_tbl early_sound.1 (by rfl : state4.1.lookup (nm "alloc") = some 2))
def table3 := PairCost.Core.extend table2 (nm "heap_release") 0
theorem table3_sound : TblSound σ guestCtx table3 := PairCost.Core.extend_sound table2_sound (calleeCost_of_tbl early_sound.1 (by rfl : state4.1.lookup (nm "heap_release") = some 0))
def table4 := PairCost.Core.extend table3 (nm "u256_from_be") 18446744073709551621
theorem table4_sound : TblSound σ guestCtx table4 := PairCost.Core.extend_sound table3_sound (calleeCost_of_tbl early_sound.1 (by rfl : state4.1.lookup (nm "u256_from_be") = some 18446744073709551621))
def table5 := PairCost.Core.extend table4 (nm "bls_fp_decode64") BlsCost.Callees.b_bls_fp_decode64
theorem table5_sound : TblSound σ guestCtx table5 := PairCost.Core.extend_sound table4_sound BlsCost.Callees.cc_bls_fp_decode64
def table6 := PairCost.Core.extend table5 (nm "bls_fp_encode64") BlsCost.Callees.b_bls_fp_encode64
theorem table6_sound : TblSound σ guestCtx table6 := PairCost.Core.extend_sound table5_sound BlsCost.Callees.cc_bls_fp_encode64
def table7 := PairCost.Core.extend table6 (nm "g1_copy") BlsCost.Callees.b_g1_copy
theorem table7_sound : TblSound σ guestCtx table7 := PairCost.Core.extend_sound table6_sound BlsCost.Callees.cc_g1_copy
def table8 := PairCost.Core.extend table7 (nm "g1_add") BlsCost.Callees.b_g1_add
theorem table8_sound : TblSound σ guestCtx table8 := PairCost.Core.extend_sound table7_sound BlsCost.Callees.cc_g1_add
def table9 := PairCost.Core.extend table8 (nm "g1_decode") BlsCost.Callees.b_g1_decode
theorem table9_sound : TblSound σ guestCtx table9 := PairCost.Core.extend_sound table8_sound BlsCost.Callees.cc_g1_decode
def table10 := PairCost.Core.extend table9 (nm "g1_encode") BlsCost.Callees.b_g1_encode
theorem table10_sound : TblSound σ guestCtx table10 := PairCost.Core.extend_sound table9_sound BlsCost.Callees.cc_g1_encode
def table11 := PairCost.Core.extend table10 (nm "g1_mul") BlsCost.Callees.b_g1_mul
theorem table11_sound : TblSound σ guestCtx table11 := PairCost.Core.extend_sound table10_sound BlsCost.Callees.cc_g1_mul
def table12 := PairCost.Core.extend table11 (nm "g1_subgroup_check") BlsCost.Callees.b_g1_subgroup_check
theorem table12_sound : TblSound σ guestCtx table12 := PairCost.Core.extend_sound table11_sound BlsCost.Callees.cc_g1_subgroup_check
def table13 := PairCost.Core.extend table12 (nm "bls_g1_msm_exec") BlsCost.Callees.b_bls_g1_msm_exec
theorem table13_sound : TblSound σ guestCtx table13 := PairCost.Core.extend_sound table12_sound BlsCost.Callees.cc_bls_g1_msm_exec
def table14 := PairCost.Core.extend table13 (nm "fp2_copy") BlsCost.Callees.b_fp2_copy
theorem table14_sound : TblSound σ guestCtx table14 := PairCost.Core.extend_sound table13_sound BlsCost.Callees.cc_fp2_copy
def table15 := PairCost.Core.extend table14 (nm "g2_copy") BlsCost.Callees.b_g2_copy
theorem table15_sound : TblSound σ guestCtx table15 := PairCost.Core.extend_sound table14_sound BlsCost.Callees.cc_g2_copy
def table16 := PairCost.Core.extend table15 (nm "g2_double") BlsCost.Callees.b_g2_double
theorem table16_sound : TblSound σ guestCtx table16 := PairCost.Core.extend_sound table15_sound BlsCost.Callees.cc_g2_double
def table17 := PairCost.Core.extend table16 (nm "fp2_set_zero") BlsCost.Callees.b_fp2_set_zero
theorem table17_sound : TblSound σ guestCtx table17 := PairCost.Core.extend_sound table16_sound BlsCost.Callees.cc_fp2_set_zero
def table18 := PairCost.Core.extend table17 (nm "g2_set_inf") BlsCost.Callees.b_g2_set_inf
theorem table18_sound : TblSound σ guestCtx table18 := PairCost.Core.extend_sound table17_sound BlsCost.Callees.cc_g2_set_inf
def table19 := PairCost.Core.extend table18 (nm "g2_add") BlsCost.Callees.b_g2_add
theorem table19_sound : TblSound σ guestCtx table19 := PairCost.Core.extend_sound table18_sound BlsCost.Callees.cc_g2_add
def table20 := PairCost.Core.extend table19 (nm "g2_decode") BlsCost.Callees.b_g2_decode
theorem table20_sound : TblSound σ guestCtx table20 := PairCost.Core.extend_sound table19_sound BlsCost.Callees.cc_g2_decode
def table21 := PairCost.Core.extend table20 (nm "g2_normalize") BlsCost.Callees.b_g2_normalize
theorem table21_sound : TblSound σ guestCtx table21 := PairCost.Core.extend_sound table20_sound BlsCost.Callees.cc_g2_normalize
def table22 := PairCost.Core.extend table21 (nm "g2_encode") BlsCost.Callees.b_g2_encode
theorem table22_sound : TblSound σ guestCtx table22 := PairCost.Core.extend_sound table21_sound BlsCost.Callees.cc_g2_encode
def table23 := PairCost.Core.extend table22 (nm "g2_mul") BlsCost.Callees.b_g2_mul
theorem table23_sound : TblSound σ guestCtx table23 := PairCost.Core.extend_sound table22_sound BlsCost.Callees.cc_g2_mul
def table24 := PairCost.Core.extend table23 (nm "g2_subgroup_check") BlsCost.Callees.b_g2_subgroup_check
theorem table24_sound : TblSound σ guestCtx table24 := PairCost.Core.extend_sound table23_sound BlsCost.Callees.cc_g2_subgroup_check
def table25 := PairCost.Core.extend table24 (nm "bls_g2_msm_exec") BlsCost.Callees.b_bls_g2_msm_exec
theorem table25_sound : TblSound σ guestCtx table25 := PairCost.Core.extend_sound table24_sound BlsCost.Callees.cc_bls_g2_msm_exec
def table26 := PairCost.Core.extend table25 (nm "fp6_copy") BlsCost.Callees.b_fp6_copy
theorem table26_sound : TblSound σ guestCtx table26 := PairCost.Core.extend_sound table25_sound BlsCost.Callees.cc_fp6_copy
def table27 := PairCost.Core.extend table26 (nm "fp12_conj") BlsCost.Callees.b_fp12_conj
theorem table27_sound : TblSound σ guestCtx table27 := PairCost.Core.extend_sound table26_sound BlsCost.Callees.cc_fp12_conj
def table28 := PairCost.Core.extend table27 (nm "fp12_copy") BlsCost.Callees.b_fp12_copy
theorem table28_sound : TblSound σ guestCtx table28 := PairCost.Core.extend_sound table27_sound BlsCost.Callees.cc_fp12_copy
def table29 := PairCost.Core.extend table28 (nm "fp6_mul_v") BlsCost.Callees.b_fp6_mul_v
theorem table29_sound : TblSound σ guestCtx table29 := PairCost.Core.extend_sound table28_sound BlsCost.Callees.cc_fp6_mul_v
def table30 := PairCost.Core.extend table29 (nm "fp12_mul") BlsCost.Callees.b_fp12_mul
theorem table30_sound : TblSound σ guestCtx table30 := PairCost.Core.extend_sound table29_sound BlsCost.Callees.cc_fp12_mul
def table31 := PairCost.Core.extend table30 (nm "fp6_set_one") BlsCost.Callees.b_fp6_set_one
theorem table31_sound : TblSound σ guestCtx table31 := PairCost.Core.extend_sound table30_sound BlsCost.Callees.cc_fp6_set_one
def table32 := PairCost.Core.extend table31 (nm "fp6_set_zero") BlsCost.Callees.b_fp6_set_zero
theorem table32_sound : TblSound σ guestCtx table32 := PairCost.Core.extend_sound table31_sound BlsCost.Callees.cc_fp6_set_zero
def table33 := PairCost.Core.extend table32 (nm "fp12_set_one") BlsCost.Callees.b_fp12_set_one
theorem table33_sound : TblSound σ guestCtx table33 := PairCost.Core.extend_sound table32_sound BlsCost.Callees.cc_fp12_set_one
def table34 := PairCost.Core.extend table33 (nm "fp12_pow_absx") BlsCost.Callees.b_fp12_pow_absx
theorem table34_sound : TblSound σ guestCtx table34 := PairCost.Core.extend_sound table33_sound BlsCost.Callees.cc_fp12_pow_absx
def table35 := PairCost.Core.extend table34 (nm "fp12_exp_x") BlsCost.Callees.b_fp12_exp_x
theorem table35_sound : TblSound σ guestCtx table35 := PairCost.Core.extend_sound table34_sound BlsCost.Callees.cc_fp12_exp_x
def table36 := PairCost.Core.extend table35 (nm "fp12_inv") BlsCost.Callees.b_fp12_inv
theorem table36_sound : TblSound σ guestCtx table36 := PairCost.Core.extend_sound table35_sound BlsCost.Callees.cc_fp12_inv
def table37 := PairCost.Core.extend table36 (nm "fp12_final_exp") BlsCost.Callees.b_fp12_final_exp
theorem table37_sound : TblSound σ guestCtx table37 := PairCost.Core.extend_sound table36_sound BlsCost.Callees.cc_fp12_final_exp
def table38 := PairCost.Core.extend table37 (nm "fp12_is_one") BlsCost.Callees.b_fp12_is_one
theorem table38_sound : TblSound σ guestCtx table38 := PairCost.Core.extend_sound table37_sound BlsCost.Callees.cc_fp12_is_one
def table39 := PairCost.Core.extend table38 (nm "pair_addition_step") BlsCost.Callees.b_pair_addition_step
theorem table39_sound : TblSound σ guestCtx table39 := PairCost.Core.extend_sound table38_sound BlsCost.Callees.cc_pair_addition_step
def table40 := PairCost.Core.extend table39 (nm "pair_doubling_step") BlsCost.Callees.b_pair_doubling_step
theorem table40_sound : TblSound σ guestCtx table40 := PairCost.Core.extend_sound table39_sound BlsCost.Callees.cc_pair_doubling_step
def table41 := PairCost.Core.extend table40 (nm "pair_ell") BlsCost.Callees.b_pair_ell
theorem table41_sound : TblSound σ guestCtx table41 := PairCost.Core.extend_sound table40_sound BlsCost.Callees.cc_pair_ell
def table42 := PairCost.Core.extend table41 (nm "pair_miller_loop") BlsCost.Callees.b_pair_miller_loop
theorem table42_sound : TblSound σ guestCtx table42 := PairCost.Core.extend_sound table41_sound BlsCost.Callees.cc_pair_miller_loop
def table43 := PairCost.Core.extend table42 (nm "pair_accumulate") BlsCost.Callees.b_pair_accumulate
theorem table43_sound : TblSound σ guestCtx table43 := PairCost.Core.extend_sound table42_sound BlsCost.Callees.cc_pair_accumulate
def table44 := PairCost.Core.extend table43 (nm "bls_pairing_exec") BlsCost.Callees.b_bls_pairing_exec
theorem table44_sound : TblSound σ guestCtx table44 := PairCost.Core.extend_sound table43_sound BlsCost.Callees.cc_bls_pairing_exec
def table45 := PairCost.Core.extend table44 (nm "pre_bls_g1_msm") BlsCost.Callees.b_pre_bls_g1_msm
theorem table45_sound : TblSound σ guestCtx table45 := PairCost.Core.extend_sound table44_sound BlsCost.Callees.cc_pre_bls_g1_msm
def table46 := PairCost.Core.extend table45 (nm "pre_bls_g2_msm") BlsCost.Callees.b_pre_bls_g2_msm
theorem table46_sound : TblSound σ guestCtx table46 := PairCost.Core.extend_sound table45_sound BlsCost.Callees.cc_pre_bls_g2_msm
def table47 := PairCost.Core.extend table46 (nm "pre_bls_pairing") BlsCost.Callees.b_pre_bls_pairing
theorem table47_sound : TblSound σ guestCtx table47 := PairCost.Core.extend_sound table46_sound BlsCost.Callees.cc_pre_bls_pairing
def table48 := PairCost.Core.extend table47 (nm "memzero") RlpCost.Callers.b_memzero
theorem table48_sound : TblSound σ guestCtx table48 := PairCost.Core.extend_sound table47_sound RlpCost.Callers.cc_memzero
#print axioms table48_sound
end InitECandidate.Solver.MemSafe.BlsSlotCost.Compact
