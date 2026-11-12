import InitECandidate.Solver.MemSafe.Check

/-!
# The prototype checker on real guest functions

A cut-down type table: `EV` (the frame record, 35 slots; the `run_frames` measure fields
and the fields with dependent invariants are `prot`), `BS` (block state), `HTAB` (abstract:
all slots `prot`, written only by the hand-verified hash-table API), `WS`, `LST`.
Global typing: `ev : EV`, `bs : BS`, `ws : WS`.

Kernel-checked by `decide_cbv` on the per-function `guestFn_*` declarations:

* accepted: `pc_add` (`st ev + EV_PC, lds (ev + EV_PC) + n`), `track_ancestor_access`
  (two `bs` scalar fields under nested branches);
* rejected because they store a protected field: `op_stop` (`EV_RUNNING`),
  `incorporate_child_on_error` (`EV_GAS_LEFT`), `frame_halt` (`EV_GAS_LEFT`);
* `Safe` for the accepted bodies follows from `chk_sound`.
-/

set_option maxRecDepth 100000
set_option cbv.maxSteps 400000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Proto
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL progToHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- The translated body of a guest declaration. -/
def bodyOf (d : Flapjack.Decl (BitVec 64)) : ProgHOL 64 :=
  match d with
  | .function fd => progToHOL fd.body
  | _ => .skip

/-- `EV` (`evm.pnk` `EV_*`, 280 bytes). -/
def evTy : List FK :=
  [ .scalar,           -- 0   PC
    .prot, .prot,      -- 8   STACK, 16 SP
    .prot, .prot, .prot, -- 24 MEM, 32 MEM_LEN, 40 MEM_CAP
    .scalar, .scalar,  -- 48  CODE, 56 CODE_N (read only)
    .prot,             -- 64  GAS_LEFT (measure)
    .scalar,           -- 72  STATE_GAS_LEFT
    .scalar,           -- 80  JUMPDESTS (read only)
    .ptr 4,            -- 88  LOGS
    .scalar,           -- 96  REFUND
    .prot,             -- 104 RUNNING (measure)
    .scalar,           -- 112 MSG
    .scalar, .prot,    -- 120 OUTPUT, 128 OUTPUT_N (bounded length)
    .ptr 2,            -- 136 DELETE
    .prot, .scalar,    -- 144 RETDATA (capacity RETDATA_CAP), 152 RETDATA_N
    .scalar,           -- 160 ERROR
    .ptr 2, .ptr 2,    -- 168 ACC_ADDRS, 176 ACC_KEYS
    .scalar,           -- 184 REGULAR_GAS_USED
    .prot,             -- 192 STATE_GAS_SPILLED (measure)
    .scalar,           -- 200 AUTH_STATE_GAS_USED
    .prot, .prot, .prot, .prot, -- 208 STACK_MARK, 216 RETDATA_CAP, 224 MEM_MARK, 232 STACK_CAP
    .scalar, .scalar, .scalar,  -- 240 ADDR_TMP (24 bytes)
    .scalar, .scalar ] -- 264 ACC_ADDRS_N, 272 ACC_KEYS_N

/-- `BS` (`state.pnk` `BS_*`). -/
def bsTy : List FK :=
  [.ptr 3, .ptr 2, .ptr 2, .ptr 2, .ptr 2, .ptr 2, .ptr 2, .scalar, .scalar, .ptr 2]

/-- `HTAB` header (`htab.pnk`, 88 bytes): abstract. -/
def htabTy : List FK := List.replicate 11 .prot

/-- `WS` (`state.pnk` `WS_*`). -/
def wsTy : List FK := [.scalar, .scalar, .scalar, .scalar, .ptr 2]

/-- `LST` (`bal.pnk`): abstract. -/
def lstTy : List FK := [.prot, .prot, .prot]

def demoT : TyTab := [evTy, bsTy, htabTy, wsTy, lstTy]

def demoGT : List (MlS × Nat) := [(nm "ev", 0), (nm "bs", 1), (nm "ws", 3)]

/-- Environment for a function whose one-word parameters are `ps`. -/
def envP (ps : List String) : Env := ⟨demoT, demoGT, [], ps.map nm⟩

theorem chk_pc_add : chk (envP ["n"]) (bodyOf Guest.Software.guestFn_pc_add) = true := by
  decide_cbv

theorem chk_track_ancestor_access :
    chk (envP ["offset"]) (bodyOf Guest.Software.guestFn_track_ancestor_access) = true := by
  decide_cbv

theorem chk_op_stop_rejected : chk (envP []) (bodyOf Guest.Software.guestFn_op_stop) = false := by
  decide_cbv

theorem chk_incorporate_rejected :
    chk (envP ["child"]) (bodyOf Guest.Software.guestFn_incorporate_child_on_error) = false := by
  decide_cbv

theorem chk_frame_halt_rejected :
    chk (envP ["err"]) (bodyOf Guest.Software.guestFn_frame_halt) = false := by
  decide_cbv

/-- `pc_add` keeps the typed-heap invariant under every ghost typing. -/
theorem safe_pc_add {σ : Type} {X : Ctx 64} :
    Safe σ X (envP ["n"]) (bodyOf Guest.Software.guestFn_pc_add) :=
  chk_sound _ chk_pc_add

theorem safe_track_ancestor_access {σ : Type} {X : Ctx 64} :
    Safe σ X (envP ["offset"]) (bodyOf Guest.Software.guestFn_track_ancestor_access) :=
  chk_sound _ chk_track_ancestor_access

end InitECandidate.Solver.MemSafe.Proto
