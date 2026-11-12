import InitECandidate.Solver.MemSafe.Init.Main11

/-!
# Init: `main`'s conditional cost (I2)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
set_option cbv.maxSteps 4000000000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Aw
open Guest.Software

variable {σ : Type}

abbrev ic (f : String) : ProgHOL 64 := .call (some (none, none)) (nm f) []

def mainBodyE : ProgHOL 64 :=
  .seq (ic "mem_init") (.seq (ic "sha256_init") (.seq (ic "keccak_init") (.seq (ic "ssz_init")
  (.seq (ic "mpt_init") (.seq (ic "u256_ws_init") (.seq (ic "secp256k1_init") (.seq (ic "bn254_init")
  (.seq (ic "bls_precompiles_init") (.seq (ic "ripemd160_init") (.seq (ic "blake2_init") (.seq (ic "header_init")
  (.seq (ic "evm_init") (.seq (ic "fork_init") mainRestE)))))))))))))

theorem mainBody_eq : mainBody = mainBodyE := by
  conv => lhs; cbv
  conv => rhs; cbv
  rfl

theorem tbs (f : String) (h : (Shards.finalState.1.lookup (nm f)).isSome = true) :
    Cost σ guestCtx (ic f) (1 + tbN f + 0) := cost_tb f h

theorem tb_inits : ["mem_init", "sha256_init", "keccak_init", "ssz_init", "mpt_init", "u256_ws_init", "secp256k1_init",
    "bn254_init", "bls_precompiles_init", "ripemd160_init", "blake2_init", "header_init", "evm_init", "fork_init"].all
    (fun f => (Shards.finalState.1.lookup (nm f)).isSome) = true := by decide +kernel

theorem tbi (f : String) (h : f ∈ ["mem_init", "sha256_init", "keccak_init", "ssz_init", "mpt_init", "u256_ws_init",
    "secp256k1_init", "bn254_init", "bls_precompiles_init", "ripemd160_init", "blake2_init", "header_init",
    "evm_init", "fork_init"]) : (Shards.finalState.1.lookup (nm f)).isSome = true := by
  have := List.all_eq_true.mp tb_inits f h
  simpa using this

theorem cost_main_body {Bv : Nat}
    (hV : CondCost σ guestCtx guestC (HR σ) (nm "verify_stateless_new_payload") Band.sgSi VerPre Bv) :
    Inv.CostP σ guestCtx PInit mainBody (bPre Bv) := by
  rw [mainBody_eq]
  refine step_mem (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_sha (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_keccak (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_ssz (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_mpt (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_u256 (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_secp (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_bn (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_bls (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_rmd (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_b2 (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_hdr (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_evm (tbs _ (tbi _ (by simp))) ?_
  refine step_init fs_fork (tbs _ (tbi _ (by simp))) ?_
  rw [pn13_nil, ← mainRest_eq]
  exact cost_rest hV

end InitECandidate.Solver.MemSafe.Init
