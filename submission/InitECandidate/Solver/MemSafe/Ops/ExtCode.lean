import InitECandidate.Solver.MemSafe.Ops.Balance
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `op_extcodesize` and `op_extcodehash` (sonnet-ops)

Both share `addrPrefix` (`addr = ev + 240`, `c ∈ {100, 3000}`) with `op_balance`; the charge, the
`warm_after_charge` call and the account lookup are handled as there, the rest of the body is
accepted by the gas checker.
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

/-! ## `op_extcodesize` -/

def eocSg : Sig := ⟨[.buf 20], [], [], true⟩
def eocCs : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩,
   ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩,
   ⟨nm "sk_buf", 24, [], false⟩]

theorem eoc_mem : (nm "ext_code_of", eocSg, eocCs) ∈ ShardsJL.tab26 := by decide +kernel
theorem eoc_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "ext_code_of") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)
theorem opsBE_eoc : PlainOKB opsBE (nm "ext_code_of") eocSg eocCs 1 := by decide +kernel

def esTail : ProgHOL 64 :=
  .seq (callD (nm "stack_push_word") [.rfield 1 (lv (nm "code"))])
    (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0)))

def esT : ProgHOL 64 :=
  .seq (callD (nm "charge_gas") [.op .add [lv (nm "c"), cw 100]])
    (.seq (callD (nm "warm_after_charge") [lv (nm "addr"), lv (nm "c")])
      (.decCall (nm "code") (shK 2) (nm "ext_code_of") [lv (nm "addr")] esTail))

def esBody : ProgHOL 64 := opsPfx esT

theorem esBody_eq : (declPair Guest.Software.guestFn_op_extcodesize).2.2 = esBody := by
  conv => lhs; cbv
  rfl

theorem es_tail : gc opsE true esTail = some true := by decide +kernel

theorem charge_c100_pos {t : State σ} {cv : BitVec 64}
    (hlC : t.locals.lookup (nm "c") = some (.val (.word cv)))
    (hcv : cv = BitVec.ofNat 64 100 ∨ cv = BitVec.ofNat 64 3000) :
    ∀ a, ev t (.op .add [lv (nm "c"), cw 100]) = some (.val (.word a)) → 1 ≤ a.toNat := by
  intro a ha
  have hc : ev t (lv (nm "c")) = some (.val (.word cv)) := by rw [ev_lv]; exact hlC
  rw [ev_add2 hc (ev_cw t 100)] at ha
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha
  subst ha
  rcases hcv with rfl | rfl <;> decide

/-- **`op_extcodesize`'s step spec.** -/
theorem j_op_extcodesize : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_extcodesize") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_extcodesize) :=
    declPair_valid (List.getElem_mem (n := 544) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [esBody_eq]
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_opsE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  refine addrPrefix hfs hk0 ?_
  intro t cv ht hlA hlC hcv
  refine hl_seq_last (b1 := true) (hl_chargeDyn hF charge_fp hfs ht (charge_c100_pos hlC hcv)) ?_
  intro u hu hlu
  have hlA' : u.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) := by
    rw [hlu]; exact hlA
  have hlC' : u.locals.lookup (nm "c") = some (.val (.word cv)) := by rw [hlu]; exact hlC
  refine hl_seq_last (b1 := true) (hl_callA wam_mem wam_fp hfs opsBE_wam (fun g h => h) hu
    (fun vs hvs Γ1 p1 hrun hch _ => addr_argsOK2 hfs hlA' hlC' hvs hrun hch)) ?_
  intro u2 hu2 hlu2
  have hlA2 : u2.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) := by
    rw [hlu2]; exact hlA'
  refine hl_decCallA eoc_mem eoc_fp hfs opsBE_eoc (fun g h => h) hu2
    (fun vs hvs Γ1 p1 hrun hch _ => addr_argsOK1 hfs hlA2 hvs hrun hch) ?_
  intro t' ht' _ v _
  exact gc_sound hK hC _ true true es_tail _ (kok_loc hK ht' _)

/-! ## `op_extcodehash` -/

def ehTail : ProgHOL 64 :=
  .decCall (nm "e") .one (nm "acct_is_empty") [lv (nm "a")]
    (.seq (.ite (.cmp .notEqual (lv (nm "e")) (cw 0))
        (callD (nm "stack_push") [.rstruct [cw 0, cw 0, cw 0, cw 0]])
        (.decCall (nm "v") (shK 4) (nm "u256_from_be")
          [.load .one (.op .add [lv (nm "a"), cw 48]), cw 32]
          (callD (nm "stack_push") [lv (nm "v")])))
      (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0))))

def ehT : ProgHOL 64 :=
  .seq (callD (nm "charge_gas") [lv (nm "c")])
    (.seq (callD (nm "warm_after_charge") [lv (nm "addr"), lv (nm "c")])
      (.decCall (nm "a") .one (nm "get_account") [lv (nm "addr")] ehTail))

def ehBody : ProgHOL 64 := opsPfx ehT

theorem ehBody_eq : (declPair Guest.Software.guestFn_op_extcodehash).2.2 = ehBody := by
  conv => lhs; cbv
  rfl

theorem eh_tail : gc opsE true ehTail = some true := by decide +kernel

/-- **`op_extcodehash`'s step spec.** -/
theorem j_op_extcodehash : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_extcodehash") := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_extcodehash) :=
    declPair_valid (List.getElem_mem (n := 548) (by decide)) ⟨_, rfl⟩
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) hcode (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  rw [ehBody_eq]
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_opsE (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  refine addrPrefix hfs hk0 ?_
  intro t cv ht hlA hlC hcv
  refine hl_seq_last (b1 := true) (hl_chargeDyn hF charge_fp hfs ht (charge_c_pos hlC hcv)) ?_
  intro u hu hlu
  have hlA' : u.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) := by
    rw [hlu]; exact hlA
  have hlC' : u.locals.lookup (nm "c") = some (.val (.word cv)) := by rw [hlu]; exact hlC
  refine hl_seq_last (b1 := true) (hl_callA wam_mem wam_fp hfs opsBE_wam (fun g h => h) hu
    (fun vs hvs Γ1 p1 hrun hch _ => addr_argsOK2 hfs hlA' hlC' hvs hrun hch)) ?_
  intro u2 hu2 hlu2
  have hlA2 : u2.locals.lookup (nm "addr") = some (.val (.word (e + BitVec.ofNat 64 240))) := by
    rw [hlu2]; exact hlA'
  refine hl_decCallA ga_mem ga_fp hfs opsBE_ga (fun g h => h) hu2
    (fun vs hvs Γ1 p1 hrun hch _ => addr_argsOK1 hfs hlA2 hvs hrun hch) ?_
  intro t' ht' _ v _
  exact gc_sound hK hC _ true true eh_tail _ (kok_loc hK ht' _)

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_extcodesize
#print axioms InitECandidate.Solver.MemSafe.Frames.j_op_extcodehash
