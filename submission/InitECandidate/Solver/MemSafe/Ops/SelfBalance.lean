import InitECandidate.Solver.MemSafe.Ops.BufCall
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_selfbalance`'s step spec (sonnet-ops)

```
fun 1 op_selfbalance() { charge_gas(5);
  var 1 a = get_account(lds 1 ((lds 1 (ev + EV_MSG)) + MSG_CURRENT_TARGET));
  stack_push(lds {1,1,1,1} (a + ACCT_BALANCE)); pc_add(1); return 0; }
```
The `get_account` argument is the message's `CURRENT_TARGET` pointer: a 20-byte block that is
`BufOK` by the chain extension's `GP` (`msgXOffs = [16, 32]`).
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

variable {σ : Type}

/-- The `CURRENT_TARGET` pointer expression `lds 1 ((lds 1 (ev + EV_MSG)) + MSG_CURRENT_TARGET)`. -/
def tgtE : ExpHOL 64 := .load .one (.op .add [gLoad "ev" 112, cw 32])

/-- That expression, as the argument of a `.buf 20` parameter, fits on a `GK` run. -/
theorem tgt_argsOK {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
    {d : Nat} {u0 : State σ} (hu : GK H gw Γ0 s0 p0 fs d u0) {vs : List (ValueHOL 64)}
    (hvs : evs u0 [tgtE] = some vs) {Γ1 : Gam} {p1 : Ptrs}
    (hrun : RunT guestC H gw Γ0 s0 Γ1 u0 p0 p1) (hE : ChainE GP GR Γ1 u0 fs) :
    ArgsOK guestC Γ1 p1 [.buf 20] vs := by
  obtain ⟨v1, vs', rfl, hv1, h'⟩ := evs_cons_inv hvs
  rw [evs_zero h']
  have he := gk_gword hfs hu
  obtain ⟨w, hw, hd, rfl⟩ := ev_load_one hv1
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hw
  obtain ⟨hy', -⟩ := ev_gLoad_eq he (v := .val (.word y)) (k := 112) hy
  rw [ev_cw] at hz
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hy' hz
  subst hz
  have hgp := (hE.1 p1 hrun.2.1 (e, c) (by rw [hfs]; exact List.mem_cons_self ..)).2.1 32
    (by simp [msgXOffs])
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt; subst hv
    refine ⟨rd u0.memory (y + BitVec.ofNat 64 32), by rw [mem_rd u0.memory]; rfl, ?_⟩
    have hmsg : msgOf u0.memory (e, c) = y := hy'.symm
    rw [hmsg] at hgp
    exact hgp
  · simp at hpt

def gaSg : Sig := ⟨[.buf 20], [], [], true⟩
def gaCs : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩,
   ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩]
def gaE : GEnv := ⟨[], [nm "get_account"], [Hooks.gJn]⟩

theorem ga_mem : (nm "get_account", gaSg, gaCs) ∈ ShardsJL.tab26 := by decide +kernel
theorem ga_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "get_account") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem ga_ok (n : Nat) (hn : n = 1) : PlainOKB gaE (nm "get_account") gaSg gaCs n := by
  subst hn; decide +kernel

def selfbalTail : ProgHOL 64 :=
  .seq (callD (nm "stack_push") [.load (shK 4) (.op .add [lv (nm "a"), cw 8])])
    (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0)))

def selfbalBody : ProgHOL 64 :=
  .seq (callD (nm "charge_gas") [cw 5])
    (.decCall (nm "a") .one (nm "get_account") [tgtE] selfbalTail)

theorem selfbalBody_eq : (declPair Guest.Software.guestFn_op_selfbalance).2.2 = selfbalBody := by
  conv => lhs; cbv
  rfl

theorem selfbal_chg : callCl opsE false (nm "charge_gas") [cw 5] = some true := by decide +kernel
theorem selfbal_tail : gc opsE true selfbalTail = some true := by decide +kernel

/-- **`op_selfbalance`'s step spec.** -/
theorem j_op_selfbalance : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_selfbalance") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_selfbalance) :=
    declPair_valid (List.getElem_mem (n := 549) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [selfbalBody_eq]
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_opsE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  refine hl_seq_last (b1 := true) (hl_call hK hC selfbal_chg hk0) ?_
  intro u hu _
  refine hl_decCallA ga_mem ga_fp hfs (ga_ok 1 rfl) (fun g h => h) hu
    (fun vs hvs Γ1 p1 hrun _ hE => tgt_argsOK hfs hu hvs hrun hE) ?_
  intro t ht _ v _
  exact gc_sound hK hC _ true true selfbal_tail _ (kok_loc hK ht _)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_selfbalance
