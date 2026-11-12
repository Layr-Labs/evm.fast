import InitECandidate.Solver.MemSafe.Ops2.Calls
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_calldataload` (sonnet-gk, step 1)

```
var start = stack_pop(); charge_gas(3); var msg = lds 1 (ev + 112); var s = sat_word(start);
var mark = heap_mark(); var tmp = alloc(32);
buffer_read(lds 1 (msg + 88), lds 1 (msg + 96), s, 32, tmp);
var v = u256_from_be(tmp, 32); heap_release(mark); stack_push(v); pc_add(1); return 0;
```
The window `mark ... release` is `WinI`; the rest is checker-accepted.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def cdTail : ProgHOL 64 :=
  .seq (callD (nm "stack_push") [lv (nm "v")]) (.seq (callD (nm "pc_add") [cw 1]) Struct.rz)

def cdBody : ProgHOL 64 :=
  .decCall (nm "start") (shK 4) (nm "stack_pop") []
    (.seq (callD (nm "charge_gas") [cw 3])
      (.dec (nm "msg") .one (gLoad "ev" 112)
        (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
          (.decCall (nm "mark") .one (nm "heap_mark") []
            (.decCall (nm "tmp") .one (nm "alloc") [cw 32]
              (.seq (callD (nm "buffer_read")
                  [.load .one (.op .add [lv (nm "msg"), cw 88]),
                   .load .one (.op .add [lv (nm "msg"), cw 96]), lv (nm "s"), cw 32, lv (nm "tmp")])
                (.decCall (nm "v") (shK 4) (nm "u256_from_be") [lv (nm "tmp"), cw 32]
                  (.seq (callD (nm "heap_release") [lv (nm "mark")]) cdTail))))))))

theorem cdBody_eq : (declPair Guest.Software.guestFn_op_calldataload).2.2 = cdBody := by
  conv => lhs; cbv
  rfl

theorem cdTail_gc : gc gE true cdTail = some true := by decide +kernel
theorem chg3_cl : callCl gE false (nm "charge_gas") [cw 3] = some true := by decide +kernel
theorem satw_cl : callCl gE true (nm "sat_word") [lv (nm "start")] = some true := by decide +kernel

def brSg : Sig := ⟨[.any, .any, .any, .any, (.bufArg 3 1 0)], [], [], false⟩
theorem br_mem : (nm "buffer_read", brSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem br_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "buffer_read") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
def ubSg : Sig := ⟨[.any, .any], [], [], false⟩
theorem ub_mem : (nm "u256_from_be", ubSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by decide +kernel
theorem ub_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "u256_from_be") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

/-- `op_calldataload`'s step spec. -/
theorem j_op_calldataload : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_calldataload") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_calldataload) :=
    declPair_valid (List.getElem_mem (n := 536) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [cdBody_eq]
  refine hoareG_gkDec hfs pop_cl hk0 fun v st hk1 hsh => ?_
  refine hoareG_gkCallC hfs chg3_cl (u0 := setVarHOLFinite (nm "start") v { st with locals := s0.locals })
    (kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl) fun t1 hl1 hk2 => ?_
  refine hl_dec kOK_KJ fun msgv hmsg hsh2 => ?_
  refine hoareG_gkDec hfs satw_cl (u0 := setVarHOLFinite (nm "msg") msgv t1)
    (kOK_KJ.congr _ _ _ hk2 rfl rfl rfl rfl) fun sv st3 hk3 hsh3 => ?_
  refine hoareG_winMark hfs (by exact kOK_KJ.congr _ _ _ hk3 rfl rfl rfl rfl) fun st4 m Γ1 pm hW4 => ?_
  refine hoareG_winAlloc hfs hW4 (ev_cw _ 32) fun st5 q pc5 hW5 hq8 hbuf => ?_
  refine hoareG_winCall hfs rfl rfl br_mem br_fp hW5 (fun vs hvs => ?_) fun t6 hl6 ⟨Γ6, p6, hW6⟩ => ?_
  · refine argsOK_br hvs (n := BitVec.ofNat 64 32) (q := q) (ev_cw _ 32)
      (Struct.ev_lv_set _ _ _) ?_
    simpa using hbuf
  refine hoareG_winDec hfs rfl rfl ub_mem ub_fp hW6
    (fun vs hvs => argsOK_any (by simp [ubSg]) (by rw [evs_len hvs]; rfl))
    fun t7 hl7 v7 hsh7 ⟨Γ7, p7, hW7⟩ => ?_
  have hmark : ev (setVarHOLFinite (nm "v") v7 t7) (lv (nm "mark")) = some (.val (.word m)) := by
    rw [Struct.ev_lv_set_ne _ _ (by decide), ev_lv_locals (hl7.trans hl6),
      Struct.ev_lv_set_ne _ _ (by decide)]
    exact Struct.ev_lv_set _ _ _
  refine hoareG_winRel hfs hW7 hmark fun t8 hl8 hk8 => ?_
  exact hoareG_pt fun t9 h9 => by
    subst h9
    exact gc_sound kOK_KJ (callSem_gE hfs) _ true true cdTail_gc _ hk8

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_calldataload
