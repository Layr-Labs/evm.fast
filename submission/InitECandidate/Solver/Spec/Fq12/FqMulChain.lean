import InitECandidate.Solver.Spec.Fq12.MontCol
import InitECandidate.Solver.Spec.Fq12.MontAsm
import Mathlib.Tactic.LinearCombination

/-!
# The 15 columns of `fq_mul`, composed

`mont_assemble`: the column identities sum to the Montgomery identity
`a · b + m · p = 2²⁵⁶ · t` (digits of 32 bits).
`fqMul_chain`: running the whole chain of column blocks (`fqMulChain`) from an
environment with zero accumulators and 32-bit digits `a₀..a₇`, `b₀..b₇` produces
32-bit digits `u₀..u₆`, `m₀..m₇`, a carry `c < 2³⁷`, and the Montgomery identity.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000
set_option linter.unusedSimpArgs false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

attribute [local irreducible] runL in
theorem fqMul_chain (senv : SEnv) (env1 : Env) (hL : env1 (nm "L") = 0)
    (hH : env1 (nm "H") = 0) (hc : env1 (nm "c") = 0)
    (ha0 : (env1 (nm "a0")).toNat < 2 ^ 32) (ha1 : (env1 (nm "a1")).toNat < 2 ^ 32) (ha2 : (env1 (nm "a2")).toNat < 2 ^ 32) (ha3 : (env1 (nm "a3")).toNat < 2 ^ 32) (ha4 : (env1 (nm "a4")).toNat < 2 ^ 32) (ha5 : (env1 (nm "a5")).toNat < 2 ^ 32) (ha6 : (env1 (nm "a6")).toNat < 2 ^ 32) (ha7 : (env1 (nm "a7")).toNat < 2 ^ 32) (hb0 : (env1 (nm "b0")).toNat < 2 ^ 32) (hb1 : (env1 (nm "b1")).toNat < 2 ^ 32) (hb2 : (env1 (nm "b2")).toNat < 2 ^ 32) (hb3 : (env1 (nm "b3")).toNat < 2 ^ 32) (hb4 : (env1 (nm "b4")).toNat < 2 ^ 32) (hb5 : (env1 (nm "b5")).toNat < 2 ^ 32) (hb6 : (env1 (nm "b6")).toNat < 2 ^ 32) (hb7 : (env1 (nm "b7")).toNat < 2 ^ 32) :
    ((runL senv env1 fqMulChain) (nm "u0")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "u1")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "u2")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "u3")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "u4")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "u5")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "u6")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "m0")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "m1")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "m2")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "m3")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "m4")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "m5")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "m6")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "m7")).toNat < 2 ^ 32 ∧
      ((runL senv env1 fqMulChain) (nm "c")).toNat < 2 ^ 37 ∧
      ((env1 (nm "a0")).toNat + 4294967296 * ((env1 (nm "a1")).toNat + 4294967296 * ((env1 (nm "a2")).toNat + 4294967296 * ((env1 (nm "a3")).toNat + 4294967296 * ((env1 (nm "a4")).toNat + 4294967296 * ((env1 (nm "a5")).toNat + 4294967296 * ((env1 (nm "a6")).toNat + 4294967296 * ((env1 (nm "a7")).toNat)))))))) * ((env1 (nm "b0")).toNat + 4294967296 * ((env1 (nm "b1")).toNat + 4294967296 * ((env1 (nm "b2")).toNat + 4294967296 * ((env1 (nm "b3")).toNat + 4294967296 * ((env1 (nm "b4")).toNat + 4294967296 * ((env1 (nm "b5")).toNat + 4294967296 * ((env1 (nm "b6")).toNat + 4294967296 * ((env1 (nm "b7")).toNat)))))))) +
        (((runL senv env1 fqMulChain) (nm "m0")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "m1")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "m2")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "m3")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "m4")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "m5")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "m6")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "m7")).toNat)))))))) * fqP =
      115792089237316195423570985008687907853269984665640564039457584007913129639936 * (((runL senv env1 fqMulChain) (nm "u0")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "u1")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "u2")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "u3")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "u4")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "u5")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "u6")).toNat + 4294967296 * (((runL senv env1 fqMulChain) (nm "c")).toNat)))))))) := by
  rw [show runL senv env1 fqMulChain = runL senv (runL senv (runL senv (runL senv (runL senv (runL senv (runL senv (runL senv (runL senv (runL senv (runL senv (runL senv (runL senv (runL senv (runL senv (env1) fqMulBlk0) fqMulBlk1) fqMulBlk2) fqMulBlk3) fqMulBlk4) fqMulBlk5) fqMulBlk6) fqMulBlk7) fqMulBlk8) fqMulBlk9) fqMulBlk10) fqMulBlk11) fqMulBlk12) fqMulBlk13) fqMulBlk14 by simp only [fqMulChain, runL_append]]
  have cb0 : (env1 (nm "c")).toNat < 2 ^ 37 := by rw [hc]; decide
  -- block 0
  have hf0 : ∀ p ∈ fqMulPairs0, isFactor (scrM (nm "m0")) p.1 = true ∧
      isFactor (scrM (nm "m0")) p.2 = true ∧
      (evW env1 senv p.1).toNat < 2 ^ 32 ∧ (evW env1 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs0]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨by decide, by decide, ha0, hb0⟩
  obtain ⟨L1, H1, db0, cb1, id0, pr0⟩ := blockM_spec senv (nm "m0") (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs0 env1 hf0 (by decide) hL hH cb0
  rw [← show fqMulBlk0 = macList fqMulPairs0 ++ colEndM (nm "m0") from rfl] at L1 H1 db0 cb1 id0 pr0
  rw [fqMulPairs0] at id0
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, add_zero_p] at id0
  generalize runL senv env1 fqMulBlk0 = e1 at L1 H1 db0 cb1 id0 pr0 ⊢
  have eA1_a0 : e1 (nm "a0") = env1 (nm "a0") := pr0 _ (by decide)
  have eA1_a1 : e1 (nm "a1") = env1 (nm "a1") := pr0 _ (by decide)
  have eA1_a2 : e1 (nm "a2") = env1 (nm "a2") := pr0 _ (by decide)
  have eA1_a3 : e1 (nm "a3") = env1 (nm "a3") := pr0 _ (by decide)
  have eA1_a4 : e1 (nm "a4") = env1 (nm "a4") := pr0 _ (by decide)
  have eA1_a5 : e1 (nm "a5") = env1 (nm "a5") := pr0 _ (by decide)
  have eA1_a6 : e1 (nm "a6") = env1 (nm "a6") := pr0 _ (by decide)
  have eA1_a7 : e1 (nm "a7") = env1 (nm "a7") := pr0 _ (by decide)
  have eA1_b0 : e1 (nm "b0") = env1 (nm "b0") := pr0 _ (by decide)
  have eA1_b1 : e1 (nm "b1") = env1 (nm "b1") := pr0 _ (by decide)
  have eA1_b2 : e1 (nm "b2") = env1 (nm "b2") := pr0 _ (by decide)
  have eA1_b3 : e1 (nm "b3") = env1 (nm "b3") := pr0 _ (by decide)
  have eA1_b4 : e1 (nm "b4") = env1 (nm "b4") := pr0 _ (by decide)
  have eA1_b5 : e1 (nm "b5") = env1 (nm "b5") := pr0 _ (by decide)
  have eA1_b6 : e1 (nm "b6") = env1 (nm "b6") := pr0 _ (by decide)
  have eA1_b7 : e1 (nm "b7") = env1 (nm "b7") := pr0 _ (by decide)
  have mb0 := db0
  -- block 1
  have hf1 : ∀ p ∈ fqMulPairs1, isFactor (scrM (nm "m1")) p.1 = true ∧
      isFactor (scrM (nm "m1")) p.2 = true ∧
      (evW e1 senv p.1).toNat < 2 ^ 32 ∧ (evW e1 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs1]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA1_a0]; exact ha0, by rw [eA1_b1]; exact hb1⟩, ⟨by decide, by decide, by rw [eA1_a1]; exact ha1, by rw [eA1_b0]; exact hb0⟩, ⟨by decide, by decide, mb0, by rw [toNat_cw_p _ _ 1008765974 (by decide)]; decide⟩⟩
  obtain ⟨L2, H2, db1, cb2, id1, pr1⟩ := blockM_spec senv (nm "m1") (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs1 e1 hf1 (by decide) L1 H1 cb1
  rw [← show fqMulBlk1 = macList fqMulPairs1 ++ colEndM (nm "m1") from rfl] at L2 H2 db1 cb2 id1 pr1
  rw [fqMulPairs1] at id1
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 1008765974 (by decide), add_zero_p] at id1
  simp only [eA1_a0, eA1_a1, eA1_a2, eA1_a3, eA1_a4, eA1_a5, eA1_a6, eA1_a7, eA1_b0, eA1_b1, eA1_b2, eA1_b3, eA1_b4, eA1_b5, eA1_b6, eA1_b7] at id1
  generalize runL senv e1 fqMulBlk1 = e2 at L2 H2 db1 cb2 id1 pr1 ⊢
  have eA2_a0 : e2 (nm "a0") = env1 (nm "a0") := (pr1 _ (by decide)).trans eA1_a0
  have eA2_a1 : e2 (nm "a1") = env1 (nm "a1") := (pr1 _ (by decide)).trans eA1_a1
  have eA2_a2 : e2 (nm "a2") = env1 (nm "a2") := (pr1 _ (by decide)).trans eA1_a2
  have eA2_a3 : e2 (nm "a3") = env1 (nm "a3") := (pr1 _ (by decide)).trans eA1_a3
  have eA2_a4 : e2 (nm "a4") = env1 (nm "a4") := (pr1 _ (by decide)).trans eA1_a4
  have eA2_a5 : e2 (nm "a5") = env1 (nm "a5") := (pr1 _ (by decide)).trans eA1_a5
  have eA2_a6 : e2 (nm "a6") = env1 (nm "a6") := (pr1 _ (by decide)).trans eA1_a6
  have eA2_a7 : e2 (nm "a7") = env1 (nm "a7") := (pr1 _ (by decide)).trans eA1_a7
  have eA2_b0 : e2 (nm "b0") = env1 (nm "b0") := (pr1 _ (by decide)).trans eA1_b0
  have eA2_b1 : e2 (nm "b1") = env1 (nm "b1") := (pr1 _ (by decide)).trans eA1_b1
  have eA2_b2 : e2 (nm "b2") = env1 (nm "b2") := (pr1 _ (by decide)).trans eA1_b2
  have eA2_b3 : e2 (nm "b3") = env1 (nm "b3") := (pr1 _ (by decide)).trans eA1_b3
  have eA2_b4 : e2 (nm "b4") = env1 (nm "b4") := (pr1 _ (by decide)).trans eA1_b4
  have eA2_b5 : e2 (nm "b5") = env1 (nm "b5") := (pr1 _ (by decide)).trans eA1_b5
  have eA2_b6 : e2 (nm "b6") = env1 (nm "b6") := (pr1 _ (by decide)).trans eA1_b6
  have eA2_b7 : e2 (nm "b7") = env1 (nm "b7") := (pr1 _ (by decide)).trans eA1_b7
  have eM2_0 : e2 (nm "m0") = e1 (nm "m0") := pr1 _ (by decide)
  have mb1 := db1
  -- block 2
  have hf2 : ∀ p ∈ fqMulPairs2, isFactor (scrM (nm "m2")) p.1 = true ∧
      isFactor (scrM (nm "m2")) p.2 = true ∧
      (evW e2 senv p.1).toNat < 2 ^ 32 ∧ (evW e2 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs2]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA2_a0]; exact ha0, by rw [eA2_b2]; exact hb2⟩, ⟨by decide, by decide, by rw [eA2_a1]; exact ha1, by rw [eA2_b1]; exact hb1⟩, ⟨by decide, by decide, by rw [eA2_a2]; exact ha2, by rw [eA2_b0]; exact hb0⟩, ⟨by decide, by decide, by rw [eM2_0]; exact mb0, by rw [toNat_cw_p _ _ 1752287885 (by decide)]; decide⟩, ⟨by decide, by decide, mb1, by rw [toNat_cw_p _ _ 1008765974 (by decide)]; decide⟩⟩
  obtain ⟨L3, H3, db2, cb3, id2, pr2⟩ := blockM_spec senv (nm "m2") (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs2 e2 hf2 (by decide) L2 H2 cb2
  rw [← show fqMulBlk2 = macList fqMulPairs2 ++ colEndM (nm "m2") from rfl] at L3 H3 db2 cb3 id2 pr2
  rw [fqMulPairs2] at id2
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 1008765974 (by decide), toNat_cw_p _ _ 1752287885 (by decide), add_zero_p] at id2
  simp only [eA2_a0, eA2_a1, eA2_a2, eA2_a3, eA2_a4, eA2_a5, eA2_a6, eA2_a7, eA2_b0, eA2_b1, eA2_b2, eA2_b3, eA2_b4, eA2_b5, eA2_b6, eA2_b7, eM2_0] at id2
  generalize runL senv e2 fqMulBlk2 = e3 at L3 H3 db2 cb3 id2 pr2 ⊢
  have eA3_a0 : e3 (nm "a0") = env1 (nm "a0") := (pr2 _ (by decide)).trans eA2_a0
  have eA3_a1 : e3 (nm "a1") = env1 (nm "a1") := (pr2 _ (by decide)).trans eA2_a1
  have eA3_a2 : e3 (nm "a2") = env1 (nm "a2") := (pr2 _ (by decide)).trans eA2_a2
  have eA3_a3 : e3 (nm "a3") = env1 (nm "a3") := (pr2 _ (by decide)).trans eA2_a3
  have eA3_a4 : e3 (nm "a4") = env1 (nm "a4") := (pr2 _ (by decide)).trans eA2_a4
  have eA3_a5 : e3 (nm "a5") = env1 (nm "a5") := (pr2 _ (by decide)).trans eA2_a5
  have eA3_a6 : e3 (nm "a6") = env1 (nm "a6") := (pr2 _ (by decide)).trans eA2_a6
  have eA3_a7 : e3 (nm "a7") = env1 (nm "a7") := (pr2 _ (by decide)).trans eA2_a7
  have eA3_b0 : e3 (nm "b0") = env1 (nm "b0") := (pr2 _ (by decide)).trans eA2_b0
  have eA3_b1 : e3 (nm "b1") = env1 (nm "b1") := (pr2 _ (by decide)).trans eA2_b1
  have eA3_b2 : e3 (nm "b2") = env1 (nm "b2") := (pr2 _ (by decide)).trans eA2_b2
  have eA3_b3 : e3 (nm "b3") = env1 (nm "b3") := (pr2 _ (by decide)).trans eA2_b3
  have eA3_b4 : e3 (nm "b4") = env1 (nm "b4") := (pr2 _ (by decide)).trans eA2_b4
  have eA3_b5 : e3 (nm "b5") = env1 (nm "b5") := (pr2 _ (by decide)).trans eA2_b5
  have eA3_b6 : e3 (nm "b6") = env1 (nm "b6") := (pr2 _ (by decide)).trans eA2_b6
  have eA3_b7 : e3 (nm "b7") = env1 (nm "b7") := (pr2 _ (by decide)).trans eA2_b7
  have eM3_0 : e3 (nm "m0") = e1 (nm "m0") := (pr2 _ (by decide)).trans eM2_0
  have eM3_1 : e3 (nm "m1") = e2 (nm "m1") := pr2 _ (by decide)
  have mb2 := db2
  -- block 3
  have hf3 : ∀ p ∈ fqMulPairs3, isFactor (scrM (nm "m3")) p.1 = true ∧
      isFactor (scrM (nm "m3")) p.2 = true ∧
      (evW e3 senv p.1).toNat < 2 ^ 32 ∧ (evW e3 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs3]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA3_a0]; exact ha0, by rw [eA3_b3]; exact hb3⟩, ⟨by decide, by decide, by rw [eA3_a1]; exact ha1, by rw [eA3_b2]; exact hb2⟩, ⟨by decide, by decide, by rw [eA3_a2]; exact ha2, by rw [eA3_b1]; exact hb1⟩, ⟨by decide, by decide, by rw [eA3_a3]; exact ha3, by rw [eA3_b0]; exact hb0⟩, ⟨by decide, by decide, by rw [eM3_0]; exact mb0, by rw [toNat_cw_p _ _ 2541841041 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM3_1]; exact mb1, by rw [toNat_cw_p _ _ 1752287885 (by decide)]; decide⟩, ⟨by decide, by decide, mb2, by rw [toNat_cw_p _ _ 1008765974 (by decide)]; decide⟩⟩
  obtain ⟨L4, H4, db3, cb4, id3, pr3⟩ := blockM_spec senv (nm "m3") (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs3 e3 hf3 (by decide) L3 H3 cb3
  rw [← show fqMulBlk3 = macList fqMulPairs3 ++ colEndM (nm "m3") from rfl] at L4 H4 db3 cb4 id3 pr3
  rw [fqMulPairs3] at id3
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 1008765974 (by decide), toNat_cw_p _ _ 1752287885 (by decide), toNat_cw_p _ _ 2541841041 (by decide), add_zero_p] at id3
  simp only [eA3_a0, eA3_a1, eA3_a2, eA3_a3, eA3_a4, eA3_a5, eA3_a6, eA3_a7, eA3_b0, eA3_b1, eA3_b2, eA3_b3, eA3_b4, eA3_b5, eA3_b6, eA3_b7, eM3_0, eM3_1] at id3
  generalize runL senv e3 fqMulBlk3 = e4 at L4 H4 db3 cb4 id3 pr3 ⊢
  have eA4_a0 : e4 (nm "a0") = env1 (nm "a0") := (pr3 _ (by decide)).trans eA3_a0
  have eA4_a1 : e4 (nm "a1") = env1 (nm "a1") := (pr3 _ (by decide)).trans eA3_a1
  have eA4_a2 : e4 (nm "a2") = env1 (nm "a2") := (pr3 _ (by decide)).trans eA3_a2
  have eA4_a3 : e4 (nm "a3") = env1 (nm "a3") := (pr3 _ (by decide)).trans eA3_a3
  have eA4_a4 : e4 (nm "a4") = env1 (nm "a4") := (pr3 _ (by decide)).trans eA3_a4
  have eA4_a5 : e4 (nm "a5") = env1 (nm "a5") := (pr3 _ (by decide)).trans eA3_a5
  have eA4_a6 : e4 (nm "a6") = env1 (nm "a6") := (pr3 _ (by decide)).trans eA3_a6
  have eA4_a7 : e4 (nm "a7") = env1 (nm "a7") := (pr3 _ (by decide)).trans eA3_a7
  have eA4_b0 : e4 (nm "b0") = env1 (nm "b0") := (pr3 _ (by decide)).trans eA3_b0
  have eA4_b1 : e4 (nm "b1") = env1 (nm "b1") := (pr3 _ (by decide)).trans eA3_b1
  have eA4_b2 : e4 (nm "b2") = env1 (nm "b2") := (pr3 _ (by decide)).trans eA3_b2
  have eA4_b3 : e4 (nm "b3") = env1 (nm "b3") := (pr3 _ (by decide)).trans eA3_b3
  have eA4_b4 : e4 (nm "b4") = env1 (nm "b4") := (pr3 _ (by decide)).trans eA3_b4
  have eA4_b5 : e4 (nm "b5") = env1 (nm "b5") := (pr3 _ (by decide)).trans eA3_b5
  have eA4_b6 : e4 (nm "b6") = env1 (nm "b6") := (pr3 _ (by decide)).trans eA3_b6
  have eA4_b7 : e4 (nm "b7") = env1 (nm "b7") := (pr3 _ (by decide)).trans eA3_b7
  have eM4_0 : e4 (nm "m0") = e1 (nm "m0") := (pr3 _ (by decide)).trans eM3_0
  have eM4_1 : e4 (nm "m1") = e2 (nm "m1") := (pr3 _ (by decide)).trans eM3_1
  have eM4_2 : e4 (nm "m2") = e3 (nm "m2") := pr3 _ (by decide)
  have mb3 := db3
  -- block 4
  have hf4 : ∀ p ∈ fqMulPairs4, isFactor (scrM (nm "m4")) p.1 = true ∧
      isFactor (scrM (nm "m4")) p.2 = true ∧
      (evW e4 senv p.1).toNat < 2 ^ 32 ∧ (evW e4 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs4]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA4_a0]; exact ha0, by rw [eA4_b4]; exact hb4⟩, ⟨by decide, by decide, by rw [eA4_a1]; exact ha1, by rw [eA4_b3]; exact hb3⟩, ⟨by decide, by decide, by rw [eA4_a2]; exact ha2, by rw [eA4_b2]; exact hb2⟩, ⟨by decide, by decide, by rw [eA4_a3]; exact ha3, by rw [eA4_b1]; exact hb1⟩, ⟨by decide, by decide, by rw [eA4_a4]; exact ha4, by rw [eA4_b0]; exact hb0⟩, ⟨by decide, by decide, by rw [eM4_0]; exact mb0, by rw [toNat_cw_p _ _ 2172737629 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM4_1]; exact mb1, by rw [toNat_cw_p _ _ 2541841041 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM4_2]; exact mb2, by rw [toNat_cw_p _ _ 1752287885 (by decide)]; decide⟩, ⟨by decide, by decide, mb3, by rw [toNat_cw_p _ _ 1008765974 (by decide)]; decide⟩⟩
  obtain ⟨L5, H5, db4, cb5, id4, pr4⟩ := blockM_spec senv (nm "m4") (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs4 e4 hf4 (by decide) L4 H4 cb4
  rw [← show fqMulBlk4 = macList fqMulPairs4 ++ colEndM (nm "m4") from rfl] at L5 H5 db4 cb5 id4 pr4
  rw [fqMulPairs4] at id4
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 1008765974 (by decide), toNat_cw_p _ _ 1752287885 (by decide), toNat_cw_p _ _ 2172737629 (by decide), toNat_cw_p _ _ 2541841041 (by decide), add_zero_p] at id4
  simp only [eA4_a0, eA4_a1, eA4_a2, eA4_a3, eA4_a4, eA4_a5, eA4_a6, eA4_a7, eA4_b0, eA4_b1, eA4_b2, eA4_b3, eA4_b4, eA4_b5, eA4_b6, eA4_b7, eM4_0, eM4_1, eM4_2] at id4
  generalize runL senv e4 fqMulBlk4 = e5 at L5 H5 db4 cb5 id4 pr4 ⊢
  have eA5_a0 : e5 (nm "a0") = env1 (nm "a0") := (pr4 _ (by decide)).trans eA4_a0
  have eA5_a1 : e5 (nm "a1") = env1 (nm "a1") := (pr4 _ (by decide)).trans eA4_a1
  have eA5_a2 : e5 (nm "a2") = env1 (nm "a2") := (pr4 _ (by decide)).trans eA4_a2
  have eA5_a3 : e5 (nm "a3") = env1 (nm "a3") := (pr4 _ (by decide)).trans eA4_a3
  have eA5_a4 : e5 (nm "a4") = env1 (nm "a4") := (pr4 _ (by decide)).trans eA4_a4
  have eA5_a5 : e5 (nm "a5") = env1 (nm "a5") := (pr4 _ (by decide)).trans eA4_a5
  have eA5_a6 : e5 (nm "a6") = env1 (nm "a6") := (pr4 _ (by decide)).trans eA4_a6
  have eA5_a7 : e5 (nm "a7") = env1 (nm "a7") := (pr4 _ (by decide)).trans eA4_a7
  have eA5_b0 : e5 (nm "b0") = env1 (nm "b0") := (pr4 _ (by decide)).trans eA4_b0
  have eA5_b1 : e5 (nm "b1") = env1 (nm "b1") := (pr4 _ (by decide)).trans eA4_b1
  have eA5_b2 : e5 (nm "b2") = env1 (nm "b2") := (pr4 _ (by decide)).trans eA4_b2
  have eA5_b3 : e5 (nm "b3") = env1 (nm "b3") := (pr4 _ (by decide)).trans eA4_b3
  have eA5_b4 : e5 (nm "b4") = env1 (nm "b4") := (pr4 _ (by decide)).trans eA4_b4
  have eA5_b5 : e5 (nm "b5") = env1 (nm "b5") := (pr4 _ (by decide)).trans eA4_b5
  have eA5_b6 : e5 (nm "b6") = env1 (nm "b6") := (pr4 _ (by decide)).trans eA4_b6
  have eA5_b7 : e5 (nm "b7") = env1 (nm "b7") := (pr4 _ (by decide)).trans eA4_b7
  have eM5_0 : e5 (nm "m0") = e1 (nm "m0") := (pr4 _ (by decide)).trans eM4_0
  have eM5_1 : e5 (nm "m1") = e2 (nm "m1") := (pr4 _ (by decide)).trans eM4_1
  have eM5_2 : e5 (nm "m2") = e3 (nm "m2") := (pr4 _ (by decide)).trans eM4_2
  have eM5_3 : e5 (nm "m3") = e4 (nm "m3") := pr4 _ (by decide)
  have mb4 := db4
  -- block 5
  have hf5 : ∀ p ∈ fqMulPairs5, isFactor (scrM (nm "m5")) p.1 = true ∧
      isFactor (scrM (nm "m5")) p.2 = true ∧
      (evW e5 senv p.1).toNat < 2 ^ 32 ∧ (evW e5 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs5]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA5_a0]; exact ha0, by rw [eA5_b5]; exact hb5⟩, ⟨by decide, by decide, by rw [eA5_a1]; exact ha1, by rw [eA5_b4]; exact hb4⟩, ⟨by decide, by decide, by rw [eA5_a2]; exact ha2, by rw [eA5_b3]; exact hb3⟩, ⟨by decide, by decide, by rw [eA5_a3]; exact ha3, by rw [eA5_b2]; exact hb2⟩, ⟨by decide, by decide, by rw [eA5_a4]; exact ha4, by rw [eA5_b1]; exact hb1⟩, ⟨by decide, by decide, by rw [eA5_a5]; exact ha5, by rw [eA5_b0]; exact hb0⟩, ⟨by decide, by decide, by rw [eM5_0]; exact mb0, by rw [toNat_cw_p _ _ 3092268470 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM5_1]; exact mb1, by rw [toNat_cw_p _ _ 2172737629 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM5_2]; exact mb2, by rw [toNat_cw_p _ _ 2541841041 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM5_3]; exact mb3, by rw [toNat_cw_p _ _ 1752287885 (by decide)]; decide⟩, ⟨by decide, by decide, mb4, by rw [toNat_cw_p _ _ 1008765974 (by decide)]; decide⟩⟩
  obtain ⟨L6, H6, db5, cb6, id5, pr5⟩ := blockM_spec senv (nm "m5") (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs5 e5 hf5 (by decide) L5 H5 cb5
  rw [← show fqMulBlk5 = macList fqMulPairs5 ++ colEndM (nm "m5") from rfl] at L6 H6 db5 cb6 id5 pr5
  rw [fqMulPairs5] at id5
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 1008765974 (by decide), toNat_cw_p _ _ 1752287885 (by decide), toNat_cw_p _ _ 2172737629 (by decide), toNat_cw_p _ _ 2541841041 (by decide), toNat_cw_p _ _ 3092268470 (by decide), add_zero_p] at id5
  simp only [eA5_a0, eA5_a1, eA5_a2, eA5_a3, eA5_a4, eA5_a5, eA5_a6, eA5_a7, eA5_b0, eA5_b1, eA5_b2, eA5_b3, eA5_b4, eA5_b5, eA5_b6, eA5_b7, eM5_0, eM5_1, eM5_2, eM5_3] at id5
  generalize runL senv e5 fqMulBlk5 = e6 at L6 H6 db5 cb6 id5 pr5 ⊢
  have eA6_a0 : e6 (nm "a0") = env1 (nm "a0") := (pr5 _ (by decide)).trans eA5_a0
  have eA6_a1 : e6 (nm "a1") = env1 (nm "a1") := (pr5 _ (by decide)).trans eA5_a1
  have eA6_a2 : e6 (nm "a2") = env1 (nm "a2") := (pr5 _ (by decide)).trans eA5_a2
  have eA6_a3 : e6 (nm "a3") = env1 (nm "a3") := (pr5 _ (by decide)).trans eA5_a3
  have eA6_a4 : e6 (nm "a4") = env1 (nm "a4") := (pr5 _ (by decide)).trans eA5_a4
  have eA6_a5 : e6 (nm "a5") = env1 (nm "a5") := (pr5 _ (by decide)).trans eA5_a5
  have eA6_a6 : e6 (nm "a6") = env1 (nm "a6") := (pr5 _ (by decide)).trans eA5_a6
  have eA6_a7 : e6 (nm "a7") = env1 (nm "a7") := (pr5 _ (by decide)).trans eA5_a7
  have eA6_b0 : e6 (nm "b0") = env1 (nm "b0") := (pr5 _ (by decide)).trans eA5_b0
  have eA6_b1 : e6 (nm "b1") = env1 (nm "b1") := (pr5 _ (by decide)).trans eA5_b1
  have eA6_b2 : e6 (nm "b2") = env1 (nm "b2") := (pr5 _ (by decide)).trans eA5_b2
  have eA6_b3 : e6 (nm "b3") = env1 (nm "b3") := (pr5 _ (by decide)).trans eA5_b3
  have eA6_b4 : e6 (nm "b4") = env1 (nm "b4") := (pr5 _ (by decide)).trans eA5_b4
  have eA6_b5 : e6 (nm "b5") = env1 (nm "b5") := (pr5 _ (by decide)).trans eA5_b5
  have eA6_b6 : e6 (nm "b6") = env1 (nm "b6") := (pr5 _ (by decide)).trans eA5_b6
  have eA6_b7 : e6 (nm "b7") = env1 (nm "b7") := (pr5 _ (by decide)).trans eA5_b7
  have eM6_0 : e6 (nm "m0") = e1 (nm "m0") := (pr5 _ (by decide)).trans eM5_0
  have eM6_1 : e6 (nm "m1") = e2 (nm "m1") := (pr5 _ (by decide)).trans eM5_1
  have eM6_2 : e6 (nm "m2") = e3 (nm "m2") := (pr5 _ (by decide)).trans eM5_2
  have eM6_3 : e6 (nm "m3") = e4 (nm "m3") := (pr5 _ (by decide)).trans eM5_3
  have eM6_4 : e6 (nm "m4") = e5 (nm "m4") := pr5 _ (by decide)
  have mb5 := db5
  -- block 6
  have hf6 : ∀ p ∈ fqMulPairs6, isFactor (scrM (nm "m6")) p.1 = true ∧
      isFactor (scrM (nm "m6")) p.2 = true ∧
      (evW e6 senv p.1).toNat < 2 ^ 32 ∧ (evW e6 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs6]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA6_a0]; exact ha0, by rw [eA6_b6]; exact hb6⟩, ⟨by decide, by decide, by rw [eA6_a1]; exact ha1, by rw [eA6_b5]; exact hb5⟩, ⟨by decide, by decide, by rw [eA6_a2]; exact ha2, by rw [eA6_b4]; exact hb4⟩, ⟨by decide, by decide, by rw [eA6_a3]; exact ha3, by rw [eA6_b3]; exact hb3⟩, ⟨by decide, by decide, by rw [eA6_a4]; exact ha4, by rw [eA6_b2]; exact hb2⟩, ⟨by decide, by decide, by rw [eA6_a5]; exact ha5, by rw [eA6_b1]; exact hb1⟩, ⟨by decide, by decide, by rw [eA6_a6]; exact ha6, by rw [eA6_b0]; exact hb0⟩, ⟨by decide, by decide, by rw [eM6_0]; exact mb0, by rw [toNat_cw_p _ _ 3778125865 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM6_1]; exact mb1, by rw [toNat_cw_p _ _ 3092268470 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM6_2]; exact mb2, by rw [toNat_cw_p _ _ 2172737629 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM6_3]; exact mb3, by rw [toNat_cw_p _ _ 2541841041 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM6_4]; exact mb4, by rw [toNat_cw_p _ _ 1752287885 (by decide)]; decide⟩, ⟨by decide, by decide, mb5, by rw [toNat_cw_p _ _ 1008765974 (by decide)]; decide⟩⟩
  obtain ⟨L7, H7, db6, cb7, id6, pr6⟩ := blockM_spec senv (nm "m6") (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs6 e6 hf6 (by decide) L6 H6 cb6
  rw [← show fqMulBlk6 = macList fqMulPairs6 ++ colEndM (nm "m6") from rfl] at L7 H7 db6 cb7 id6 pr6
  rw [fqMulPairs6] at id6
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 1008765974 (by decide), toNat_cw_p _ _ 1752287885 (by decide), toNat_cw_p _ _ 2172737629 (by decide), toNat_cw_p _ _ 2541841041 (by decide), toNat_cw_p _ _ 3092268470 (by decide), toNat_cw_p _ _ 3778125865 (by decide), add_zero_p] at id6
  simp only [eA6_a0, eA6_a1, eA6_a2, eA6_a3, eA6_a4, eA6_a5, eA6_a6, eA6_a7, eA6_b0, eA6_b1, eA6_b2, eA6_b3, eA6_b4, eA6_b5, eA6_b6, eA6_b7, eM6_0, eM6_1, eM6_2, eM6_3, eM6_4] at id6
  generalize runL senv e6 fqMulBlk6 = e7 at L7 H7 db6 cb7 id6 pr6 ⊢
  have eA7_a0 : e7 (nm "a0") = env1 (nm "a0") := (pr6 _ (by decide)).trans eA6_a0
  have eA7_a1 : e7 (nm "a1") = env1 (nm "a1") := (pr6 _ (by decide)).trans eA6_a1
  have eA7_a2 : e7 (nm "a2") = env1 (nm "a2") := (pr6 _ (by decide)).trans eA6_a2
  have eA7_a3 : e7 (nm "a3") = env1 (nm "a3") := (pr6 _ (by decide)).trans eA6_a3
  have eA7_a4 : e7 (nm "a4") = env1 (nm "a4") := (pr6 _ (by decide)).trans eA6_a4
  have eA7_a5 : e7 (nm "a5") = env1 (nm "a5") := (pr6 _ (by decide)).trans eA6_a5
  have eA7_a6 : e7 (nm "a6") = env1 (nm "a6") := (pr6 _ (by decide)).trans eA6_a6
  have eA7_a7 : e7 (nm "a7") = env1 (nm "a7") := (pr6 _ (by decide)).trans eA6_a7
  have eA7_b0 : e7 (nm "b0") = env1 (nm "b0") := (pr6 _ (by decide)).trans eA6_b0
  have eA7_b1 : e7 (nm "b1") = env1 (nm "b1") := (pr6 _ (by decide)).trans eA6_b1
  have eA7_b2 : e7 (nm "b2") = env1 (nm "b2") := (pr6 _ (by decide)).trans eA6_b2
  have eA7_b3 : e7 (nm "b3") = env1 (nm "b3") := (pr6 _ (by decide)).trans eA6_b3
  have eA7_b4 : e7 (nm "b4") = env1 (nm "b4") := (pr6 _ (by decide)).trans eA6_b4
  have eA7_b5 : e7 (nm "b5") = env1 (nm "b5") := (pr6 _ (by decide)).trans eA6_b5
  have eA7_b6 : e7 (nm "b6") = env1 (nm "b6") := (pr6 _ (by decide)).trans eA6_b6
  have eA7_b7 : e7 (nm "b7") = env1 (nm "b7") := (pr6 _ (by decide)).trans eA6_b7
  have eM7_0 : e7 (nm "m0") = e1 (nm "m0") := (pr6 _ (by decide)).trans eM6_0
  have eM7_1 : e7 (nm "m1") = e2 (nm "m1") := (pr6 _ (by decide)).trans eM6_1
  have eM7_2 : e7 (nm "m2") = e3 (nm "m2") := (pr6 _ (by decide)).trans eM6_2
  have eM7_3 : e7 (nm "m3") = e4 (nm "m3") := (pr6 _ (by decide)).trans eM6_3
  have eM7_4 : e7 (nm "m4") = e5 (nm "m4") := (pr6 _ (by decide)).trans eM6_4
  have eM7_5 : e7 (nm "m5") = e6 (nm "m5") := pr6 _ (by decide)
  have mb6 := db6
  -- block 7
  have hf7 : ∀ p ∈ fqMulPairs7, isFactor (scrM (nm "m7")) p.1 = true ∧
      isFactor (scrM (nm "m7")) p.2 = true ∧
      (evW e7 senv p.1).toNat < 2 ^ 32 ∧ (evW e7 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs7]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA7_a0]; exact ha0, by rw [eA7_b7]; exact hb7⟩, ⟨by decide, by decide, by rw [eA7_a1]; exact ha1, by rw [eA7_b6]; exact hb6⟩, ⟨by decide, by decide, by rw [eA7_a2]; exact ha2, by rw [eA7_b5]; exact hb5⟩, ⟨by decide, by decide, by rw [eA7_a3]; exact ha3, by rw [eA7_b4]; exact hb4⟩, ⟨by decide, by decide, by rw [eA7_a4]; exact ha4, by rw [eA7_b3]; exact hb3⟩, ⟨by decide, by decide, by rw [eA7_a5]; exact ha5, by rw [eA7_b2]; exact hb2⟩, ⟨by decide, by decide, by rw [eA7_a6]; exact ha6, by rw [eA7_b1]; exact hb1⟩, ⟨by decide, by decide, by rw [eA7_a7]; exact ha7, by rw [eA7_b0]; exact hb0⟩, ⟨by decide, by decide, by rw [eM7_0]; exact mb0, by rw [toNat_cw_p _ _ 811880050 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM7_1]; exact mb1, by rw [toNat_cw_p _ _ 3778125865 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM7_2]; exact mb2, by rw [toNat_cw_p _ _ 3092268470 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM7_3]; exact mb3, by rw [toNat_cw_p _ _ 2172737629 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM7_4]; exact mb4, by rw [toNat_cw_p _ _ 2541841041 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM7_5]; exact mb5, by rw [toNat_cw_p _ _ 1752287885 (by decide)]; decide⟩, ⟨by decide, by decide, mb6, by rw [toNat_cw_p _ _ 1008765974 (by decide)]; decide⟩⟩
  obtain ⟨L8, H8, db7, cb8, id7, pr7⟩ := blockM_spec senv (nm "m7") (by decide) (by decide) (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs7 e7 hf7 (by decide) L7 H7 cb7
  rw [← show fqMulBlk7 = macList fqMulPairs7 ++ colEndM (nm "m7") from rfl] at L8 H8 db7 cb8 id7 pr7
  rw [fqMulPairs7] at id7
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 1008765974 (by decide), toNat_cw_p _ _ 1752287885 (by decide), toNat_cw_p _ _ 2172737629 (by decide), toNat_cw_p _ _ 2541841041 (by decide), toNat_cw_p _ _ 3092268470 (by decide), toNat_cw_p _ _ 3778125865 (by decide), toNat_cw_p _ _ 811880050 (by decide), add_zero_p] at id7
  simp only [eA7_a0, eA7_a1, eA7_a2, eA7_a3, eA7_a4, eA7_a5, eA7_a6, eA7_a7, eA7_b0, eA7_b1, eA7_b2, eA7_b3, eA7_b4, eA7_b5, eA7_b6, eA7_b7, eM7_0, eM7_1, eM7_2, eM7_3, eM7_4, eM7_5] at id7
  generalize runL senv e7 fqMulBlk7 = e8 at L8 H8 db7 cb8 id7 pr7 ⊢
  have eA8_a0 : e8 (nm "a0") = env1 (nm "a0") := (pr7 _ (by decide)).trans eA7_a0
  have eA8_a1 : e8 (nm "a1") = env1 (nm "a1") := (pr7 _ (by decide)).trans eA7_a1
  have eA8_a2 : e8 (nm "a2") = env1 (nm "a2") := (pr7 _ (by decide)).trans eA7_a2
  have eA8_a3 : e8 (nm "a3") = env1 (nm "a3") := (pr7 _ (by decide)).trans eA7_a3
  have eA8_a4 : e8 (nm "a4") = env1 (nm "a4") := (pr7 _ (by decide)).trans eA7_a4
  have eA8_a5 : e8 (nm "a5") = env1 (nm "a5") := (pr7 _ (by decide)).trans eA7_a5
  have eA8_a6 : e8 (nm "a6") = env1 (nm "a6") := (pr7 _ (by decide)).trans eA7_a6
  have eA8_a7 : e8 (nm "a7") = env1 (nm "a7") := (pr7 _ (by decide)).trans eA7_a7
  have eA8_b0 : e8 (nm "b0") = env1 (nm "b0") := (pr7 _ (by decide)).trans eA7_b0
  have eA8_b1 : e8 (nm "b1") = env1 (nm "b1") := (pr7 _ (by decide)).trans eA7_b1
  have eA8_b2 : e8 (nm "b2") = env1 (nm "b2") := (pr7 _ (by decide)).trans eA7_b2
  have eA8_b3 : e8 (nm "b3") = env1 (nm "b3") := (pr7 _ (by decide)).trans eA7_b3
  have eA8_b4 : e8 (nm "b4") = env1 (nm "b4") := (pr7 _ (by decide)).trans eA7_b4
  have eA8_b5 : e8 (nm "b5") = env1 (nm "b5") := (pr7 _ (by decide)).trans eA7_b5
  have eA8_b6 : e8 (nm "b6") = env1 (nm "b6") := (pr7 _ (by decide)).trans eA7_b6
  have eA8_b7 : e8 (nm "b7") = env1 (nm "b7") := (pr7 _ (by decide)).trans eA7_b7
  have eM8_0 : e8 (nm "m0") = e1 (nm "m0") := (pr7 _ (by decide)).trans eM7_0
  have eM8_1 : e8 (nm "m1") = e2 (nm "m1") := (pr7 _ (by decide)).trans eM7_1
  have eM8_2 : e8 (nm "m2") = e3 (nm "m2") := (pr7 _ (by decide)).trans eM7_2
  have eM8_3 : e8 (nm "m3") = e4 (nm "m3") := (pr7 _ (by decide)).trans eM7_3
  have eM8_4 : e8 (nm "m4") = e5 (nm "m4") := (pr7 _ (by decide)).trans eM7_4
  have eM8_5 : e8 (nm "m5") = e6 (nm "m5") := (pr7 _ (by decide)).trans eM7_5
  have eM8_6 : e8 (nm "m6") = e7 (nm "m6") := pr7 _ (by decide)
  have mb7 := db7
  -- block 8
  have hf8 : ∀ p ∈ fqMulPairs8, isFactor (scrU (nm "u0")) p.1 = true ∧
      isFactor (scrU (nm "u0")) p.2 = true ∧
      (evW e8 senv p.1).toNat < 2 ^ 32 ∧ (evW e8 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs8]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA8_a1]; exact ha1, by rw [eA8_b7]; exact hb7⟩, ⟨by decide, by decide, by rw [eA8_a2]; exact ha2, by rw [eA8_b6]; exact hb6⟩, ⟨by decide, by decide, by rw [eA8_a3]; exact ha3, by rw [eA8_b5]; exact hb5⟩, ⟨by decide, by decide, by rw [eA8_a4]; exact ha4, by rw [eA8_b4]; exact hb4⟩, ⟨by decide, by decide, by rw [eA8_a5]; exact ha5, by rw [eA8_b3]; exact hb3⟩, ⟨by decide, by decide, by rw [eA8_a6]; exact ha6, by rw [eA8_b2]; exact hb2⟩, ⟨by decide, by decide, by rw [eA8_a7]; exact ha7, by rw [eA8_b1]; exact hb1⟩, ⟨by decide, by decide, by rw [eM8_1]; exact mb1, by rw [toNat_cw_p _ _ 811880050 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM8_2]; exact mb2, by rw [toNat_cw_p _ _ 3778125865 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM8_3]; exact mb3, by rw [toNat_cw_p _ _ 3092268470 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM8_4]; exact mb4, by rw [toNat_cw_p _ _ 2172737629 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM8_5]; exact mb5, by rw [toNat_cw_p _ _ 2541841041 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM8_6]; exact mb6, by rw [toNat_cw_p _ _ 1752287885 (by decide)]; decide⟩, ⟨by decide, by decide, mb7, by rw [toNat_cw_p _ _ 1008765974 (by decide)]; decide⟩⟩
  obtain ⟨L9, H9, db8, cb9, id8, pr8⟩ := blockU_spec senv (nm "u0") (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs8 e8 hf8 (by decide) L8 H8 cb8
  rw [← show fqMulBlk8 = macList fqMulPairs8 ++ colEndU (nm "u0") from rfl] at L9 H9 db8 cb9 id8 pr8
  rw [fqMulPairs8] at id8
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 1008765974 (by decide), toNat_cw_p _ _ 1752287885 (by decide), toNat_cw_p _ _ 2172737629 (by decide), toNat_cw_p _ _ 2541841041 (by decide), toNat_cw_p _ _ 3092268470 (by decide), toNat_cw_p _ _ 3778125865 (by decide), toNat_cw_p _ _ 811880050 (by decide), add_zero_p] at id8
  simp only [eA8_a0, eA8_a1, eA8_a2, eA8_a3, eA8_a4, eA8_a5, eA8_a6, eA8_a7, eA8_b0, eA8_b1, eA8_b2, eA8_b3, eA8_b4, eA8_b5, eA8_b6, eA8_b7, eM8_0, eM8_1, eM8_2, eM8_3, eM8_4, eM8_5, eM8_6] at id8
  generalize runL senv e8 fqMulBlk8 = e9 at L9 H9 db8 cb9 id8 pr8 ⊢
  have eA9_a0 : e9 (nm "a0") = env1 (nm "a0") := (pr8 _ (by decide)).trans eA8_a0
  have eA9_a1 : e9 (nm "a1") = env1 (nm "a1") := (pr8 _ (by decide)).trans eA8_a1
  have eA9_a2 : e9 (nm "a2") = env1 (nm "a2") := (pr8 _ (by decide)).trans eA8_a2
  have eA9_a3 : e9 (nm "a3") = env1 (nm "a3") := (pr8 _ (by decide)).trans eA8_a3
  have eA9_a4 : e9 (nm "a4") = env1 (nm "a4") := (pr8 _ (by decide)).trans eA8_a4
  have eA9_a5 : e9 (nm "a5") = env1 (nm "a5") := (pr8 _ (by decide)).trans eA8_a5
  have eA9_a6 : e9 (nm "a6") = env1 (nm "a6") := (pr8 _ (by decide)).trans eA8_a6
  have eA9_a7 : e9 (nm "a7") = env1 (nm "a7") := (pr8 _ (by decide)).trans eA8_a7
  have eA9_b0 : e9 (nm "b0") = env1 (nm "b0") := (pr8 _ (by decide)).trans eA8_b0
  have eA9_b1 : e9 (nm "b1") = env1 (nm "b1") := (pr8 _ (by decide)).trans eA8_b1
  have eA9_b2 : e9 (nm "b2") = env1 (nm "b2") := (pr8 _ (by decide)).trans eA8_b2
  have eA9_b3 : e9 (nm "b3") = env1 (nm "b3") := (pr8 _ (by decide)).trans eA8_b3
  have eA9_b4 : e9 (nm "b4") = env1 (nm "b4") := (pr8 _ (by decide)).trans eA8_b4
  have eA9_b5 : e9 (nm "b5") = env1 (nm "b5") := (pr8 _ (by decide)).trans eA8_b5
  have eA9_b6 : e9 (nm "b6") = env1 (nm "b6") := (pr8 _ (by decide)).trans eA8_b6
  have eA9_b7 : e9 (nm "b7") = env1 (nm "b7") := (pr8 _ (by decide)).trans eA8_b7
  have eM9_0 : e9 (nm "m0") = e1 (nm "m0") := (pr8 _ (by decide)).trans eM8_0
  have eM9_1 : e9 (nm "m1") = e2 (nm "m1") := (pr8 _ (by decide)).trans eM8_1
  have eM9_2 : e9 (nm "m2") = e3 (nm "m2") := (pr8 _ (by decide)).trans eM8_2
  have eM9_3 : e9 (nm "m3") = e4 (nm "m3") := (pr8 _ (by decide)).trans eM8_3
  have eM9_4 : e9 (nm "m4") = e5 (nm "m4") := (pr8 _ (by decide)).trans eM8_4
  have eM9_5 : e9 (nm "m5") = e6 (nm "m5") := (pr8 _ (by decide)).trans eM8_5
  have eM9_6 : e9 (nm "m6") = e7 (nm "m6") := (pr8 _ (by decide)).trans eM8_6
  have eM9_7 : e9 (nm "m7") = e8 (nm "m7") := pr8 _ (by decide)
  have ub0 := db8
  -- block 9
  have hf9 : ∀ p ∈ fqMulPairs9, isFactor (scrU (nm "u1")) p.1 = true ∧
      isFactor (scrU (nm "u1")) p.2 = true ∧
      (evW e9 senv p.1).toNat < 2 ^ 32 ∧ (evW e9 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs9]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA9_a2]; exact ha2, by rw [eA9_b7]; exact hb7⟩, ⟨by decide, by decide, by rw [eA9_a3]; exact ha3, by rw [eA9_b6]; exact hb6⟩, ⟨by decide, by decide, by rw [eA9_a4]; exact ha4, by rw [eA9_b5]; exact hb5⟩, ⟨by decide, by decide, by rw [eA9_a5]; exact ha5, by rw [eA9_b4]; exact hb4⟩, ⟨by decide, by decide, by rw [eA9_a6]; exact ha6, by rw [eA9_b3]; exact hb3⟩, ⟨by decide, by decide, by rw [eA9_a7]; exact ha7, by rw [eA9_b2]; exact hb2⟩, ⟨by decide, by decide, by rw [eM9_2]; exact mb2, by rw [toNat_cw_p _ _ 811880050 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM9_3]; exact mb3, by rw [toNat_cw_p _ _ 3778125865 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM9_4]; exact mb4, by rw [toNat_cw_p _ _ 3092268470 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM9_5]; exact mb5, by rw [toNat_cw_p _ _ 2172737629 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM9_6]; exact mb6, by rw [toNat_cw_p _ _ 2541841041 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM9_7]; exact mb7, by rw [toNat_cw_p _ _ 1752287885 (by decide)]; decide⟩⟩
  obtain ⟨L10, H10, db9, cb10, id9, pr9⟩ := blockU_spec senv (nm "u1") (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs9 e9 hf9 (by decide) L9 H9 cb9
  rw [← show fqMulBlk9 = macList fqMulPairs9 ++ colEndU (nm "u1") from rfl] at L10 H10 db9 cb10 id9 pr9
  rw [fqMulPairs9] at id9
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 1752287885 (by decide), toNat_cw_p _ _ 2172737629 (by decide), toNat_cw_p _ _ 2541841041 (by decide), toNat_cw_p _ _ 3092268470 (by decide), toNat_cw_p _ _ 3778125865 (by decide), toNat_cw_p _ _ 811880050 (by decide), add_zero_p] at id9
  simp only [eA9_a0, eA9_a1, eA9_a2, eA9_a3, eA9_a4, eA9_a5, eA9_a6, eA9_a7, eA9_b0, eA9_b1, eA9_b2, eA9_b3, eA9_b4, eA9_b5, eA9_b6, eA9_b7, eM9_0, eM9_1, eM9_2, eM9_3, eM9_4, eM9_5, eM9_6, eM9_7] at id9
  generalize runL senv e9 fqMulBlk9 = e10 at L10 H10 db9 cb10 id9 pr9 ⊢
  have eA10_a0 : e10 (nm "a0") = env1 (nm "a0") := (pr9 _ (by decide)).trans eA9_a0
  have eA10_a1 : e10 (nm "a1") = env1 (nm "a1") := (pr9 _ (by decide)).trans eA9_a1
  have eA10_a2 : e10 (nm "a2") = env1 (nm "a2") := (pr9 _ (by decide)).trans eA9_a2
  have eA10_a3 : e10 (nm "a3") = env1 (nm "a3") := (pr9 _ (by decide)).trans eA9_a3
  have eA10_a4 : e10 (nm "a4") = env1 (nm "a4") := (pr9 _ (by decide)).trans eA9_a4
  have eA10_a5 : e10 (nm "a5") = env1 (nm "a5") := (pr9 _ (by decide)).trans eA9_a5
  have eA10_a6 : e10 (nm "a6") = env1 (nm "a6") := (pr9 _ (by decide)).trans eA9_a6
  have eA10_a7 : e10 (nm "a7") = env1 (nm "a7") := (pr9 _ (by decide)).trans eA9_a7
  have eA10_b0 : e10 (nm "b0") = env1 (nm "b0") := (pr9 _ (by decide)).trans eA9_b0
  have eA10_b1 : e10 (nm "b1") = env1 (nm "b1") := (pr9 _ (by decide)).trans eA9_b1
  have eA10_b2 : e10 (nm "b2") = env1 (nm "b2") := (pr9 _ (by decide)).trans eA9_b2
  have eA10_b3 : e10 (nm "b3") = env1 (nm "b3") := (pr9 _ (by decide)).trans eA9_b3
  have eA10_b4 : e10 (nm "b4") = env1 (nm "b4") := (pr9 _ (by decide)).trans eA9_b4
  have eA10_b5 : e10 (nm "b5") = env1 (nm "b5") := (pr9 _ (by decide)).trans eA9_b5
  have eA10_b6 : e10 (nm "b6") = env1 (nm "b6") := (pr9 _ (by decide)).trans eA9_b6
  have eA10_b7 : e10 (nm "b7") = env1 (nm "b7") := (pr9 _ (by decide)).trans eA9_b7
  have eM10_0 : e10 (nm "m0") = e1 (nm "m0") := (pr9 _ (by decide)).trans eM9_0
  have eM10_1 : e10 (nm "m1") = e2 (nm "m1") := (pr9 _ (by decide)).trans eM9_1
  have eM10_2 : e10 (nm "m2") = e3 (nm "m2") := (pr9 _ (by decide)).trans eM9_2
  have eM10_3 : e10 (nm "m3") = e4 (nm "m3") := (pr9 _ (by decide)).trans eM9_3
  have eM10_4 : e10 (nm "m4") = e5 (nm "m4") := (pr9 _ (by decide)).trans eM9_4
  have eM10_5 : e10 (nm "m5") = e6 (nm "m5") := (pr9 _ (by decide)).trans eM9_5
  have eM10_6 : e10 (nm "m6") = e7 (nm "m6") := (pr9 _ (by decide)).trans eM9_6
  have eM10_7 : e10 (nm "m7") = e8 (nm "m7") := (pr9 _ (by decide)).trans eM9_7
  have eU10_0 : e10 (nm "u0") = e9 (nm "u0") := pr9 _ (by decide)
  have ub1 := db9
  -- block 10
  have hf10 : ∀ p ∈ fqMulPairs10, isFactor (scrU (nm "u2")) p.1 = true ∧
      isFactor (scrU (nm "u2")) p.2 = true ∧
      (evW e10 senv p.1).toNat < 2 ^ 32 ∧ (evW e10 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs10]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA10_a3]; exact ha3, by rw [eA10_b7]; exact hb7⟩, ⟨by decide, by decide, by rw [eA10_a4]; exact ha4, by rw [eA10_b6]; exact hb6⟩, ⟨by decide, by decide, by rw [eA10_a5]; exact ha5, by rw [eA10_b5]; exact hb5⟩, ⟨by decide, by decide, by rw [eA10_a6]; exact ha6, by rw [eA10_b4]; exact hb4⟩, ⟨by decide, by decide, by rw [eA10_a7]; exact ha7, by rw [eA10_b3]; exact hb3⟩, ⟨by decide, by decide, by rw [eM10_3]; exact mb3, by rw [toNat_cw_p _ _ 811880050 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM10_4]; exact mb4, by rw [toNat_cw_p _ _ 3778125865 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM10_5]; exact mb5, by rw [toNat_cw_p _ _ 3092268470 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM10_6]; exact mb6, by rw [toNat_cw_p _ _ 2172737629 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM10_7]; exact mb7, by rw [toNat_cw_p _ _ 2541841041 (by decide)]; decide⟩⟩
  obtain ⟨L11, H11, db10, cb11, id10, pr10⟩ := blockU_spec senv (nm "u2") (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs10 e10 hf10 (by decide) L10 H10 cb10
  rw [← show fqMulBlk10 = macList fqMulPairs10 ++ colEndU (nm "u2") from rfl] at L11 H11 db10 cb11 id10 pr10
  rw [fqMulPairs10] at id10
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 2172737629 (by decide), toNat_cw_p _ _ 2541841041 (by decide), toNat_cw_p _ _ 3092268470 (by decide), toNat_cw_p _ _ 3778125865 (by decide), toNat_cw_p _ _ 811880050 (by decide), add_zero_p] at id10
  simp only [eA10_a0, eA10_a1, eA10_a2, eA10_a3, eA10_a4, eA10_a5, eA10_a6, eA10_a7, eA10_b0, eA10_b1, eA10_b2, eA10_b3, eA10_b4, eA10_b5, eA10_b6, eA10_b7, eM10_0, eM10_1, eM10_2, eM10_3, eM10_4, eM10_5, eM10_6, eM10_7] at id10
  generalize runL senv e10 fqMulBlk10 = e11 at L11 H11 db10 cb11 id10 pr10 ⊢
  have eA11_a0 : e11 (nm "a0") = env1 (nm "a0") := (pr10 _ (by decide)).trans eA10_a0
  have eA11_a1 : e11 (nm "a1") = env1 (nm "a1") := (pr10 _ (by decide)).trans eA10_a1
  have eA11_a2 : e11 (nm "a2") = env1 (nm "a2") := (pr10 _ (by decide)).trans eA10_a2
  have eA11_a3 : e11 (nm "a3") = env1 (nm "a3") := (pr10 _ (by decide)).trans eA10_a3
  have eA11_a4 : e11 (nm "a4") = env1 (nm "a4") := (pr10 _ (by decide)).trans eA10_a4
  have eA11_a5 : e11 (nm "a5") = env1 (nm "a5") := (pr10 _ (by decide)).trans eA10_a5
  have eA11_a6 : e11 (nm "a6") = env1 (nm "a6") := (pr10 _ (by decide)).trans eA10_a6
  have eA11_a7 : e11 (nm "a7") = env1 (nm "a7") := (pr10 _ (by decide)).trans eA10_a7
  have eA11_b0 : e11 (nm "b0") = env1 (nm "b0") := (pr10 _ (by decide)).trans eA10_b0
  have eA11_b1 : e11 (nm "b1") = env1 (nm "b1") := (pr10 _ (by decide)).trans eA10_b1
  have eA11_b2 : e11 (nm "b2") = env1 (nm "b2") := (pr10 _ (by decide)).trans eA10_b2
  have eA11_b3 : e11 (nm "b3") = env1 (nm "b3") := (pr10 _ (by decide)).trans eA10_b3
  have eA11_b4 : e11 (nm "b4") = env1 (nm "b4") := (pr10 _ (by decide)).trans eA10_b4
  have eA11_b5 : e11 (nm "b5") = env1 (nm "b5") := (pr10 _ (by decide)).trans eA10_b5
  have eA11_b6 : e11 (nm "b6") = env1 (nm "b6") := (pr10 _ (by decide)).trans eA10_b6
  have eA11_b7 : e11 (nm "b7") = env1 (nm "b7") := (pr10 _ (by decide)).trans eA10_b7
  have eM11_0 : e11 (nm "m0") = e1 (nm "m0") := (pr10 _ (by decide)).trans eM10_0
  have eM11_1 : e11 (nm "m1") = e2 (nm "m1") := (pr10 _ (by decide)).trans eM10_1
  have eM11_2 : e11 (nm "m2") = e3 (nm "m2") := (pr10 _ (by decide)).trans eM10_2
  have eM11_3 : e11 (nm "m3") = e4 (nm "m3") := (pr10 _ (by decide)).trans eM10_3
  have eM11_4 : e11 (nm "m4") = e5 (nm "m4") := (pr10 _ (by decide)).trans eM10_4
  have eM11_5 : e11 (nm "m5") = e6 (nm "m5") := (pr10 _ (by decide)).trans eM10_5
  have eM11_6 : e11 (nm "m6") = e7 (nm "m6") := (pr10 _ (by decide)).trans eM10_6
  have eM11_7 : e11 (nm "m7") = e8 (nm "m7") := (pr10 _ (by decide)).trans eM10_7
  have eU11_0 : e11 (nm "u0") = e9 (nm "u0") := (pr10 _ (by decide)).trans eU10_0
  have eU11_1 : e11 (nm "u1") = e10 (nm "u1") := pr10 _ (by decide)
  have ub2 := db10
  -- block 11
  have hf11 : ∀ p ∈ fqMulPairs11, isFactor (scrU (nm "u3")) p.1 = true ∧
      isFactor (scrU (nm "u3")) p.2 = true ∧
      (evW e11 senv p.1).toNat < 2 ^ 32 ∧ (evW e11 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs11]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA11_a4]; exact ha4, by rw [eA11_b7]; exact hb7⟩, ⟨by decide, by decide, by rw [eA11_a5]; exact ha5, by rw [eA11_b6]; exact hb6⟩, ⟨by decide, by decide, by rw [eA11_a6]; exact ha6, by rw [eA11_b5]; exact hb5⟩, ⟨by decide, by decide, by rw [eA11_a7]; exact ha7, by rw [eA11_b4]; exact hb4⟩, ⟨by decide, by decide, by rw [eM11_4]; exact mb4, by rw [toNat_cw_p _ _ 811880050 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM11_5]; exact mb5, by rw [toNat_cw_p _ _ 3778125865 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM11_6]; exact mb6, by rw [toNat_cw_p _ _ 3092268470 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM11_7]; exact mb7, by rw [toNat_cw_p _ _ 2172737629 (by decide)]; decide⟩⟩
  obtain ⟨L12, H12, db11, cb12, id11, pr11⟩ := blockU_spec senv (nm "u3") (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs11 e11 hf11 (by decide) L11 H11 cb11
  rw [← show fqMulBlk11 = macList fqMulPairs11 ++ colEndU (nm "u3") from rfl] at L12 H12 db11 cb12 id11 pr11
  rw [fqMulPairs11] at id11
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 2172737629 (by decide), toNat_cw_p _ _ 3092268470 (by decide), toNat_cw_p _ _ 3778125865 (by decide), toNat_cw_p _ _ 811880050 (by decide), add_zero_p] at id11
  simp only [eA11_a0, eA11_a1, eA11_a2, eA11_a3, eA11_a4, eA11_a5, eA11_a6, eA11_a7, eA11_b0, eA11_b1, eA11_b2, eA11_b3, eA11_b4, eA11_b5, eA11_b6, eA11_b7, eM11_0, eM11_1, eM11_2, eM11_3, eM11_4, eM11_5, eM11_6, eM11_7] at id11
  generalize runL senv e11 fqMulBlk11 = e12 at L12 H12 db11 cb12 id11 pr11 ⊢
  have eA12_a0 : e12 (nm "a0") = env1 (nm "a0") := (pr11 _ (by decide)).trans eA11_a0
  have eA12_a1 : e12 (nm "a1") = env1 (nm "a1") := (pr11 _ (by decide)).trans eA11_a1
  have eA12_a2 : e12 (nm "a2") = env1 (nm "a2") := (pr11 _ (by decide)).trans eA11_a2
  have eA12_a3 : e12 (nm "a3") = env1 (nm "a3") := (pr11 _ (by decide)).trans eA11_a3
  have eA12_a4 : e12 (nm "a4") = env1 (nm "a4") := (pr11 _ (by decide)).trans eA11_a4
  have eA12_a5 : e12 (nm "a5") = env1 (nm "a5") := (pr11 _ (by decide)).trans eA11_a5
  have eA12_a6 : e12 (nm "a6") = env1 (nm "a6") := (pr11 _ (by decide)).trans eA11_a6
  have eA12_a7 : e12 (nm "a7") = env1 (nm "a7") := (pr11 _ (by decide)).trans eA11_a7
  have eA12_b0 : e12 (nm "b0") = env1 (nm "b0") := (pr11 _ (by decide)).trans eA11_b0
  have eA12_b1 : e12 (nm "b1") = env1 (nm "b1") := (pr11 _ (by decide)).trans eA11_b1
  have eA12_b2 : e12 (nm "b2") = env1 (nm "b2") := (pr11 _ (by decide)).trans eA11_b2
  have eA12_b3 : e12 (nm "b3") = env1 (nm "b3") := (pr11 _ (by decide)).trans eA11_b3
  have eA12_b4 : e12 (nm "b4") = env1 (nm "b4") := (pr11 _ (by decide)).trans eA11_b4
  have eA12_b5 : e12 (nm "b5") = env1 (nm "b5") := (pr11 _ (by decide)).trans eA11_b5
  have eA12_b6 : e12 (nm "b6") = env1 (nm "b6") := (pr11 _ (by decide)).trans eA11_b6
  have eA12_b7 : e12 (nm "b7") = env1 (nm "b7") := (pr11 _ (by decide)).trans eA11_b7
  have eM12_0 : e12 (nm "m0") = e1 (nm "m0") := (pr11 _ (by decide)).trans eM11_0
  have eM12_1 : e12 (nm "m1") = e2 (nm "m1") := (pr11 _ (by decide)).trans eM11_1
  have eM12_2 : e12 (nm "m2") = e3 (nm "m2") := (pr11 _ (by decide)).trans eM11_2
  have eM12_3 : e12 (nm "m3") = e4 (nm "m3") := (pr11 _ (by decide)).trans eM11_3
  have eM12_4 : e12 (nm "m4") = e5 (nm "m4") := (pr11 _ (by decide)).trans eM11_4
  have eM12_5 : e12 (nm "m5") = e6 (nm "m5") := (pr11 _ (by decide)).trans eM11_5
  have eM12_6 : e12 (nm "m6") = e7 (nm "m6") := (pr11 _ (by decide)).trans eM11_6
  have eM12_7 : e12 (nm "m7") = e8 (nm "m7") := (pr11 _ (by decide)).trans eM11_7
  have eU12_0 : e12 (nm "u0") = e9 (nm "u0") := (pr11 _ (by decide)).trans eU11_0
  have eU12_1 : e12 (nm "u1") = e10 (nm "u1") := (pr11 _ (by decide)).trans eU11_1
  have eU12_2 : e12 (nm "u2") = e11 (nm "u2") := pr11 _ (by decide)
  have ub3 := db11
  -- block 12
  have hf12 : ∀ p ∈ fqMulPairs12, isFactor (scrU (nm "u4")) p.1 = true ∧
      isFactor (scrU (nm "u4")) p.2 = true ∧
      (evW e12 senv p.1).toNat < 2 ^ 32 ∧ (evW e12 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs12]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA12_a5]; exact ha5, by rw [eA12_b7]; exact hb7⟩, ⟨by decide, by decide, by rw [eA12_a6]; exact ha6, by rw [eA12_b6]; exact hb6⟩, ⟨by decide, by decide, by rw [eA12_a7]; exact ha7, by rw [eA12_b5]; exact hb5⟩, ⟨by decide, by decide, by rw [eM12_5]; exact mb5, by rw [toNat_cw_p _ _ 811880050 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM12_6]; exact mb6, by rw [toNat_cw_p _ _ 3778125865 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM12_7]; exact mb7, by rw [toNat_cw_p _ _ 3092268470 (by decide)]; decide⟩⟩
  obtain ⟨L13, H13, db12, cb13, id12, pr12⟩ := blockU_spec senv (nm "u4") (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs12 e12 hf12 (by decide) L12 H12 cb12
  rw [← show fqMulBlk12 = macList fqMulPairs12 ++ colEndU (nm "u4") from rfl] at L13 H13 db12 cb13 id12 pr12
  rw [fqMulPairs12] at id12
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 3092268470 (by decide), toNat_cw_p _ _ 3778125865 (by decide), toNat_cw_p _ _ 811880050 (by decide), add_zero_p] at id12
  simp only [eA12_a0, eA12_a1, eA12_a2, eA12_a3, eA12_a4, eA12_a5, eA12_a6, eA12_a7, eA12_b0, eA12_b1, eA12_b2, eA12_b3, eA12_b4, eA12_b5, eA12_b6, eA12_b7, eM12_0, eM12_1, eM12_2, eM12_3, eM12_4, eM12_5, eM12_6, eM12_7] at id12
  generalize runL senv e12 fqMulBlk12 = e13 at L13 H13 db12 cb13 id12 pr12 ⊢
  have eA13_a0 : e13 (nm "a0") = env1 (nm "a0") := (pr12 _ (by decide)).trans eA12_a0
  have eA13_a1 : e13 (nm "a1") = env1 (nm "a1") := (pr12 _ (by decide)).trans eA12_a1
  have eA13_a2 : e13 (nm "a2") = env1 (nm "a2") := (pr12 _ (by decide)).trans eA12_a2
  have eA13_a3 : e13 (nm "a3") = env1 (nm "a3") := (pr12 _ (by decide)).trans eA12_a3
  have eA13_a4 : e13 (nm "a4") = env1 (nm "a4") := (pr12 _ (by decide)).trans eA12_a4
  have eA13_a5 : e13 (nm "a5") = env1 (nm "a5") := (pr12 _ (by decide)).trans eA12_a5
  have eA13_a6 : e13 (nm "a6") = env1 (nm "a6") := (pr12 _ (by decide)).trans eA12_a6
  have eA13_a7 : e13 (nm "a7") = env1 (nm "a7") := (pr12 _ (by decide)).trans eA12_a7
  have eA13_b0 : e13 (nm "b0") = env1 (nm "b0") := (pr12 _ (by decide)).trans eA12_b0
  have eA13_b1 : e13 (nm "b1") = env1 (nm "b1") := (pr12 _ (by decide)).trans eA12_b1
  have eA13_b2 : e13 (nm "b2") = env1 (nm "b2") := (pr12 _ (by decide)).trans eA12_b2
  have eA13_b3 : e13 (nm "b3") = env1 (nm "b3") := (pr12 _ (by decide)).trans eA12_b3
  have eA13_b4 : e13 (nm "b4") = env1 (nm "b4") := (pr12 _ (by decide)).trans eA12_b4
  have eA13_b5 : e13 (nm "b5") = env1 (nm "b5") := (pr12 _ (by decide)).trans eA12_b5
  have eA13_b6 : e13 (nm "b6") = env1 (nm "b6") := (pr12 _ (by decide)).trans eA12_b6
  have eA13_b7 : e13 (nm "b7") = env1 (nm "b7") := (pr12 _ (by decide)).trans eA12_b7
  have eM13_0 : e13 (nm "m0") = e1 (nm "m0") := (pr12 _ (by decide)).trans eM12_0
  have eM13_1 : e13 (nm "m1") = e2 (nm "m1") := (pr12 _ (by decide)).trans eM12_1
  have eM13_2 : e13 (nm "m2") = e3 (nm "m2") := (pr12 _ (by decide)).trans eM12_2
  have eM13_3 : e13 (nm "m3") = e4 (nm "m3") := (pr12 _ (by decide)).trans eM12_3
  have eM13_4 : e13 (nm "m4") = e5 (nm "m4") := (pr12 _ (by decide)).trans eM12_4
  have eM13_5 : e13 (nm "m5") = e6 (nm "m5") := (pr12 _ (by decide)).trans eM12_5
  have eM13_6 : e13 (nm "m6") = e7 (nm "m6") := (pr12 _ (by decide)).trans eM12_6
  have eM13_7 : e13 (nm "m7") = e8 (nm "m7") := (pr12 _ (by decide)).trans eM12_7
  have eU13_0 : e13 (nm "u0") = e9 (nm "u0") := (pr12 _ (by decide)).trans eU12_0
  have eU13_1 : e13 (nm "u1") = e10 (nm "u1") := (pr12 _ (by decide)).trans eU12_1
  have eU13_2 : e13 (nm "u2") = e11 (nm "u2") := (pr12 _ (by decide)).trans eU12_2
  have eU13_3 : e13 (nm "u3") = e12 (nm "u3") := pr12 _ (by decide)
  have ub4 := db12
  -- block 13
  have hf13 : ∀ p ∈ fqMulPairs13, isFactor (scrU (nm "u5")) p.1 = true ∧
      isFactor (scrU (nm "u5")) p.2 = true ∧
      (evW e13 senv p.1).toNat < 2 ^ 32 ∧ (evW e13 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs13]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA13_a6]; exact ha6, by rw [eA13_b7]; exact hb7⟩, ⟨by decide, by decide, by rw [eA13_a7]; exact ha7, by rw [eA13_b6]; exact hb6⟩, ⟨by decide, by decide, by rw [eM13_6]; exact mb6, by rw [toNat_cw_p _ _ 811880050 (by decide)]; decide⟩, ⟨by decide, by decide, by rw [eM13_7]; exact mb7, by rw [toNat_cw_p _ _ 3778125865 (by decide)]; decide⟩⟩
  obtain ⟨L14, H14, db13, cb14, id13, pr13⟩ := blockU_spec senv (nm "u5") (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs13 e13 hf13 (by decide) L13 H13 cb13
  rw [← show fqMulBlk13 = macList fqMulPairs13 ++ colEndU (nm "u5") from rfl] at L14 H14 db13 cb14 id13 pr13
  rw [fqMulPairs13] at id13
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 3778125865 (by decide), toNat_cw_p _ _ 811880050 (by decide), add_zero_p] at id13
  simp only [eA13_a0, eA13_a1, eA13_a2, eA13_a3, eA13_a4, eA13_a5, eA13_a6, eA13_a7, eA13_b0, eA13_b1, eA13_b2, eA13_b3, eA13_b4, eA13_b5, eA13_b6, eA13_b7, eM13_0, eM13_1, eM13_2, eM13_3, eM13_4, eM13_5, eM13_6, eM13_7] at id13
  generalize runL senv e13 fqMulBlk13 = e14 at L14 H14 db13 cb14 id13 pr13 ⊢
  have eA14_a0 : e14 (nm "a0") = env1 (nm "a0") := (pr13 _ (by decide)).trans eA13_a0
  have eA14_a1 : e14 (nm "a1") = env1 (nm "a1") := (pr13 _ (by decide)).trans eA13_a1
  have eA14_a2 : e14 (nm "a2") = env1 (nm "a2") := (pr13 _ (by decide)).trans eA13_a2
  have eA14_a3 : e14 (nm "a3") = env1 (nm "a3") := (pr13 _ (by decide)).trans eA13_a3
  have eA14_a4 : e14 (nm "a4") = env1 (nm "a4") := (pr13 _ (by decide)).trans eA13_a4
  have eA14_a5 : e14 (nm "a5") = env1 (nm "a5") := (pr13 _ (by decide)).trans eA13_a5
  have eA14_a6 : e14 (nm "a6") = env1 (nm "a6") := (pr13 _ (by decide)).trans eA13_a6
  have eA14_a7 : e14 (nm "a7") = env1 (nm "a7") := (pr13 _ (by decide)).trans eA13_a7
  have eA14_b0 : e14 (nm "b0") = env1 (nm "b0") := (pr13 _ (by decide)).trans eA13_b0
  have eA14_b1 : e14 (nm "b1") = env1 (nm "b1") := (pr13 _ (by decide)).trans eA13_b1
  have eA14_b2 : e14 (nm "b2") = env1 (nm "b2") := (pr13 _ (by decide)).trans eA13_b2
  have eA14_b3 : e14 (nm "b3") = env1 (nm "b3") := (pr13 _ (by decide)).trans eA13_b3
  have eA14_b4 : e14 (nm "b4") = env1 (nm "b4") := (pr13 _ (by decide)).trans eA13_b4
  have eA14_b5 : e14 (nm "b5") = env1 (nm "b5") := (pr13 _ (by decide)).trans eA13_b5
  have eA14_b6 : e14 (nm "b6") = env1 (nm "b6") := (pr13 _ (by decide)).trans eA13_b6
  have eA14_b7 : e14 (nm "b7") = env1 (nm "b7") := (pr13 _ (by decide)).trans eA13_b7
  have eM14_0 : e14 (nm "m0") = e1 (nm "m0") := (pr13 _ (by decide)).trans eM13_0
  have eM14_1 : e14 (nm "m1") = e2 (nm "m1") := (pr13 _ (by decide)).trans eM13_1
  have eM14_2 : e14 (nm "m2") = e3 (nm "m2") := (pr13 _ (by decide)).trans eM13_2
  have eM14_3 : e14 (nm "m3") = e4 (nm "m3") := (pr13 _ (by decide)).trans eM13_3
  have eM14_4 : e14 (nm "m4") = e5 (nm "m4") := (pr13 _ (by decide)).trans eM13_4
  have eM14_5 : e14 (nm "m5") = e6 (nm "m5") := (pr13 _ (by decide)).trans eM13_5
  have eM14_6 : e14 (nm "m6") = e7 (nm "m6") := (pr13 _ (by decide)).trans eM13_6
  have eM14_7 : e14 (nm "m7") = e8 (nm "m7") := (pr13 _ (by decide)).trans eM13_7
  have eU14_0 : e14 (nm "u0") = e9 (nm "u0") := (pr13 _ (by decide)).trans eU13_0
  have eU14_1 : e14 (nm "u1") = e10 (nm "u1") := (pr13 _ (by decide)).trans eU13_1
  have eU14_2 : e14 (nm "u2") = e11 (nm "u2") := (pr13 _ (by decide)).trans eU13_2
  have eU14_3 : e14 (nm "u3") = e12 (nm "u3") := (pr13 _ (by decide)).trans eU13_3
  have eU14_4 : e14 (nm "u4") = e13 (nm "u4") := pr13 _ (by decide)
  have ub5 := db13
  -- block 14
  have hf14 : ∀ p ∈ fqMulPairs14, isFactor (scrU (nm "u6")) p.1 = true ∧
      isFactor (scrU (nm "u6")) p.2 = true ∧
      (evW e14 senv p.1).toNat < 2 ^ 32 ∧ (evW e14 senv p.2).toNat < 2 ^ 32 := by
    rw [fqMulPairs14]
    simp only [List.mem_cons, List.not_mem_nil, or_false, forall_eq_or_imp, forall_eq, evW_lv_p]
    exact ⟨⟨by decide, by decide, by rw [eA14_a7]; exact ha7, by rw [eA14_b7]; exact hb7⟩, ⟨by decide, by decide, by rw [eM14_7]; exact mb7, by rw [toNat_cw_p _ _ 811880050 (by decide)]; decide⟩⟩
  obtain ⟨L15, H15, db14, cb15, id14, pr14⟩ := blockU_spec senv (nm "u6") (by decide) (by decide) (by decide) (by decide) (by decide)
    fqMulPairs14 e14 hf14 (by decide) L14 H14 cb14
  rw [← show fqMulBlk14 = macList fqMulPairs14 ++ colEndU (nm "u6") from rfl] at L15 H15 db14 cb15 id14 pr14
  rw [fqMulPairs14] at id14
  simp only [sumP_cons_p, sumP_nil_p, evW_lv_p, toNat_cw_p _ _ 811880050 (by decide), add_zero_p] at id14
  simp only [eA14_a0, eA14_a1, eA14_a2, eA14_a3, eA14_a4, eA14_a5, eA14_a6, eA14_a7, eA14_b0, eA14_b1, eA14_b2, eA14_b3, eA14_b4, eA14_b5, eA14_b6, eA14_b7, eM14_0, eM14_1, eM14_2, eM14_3, eM14_4, eM14_5, eM14_6, eM14_7] at id14
  generalize runL senv e14 fqMulBlk14 = e15 at L15 H15 db14 cb15 id14 pr14 ⊢
  have eA15_a0 : e15 (nm "a0") = env1 (nm "a0") := (pr14 _ (by decide)).trans eA14_a0
  have eA15_a1 : e15 (nm "a1") = env1 (nm "a1") := (pr14 _ (by decide)).trans eA14_a1
  have eA15_a2 : e15 (nm "a2") = env1 (nm "a2") := (pr14 _ (by decide)).trans eA14_a2
  have eA15_a3 : e15 (nm "a3") = env1 (nm "a3") := (pr14 _ (by decide)).trans eA14_a3
  have eA15_a4 : e15 (nm "a4") = env1 (nm "a4") := (pr14 _ (by decide)).trans eA14_a4
  have eA15_a5 : e15 (nm "a5") = env1 (nm "a5") := (pr14 _ (by decide)).trans eA14_a5
  have eA15_a6 : e15 (nm "a6") = env1 (nm "a6") := (pr14 _ (by decide)).trans eA14_a6
  have eA15_a7 : e15 (nm "a7") = env1 (nm "a7") := (pr14 _ (by decide)).trans eA14_a7
  have eA15_b0 : e15 (nm "b0") = env1 (nm "b0") := (pr14 _ (by decide)).trans eA14_b0
  have eA15_b1 : e15 (nm "b1") = env1 (nm "b1") := (pr14 _ (by decide)).trans eA14_b1
  have eA15_b2 : e15 (nm "b2") = env1 (nm "b2") := (pr14 _ (by decide)).trans eA14_b2
  have eA15_b3 : e15 (nm "b3") = env1 (nm "b3") := (pr14 _ (by decide)).trans eA14_b3
  have eA15_b4 : e15 (nm "b4") = env1 (nm "b4") := (pr14 _ (by decide)).trans eA14_b4
  have eA15_b5 : e15 (nm "b5") = env1 (nm "b5") := (pr14 _ (by decide)).trans eA14_b5
  have eA15_b6 : e15 (nm "b6") = env1 (nm "b6") := (pr14 _ (by decide)).trans eA14_b6
  have eA15_b7 : e15 (nm "b7") = env1 (nm "b7") := (pr14 _ (by decide)).trans eA14_b7
  have eM15_0 : e15 (nm "m0") = e1 (nm "m0") := (pr14 _ (by decide)).trans eM14_0
  have eM15_1 : e15 (nm "m1") = e2 (nm "m1") := (pr14 _ (by decide)).trans eM14_1
  have eM15_2 : e15 (nm "m2") = e3 (nm "m2") := (pr14 _ (by decide)).trans eM14_2
  have eM15_3 : e15 (nm "m3") = e4 (nm "m3") := (pr14 _ (by decide)).trans eM14_3
  have eM15_4 : e15 (nm "m4") = e5 (nm "m4") := (pr14 _ (by decide)).trans eM14_4
  have eM15_5 : e15 (nm "m5") = e6 (nm "m5") := (pr14 _ (by decide)).trans eM14_5
  have eM15_6 : e15 (nm "m6") = e7 (nm "m6") := (pr14 _ (by decide)).trans eM14_6
  have eM15_7 : e15 (nm "m7") = e8 (nm "m7") := (pr14 _ (by decide)).trans eM14_7
  have eU15_0 : e15 (nm "u0") = e9 (nm "u0") := (pr14 _ (by decide)).trans eU14_0
  have eU15_1 : e15 (nm "u1") = e10 (nm "u1") := (pr14 _ (by decide)).trans eU14_1
  have eU15_2 : e15 (nm "u2") = e11 (nm "u2") := (pr14 _ (by decide)).trans eU14_2
  have eU15_3 : e15 (nm "u3") = e12 (nm "u3") := (pr14 _ (by decide)).trans eU14_3
  have eU15_4 : e15 (nm "u4") = e13 (nm "u4") := (pr14 _ (by decide)).trans eU14_4
  have eU15_5 : e15 (nm "u5") = e14 (nm "u5") := pr14 _ (by decide)
  have ub6 := db14
  simp only [eM15_0, eM15_1, eM15_2, eM15_3, eM15_4, eM15_5, eM15_6, eM15_7, eU15_0, eU15_1, eU15_2, eU15_3, eU15_4, eU15_5]
  refine ⟨ub0, ub1, ub2, ub3, ub4, ub5, ub6, mb0, mb1, mb2, mb3, mb4, mb5, mb6, mb7, cb15, ?_⟩
  have hc0 : (env1 (nm "c")).toNat = 0 := by rw [hc]; rfl
  exact mont_assemble (env1 (nm "a0")).toNat (env1 (nm "a1")).toNat (env1 (nm "a2")).toNat (env1 (nm "a3")).toNat (env1 (nm "a4")).toNat (env1 (nm "a5")).toNat (env1 (nm "a6")).toNat (env1 (nm "a7")).toNat
    (env1 (nm "b0")).toNat (env1 (nm "b1")).toNat (env1 (nm "b2")).toNat (env1 (nm "b3")).toNat (env1 (nm "b4")).toNat (env1 (nm "b5")).toNat (env1 (nm "b6")).toNat (env1 (nm "b7")).toNat
    (e1 (nm "m0")).toNat (e2 (nm "m1")).toNat (e3 (nm "m2")).toNat (e4 (nm "m3")).toNat (e5 (nm "m4")).toNat (e6 (nm "m5")).toNat (e7 (nm "m6")).toNat (e8 (nm "m7")).toNat
    (e9 (nm "u0")).toNat (e10 (nm "u1")).toNat (e11 (nm "u2")).toNat (e12 (nm "u3")).toNat (e13 (nm "u4")).toNat (e14 (nm "u5")).toNat (e15 (nm "u6")).toNat
    (env1 (nm "c")).toNat (e1 (nm "c")).toNat (e2 (nm "c")).toNat (e3 (nm "c")).toNat (e4 (nm "c")).toNat (e5 (nm "c")).toNat (e6 (nm "c")).toNat (e7 (nm "c")).toNat (e8 (nm "c")).toNat (e9 (nm "c")).toNat (e10 (nm "c")).toNat (e11 (nm "c")).toNat (e12 (nm "c")).toNat (e13 (nm "c")).toNat (e14 (nm "c")).toNat (e15 (nm "c")).toNat
    hc0 id0 id1 id2 id3 id4 id5 id6 id7 id8 id9 id10 id11 id12 id13 id14

end InitECandidate.Solver.Spec.Fq12
