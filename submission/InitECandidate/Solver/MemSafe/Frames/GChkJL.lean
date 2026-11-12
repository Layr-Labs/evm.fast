import InitECandidate.Solver.MemSafe.Frames.GChkKC
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The gas checker at `guestHooksR`: the 51 accepted handlers (frames11, task 3)

* **`gtab`**: the 34 plain callees of the accepted handlers, a sub-table of `ShardsJL.tab26`
  (`gtab_sound`), `gfp` their `KeepsFp` list (`gfp_sound`), **`gE`** the checker environment.
* **`gchk_jl d hv hchk M`**: a guest declaration `d` whose body the checker accepts
  (`gc gE false body = some true`, by `decide +kernel`) is a `run_frames` step:
  `JSpec … (PreOpX … M) (QStepX …)`.
* **`j_op_X`** for the 51 handlers the checker accepts (every handler in `ShardsJL.tab26` except
  `op_exp` (dynamic charge `10 + 50 * nb`), `op_tload` / `op_tstore` (`u256_to_be32`'s `buf 32`
  argument on `evm_key_buf`)).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

-- Signatures are compared by the kernel in `gtab_sub`.
deriving instance DecidableEq for Sig

variable {σ : Type}

/-- The plain callees of the accepted handlers (entries of `ShardsJL.tab26`). -/
def gtab : CTab :=
  [(nm "stack_pop", ⟨[], [], [], false⟩, [⟨nm "ev", 0, [2], false⟩]),
   (nm "u256_add", ⟨[.any, .any], [], [], false⟩, []),
   (nm "stack_push", ⟨[.any], [], [], true⟩, [⟨nm "ev", 0, [1, 2, 29], false⟩]),
   (nm "pc_add", ⟨[.any], [], [], false⟩, []),
   (nm "u256_mul", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_sub", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_div", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_sdiv", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_mod", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_smod", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_addmod", ⟨[.any, .any, .any], [], [], false⟩, []),
   (nm "u256_mulmod", ⟨[.any, .any, .any], [], [], false⟩, []),
   (nm "sat_word", ⟨[.any], [], [], false⟩, []),
   (nm "u256_signextend", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_lt", ⟨[.any, .any], [], [], false⟩, []),
   (nm "stack_push_bool", ⟨[.any], [], [], true⟩, [⟨nm "ev", 0, [1, 2, 29], false⟩]),
   (nm "u256_gt", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_slt", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_sgt", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_eq", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_is_zero", ⟨[.any], [], [], false⟩, []),
   (nm "u256_byte", ⟨[.any, .any], [], [], false⟩, []),
   (nm "stack_push_word", ⟨[.any], [], [], true⟩, [⟨nm "ev", 0, [1, 2, 29], false⟩]),
   (nm "u256_shl", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_shr", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_sar", ⟨[.any, .any], [], [], false⟩, []),
   (nm "u256_bit_length", ⟨[.any], [], [], false⟩, []),
   (nm "code_imm", ⟨[], [], [], false⟩, []),
   (nm "decode_single", ⟨[.any], [], [], false⟩, []),
   (nm "address_to_u256", ⟨[.any], [], [], false⟩, []),
   (nm "block_env", ⟨[], [], [], false⟩, []),
   (nm "u256_from_be", ⟨[.any, .any], [], [], false⟩, []),
   (nm "calculate_blob_gas_price", ⟨[.any], [], [], false⟩, []),
   (nm "track_ancestor_access", ⟨[.any], [], [], false⟩, [])]

/-- Their names (the `KeepsFp` list). -/
def gfp : List MlS := gtab.map (·.1)

/-- **The checker environment at `guestHooksR`.** -/
def gE : GEnv := ⟨gtab, gfp, [Hooks.gJn]⟩

/-- `gtab` is a sub-table of the merged fold table (kernel-checked). -/
theorem gtab_sub : ∀ q ∈ gtab, q ∈ ShardsJL.tab26 := by decide +kernel

theorem gtab_sound : CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) gtab :=
  fun f sg cs h => tabJL_guestR f sg cs (gtab_sub _ h)

/-- Every name of `gfp` is in the `KeepsFp` table (kernel-checked). -/
theorem gfp_sub : ∀ f ∈ gfp, f ∈ Shards.fptab26 := by decide +kernel

theorem gfp_sound : ∀ f ∈ gfp, KeepsFp σ guestCtx f := fun f h => Wire.keepsFp_guest (gfp_sub f h)

theorem charge_fp : KeepsFp σ guestCtx (nm "charge_gas") := Wire.keepsFp_guest (by decide_cbv)

/-- **An accepted guest handler is a `run_frames` step** at `guestHooksR`. -/
theorem gchk_jl (d : Flapjack.Decl (BitVec 64)) (hv : PairValid (declPair d))
    (hchk : gc gE false (declPair d).2.2 = some true) (M : Nat) :
    JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (declPair d).1
      (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  let ⟨_, hcode⟩ := hv
  gc_jSpec guestCtx_code Hooks.frameCfg_guestHooksR gtab_sound gfp_sound charge_fp hcode hchk M

theorem j_op_add (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_add")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_add (declPair_valid (List.getElem_mem (n := 475) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_mul (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_mul")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_mul (declPair_valid (List.getElem_mem (n := 476) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_sub (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_sub")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_sub (declPair_valid (List.getElem_mem (n := 477) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_div (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_div")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_div (declPair_valid (List.getElem_mem (n := 478) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_sdiv (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_sdiv")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_sdiv (declPair_valid (List.getElem_mem (n := 479) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_mod (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_mod")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_mod (declPair_valid (List.getElem_mem (n := 480) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_smod (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_smod")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_smod (declPair_valid (List.getElem_mem (n := 481) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_addmod (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_addmod")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_addmod (declPair_valid (List.getElem_mem (n := 482) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_mulmod (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_mulmod")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_mulmod (declPair_valid (List.getElem_mem (n := 483) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_signextend (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_signextend")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_signextend (declPair_valid (List.getElem_mem (n := 485) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_lt (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_lt")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_lt (declPair_valid (List.getElem_mem (n := 486) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_gt (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_gt")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_gt (declPair_valid (List.getElem_mem (n := 487) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_slt (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_slt")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_slt (declPair_valid (List.getElem_mem (n := 488) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_sgt (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_sgt")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_sgt (declPair_valid (List.getElem_mem (n := 489) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_eq (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_eq")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_eq (declPair_valid (List.getElem_mem (n := 490) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_iszero (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_iszero")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_iszero (declPair_valid (List.getElem_mem (n := 491) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_and (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_and")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_and (declPair_valid (List.getElem_mem (n := 492) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_or (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_or")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_or (declPair_valid (List.getElem_mem (n := 493) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_xor (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_xor")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_xor (declPair_valid (List.getElem_mem (n := 494) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_not (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_not")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_not (declPair_valid (List.getElem_mem (n := 495) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_byte (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_byte")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_byte (declPair_valid (List.getElem_mem (n := 496) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_shl (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_shl")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_shl (declPair_valid (List.getElem_mem (n := 497) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_shr (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_shr")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_shr (declPair_valid (List.getElem_mem (n := 498) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_sar (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_sar")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_sar (declPair_valid (List.getElem_mem (n := 499) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_clz (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_clz")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_clz (declPair_valid (List.getElem_mem (n := 500) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_pc (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_pc")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_pc (declPair_valid (List.getElem_mem (n := 505) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_gas (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_gas")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_gas (declPair_valid (List.getElem_mem (n := 506) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_jumpdest (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_jumpdest")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_jumpdest (declPair_valid (List.getElem_mem (n := 507) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_msize (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_msize")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_msize (declPair_valid (List.getElem_mem (n := 511) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_pop (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_pop")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_pop (declPair_valid (List.getElem_mem (n := 513) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_dup (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dup")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_dup (declPair_valid (List.getElem_mem (n := 515) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_dupn (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dupn")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_dupn (declPair_valid (List.getElem_mem (n := 520) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_address (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_address")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_address (declPair_valid (List.getElem_mem (n := 531) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_origin (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_origin")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_origin (declPair_valid (List.getElem_mem (n := 533) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_caller (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_caller")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_caller (declPair_valid (List.getElem_mem (n := 534) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_callvalue (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_callvalue")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_callvalue (declPair_valid (List.getElem_mem (n := 535) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_calldatasize (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_calldatasize")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_calldatasize (declPair_valid (List.getElem_mem (n := 537) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_codesize (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_codesize")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_codesize (declPair_valid (List.getElem_mem (n := 540) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_gasprice (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_gasprice")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_gasprice (declPair_valid (List.getElem_mem (n := 542) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_returndatasize (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_returndatasize")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_returndatasize (declPair_valid (List.getElem_mem (n := 546) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_basefee (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_basefee")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_basefee (declPair_valid (List.getElem_mem (n := 551) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_blobhash (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_blobhash")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_blobhash (declPair_valid (List.getElem_mem (n := 552) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_blobbasefee (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_blobbasefee")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_blobbasefee (declPair_valid (List.getElem_mem (n := 553) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_blockhash (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_blockhash")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_blockhash (declPair_valid (List.getElem_mem (n := 554) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_coinbase (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_coinbase")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_coinbase (declPair_valid (List.getElem_mem (n := 555) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_timestamp (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_timestamp")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_timestamp (declPair_valid (List.getElem_mem (n := 556) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_number (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_number")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_number (declPair_valid (List.getElem_mem (n := 557) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_gaslimit (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_gaslimit")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_gaslimit (declPair_valid (List.getElem_mem (n := 558) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_chainid (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_chainid")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_chainid (declPair_valid (List.getElem_mem (n := 559) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_prevrandao (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_prevrandao")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_prevrandao (declPair_valid (List.getElem_mem (n := 560) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

theorem j_op_slotnum (M : Nat) : JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_slotnum")
    (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) :=
  gchk_jl Guest.Software.guestFn_op_slotnum (declPair_valid (List.getElem_mem (n := 561) (by decide)) ⟨_, rfl⟩)
    (by decide +kernel) M

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gtab_sound
#print axioms InitECandidate.Solver.MemSafe.Frames.gchk_jl
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_add
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_mul
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_sub
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_div
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_sdiv
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_mod
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_smod
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_addmod
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_mulmod
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_signextend
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_lt
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_gt
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_slt
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_sgt
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_eq
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_iszero
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_and
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_or
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_xor
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_not
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_byte
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_shl
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_shr
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_sar
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_clz
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_pc
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_gas
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_jumpdest
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_msize
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_pop
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_dup
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_dupn
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_address
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_origin
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_caller
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_callvalue
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_calldatasize
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_codesize
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_gasprice
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_returndatasize
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_basefee
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_blobhash
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_blobbasefee
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_blockhash
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_coinbase
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_timestamp
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_number
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_gaslimit
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_chainid
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_prevrandao
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_slotnum
