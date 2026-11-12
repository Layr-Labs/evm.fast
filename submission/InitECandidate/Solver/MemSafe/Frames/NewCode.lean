import InitECandidate.Solver.MemSafe.Frames.MzVal

/-!
# `frame_new`: the code, `NoExc`, and the tracking state

```
fun 1 frame_new(1 msg) {
  var 1 stack_mark = scratch_mark(); var 1 mem_mark = frame_mem_mark();
  var 1 e = scratch_alloc(EV_SIZE); memzero(e, EV_SIZE);
  var 1 stk = scratch_alloc(STACK_INIT_CAP * 32);
  st e + EV_STACK_MARK, stack_mark; st e + EV_STACK, stk; st e + EV_STACK_CAP, STACK_INIT_CAP;
  var 1 mem = frame_mem_alloc(1024);
  st e + EV_MEM_MARK, mem_mark; st e + EV_MEM, mem; st e + EV_MEM_CAP, 1024;
  st e + EV_CODE, lds 1 (msg + MSG_CODE); ... (CODE_N, GAS_LEFT, STATE_GAS_LEFT)
  var 1 jd = compute_jumpdests(...); st e + EV_JUMPDESTS, jd;
  var 1 logs = lst_new_scratch(8, 4); st e + EV_LOGS, logs; st e + EV_RUNNING, 1; st e + EV_MSG, msg;
  var 1 del = htab_new_scratch(20, 4); st e + EV_DELETE, del;
  st e + EV_ACC_ADDRS, lds 1 (msg + MSG_ACC_ADDRS); st e + EV_ACC_KEYS, lds 1 (msg + MSG_ACC_KEYS);
  var 1 acc_n = htab_count(...); st e + EV_ACC_ADDRS_N, acc_n;
  acc_n = htab_count(...); st e + EV_ACC_KEYS_N, acc_n;
  st e + EV_OUTPUT, evm_empty; st e + EV_RETDATA, evm_empty; st e + EV_RETDATA_CAP, 0;
  return e; }
```

* `fnewBody` (`code_fnew`, `guestAst[467]`); `noExc_fnew`: only returns and abortive results
  (`xChk` over the callees `fnewX`).
* The tracking state of the body: `FNM` (memory / globals part: `Trk` with no protected writes,
  the EV block `e` (`FBlk`: aligned, fresh at entry, outside `Γ`, live), the fields stored so far
  with the slot kinds they fit, objects known to be in `Γ`, the `frame_mem_ptr` value) and `FNS`
  (plus word locals).
* Steps: `fns_store` (a store into the EV block), `fnm_call` (a summarized call: the block and
  the stored fields survive), `fns_bind` (a call result bound to a new local).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Struct
open InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## The code -/

/-- `lds 1 (x + k)` for a local `x`. -/
def ldL (x : String) (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm x), cw k])

def fnewT5 : ProgHOL 64 :=
  .seq (stL "e" 136 (lv (nm "del")))
  (.seq (stL "e" 168 (ldL "msg" 152))
  (.seq (stL "e" 176 (ldL "msg" 160))
  (.decCall (nm "acc_n") .one (nm "htab_count") [ldL "msg" 152]
  (.seq (stL "e" 264 (lv (nm "acc_n")))
  (.seq (.call (some (some (.local, nm "acc_n"), none)) (nm "htab_count") [ldL "msg" 160])
  (.seq (stL "e" 272 (lv (nm "acc_n")))
  (.seq (stL "e" 120 (gv (nm "evm_empty")))
  (.seq (stL "e" 144 (gv (nm "evm_empty")))
  (.seq (stL "e" 216 (cw 0))
  (.return (lv (nm "e"))))))))))))

def fnewT4 : ProgHOL 64 :=
  .seq (stL "e" 88 (lv (nm "logs")))
  (.seq (stL "e" 104 (cw 1))
  (.seq (stL "e" 112 (lv (nm "msg")))
  (.decCall (nm "del") .one (nm "htab_new_scratch") [cw 20, cw 4] fnewT5)))

def fnewT3 : ProgHOL 64 :=
  .seq (stL "e" 80 (lv (nm "jd")))
  (.decCall (nm "logs") .one (nm "lst_new_scratch") [cw 8, cw 4] fnewT4)

def fnewT2 : ProgHOL 64 :=
  .seq (stL "e" 224 (lv (nm "mem_mark")))
  (.seq (stL "e" 24 (lv (nm "mem")))
  (.seq (stL "e" 40 (cw 1024))
  (.seq (stL "e" 48 (ldL "msg" 112))
  (.seq (stL "e" 56 (ldL "msg" 120))
  (.seq (stL "e" 64 (ldL "msg" 40))
  (.seq (stL "e" 72 (ldL "msg" 48))
  (.decCall (nm "jd") .one (nm "compute_jumpdests") [ldL "msg" 112, ldL "msg" 120] fnewT3)))))))

def fnewT1 : ProgHOL 64 :=
  .seq (stL "e" 208 (lv (nm "stack_mark")))
  (.seq (stL "e" 8 (lv (nm "stk")))
  (.seq (stL "e" 232 (cw 32))
  (.decCall (nm "mem") .one (nm "frame_mem_alloc") [cw 1024] fnewT2)))

def fnewBody : ProgHOL 64 :=
  .decCall (nm "stack_mark") .one (nm "scratch_mark") []
  (.decCall (nm "mem_mark") .one (nm "frame_mem_mark") []
  (.decCall (nm "e") .one (nm "scratch_alloc") [cw 280]
  (.seq (callD (nm "memzero") [lv (nm "e"), cw 280])
  (.decCall (nm "stk") .one (nm "scratch_alloc") [.panop .mul [cw 32, cw 32]] fnewT1))))

theorem entry_fnew : fnEntry Guest.Software.guestFn_frame_new =
    (nm "frame_new", [(nm "msg", .one)], fnewBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_fnew : guestCode (nm "frame_new") = some ([(nm "msg", .one)], fnewBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 467) (by decide)) ⟨_, rfl⟩
    entry_fnew

/-! ## Only returns and abortive results -/

theorem xchk_fn_scratch_alloc :
    xChk [nm "trap_with"] false (declPair Guest.Software.guestFn_scratch_alloc).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_fn_frame_mem_alloc : xChk (nm "scratch_alloc" :: [nm "trap_with"]) false
    (declPair Guest.Software.guestFn_frame_mem_alloc).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_fn_scratch_mark : xChk (nm "frame_mem_alloc" :: nm "scratch_alloc" :: [nm "trap_with"])
    false (declPair Guest.Software.guestFn_scratch_mark).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_fn_frame_mem_mark : xChk (nm "scratch_mark" :: nm "frame_mem_alloc" ::
    nm "scratch_alloc" :: [nm "trap_with"]) false
    (declPair Guest.Software.guestFn_frame_mem_mark).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_fn_memzero : xChk (nm "frame_mem_mark" :: nm "scratch_mark" :: nm "frame_mem_alloc" ::
    nm "scratch_alloc" :: [nm "trap_with"]) false
    (declPair Guest.Software.guestFn_memzero).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_fn_compute_jumpdests : xChk (nm "memzero" :: nm "frame_mem_mark" :: nm "scratch_mark" ::
    nm "frame_mem_alloc" :: nm "scratch_alloc" :: [nm "trap_with"]) false
    (declPair Guest.Software.guestFn_compute_jumpdests).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_fn_lst_new_scratch : xChk (nm "compute_jumpdests" :: nm "memzero" :: nm "frame_mem_mark" ::
    nm "scratch_mark" :: nm "frame_mem_alloc" :: nm "scratch_alloc" :: [nm "trap_with"]) false
    (declPair Guest.Software.guestFn_lst_new_scratch).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_fn_htab_new_scratch : xChk (nm "lst_new_scratch" :: nm "compute_jumpdests" :: nm "memzero" ::
    nm "frame_mem_mark" :: nm "scratch_mark" :: nm "frame_mem_alloc" :: nm "scratch_alloc" ::
    [nm "trap_with"]) false (declPair Guest.Software.guestFn_htab_new_scratch).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

theorem xchk_fn_htab_count : xChk (nm "htab_new_scratch" :: nm "lst_new_scratch" ::
    nm "compute_jumpdests" :: nm "memzero" :: nm "frame_mem_mark" :: nm "scratch_mark" ::
    nm "frame_mem_alloc" :: nm "scratch_alloc" :: [nm "trap_with"]) false
    (declPair Guest.Software.guestFn_htab_count).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

/-- The callees of `frame_new` (and theirs), last added first. -/
def fnewX : List MlS :=
  [nm "htab_count", nm "htab_new_scratch", nm "lst_new_scratch", nm "compute_jumpdests",
    nm "memzero", nm "frame_mem_mark", nm "scratch_mark", nm "frame_mem_alloc", nm "scratch_alloc",
    nm "trap_with"]

theorem noExc_fnewX (hX : X.code.lookup = guestCode) : NoExcTab σ X fnewX := by
  have h0 := noExcTab_cons (noExcTab_nil (σ := σ)) (HtabEntries.noExc_of_pair
    (noExcTab_nil (σ := σ)) hX (p := declPair Guest.Software.guestFn_trap_with)
    (declPair_valid (List.getElem_mem (n := 3) (by decide)) ⟨_, rfl⟩) HtabEntries.xchk_trap_with)
  have h1 := noExcTab_cons h0 (HtabEntries.noExc_of_pair h0 hX
    (p := declPair Guest.Software.guestFn_scratch_alloc)
    (declPair_valid (List.getElem_mem (n := 13) (by decide)) ⟨_, rfl⟩) xchk_fn_scratch_alloc)
  have h2 := noExcTab_cons h1 (HtabEntries.noExc_of_pair h1 hX
    (p := declPair Guest.Software.guestFn_frame_mem_alloc)
    (declPair_valid (List.getElem_mem (n := 10) (by decide)) ⟨_, rfl⟩) xchk_fn_frame_mem_alloc)
  have h3 := noExcTab_cons h2 (HtabEntries.noExc_of_pair h2 hX
    (p := declPair Guest.Software.guestFn_scratch_mark)
    (declPair_valid (List.getElem_mem (n := 14) (by decide)) ⟨_, rfl⟩) xchk_fn_scratch_mark)
  have h4 := noExcTab_cons h3 (HtabEntries.noExc_of_pair h3 hX
    (p := declPair Guest.Software.guestFn_frame_mem_mark)
    (declPair_valid (List.getElem_mem (n := 11) (by decide)) ⟨_, rfl⟩) xchk_fn_frame_mem_mark)
  have h5 := noExcTab_cons h4 (HtabEntries.noExc_of_pair h4 hX
    (p := declPair Guest.Software.guestFn_memzero)
    (declPair_valid (List.getElem_mem (n := 17) (by decide)) ⟨_, rfl⟩) xchk_fn_memzero)
  have h6 := noExcTab_cons h5 (HtabEntries.noExc_of_pair h5 hX
    (p := declPair Guest.Software.guestFn_compute_jumpdests)
    (declPair_valid (List.getElem_mem (n := 463) (by decide)) ⟨_, rfl⟩) xchk_fn_compute_jumpdests)
  have h7 := noExcTab_cons h6 (HtabEntries.noExc_of_pair h6 hX
    (p := declPair Guest.Software.guestFn_lst_new_scratch)
    (declPair_valid (List.getElem_mem (n := 409) (by decide)) ⟨_, rfl⟩) xchk_fn_lst_new_scratch)
  have h8 := noExcTab_cons h7 (HtabEntries.noExc_of_pair h7 hX
    (p := declPair Guest.Software.guestFn_htab_new_scratch)
    (declPair_valid (List.getElem_mem (n := 129) (by decide)) ⟨_, rfl⟩) xchk_fn_htab_new_scratch)
  have h9 := noExcTab_cons h8 (HtabEntries.noExc_of_pair h8 hX
    (p := declPair Guest.Software.guestFn_htab_count)
    (declPair_valid (List.getElem_mem (n := 141) (by decide)) ⟨_, rfl⟩) xchk_fn_htab_count)
  exact h9

theorem xchk_fnew : xChk fnewX false (declPair Guest.Software.guestFn_frame_new).2.2 = true := by
  conv => lhs; arg 3; cbv
  decide

/-- **`frame_new` has only returns and abortive results.** -/
theorem noExc_fnew (hX : X.code.lookup = guestCode) : NoExc σ X (nm "frame_new") :=
  HtabEntries.noExc_of_pair (noExc_fnewX hX) hX (p := declPair Guest.Software.guestFn_frame_new)
    (declPair_valid (List.getElem_mem (n := 467) (by decide)) ⟨_, rfl⟩) xchk_fnew

end InitECandidate.Solver.MemSafe.Frames
